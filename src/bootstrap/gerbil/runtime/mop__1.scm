(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_$stx61561_)
      (let* ((___stx6389963900_ _$stx61561_)
             (_g6156661595_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx6389963900_))))
        (let ((___kont6390263903_
               (lambda (_L61688_ _L61690_)
                 (let ((__tmp64203 (gx#datum->syntax '#f '##fx=))
                       (__tmp64197
                        (let ((__tmp64199
                               (let ((__tmp64202
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp64200
                                      (let ((__tmp64201
                                             (let ()
                                               (declare (not safe))
                                               (cons _L61688_ '()))))
                                        (declare (not safe))
                                        (cons _L61690_ __tmp64201))))
                                 (declare (not safe))
                                 (cons __tmp64202 __tmp64200)))
                              (__tmp64198
                               (let ()
                                 (declare (not safe))
                                 (cons _L61688_ '()))))
                          (declare (not safe))
                          (cons __tmp64199 __tmp64198))))
                   (declare (not safe))
                   (cons __tmp64203 __tmp64197))))
              (___kont6390463905_
               (lambda (_L61632_ _L61634_)
                 (let ((__tmp64216 (gx#datum->syntax '#f 'let))
                       (__tmp64204
                        (let ((__tmp64214
                               (let ((__tmp64215
                                      (let ()
                                        (declare (not safe))
                                        (cons _L61632_ '()))))
                                 (declare (not safe))
                                 (cons _L61632_ __tmp64215)))
                              (__tmp64205
                               (let ((__tmp64206
                                      (let ((__tmp64213
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp64207
                                             (let ((__tmp64209
                                                    (let ((__tmp64212
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp64210
                                                           (let ((__tmp64211
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L61632_ '()))))
                     (declare (not safe))
                     (cons _L61634_ __tmp64211))))
              (declare (not safe))
              (cons __tmp64212 __tmp64210)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp64208
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L61632_ '()))))
                                               (declare (not safe))
                                               (cons __tmp64209 __tmp64208))))
                                        (declare (not safe))
                                        (cons __tmp64213 __tmp64207))))
                                 (declare (not safe))
                                 (cons __tmp64206 '()))))
                          (declare (not safe))
                          (cons __tmp64214 __tmp64205))))
                   (declare (not safe))
                   (cons __tmp64216 __tmp64204)))))
          (let ((___match6392663927_
                 (lambda (_e6157261658_
                          _hd6157161662_
                          _tl6157061665_
                          _e6157561668_
                          _hd6157461672_
                          _tl6157361675_
                          _e6157861678_
                          _hd6157761682_
                          _tl6157661685_)
                   (let ((_L61688_ _hd6157761682_) (_L61690_ _hd6157461672_))
                     (if (or (gx#identifier? _L61688_)
                             (gx#stx-fixnum? _L61688_))
                         (___kont6390263903_ _L61688_ _L61690_)
                         (___kont6390463905_
                          _hd6157761682_
                          _hd6157461672_))))))
            (if (gx#stx-pair? ___stx6389963900_)
                (let ((_e6157261658_ (gx#syntax-e ___stx6389963900_)))
                  (let ((_tl6157061665_
                         (let () (declare (not safe)) (##cdr _e6157261658_)))
                        (_hd6157161662_
                         (let () (declare (not safe)) (##car _e6157261658_))))
                    (if (gx#stx-pair? _tl6157061665_)
                        (let ((_e6157561668_ (gx#syntax-e _tl6157061665_)))
                          (let ((_tl6157361675_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e6157561668_)))
                                (_hd6157461672_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e6157561668_))))
                            (if (gx#stx-pair? _tl6157361675_)
                                (let ((_e6157861678_
                                       (gx#syntax-e _tl6157361675_)))
                                  (let ((_tl6157661685_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e6157861678_)))
                                        (_hd6157761682_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e6157861678_))))
                                    (if (gx#stx-null? _tl6157661685_)
                                        (___match6392663927_
                                         _e6157261658_
                                         _hd6157161662_
                                         _tl6157061665_
                                         _e6157561668_
                                         _hd6157461672_
                                         _tl6157361675_
                                         _e6157861678_
                                         _hd6157761682_
                                         _tl6157661685_)
                                        (let ()
                                          (declare (not safe))
                                          (_g6156661595_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g6156661595_)))))
                        (let () (declare (not safe)) (_g6156661595_)))))
                (let () (declare (not safe)) (_g6156661595_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_$stx61713_)
      (let* ((___stx6394963950_ _$stx61713_)
             (_g6171861747_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx6394963950_))))
        (let ((___kont6395263953_
               (lambda (_L61839_ _L61841_)
                 (let ((__tmp64223 (gx#datum->syntax '#f '##fx=))
                       (__tmp64217
                        (let ((__tmp64219
                               (let ((__tmp64222
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp64220
                                      (let ((__tmp64221
                                             (let ()
                                               (declare (not safe))
                                               (cons _L61839_ '()))))
                                        (declare (not safe))
                                        (cons _L61841_ __tmp64221))))
                                 (declare (not safe))
                                 (cons __tmp64222 __tmp64220)))
                              (__tmp64218
                               (let () (declare (not safe)) (cons '0 '()))))
                          (declare (not safe))
                          (cons __tmp64219 __tmp64218))))
                   (declare (not safe))
                   (cons __tmp64223 __tmp64217))))
              (___kont6395463955_
               (lambda (_L61784_ _L61786_)
                 (let ((__tmp64236 (gx#datum->syntax '#f 'let))
                       (__tmp64224
                        (let ((__tmp64234
                               (let ((__tmp64235
                                      (let ()
                                        (declare (not safe))
                                        (cons _L61784_ '()))))
                                 (declare (not safe))
                                 (cons _L61784_ __tmp64235)))
                              (__tmp64225
                               (let ((__tmp64226
                                      (let ((__tmp64233
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp64227
                                             (let ((__tmp64229
                                                    (let ((__tmp64232
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp64230
                                                           (let ((__tmp64231
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L61784_ '()))))
                     (declare (not safe))
                     (cons _L61786_ __tmp64231))))
              (declare (not safe))
              (cons __tmp64232 __tmp64230)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp64228
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '()))))
                                               (declare (not safe))
                                               (cons __tmp64229 __tmp64228))))
                                        (declare (not safe))
                                        (cons __tmp64233 __tmp64227))))
                                 (declare (not safe))
                                 (cons __tmp64226 '()))))
                          (declare (not safe))
                          (cons __tmp64234 __tmp64225))))
                   (declare (not safe))
                   (cons __tmp64236 __tmp64224)))))
          (let ((___match6397663977_
                 (lambda (_e6172461809_
                          _hd6172361813_
                          _tl6172261816_
                          _e6172761819_
                          _hd6172661823_
                          _tl6172561826_
                          _e6173061829_
                          _hd6172961833_
                          _tl6172861836_)
                   (let ((_L61839_ _hd6172961833_) (_L61841_ _hd6172661823_))
                     (if (or (gx#identifier? _L61839_)
                             (gx#stx-fixnum? _L61839_))
                         (___kont6395263953_ _L61839_ _L61841_)
                         (___kont6395463955_
                          _hd6172961833_
                          _hd6172661823_))))))
            (if (gx#stx-pair? ___stx6394963950_)
                (let ((_e6172461809_ (gx#syntax-e ___stx6394963950_)))
                  (let ((_tl6172261816_
                         (let () (declare (not safe)) (##cdr _e6172461809_)))
                        (_hd6172361813_
                         (let () (declare (not safe)) (##car _e6172461809_))))
                    (if (gx#stx-pair? _tl6172261816_)
                        (let ((_e6172761819_ (gx#syntax-e _tl6172261816_)))
                          (let ((_tl6172561826_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e6172761819_)))
                                (_hd6172661823_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e6172761819_))))
                            (if (gx#stx-pair? _tl6172561826_)
                                (let ((_e6173061829_
                                       (gx#syntax-e _tl6172561826_)))
                                  (let ((_tl6172861836_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e6173061829_)))
                                        (_hd6172961833_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e6173061829_))))
                                    (if (gx#stx-null? _tl6172861836_)
                                        (___match6397663977_
                                         _e6172461809_
                                         _hd6172361813_
                                         _tl6172261816_
                                         _e6172761819_
                                         _hd6172661823_
                                         _tl6172561826_
                                         _e6173061829_
                                         _hd6172961833_
                                         _tl6172861836_)
                                        (let ()
                                          (declare (not safe))
                                          (_g6171861747_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g6171861747_)))))
                        (let () (declare (not safe)) (_g6171861747_)))))
                (let () (declare (not safe)) (_g6171861747_))))))))
  (define |[:0:]#defrefset|
    (lambda (_stx61864_)
      (let* ((_g6186761888_
              (lambda (_g6186861884_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6186861884_)))
             (_g6186662116_
              (lambda (_g6186861892_)
                (if (gx#stx-pair? _g6186861892_)
                    (let ((_e6187361895_ (gx#syntax-e _g6186861892_)))
                      (let ((_hd6187261899_
                             (let ()
                               (declare (not safe))
                               (##car _e6187361895_)))
                            (_tl6187161902_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6187361895_))))
                        (if (gx#stx-pair? _tl6187161902_)
                            (let ((_e6187661905_ (gx#syntax-e _tl6187161902_)))
                              (let ((_hd6187561909_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6187661905_)))
                                    (_tl6187461912_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6187661905_))))
                                (if (gx#stx-pair? _hd6187561909_)
                                    (let ((_e6187961915_
                                           (gx#syntax-e _hd6187561909_)))
                                      (let ((_hd6187861919_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6187961915_)))
                                            (_tl6187761922_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6187961915_))))
                                        (if (gx#stx-pair? _tl6187761922_)
                                            (let ((_e6188261925_
                                                   (gx#syntax-e
                                                    _tl6187761922_)))
                                              (let ((_hd6188161929_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6188261925_)))
                                                    (_tl6188061932_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6188261925_))))
                                                (if (gx#stx-null?
                                                     _tl6188061932_)
                                                    (if (gx#stx-null?
                                                         _tl6187461912_)
                                                        ((lambda (_L61935_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L61937_)
                   (let* ((_g6195561963_
                           (lambda (_g6195661959_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g6195661959_)))
                          (_g6195462112_
                           (lambda (_g6195661967_)
                             ((lambda (_L61970_)
                                (let ()
                                  (let* ((_g6198261990_
                                          (lambda (_g6198361986_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g6198361986_)))
                                         (_g6198162108_
                                          (lambda (_g6198361994_)
                                            ((lambda (_L61997_)
                                               (let ()
                                                 (let* ((_g6201062018_
                                                         (lambda (_g6201162014_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _g6201162014_)))
                                                        (_g6200962104_
                                                         (lambda (_g6201162022_)
                                                           ((lambda (_L62025_)
                                                              (let ()
                                                                (let* ((_g6203862046_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g6203962042_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g6203962042_)))
                               (_g6203762100_
                                (lambda (_g6203962050_)
                                  ((lambda (_L62053_)
                                     (let ()
                                       (let* ((_g6206662074_
                                               (lambda (_g6206762070_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g6206762070_)))
                                              (_g6206562096_
                                               (lambda (_g6206762078_)
                                                 ((lambda (_L62081_)
                                                    (let ()
                                                      (let ()
                                                        (let ((__tmp64369
                                                               (gx#datum->syntax
                                                                '#f
                                                                'begin))
                                                              (__tmp64237
                                                               (let ((__tmp64339
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp64368 (gx#datum->syntax '#f 'def))
                                    (__tmp64340
                                     (let ((__tmp64341
                                            (let ((__tmp64342
                                                   (let ((__tmp64367
                                                          (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation))
                                                         (__tmp64343
                                                          (let ((__tmp64362
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp64366
                                (gx#datum->syntax '#f '@mop.accessor))
                               (__tmp64363
                                (let ((__tmp64364
                                       (let ((__tmp64365
                                              (let ()
                                                (declare (not safe))
                                                (cons '#t '()))))
                                         (declare (not safe))
                                         (cons _L61937_ __tmp64365))))
                                  (declare (not safe))
                                  (cons _L61970_ __tmp64364))))
                           (declare (not safe))
                           (cons __tmp64366 __tmp64363)))
                        (__tmp64344
                         (let ((__tmp64345
                                (let ((__tmp64361
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp64346
                                       (let ((__tmp64359
                                              (let ((__tmp64360
                                                     (gx#datum->syntax
                                                      '#f
                                                      'klass)))
                                                (declare (not safe))
                                                (cons __tmp64360 '())))
                                             (__tmp64347
                                              (let ((__tmp64348
                                                     (let ((__tmp64358
                                                            (gx#datum->syntax
                                                             '#f
                                                             '##structure-ref))
                                                           (__tmp64349
                                                            (let ((__tmp64357
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp64350
                           (let ((__tmp64351
                                  (let ((__tmp64356
                                         (gx#datum->syntax '#f 'class::t))
                                        (__tmp64352
                                         (let ((__tmp64353
                                                (let ((__tmp64355
                                                       (gx#datum->syntax
                                                        '#f
                                                        'quote))
                                                      (__tmp64354
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L61937_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp64355
                                                        __tmp64354))))
                                           (declare (not safe))
                                           (cons __tmp64353 '()))))
                                    (declare (not safe))
                                    (cons __tmp64356 __tmp64352))))
                             (declare (not safe))
                             (cons _L61935_ __tmp64351))))
                      (declare (not safe))
                      (cons __tmp64357 __tmp64350))))
               (declare (not safe))
               (cons __tmp64358 __tmp64349))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64348 '()))))
                                         (declare (not safe))
                                         (cons __tmp64359 __tmp64347))))
                                  (declare (not safe))
                                  (cons __tmp64361 __tmp64346))))
                           (declare (not safe))
                           (cons __tmp64345 '()))))
                    (declare (not safe))
                    (cons __tmp64362 __tmp64344))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64367
                                                           __tmp64343))))
                                              (declare (not safe))
                                              (cons __tmp64342 '()))))
                                       (declare (not safe))
                                       (cons _L61997_ __tmp64341))))
                                (declare (not safe))
                                (cons __tmp64368 __tmp64340)))
                             (__tmp64238
                              (let ((__tmp64309
                                     (let ((__tmp64338
                                            (gx#datum->syntax '#f 'def))
                                           (__tmp64310
                                            (let ((__tmp64311
                                                   (let ((__tmp64312
                                                          (let ((__tmp64337
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'begin-annotation))
                        (__tmp64313
                         (let ((__tmp64332
                                (let ((__tmp64336
                                       (gx#datum->syntax '#f '@mop.accessor))
                                      (__tmp64333
                                       (let ((__tmp64334
                                              (let ((__tmp64335
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '#f '()))))
                                                (declare (not safe))
                                                (cons _L61937_ __tmp64335))))
                                         (declare (not safe))
                                         (cons _L61970_ __tmp64334))))
                                  (declare (not safe))
                                  (cons __tmp64336 __tmp64333)))
                               (__tmp64314
                                (let ((__tmp64315
                                       (let ((__tmp64331
                                              (gx#datum->syntax '#f 'lambda))
                                             (__tmp64316
                                              (let ((__tmp64329
                                                     (let ((__tmp64330
                                                            (gx#datum->syntax
                                                             '#f
                                                             'klass)))
                                                       (declare (not safe))
                                                       (cons __tmp64330 '())))
                                                    (__tmp64317
                                                     (let ((__tmp64318
                                                            (let ((__tmp64328
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '##unchecked-structure-ref))
                          (__tmp64319
                           (let ((__tmp64327 (gx#datum->syntax '#f 'klass))
                                 (__tmp64320
                                  (let ((__tmp64321
                                         (let ((__tmp64326
                                                (gx#datum->syntax
                                                 '#f
                                                 'class::t))
                                               (__tmp64322
                                                (let ((__tmp64323
                                                       (let ((__tmp64325
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp64324
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L61937_ '()))))
                 (declare (not safe))
                 (cons __tmp64325 __tmp64324))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp64323 '()))))
                                           (declare (not safe))
                                           (cons __tmp64326 __tmp64322))))
                                    (declare (not safe))
                                    (cons _L61935_ __tmp64321))))
                             (declare (not safe))
                             (cons __tmp64327 __tmp64320))))
                      (declare (not safe))
                      (cons __tmp64328 __tmp64319))))
               (declare (not safe))
               (cons __tmp64318 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64329 __tmp64317))))
                                         (declare (not safe))
                                         (cons __tmp64331 __tmp64316))))
                                  (declare (not safe))
                                  (cons __tmp64315 '()))))
                           (declare (not safe))
                           (cons __tmp64332 __tmp64314))))
                    (declare (not safe))
                    (cons __tmp64337 __tmp64313))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64312 '()))))
                                              (declare (not safe))
                                              (cons _L62025_ __tmp64311))))
                                       (declare (not safe))
                                       (cons __tmp64338 __tmp64310)))
                                    (__tmp64239
                                     (let ((__tmp64275
                                            (let ((__tmp64308
                                                   (gx#datum->syntax '#f 'def))
                                                  (__tmp64276
                                                   (let ((__tmp64277
                                                          (let ((__tmp64278
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp64307
                                (gx#datum->syntax '#f 'begin-annotation))
                               (__tmp64279
                                (let ((__tmp64302
                                       (let ((__tmp64306
                                              (gx#datum->syntax
                                               '#f
                                               '@mop.mutator))
                                             (__tmp64303
                                              (let ((__tmp64304
                                                     (let ((__tmp64305
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons '#t '()))))
                                                       (declare (not safe))
                                                       (cons _L61937_
                                                             __tmp64305))))
                                                (declare (not safe))
                                                (cons _L61970_ __tmp64304))))
                                         (declare (not safe))
                                         (cons __tmp64306 __tmp64303)))
                                      (__tmp64280
                                       (let ((__tmp64281
                                              (let ((__tmp64301
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp64282
                                                     (let ((__tmp64297
                                                            (let ((__tmp64300
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp64298
                           (let ((__tmp64299 (gx#datum->syntax '#f 'val)))
                             (declare (not safe))
                             (cons __tmp64299 '()))))
                      (declare (not safe))
                      (cons __tmp64300 __tmp64298)))
                   (__tmp64283
                    (let ((__tmp64284
                           (let ((__tmp64296
                                  (gx#datum->syntax '#f '##structure-set!))
                                 (__tmp64285
                                  (let ((__tmp64295
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp64286
                                         (let ((__tmp64294
                                                (gx#datum->syntax '#f 'val))
                                               (__tmp64287
                                                (let ((__tmp64288
                                                       (let ((__tmp64293
                                                              (gx#datum->syntax
                                                               '#f
                                                               'class::t))
                                                             (__tmp64289
                                                              (let ((__tmp64290
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp64292 (gx#datum->syntax '#f 'quote))
                                   (__tmp64291
                                    (let ()
                                      (declare (not safe))
                                      (cons _L61937_ '()))))
                               (declare (not safe))
                               (cons __tmp64292 __tmp64291))))
                        (declare (not safe))
                        (cons __tmp64290 '()))))
                 (declare (not safe))
                 (cons __tmp64293 __tmp64289))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L61935_ __tmp64288))))
                                           (declare (not safe))
                                           (cons __tmp64294 __tmp64287))))
                                    (declare (not safe))
                                    (cons __tmp64295 __tmp64286))))
                             (declare (not safe))
                             (cons __tmp64296 __tmp64285))))
                      (declare (not safe))
                      (cons __tmp64284 '()))))
               (declare (not safe))
               (cons __tmp64297 __tmp64283))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64301 __tmp64282))))
                                         (declare (not safe))
                                         (cons __tmp64281 '()))))
                                  (declare (not safe))
                                  (cons __tmp64302 __tmp64280))))
                           (declare (not safe))
                           (cons __tmp64307 __tmp64279))))
                    (declare (not safe))
                    (cons __tmp64278 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L62053_
                                                           __tmp64277))))
                                              (declare (not safe))
                                              (cons __tmp64308 __tmp64276)))
                                           (__tmp64240
                                            (let ((__tmp64241
                                                   (let ((__tmp64274
                                                          (gx#datum->syntax
                                                           '#f
                                                           'def))
                                                         (__tmp64242
                                                          (let ((__tmp64243
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp64244
                                (let ((__tmp64273
                                       (gx#datum->syntax
                                        '#f
                                        'begin-annotation))
                                      (__tmp64245
                                       (let ((__tmp64268
                                              (let ((__tmp64272
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@mop.mutator))
                                                    (__tmp64269
                                                     (let ((__tmp64270
                                                            (let ((__tmp64271
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons '#f '()))))
                      (declare (not safe))
                      (cons _L61937_ __tmp64271))))
               (declare (not safe))
               (cons _L61970_ __tmp64270))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64272 __tmp64269)))
                                             (__tmp64246
                                              (let ((__tmp64247
                                                     (let ((__tmp64267
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lambda))
                                                           (__tmp64248
                                                            (let ((__tmp64263
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64266 (gx#datum->syntax '#f 'klass))
                                 (__tmp64264
                                  (let ((__tmp64265
                                         (gx#datum->syntax '#f 'val)))
                                    (declare (not safe))
                                    (cons __tmp64265 '()))))
                             (declare (not safe))
                             (cons __tmp64266 __tmp64264)))
                          (__tmp64249
                           (let ((__tmp64250
                                  (let ((__tmp64262
                                         (gx#datum->syntax
                                          '#f
                                          '##unchecked-structure-set!))
                                        (__tmp64251
                                         (let ((__tmp64261
                                                (gx#datum->syntax '#f 'klass))
                                               (__tmp64252
                                                (let ((__tmp64260
                                                       (gx#datum->syntax
                                                        '#f
                                                        'val))
                                                      (__tmp64253
                                                       (let ((__tmp64254
                                                              (let ((__tmp64259
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'class::t))
                            (__tmp64255
                             (let ((__tmp64256
                                    (let ((__tmp64258
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp64257
                                           (let ()
                                             (declare (not safe))
                                             (cons _L61937_ '()))))
                                      (declare (not safe))
                                      (cons __tmp64258 __tmp64257))))
                               (declare (not safe))
                               (cons __tmp64256 '()))))
                        (declare (not safe))
                        (cons __tmp64259 __tmp64255))))
                 (declare (not safe))
                 (cons _L61935_ __tmp64254))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp64260
                                                        __tmp64253))))
                                           (declare (not safe))
                                           (cons __tmp64261 __tmp64252))))
                                    (declare (not safe))
                                    (cons __tmp64262 __tmp64251))))
                             (declare (not safe))
                             (cons __tmp64250 '()))))
                      (declare (not safe))
                      (cons __tmp64263 __tmp64249))))
               (declare (not safe))
               (cons __tmp64267 __tmp64248))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64247 '()))))
                                         (declare (not safe))
                                         (cons __tmp64268 __tmp64246))))
                                  (declare (not safe))
                                  (cons __tmp64273 __tmp64245))))
                           (declare (not safe))
                           (cons __tmp64244 '()))))
                    (declare (not safe))
                    (cons _L62081_ __tmp64243))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64274
                                                           __tmp64242))))
                                              (declare (not safe))
                                              (cons __tmp64241 '()))))
                                       (declare (not safe))
                                       (cons __tmp64275 __tmp64240))))
                                (declare (not safe))
                                (cons __tmp64309 __tmp64239))))
                         (declare (not safe))
                         (cons __tmp64339 __tmp64238))))
                  (declare (not safe))
                  (cons __tmp64369 __tmp64237)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g6206762078_))))
                                         (_g6206562096_
                                          (gx#stx-identifier
                                           _L61937_
                                           '"&"
                                           _L62053_)))))
                                   _g6203962050_))))
                          (_g6203762100_
                           (gx#stx-identifier _L61937_ _L61997_ '"-set!")))))
                    _g6201162022_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g6200962104_
                                                    (gx#stx-identifier
                                                     _L61937_
                                                     '"&"
                                                     _L61997_)))))
                                             _g6198361994_))))
                                    (_g6198162108_
                                     (gx#stx-identifier
                                      _L61937_
                                      '"class-type-"
                                      _L61937_)))))
                              _g6195661967_))))
                     (_g6195462112_ (gx#core-quote-syntax 'class::t))))
                 _hd6188161929_
                 _hd6187861919_)
                (_g6186761888_ _g6186861892_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6186761888_
                                                     _g6186861892_))))
                                            (_g6186761888_ _g6186861892_))))
                                    (_g6186761888_ _g6186861892_))))
                            (_g6186761888_ _g6186861892_))))
                    (_g6186761888_ _g6186861892_)))))
        (_g6186662116_ _stx61864_))))
  (define |[:0:]#defrefset*|
    (lambda (_$stx62120_)
      (let* ((_g6212462153_
              (lambda (_g6212562149_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6212562149_)))
             (_g6212362253_
              (lambda (_g6212562157_)
                (if (gx#stx-pair? _g6212562157_)
                    (let ((_e6213062160_ (gx#syntax-e _g6212562157_)))
                      (let ((_hd6212962164_
                             (let ()
                               (declare (not safe))
                               (##car _e6213062160_)))
                            (_tl6212862167_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6213062160_))))
                        (if (gx#stx-pair/null? _tl6212862167_)
                            (let ((_g64370_
                                   (gx#syntax-split-splice _tl6212862167_ '0)))
                              (begin
                                (let ((_g64371_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g64370_)
                                             (##vector-length _g64370_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g64371_ 2)))
                                      (error "Context expects 2 values"
                                             _g64371_)))
                                (let ((_target6213162170_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g64370_ 0)))
                                      (_tl6213362173_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g64370_ 1))))
                                  (if (gx#stx-null? _tl6213362173_)
                                      (letrec ((_loop6213462176_
                                                (lambda (_hd6213262180_
                                                         _field6213862183_
                                                         _slot6213962185_)
                                                  (if (gx#stx-pair?
                                                       _hd6213262180_)
                                                      (let ((_e6213562188_
                                                             (gx#syntax-e
                                                              _hd6213262180_)))
                                                        (let ((_lp-hd6213662192_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e6213562188_)))
                      (_lp-tl6213762195_
                       (let () (declare (not safe)) (##cdr _e6213562188_))))
                  (if (gx#stx-pair? _lp-hd6213662192_)
                      (let ((_e6214462198_ (gx#syntax-e _lp-hd6213662192_)))
                        (let ((_hd6214362202_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6214462198_)))
                              (_tl6214262205_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6214462198_))))
                          (if (gx#stx-pair? _tl6214262205_)
                              (let ((_e6214762208_
                                     (gx#syntax-e _tl6214262205_)))
                                (let ((_hd6214662212_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6214762208_)))
                                      (_tl6214562215_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6214762208_))))
                                  (if (gx#stx-null? _tl6214562215_)
                                      (_loop6213462176_
                                       _lp-tl6213762195_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd6214662212_
                                               _field6213862183_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd6214362202_
                                               _slot6213962185_)))
                                      (_g6212462153_ _g6212562157_))))
                              (_g6212462153_ _g6212562157_))))
                      (_g6212462153_ _g6212562157_))))
              (let ((_field6214062218_ (reverse _field6213862183_))
                    (_slot6214162221_ (reverse _slot6213962185_)))
                ((lambda (_L62224_ _L62226_)
                   (let ((__tmp64379 (gx#datum->syntax '#f 'begin))
                         (__tmp64372
                          (begin
                            (gx#syntax-check-splice-targets _L62224_ _L62226_)
                            (let ((__tmp64373
                                   (lambda (_g6224162245_
                                            _g6224262248_
                                            _g6224362250_)
                                     (let ((__tmp64374
                                            (let ((__tmp64378
                                                   (gx#datum->syntax
                                                    '#f
                                                    'defrefset))
                                                  (__tmp64375
                                                   (let ((__tmp64376
                                                          (let ((__tmp64377
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g6224162245_ '()))))
                    (declare (not safe))
                    (cons _g6224262248_ __tmp64377))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64376 '()))))
                                              (declare (not safe))
                                              (cons __tmp64378 __tmp64375))))
                                       (declare (not safe))
                                       (cons __tmp64374 _g6224362250_)))))
                              (declare (not safe))
                              (foldr2 __tmp64373 '() _L62224_ _L62226_)))))
                     (declare (not safe))
                     (cons __tmp64379 __tmp64372)))
                 _field6214062218_
                 _slot6214162221_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop6213462176_
                                         _target6213162170_
                                         '()
                                         '()))
                                      (_g6212462153_ _g6212562157_)))))
                            (_g6212462153_ _g6212562157_))))
                    (_g6212462153_ _g6212562157_)))))
        (_g6212362253_ _$stx62120_))))
  (define |[:0:]#__slot-e|
    (lambda (_$stx62258_)
      (let* ((_g6226262288_
              (lambda (_g6226362284_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6226362284_)))
             (_g6226162371_
              (lambda (_g6226362292_)
                (if (gx#stx-pair? _g6226362292_)
                    (let ((_e6227062295_ (gx#syntax-e _g6226362292_)))
                      (let ((_hd6226962299_
                             (let ()
                               (declare (not safe))
                               (##car _e6227062295_)))
                            (_tl6226862302_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6227062295_))))
                        (if (gx#stx-pair? _tl6226862302_)
                            (let ((_e6227362305_ (gx#syntax-e _tl6226862302_)))
                              (let ((_hd6227262309_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6227362305_)))
                                    (_tl6227162312_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6227362305_))))
                                (if (gx#stx-pair? _tl6227162312_)
                                    (let ((_e6227662315_
                                           (gx#syntax-e _tl6227162312_)))
                                      (let ((_hd6227562319_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6227662315_)))
                                            (_tl6227462322_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6227662315_))))
                                        (if (gx#stx-pair? _tl6227462322_)
                                            (let ((_e6227962325_
                                                   (gx#syntax-e
                                                    _tl6227462322_)))
                                              (let ((_hd6227862329_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6227962325_)))
                                                    (_tl6227762332_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6227962325_))))
                                                (if (gx#stx-pair?
                                                     _tl6227762332_)
                                                    (let ((_e6228262335_
                                                           (gx#syntax-e
                                                            _tl6227762332_)))
                                                      (let ((_hd6228162339_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6228262335_)))
                    (_tl6228062342_
                     (let () (declare (not safe)) (##cdr _e6228262335_))))
                (if (gx#stx-null? _tl6228062342_)
                    ((lambda (_L62345_ _L62347_ _L62348_ _L62349_)
                       (let ((__tmp64426 (gx#datum->syntax '#f 'if))
                             (__tmp64380
                              (let ((__tmp64423
                                     (let ((__tmp64425
                                            (gx#datum->syntax '#f 'object?))
                                           (__tmp64424
                                            (let ()
                                              (declare (not safe))
                                              (cons _L62349_ '()))))
                                       (declare (not safe))
                                       (cons __tmp64425 __tmp64424)))
                                    (__tmp64381
                                     (let ((__tmp64386
                                            (let ((__tmp64422
                                                   (gx#datum->syntax '#f 'let))
                                                  (__tmp64387
                                                   (let ((__tmp64416
                                                          (let ((__tmp64421
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'klass))
                        (__tmp64417
                         (let ((__tmp64418
                                (let ((__tmp64420
                                       (gx#datum->syntax '#f 'object-type))
                                      (__tmp64419
                                       (let ()
                                         (declare (not safe))
                                         (cons _L62349_ '()))))
                                  (declare (not safe))
                                  (cons __tmp64420 __tmp64419))))
                           (declare (not safe))
                           (cons __tmp64418 '()))))
                    (declare (not safe))
                    (cons __tmp64421 __tmp64417)))
                 (__tmp64388
                  (let ((__tmp64389
                         (let ((__tmp64415 (gx#datum->syntax '#f 'cond))
                               (__tmp64390
                                (let ((__tmp64398
                                       (let ((__tmp64402
                                              (let ((__tmp64414
                                                     (gx#datum->syntax
                                                      '#f
                                                      'and))
                                                    (__tmp64403
                                                     (let ((__tmp64410
                                                            (let ((__tmp64413
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'class-type?))
                          (__tmp64411
                           (let ((__tmp64412 (gx#datum->syntax '#f 'klass)))
                             (declare (not safe))
                             (cons __tmp64412 '()))))
                      (declare (not safe))
                      (cons __tmp64413 __tmp64411)))
                   (__tmp64404
                    (let ((__tmp64405
                           (let ((__tmp64409
                                  (gx#datum->syntax '#f 'class-slot-offset))
                                 (__tmp64406
                                  (let ((__tmp64408
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp64407
                                         (let ()
                                           (declare (not safe))
                                           (cons _L62348_ '()))))
                                    (declare (not safe))
                                    (cons __tmp64408 __tmp64407))))
                             (declare (not safe))
                             (cons __tmp64409 __tmp64406))))
                      (declare (not safe))
                      (cons __tmp64405 '()))))
               (declare (not safe))
               (cons __tmp64410 __tmp64404))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64414 __tmp64403)))
                                             (__tmp64399
                                              (let ((__tmp64401
                                                     (gx#datum->syntax
                                                      '#f
                                                      '=>))
                                                    (__tmp64400
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L62347_ '()))))
                                                (declare (not safe))
                                                (cons __tmp64401 __tmp64400))))
                                         (declare (not safe))
                                         (cons __tmp64402 __tmp64399)))
                                      (__tmp64391
                                       (let ((__tmp64392
                                              (let ((__tmp64397
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp64393
                                                     (let ((__tmp64394
                                                            (let ((__tmp64395
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64396
                                  (let ()
                                    (declare (not safe))
                                    (cons _L62348_ '()))))
                             (declare (not safe))
                             (cons _L62349_ __tmp64396))))
                      (declare (not safe))
                      (cons _L62345_ __tmp64395))))
               (declare (not safe))
               (cons __tmp64394 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64397 __tmp64393))))
                                         (declare (not safe))
                                         (cons __tmp64392 '()))))
                                  (declare (not safe))
                                  (cons __tmp64398 __tmp64391))))
                           (declare (not safe))
                           (cons __tmp64415 __tmp64390))))
                    (declare (not safe))
                    (cons __tmp64389 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64416
                                                           __tmp64388))))
                                              (declare (not safe))
                                              (cons __tmp64422 __tmp64387)))
                                           (__tmp64382
                                            (let ((__tmp64383
                                                   (let ((__tmp64384
                                                          (let ((__tmp64385
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L62348_ '()))))
                    (declare (not safe))
                    (cons _L62349_ __tmp64385))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L62345_
                                                           __tmp64384))))
                                              (declare (not safe))
                                              (cons __tmp64383 '()))))
                                       (declare (not safe))
                                       (cons __tmp64386 __tmp64382))))
                                (declare (not safe))
                                (cons __tmp64423 __tmp64381))))
                         (declare (not safe))
                         (cons __tmp64426 __tmp64380)))
                     _hd6228162339_
                     _hd6227862329_
                     _hd6227562319_
                     _hd6227262309_)
                    (_g6226262288_ _g6226362292_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6226262288_
                                                     _g6226362292_))))
                                            (_g6226262288_ _g6226362292_))))
                                    (_g6226262288_ _g6226362292_))))
                            (_g6226262288_ _g6226362292_))))
                    (_g6226262288_ _g6226362292_)))))
        (_g6226162371_ _$stx62258_)))))
