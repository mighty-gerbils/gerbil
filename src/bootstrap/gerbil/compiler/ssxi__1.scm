(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx298752_)
      (let* ((_g298756298774_
              (lambda (_g298757298770_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298757298770_))))
             (_g298755298829_
              (lambda (_g298757298778_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298757298778_))
                    (let ((_e298762298781_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298757298778_))))
                      (let ((_hd298761298785_
                             (let ()
                               (declare (not safe))
                               (##car _e298762298781_)))
                            (_tl298760298788_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298762298781_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl298760298788_))
                            (let ((_e298765298791_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl298760298788_))))
                              (let ((_hd298764298795_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e298765298791_)))
                                    (_tl298763298798_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e298765298791_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl298763298798_))
                                    (let ((_e298768298801_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl298763298798_))))
                                      (let ((_hd298767298805_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e298768298801_)))
                                            (_tl298766298808_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e298768298801_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl298766298808_))
                                            ((lambda (_L298811_ _L298813_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L298813_))
                                                   (let ((__tmp306279
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp306274
                                                          (let ((__tmp306276
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp306278
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp306277
                                (let ()
                                  (declare (not safe))
                                  (cons _L298813_ '()))))
                           (declare (not safe))
                           (cons __tmp306278 __tmp306277)))
                        (__tmp306275
                         (let () (declare (not safe)) (cons _L298811_ '()))))
                    (declare (not safe))
                    (cons __tmp306276 __tmp306275))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp306279
                                                           __tmp306274))
                                                   (_g298756298774_
                                                    _g298757298778_)))
                                             _hd298767298805_
                                             _hd298764298795_)
                                            (_g298756298774_
                                             _g298757298778_))))
                                    (_g298756298774_ _g298757298778_))))
                            (_g298756298774_ _g298757298778_))))
                    (_g298756298774_ _g298757298778_)))))
        (_g298755298829_ _$stx298752_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx298833_)
      (let* ((_g298837298866_
              (lambda (_g298838298862_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298838298862_))))
             (_g298836298966_
              (lambda (_g298838298870_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298838298870_))
                    (let ((_e298843298873_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298838298870_))))
                      (let ((_hd298842298877_
                             (let ()
                               (declare (not safe))
                               (##car _e298843298873_)))
                            (_tl298841298880_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298843298873_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl298841298880_))
                            (let ((_g306280_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl298841298880_
                                      '0))))
                              (begin
                                (let ((_g306281_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g306280_)
                                             (##vector-length _g306280_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g306281_ 2)))
                                      (error "Context expects 2 values"
                                             _g306281_)))
                                (let ((_target298844298883_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g306280_ 0)))
                                      (_tl298846298886_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g306280_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl298846298886_))
                                      (letrec ((_loop298847298889_
                                                (lambda (_hd298845298893_
                                                         _type298851298896_
                                                         _symbol298852298898_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd298845298893_))
                                                      (let ((_e298848298901_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd298845298893_))))
                (let ((_lp-hd298849298905_
                       (let () (declare (not safe)) (##car _e298848298901_)))
                      (_lp-tl298850298908_
                       (let () (declare (not safe)) (##cdr _e298848298901_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd298849298905_))
                      (let ((_e298857298911_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd298849298905_))))
                        (let ((_hd298856298915_
                               (let ()
                                 (declare (not safe))
                                 (##car _e298857298911_)))
                              (_tl298855298918_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e298857298911_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl298855298918_))
                              (let ((_e298860298921_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl298855298918_))))
                                (let ((_hd298859298925_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e298860298921_)))
                                      (_tl298858298928_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e298860298921_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl298858298928_))
                                      (_loop298847298889_
                                       _lp-tl298850298908_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd298859298925_
                                               _type298851298896_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd298856298915_
                                               _symbol298852298898_)))
                                      (_g298837298866_ _g298838298870_))))
                              (_g298837298866_ _g298838298870_))))
                      (_g298837298866_ _g298838298870_))))
              (let ((_type298853298931_ (reverse _type298851298896_))
                    (_symbol298854298934_ (reverse _symbol298852298898_)))
                ((lambda (_L298937_ _L298939_)
                   (let ((__tmp306288
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp306282
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L298937_
                               _L298939_))
                            (let ((__tmp306283
                                   (lambda (_g298954298958_
                                            _g298955298961_
                                            _g298956298963_)
                                     (let ((__tmp306284
                                            (let ((__tmp306287
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp306285
                                                   (let ((__tmp306286
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g298954298958_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g298955298961_
                                                           __tmp306286))))
                                              (declare (not safe))
                                              (cons __tmp306287 __tmp306285))))
                                       (declare (not safe))
                                       (cons __tmp306284 _g298956298963_)))))
                              (declare (not safe))
                              (foldr2 __tmp306283 '() _L298937_ _L298939_)))))
                     (declare (not safe))
                     (cons __tmp306288 __tmp306282)))
                 _type298853298931_
                 _symbol298854298934_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop298847298889_
                                         _target298844298883_
                                         '()
                                         '()))
                                      (_g298837298866_ _g298838298870_)))))
                            (_g298837298866_ _g298838298870_))))
                    (_g298837298866_ _g298838298870_)))))
        (_g298836298966_ _$stx298833_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx298971_)
      (let* ((___stx305839305840_ _$stx298971_)
             (_g298976299018_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx305839305840_)))))
        (let ((___kont305842305843_
               (lambda (_L299146_ _L299148_ _L299149_ _L299150_)
                 (let ((__tmp306302
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp306289
                        (let ((__tmp306299
                               (let ((__tmp306301
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp306300
                                      (let ()
                                        (declare (not safe))
                                        (cons _L299150_ '()))))
                                 (declare (not safe))
                                 (cons __tmp306301 __tmp306300)))
                              (__tmp306290
                               (let ((__tmp306296
                                      (let ((__tmp306298
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp306297
                                             (let ()
                                               (declare (not safe))
                                               (cons _L299149_ '()))))
                                        (declare (not safe))
                                        (cons __tmp306298 __tmp306297)))
                                     (__tmp306291
                                      (let ((__tmp306293
                                             (let ((__tmp306295
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp306294
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L299148_ '()))))
                                               (declare (not safe))
                                               (cons __tmp306295 __tmp306294)))
                                            (__tmp306292
                                             (let ()
                                               (declare (not safe))
                                               (cons _L299146_ '()))))
                                        (declare (not safe))
                                        (cons __tmp306293 __tmp306292))))
                                 (declare (not safe))
                                 (cons __tmp306296 __tmp306291))))
                          (declare (not safe))
                          (cons __tmp306299 __tmp306290))))
                   (declare (not safe))
                   (cons __tmp306302 __tmp306289))))
              (___kont305844305845_
               (lambda (_L299065_ _L299067_ _L299068_ _L299069_)
                 (let ((__tmp306303
                        (let ((__tmp306304
                               (let ((__tmp306305
                                      (let ((__tmp306306
                                             (let ((__tmp306307
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp306307 '()))))
                                        (declare (not safe))
                                        (cons _L299065_ __tmp306306))))
                                 (declare (not safe))
                                 (cons _L299067_ __tmp306305))))
                          (declare (not safe))
                          (cons _L299068_ __tmp306304))))
                   (declare (not safe))
                   (cons _L299069_ __tmp306303)))))
          (let ((___match305878305879_
                 (lambda (_e298984299096_
                          _hd298983299100_
                          _tl298982299103_
                          _e298987299106_
                          _hd298986299110_
                          _tl298985299113_
                          _e298990299116_
                          _hd298989299120_
                          _tl298988299123_
                          _e298993299126_
                          _hd298992299130_
                          _tl298991299133_
                          _e298996299136_
                          _hd298995299140_
                          _tl298994299143_)
                   (let ((_L299146_ _hd298995299140_)
                         (_L299148_ _hd298992299130_)
                         (_L299149_ _hd298989299120_)
                         (_L299150_ _hd298986299110_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L299150_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L299149_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L299148_)))
                         (___kont305842305843_
                          _L299146_
                          _L299148_
                          _L299149_
                          _L299150_)
                         (let () (declare (not safe)) (_g298976299018_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx305839305840_))
                (let ((_e298984299096_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx305839305840_))))
                  (let ((_tl298982299103_
                         (let () (declare (not safe)) (##cdr _e298984299096_)))
                        (_hd298983299100_
                         (let ()
                           (declare (not safe))
                           (##car _e298984299096_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl298982299103_))
                        (let ((_e298987299106_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl298982299103_))))
                          (let ((_tl298985299113_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e298987299106_)))
                                (_hd298986299110_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e298987299106_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl298985299113_))
                                (let ((_e298990299116_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl298985299113_))))
                                  (let ((_tl298988299123_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e298990299116_)))
                                        (_hd298989299120_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e298990299116_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl298988299123_))
                                        (let ((_e298993299126_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl298988299123_))))
                                          (let ((_tl298991299133_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e298993299126_)))
                                                (_hd298992299130_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e298993299126_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl298991299133_))
                                                (let ((_e298996299136_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl298991299133_))))
                                                  (let ((_tl298994299143_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e298996299136_)))
                                                        (_hd298995299140_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e298996299136_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl298994299143_))
                                                        (___match305878305879_
                                                         _e298984299096_
                                                         _hd298983299100_
                                                         _tl298982299103_
                                                         _e298987299106_
                                                         _hd298986299110_
                                                         _tl298985299113_
                                                         _e298990299116_
                                                         _hd298989299120_
                                                         _tl298988299123_
                                                         _e298993299126_
                                                         _hd298992299130_
                                                         _tl298991299133_
                                                         _e298996299136_
                                                         _hd298995299140_
                                                         _tl298994299143_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g298976299018_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl298991299133_))
                                                    (___kont305844305845_
                                                     _hd298992299130_
                                                     _hd298989299120_
                                                     _hd298986299110_
                                                     _hd298983299100_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g298976299018_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g298976299018_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g298976299018_)))))
                        (let () (declare (not safe)) (_g298976299018_)))))
                (let () (declare (not safe)) (_g298976299018_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx299175_)
      (let* ((_g299179299214_
              (lambda (_g299180299210_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g299180299210_))))
             (_g299178299333_
              (lambda (_g299180299218_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g299180299218_))
                    (let ((_e299186299221_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g299180299218_))))
                      (let ((_hd299185299225_
                             (let ()
                               (declare (not safe))
                               (##car _e299186299221_)))
                            (_tl299184299228_
                             (let ()
                               (declare (not safe))
                               (##cdr _e299186299221_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl299184299228_))
                            (let ((_g306308_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl299184299228_
                                      '0))))
                              (begin
                                (let ((_g306309_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g306308_)
                                             (##vector-length _g306308_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g306309_ 2)))
                                      (error "Context expects 2 values"
                                             _g306309_)))
                                (let ((_target299187299231_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g306308_ 0)))
                                      (_tl299189299234_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g306308_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl299189299234_))
                                      (letrec ((_loop299190299237_
                                                (lambda (_hd299188299241_
                                                         _symbol299194299244_
                                                         _method299195299246_
                                                         _type-t299196299248_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd299188299241_))
                                                      (let ((_e299191299251_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd299188299241_))))
                (let ((_lp-hd299192299255_
                       (let () (declare (not safe)) (##car _e299191299251_)))
                      (_lp-tl299193299258_
                       (let () (declare (not safe)) (##cdr _e299191299251_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd299192299255_))
                      (let ((_e299202299261_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd299192299255_))))
                        (let ((_hd299201299265_
                               (let ()
                                 (declare (not safe))
                                 (##car _e299202299261_)))
                              (_tl299200299268_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e299202299261_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl299200299268_))
                              (let ((_e299205299271_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl299200299268_))))
                                (let ((_hd299204299275_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e299205299271_)))
                                      (_tl299203299278_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e299205299271_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl299203299278_))
                                      (let ((_e299208299281_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl299203299278_))))
                                        (let ((_hd299207299285_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e299208299281_)))
                                              (_tl299206299288_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e299208299281_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl299206299288_))
                                              (_loop299190299237_
                                               _lp-tl299193299258_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd299207299285_
                                                       _symbol299194299244_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd299204299275_
                                                       _method299195299246_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd299201299265_
                                                       _type-t299196299248_)))
                                              (_g299179299214_
                                               _g299180299218_))))
                                      (_g299179299214_ _g299180299218_))))
                              (_g299179299214_ _g299180299218_))))
                      (_g299179299214_ _g299180299218_))))
              (let ((_symbol299197299291_ (reverse _symbol299194299244_))
                    (_method299198299294_ (reverse _method299195299246_))
                    (_type-t299199299296_ (reverse _type-t299196299248_)))
                ((lambda (_L299299_ _L299301_ _L299302_)
                   (let ((__tmp306317
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp306310
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L299299_
                               _L299301_
                               _L299302_))
                            (let ((__tmp306311
                                   (lambda (_g299318299323_
                                            _g299319299326_
                                            _g299320299328_
                                            _g299321299330_)
                                     (let ((__tmp306312
                                            (let ((__tmp306316
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp306313
                                                   (let ((__tmp306314
                                                          (let ((__tmp306315
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g299318299323_ '()))))
                    (declare (not safe))
                    (cons _g299319299326_ __tmp306315))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g299320299328_
                                                           __tmp306314))))
                                              (declare (not safe))
                                              (cons __tmp306316 __tmp306313))))
                                       (declare (not safe))
                                       (cons __tmp306312 _g299321299330_)))))
                              (declare (not safe))
                              (foldr* __tmp306311
                                      '()
                                      _L299299_
                                      _L299301_
                                      _L299302_)))))
                     (declare (not safe))
                     (cons __tmp306317 __tmp306310)))
                 _symbol299197299291_
                 _method299198299294_
                 _type-t299199299296_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop299190299237_
                                         _target299187299231_
                                         '()
                                         '()
                                         '()))
                                      (_g299179299214_ _g299180299218_)))))
                            (_g299179299214_ _g299180299218_))))
                    (_g299179299214_ _g299180299218_)))))
        (_g299178299333_ _$stx299175_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx299338_)
      (let* ((_g299342299375_
              (lambda (_g299343299371_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g299343299371_))))
             (_g299341299489_
              (lambda (_g299343299379_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g299343299379_))
                    (let ((_e299349299382_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g299343299379_))))
                      (let ((_hd299348299386_
                             (let ()
                               (declare (not safe))
                               (##car _e299349299382_)))
                            (_tl299347299389_
                             (let ()
                               (declare (not safe))
                               (##cdr _e299349299382_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl299347299389_))
                            (let ((_e299352299392_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl299347299389_))))
                              (let ((_hd299351299396_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e299352299392_)))
                                    (_tl299350299399_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e299352299392_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl299350299399_))
                                    (let ((_g306318_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl299350299399_
                                              '0))))
                                      (begin
                                        (let ((_g306319_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g306318_)
                                                     (##vector-length
                                                      _g306318_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g306319_ 2)))
                                              (error "Context expects 2 values"
                                                     _g306319_)))
                                        (let ((_target299353299402_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g306318_ 0)))
                                              (_tl299355299405_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g306318_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl299355299405_))
                                              (letrec ((_loop299356299408_
                                                        (lambda (_hd299354299412_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol299360299415_
                         _method299361299417_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd299354299412_))
                      (let ((_e299357299420_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd299354299412_))))
                        (let ((_lp-hd299358299424_
                               (let ()
                                 (declare (not safe))
                                 (##car _e299357299420_)))
                              (_lp-tl299359299427_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e299357299420_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd299358299424_))
                              (let ((_e299366299430_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd299358299424_))))
                                (let ((_hd299365299434_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e299366299430_)))
                                      (_tl299364299437_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e299366299430_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl299364299437_))
                                      (let ((_e299369299440_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl299364299437_))))
                                        (let ((_hd299368299444_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e299369299440_)))
                                              (_tl299367299447_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e299369299440_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl299367299447_))
                                              (_loop299356299408_
                                               _lp-tl299359299427_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd299368299444_
                                                       _symbol299360299415_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd299365299434_
                                                       _method299361299417_)))
                                              (_g299342299375_
                                               _g299343299379_))))
                                      (_g299342299375_ _g299343299379_))))
                              (_g299342299375_ _g299343299379_))))
                      (let ((_symbol299362299450_
                             (reverse _symbol299360299415_))
                            (_method299363299453_
                             (reverse _method299361299417_)))
                        ((lambda (_L299456_ _L299458_ _L299459_)
                           (let ((__tmp306327
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp306320
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L299456_
                                       _L299458_))
                                    (let ((__tmp306321
                                           (lambda (_g299477299481_
                                                    _g299478299484_
                                                    _g299479299486_)
                                             (let ((__tmp306322
                                                    (let ((__tmp306326
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp306323
                                                           (let ((__tmp306324
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp306325
                                 (let ()
                                   (declare (not safe))
                                   (cons _g299477299481_ '()))))
                            (declare (not safe))
                            (cons _g299478299484_ __tmp306325))))
                     (declare (not safe))
                     (cons _L299459_ __tmp306324))))
              (declare (not safe))
              (cons __tmp306326 __tmp306323))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp306322
                                                     _g299479299486_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp306321
                                              '()
                                              _L299456_
                                              _L299458_)))))
                             (declare (not safe))
                             (cons __tmp306327 __tmp306320)))
                         _symbol299362299450_
                         _method299363299453_
                         _hd299351299396_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop299356299408_
                                                 _target299353299402_
                                                 '()
                                                 '()))
                                              (_g299342299375_
                                               _g299343299379_)))))
                                    (_g299342299375_ _g299343299379_))))
                            (_g299342299375_ _g299343299379_))))
                    (_g299342299375_ _g299343299379_)))))
        (_g299341299489_ _$stx299338_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx299494_)
      (let* ((_g299498299512_
              (lambda (_g299499299508_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g299499299508_))))
             (_g299497299553_
              (lambda (_g299499299516_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g299499299516_))
                    (let ((_e299503299519_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g299499299516_))))
                      (let ((_hd299502299523_
                             (let ()
                               (declare (not safe))
                               (##car _e299503299519_)))
                            (_tl299501299526_
                             (let ()
                               (declare (not safe))
                               (##cdr _e299503299519_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl299501299526_))
                            (let ((_e299506299529_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl299501299526_))))
                              (let ((_hd299505299533_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e299506299529_)))
                                    (_tl299504299536_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e299506299529_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl299504299536_))
                                    ((lambda (_L299539_)
                                       (let ((__tmp306332
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp306328
                                              (let ((__tmp306329
                                                     (let ((__tmp306331
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp306330
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L299539_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp306331 __tmp306330))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp306329 '()))))
                                         (declare (not safe))
                                         (cons __tmp306332 __tmp306328)))
                                     _hd299505299533_)
                                    (_g299498299512_ _g299499299516_))))
                            (_g299498299512_ _g299499299516_))))
                    (_g299498299512_ _g299499299516_)))))
        (_g299497299553_ _$stx299494_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx299557_)
      (let* ((_g299561299611_
              (lambda (_g299562299607_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g299562299607_))))
             (_g299560299778_
              (lambda (_g299562299615_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g299562299615_))
                    (let ((_e299575299618_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g299562299615_))))
                      (let ((_hd299574299622_
                             (let ()
                               (declare (not safe))
                               (##car _e299575299618_)))
                            (_tl299573299625_
                             (let ()
                               (declare (not safe))
                               (##cdr _e299575299618_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl299573299625_))
                            (let ((_e299578299628_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl299573299625_))))
                              (let ((_hd299577299632_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e299578299628_)))
                                    (_tl299576299635_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e299578299628_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl299576299635_))
                                    (let ((_e299581299638_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl299576299635_))))
                                      (let ((_hd299580299642_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e299581299638_)))
                                            (_tl299579299645_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e299581299638_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl299579299645_))
                                            (let ((_e299584299648_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl299579299645_))))
                                              (let ((_hd299583299652_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e299584299648_)))
                                                    (_tl299582299655_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e299584299648_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl299582299655_))
                                                    (let ((_e299587299658_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl299582299655_))))
                                                      (let ((_hd299586299662_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e299587299658_)))
                    (_tl299585299665_
                     (let () (declare (not safe)) (##cdr _e299587299658_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl299585299665_))
                    (let ((_e299590299668_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl299585299665_))))
                      (let ((_hd299589299672_
                             (let ()
                               (declare (not safe))
                               (##car _e299590299668_)))
                            (_tl299588299675_
                             (let ()
                               (declare (not safe))
                               (##cdr _e299590299668_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl299588299675_))
                            (let ((_e299593299678_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl299588299675_))))
                              (let ((_hd299592299682_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e299593299678_)))
                                    (_tl299591299685_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e299593299678_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl299591299685_))
                                    (let ((_e299596299688_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl299591299685_))))
                                      (let ((_hd299595299692_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e299596299688_)))
                                            (_tl299594299695_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e299596299688_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl299594299695_))
                                            (let ((_e299599299698_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl299594299695_))))
                                              (let ((_hd299598299702_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e299599299698_)))
                                                    (_tl299597299705_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e299599299698_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl299597299705_))
                                                    (let ((_e299602299708_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl299597299705_))))
                                                      (let ((_hd299601299712_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e299602299708_)))
                    (_tl299600299715_
                     (let () (declare (not safe)) (##cdr _e299602299708_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl299600299715_))
                    (let ((_e299605299718_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl299600299715_))))
                      (let ((_hd299604299722_
                             (let ()
                               (declare (not safe))
                               (##car _e299605299718_)))
                            (_tl299603299725_
                             (let ()
                               (declare (not safe))
                               (##cdr _e299605299718_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl299603299725_))
                            ((lambda (_L299728_
                                      _L299730_
                                      _L299731_
                                      _L299732_
                                      _L299733_
                                      _L299734_
                                      _L299735_
                                      _L299736_
                                      _L299737_
                                      _L299738_)
                               (let ((__tmp306367
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0
                                         '#f
                                         'make-!class)))
                                     (__tmp306333
                                      (let ((__tmp306364
                                             (let ((__tmp306366
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp306365
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L299738_ '()))))
                                               (declare (not safe))
                                               (cons __tmp306366 __tmp306365)))
                                            (__tmp306334
                                             (let ((__tmp306361
                                                    (let ((__tmp306363
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote)))
                                                          (__tmp306362
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L299737_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp306363 __tmp306362)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp306335
                                                    (let ((__tmp306358
                                                           (let ((__tmp306360
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp306359
                          (let () (declare (not safe)) (cons _L299736_ '()))))
                     (declare (not safe))
                     (cons __tmp306360 __tmp306359)))
                  (__tmp306336
                   (let ((__tmp306355
                          (let ((__tmp306357
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp306356
                                 (let ()
                                   (declare (not safe))
                                   (cons _L299735_ '()))))
                            (declare (not safe))
                            (cons __tmp306357 __tmp306356)))
                         (__tmp306337
                          (let ((__tmp306352
                                 (let ((__tmp306354
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote)))
                                       (__tmp306353
                                        (let ()
                                          (declare (not safe))
                                          (cons _L299734_ '()))))
                                   (declare (not safe))
                                   (cons __tmp306354 __tmp306353)))
                                (__tmp306338
                                 (let ((__tmp306349
                                        (let ((__tmp306351
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'quote)))
                                              (__tmp306350
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L299733_ '()))))
                                          (declare (not safe))
                                          (cons __tmp306351 __tmp306350)))
                                       (__tmp306339
                                        (let ((__tmp306340
                                               (let ((__tmp306341
                                                      (let ((__tmp306346
                                                             (let ((__tmp306348
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp306347
                            (let ()
                              (declare (not safe))
                              (cons _L299730_ '()))))
                       (declare (not safe))
                       (cons __tmp306348 __tmp306347)))
                    (__tmp306342
                     (let ((__tmp306343
                            (let ((__tmp306345
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp306344
                                   (let ()
                                     (declare (not safe))
                                     (cons _L299728_ '()))))
                              (declare (not safe))
                              (cons __tmp306345 __tmp306344))))
                       (declare (not safe))
                       (cons __tmp306343 '()))))
                (declare (not safe))
                (cons __tmp306346 __tmp306342))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L299731_
                                                       __tmp306341))))
                                          (declare (not safe))
                                          (cons _L299732_ __tmp306340))))
                                   (declare (not safe))
                                   (cons __tmp306349 __tmp306339))))
                            (declare (not safe))
                            (cons __tmp306352 __tmp306338))))
                     (declare (not safe))
                     (cons __tmp306355 __tmp306337))))
              (declare (not safe))
              (cons __tmp306358 __tmp306336))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp306361
                                                     __tmp306335))))
                                        (declare (not safe))
                                        (cons __tmp306364 __tmp306334))))
                                 (declare (not safe))
                                 (cons __tmp306367 __tmp306333)))
                             _hd299604299722_
                             _hd299601299712_
                             _hd299598299702_
                             _hd299595299692_
                             _hd299592299682_
                             _hd299589299672_
                             _hd299586299662_
                             _hd299583299652_
                             _hd299580299642_
                             _hd299577299632_)
                            (_g299561299611_ _g299562299615_))))
                    (_g299561299611_ _g299562299615_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g299561299611_
                                                     _g299562299615_))))
                                            (_g299561299611_
                                             _g299562299615_))))
                                    (_g299561299611_ _g299562299615_))))
                            (_g299561299611_ _g299562299615_))))
                    (_g299561299611_ _g299562299615_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g299561299611_
                                                     _g299562299615_))))
                                            (_g299561299611_
                                             _g299562299615_))))
                                    (_g299561299611_ _g299562299615_))))
                            (_g299561299611_ _g299562299615_))))
                    (_g299561299611_ _g299562299615_)))))
        (_g299560299778_ _$stx299557_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx299782_)
      (let* ((_g299786299800_
              (lambda (_g299787299796_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g299787299796_))))
             (_g299785299841_
              (lambda (_g299787299804_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g299787299804_))
                    (let ((_e299791299807_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g299787299804_))))
                      (let ((_hd299790299811_
                             (let ()
                               (declare (not safe))
                               (##car _e299791299807_)))
                            (_tl299789299814_
                             (let ()
                               (declare (not safe))
                               (##cdr _e299791299807_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl299789299814_))
                            (let ((_e299794299817_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl299789299814_))))
                              (let ((_hd299793299821_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e299794299817_)))
                                    (_tl299792299824_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e299794299817_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl299792299824_))
                                    ((lambda (_L299827_)
                                       (let ((__tmp306372
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp306368
                                              (let ((__tmp306369
                                                     (let ((__tmp306371
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp306370
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L299827_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp306371 __tmp306370))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp306369 '()))))
                                         (declare (not safe))
                                         (cons __tmp306372 __tmp306368)))
                                     _hd299793299821_)
                                    (_g299786299800_ _g299787299804_))))
                            (_g299786299800_ _g299787299804_))))
                    (_g299786299800_ _g299787299804_)))))
        (_g299785299841_ _$stx299782_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx299845_)
      (let* ((_g299849299863_
              (lambda (_g299850299859_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g299850299859_))))
             (_g299848299904_
              (lambda (_g299850299867_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g299850299867_))
                    (let ((_e299854299870_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g299850299867_))))
                      (let ((_hd299853299874_
                             (let ()
                               (declare (not safe))
                               (##car _e299854299870_)))
                            (_tl299852299877_
                             (let ()
                               (declare (not safe))
                               (##cdr _e299854299870_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl299852299877_))
                            (let ((_e299857299880_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl299852299877_))))
                              (let ((_hd299856299884_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e299857299880_)))
                                    (_tl299855299887_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e299857299880_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl299855299887_))
                                    ((lambda (_L299890_)
                                       (let ((__tmp306377
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp306373
                                              (let ((__tmp306374
                                                     (let ((__tmp306376
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp306375
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L299890_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp306376 __tmp306375))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp306374 '()))))
                                         (declare (not safe))
                                         (cons __tmp306377 __tmp306373)))
                                     _hd299856299884_)
                                    (_g299849299863_ _g299850299867_))))
                            (_g299849299863_ _g299850299867_))))
                    (_g299849299863_ _g299850299867_)))))
        (_g299848299904_ _$stx299845_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx299908_)
      (let* ((_g299912299934_
              (lambda (_g299913299930_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g299913299930_))))
             (_g299911300003_
              (lambda (_g299913299938_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g299913299938_))
                    (let ((_e299919299941_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g299913299938_))))
                      (let ((_hd299918299945_
                             (let ()
                               (declare (not safe))
                               (##car _e299919299941_)))
                            (_tl299917299948_
                             (let ()
                               (declare (not safe))
                               (##cdr _e299919299941_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl299917299948_))
                            (let ((_e299922299951_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl299917299948_))))
                              (let ((_hd299921299955_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e299922299951_)))
                                    (_tl299920299958_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e299922299951_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl299920299958_))
                                    (let ((_e299925299961_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl299920299958_))))
                                      (let ((_hd299924299965_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e299925299961_)))
                                            (_tl299923299968_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e299925299961_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl299923299968_))
                                            (let ((_e299928299971_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl299923299968_))))
                                              (let ((_hd299927299975_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e299928299971_)))
                                                    (_tl299926299978_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e299928299971_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl299926299978_))
                                                    ((lambda (_L299981_
                                                              _L299983_
                                                              _L299984_)
                                                       (let ((__tmp306387
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp306378
                      (let ((__tmp306384
                             (let ((__tmp306386
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp306385
                                    (let ()
                                      (declare (not safe))
                                      (cons _L299984_ '()))))
                               (declare (not safe))
                               (cons __tmp306386 __tmp306385)))
                            (__tmp306379
                             (let ((__tmp306381
                                    (let ((__tmp306383
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp306382
                                           (let ()
                                             (declare (not safe))
                                             (cons _L299983_ '()))))
                                      (declare (not safe))
                                      (cons __tmp306383 __tmp306382)))
                                   (__tmp306380
                                    (let ()
                                      (declare (not safe))
                                      (cons _L299981_ '()))))
                               (declare (not safe))
                               (cons __tmp306381 __tmp306380))))
                        (declare (not safe))
                        (cons __tmp306384 __tmp306379))))
                 (declare (not safe))
                 (cons __tmp306387 __tmp306378)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd299927299975_
                                                     _hd299924299965_
                                                     _hd299921299955_)
                                                    (_g299912299934_
                                                     _g299913299938_))))
                                            (_g299912299934_
                                             _g299913299938_))))
                                    (_g299912299934_ _g299913299938_))))
                            (_g299912299934_ _g299913299938_))))
                    (_g299912299934_ _g299913299938_)))))
        (_g299911300003_ _$stx299908_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx300007_)
      (let* ((_g300011300033_
              (lambda (_g300012300029_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g300012300029_))))
             (_g300010300102_
              (lambda (_g300012300037_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g300012300037_))
                    (let ((_e300018300040_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g300012300037_))))
                      (let ((_hd300017300044_
                             (let ()
                               (declare (not safe))
                               (##car _e300018300040_)))
                            (_tl300016300047_
                             (let ()
                               (declare (not safe))
                               (##cdr _e300018300040_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl300016300047_))
                            (let ((_e300021300050_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl300016300047_))))
                              (let ((_hd300020300054_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e300021300050_)))
                                    (_tl300019300057_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e300021300050_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl300019300057_))
                                    (let ((_e300024300060_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl300019300057_))))
                                      (let ((_hd300023300064_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e300024300060_)))
                                            (_tl300022300067_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e300024300060_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl300022300067_))
                                            (let ((_e300027300070_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl300022300067_))))
                                              (let ((_hd300026300074_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e300027300070_)))
                                                    (_tl300025300077_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e300027300070_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl300025300077_))
                                                    ((lambda (_L300080_
                                                              _L300082_
                                                              _L300083_)
                                                       (let ((__tmp306397
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp306388
                      (let ((__tmp306394
                             (let ((__tmp306396
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp306395
                                    (let ()
                                      (declare (not safe))
                                      (cons _L300083_ '()))))
                               (declare (not safe))
                               (cons __tmp306396 __tmp306395)))
                            (__tmp306389
                             (let ((__tmp306391
                                    (let ((__tmp306393
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp306392
                                           (let ()
                                             (declare (not safe))
                                             (cons _L300082_ '()))))
                                      (declare (not safe))
                                      (cons __tmp306393 __tmp306392)))
                                   (__tmp306390
                                    (let ()
                                      (declare (not safe))
                                      (cons _L300080_ '()))))
                               (declare (not safe))
                               (cons __tmp306391 __tmp306390))))
                        (declare (not safe))
                        (cons __tmp306394 __tmp306389))))
                 (declare (not safe))
                 (cons __tmp306397 __tmp306388)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd300026300074_
                                                     _hd300023300064_
                                                     _hd300020300054_)
                                                    (_g300011300033_
                                                     _g300012300037_))))
                                            (_g300011300033_
                                             _g300012300037_))))
                                    (_g300011300033_ _g300012300037_))))
                            (_g300011300033_ _g300012300037_))))
                    (_g300011300033_ _g300012300037_)))))
        (_g300010300102_ _$stx300007_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx300106_)
      (let* ((___stx305907305908_ _$stx300106_)
             (_g300114300182_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx305907305908_)))))
        (let ((___kont305910305911_
               (lambda (_L300460_ _L300462_)
                 (let ((__tmp306413
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp306398
                        (let ((__tmp306409
                               (let ((__tmp306412
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp306410
                                      (let ((__tmp306411
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp306411 '()))))
                                 (declare (not safe))
                                 (cons __tmp306412 __tmp306410)))
                              (__tmp306399
                               (let ((__tmp306406
                                      (let ((__tmp306408
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp306407
                                             (let ()
                                               (declare (not safe))
                                               (cons _L300462_ '()))))
                                        (declare (not safe))
                                        (cons __tmp306408 __tmp306407)))
                                     (__tmp306400
                                      (let ((__tmp306401
                                             (let ((__tmp306402
                                                    (let ((__tmp306403
                                                           (let ((__tmp306405
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp306404
                          (let () (declare (not safe)) (cons _L300460_ '()))))
                     (declare (not safe))
                     (cons __tmp306405 __tmp306404))))
              (declare (not safe))
              (cons __tmp306403 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L300460_ __tmp306402))))
                                        (declare (not safe))
                                        (cons '#f __tmp306401))))
                                 (declare (not safe))
                                 (cons __tmp306406 __tmp306400))))
                          (declare (not safe))
                          (cons __tmp306409 __tmp306399))))
                   (declare (not safe))
                   (cons __tmp306413 __tmp306398))))
              (___kont305912305913_
               (lambda (_L300391_ _L300393_)
                 (let ((__tmp306414
                        (let ((__tmp306415
                               (let ((__tmp306416
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L300391_ __tmp306416))))
                          (declare (not safe))
                          (cons 'primitive: __tmp306415))))
                   (declare (not safe))
                   (cons _L300393_ __tmp306414))))
              (___kont305914305915_
               (lambda (_L300330_ _L300332_)
                 (let ((__tmp306430
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp306417
                        (let ((__tmp306426
                               (let ((__tmp306429
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp306427
                                      (let ((__tmp306428
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp306428 '()))))
                                 (declare (not safe))
                                 (cons __tmp306429 __tmp306427)))
                              (__tmp306418
                               (let ((__tmp306423
                                      (let ((__tmp306425
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp306424
                                             (let ()
                                               (declare (not safe))
                                               (cons _L300332_ '()))))
                                        (declare (not safe))
                                        (cons __tmp306425 __tmp306424)))
                                     (__tmp306419
                                      (let ((__tmp306420
                                             (let ((__tmp306422
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp306421
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L300330_ '()))))
                                               (declare (not safe))
                                               (cons __tmp306422
                                                     __tmp306421))))
                                        (declare (not safe))
                                        (cons __tmp306420 '()))))
                                 (declare (not safe))
                                 (cons __tmp306423 __tmp306419))))
                          (declare (not safe))
                          (cons __tmp306426 __tmp306418))))
                   (declare (not safe))
                   (cons __tmp306430 __tmp306417))))
              (___kont305916305917_
               (lambda (_L300262_ _L300264_)
                 (let ((__tmp306444
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp306431
                        (let ((__tmp306440
                               (let ((__tmp306443
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp306441
                                      (let ((__tmp306442
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp306442 '()))))
                                 (declare (not safe))
                                 (cons __tmp306443 __tmp306441)))
                              (__tmp306432
                               (let ((__tmp306437
                                      (let ((__tmp306439
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp306438
                                             (let ()
                                               (declare (not safe))
                                               (cons _L300264_ '()))))
                                        (declare (not safe))
                                        (cons __tmp306439 __tmp306438)))
                                     (__tmp306433
                                      (let ((__tmp306434
                                             (let ((__tmp306436
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp306435
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L300262_ '()))))
                                               (declare (not safe))
                                               (cons __tmp306436
                                                     __tmp306435))))
                                        (declare (not safe))
                                        (cons __tmp306434 '()))))
                                 (declare (not safe))
                                 (cons __tmp306437 __tmp306433))))
                          (declare (not safe))
                          (cons __tmp306440 __tmp306432))))
                   (declare (not safe))
                   (cons __tmp306444 __tmp306431))))
              (___kont305918305919_
               (lambda (_L300209_ _L300211_)
                 (let ((__tmp306445
                        (let ((__tmp306446
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L300209_ __tmp306446))))
                   (declare (not safe))
                   (cons _L300211_ __tmp306445)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx305907305908_))
              (let ((_e300120300416_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx305907305908_))))
                (let ((_tl300118300423_
                       (let () (declare (not safe)) (##cdr _e300120300416_)))
                      (_hd300119300420_
                       (let () (declare (not safe)) (##car _e300120300416_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl300118300423_))
                      (let ((_e300123300426_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl300118300423_))))
                        (let ((_tl300121300433_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e300123300426_)))
                              (_hd300122300430_
                               (let ()
                                 (declare (not safe))
                                 (##car _e300123300426_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl300121300433_))
                              (let ((_e300126300436_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl300121300433_))))
                                (let ((_tl300124300443_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e300126300436_)))
                                      (_hd300125300440_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e300126300436_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd300125300440_))
                                      (let ((_e300127300446_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd300125300440_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e300127300446_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl300124300443_))
                                                (let ((_e300130300450_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl300124300443_))))
                                                  (let ((_tl300128300457_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e300130300450_)))
                                                        (_hd300129300454_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e300130300450_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl300128300457_))
                                                        (___kont305910305911_
                                                         _hd300129300454_
                                                         _hd300122300430_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd300122300430_))
                                                            (let ((_e300139300377_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd300122300430_))))
                      (declare (not safe))
                      (_g300114300182_))
                    (let () (declare (not safe)) (_g300114300182_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd300122300430_))
                                                    (let ((_e300139300377_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd300122300430_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e300139300377_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl300124300443_))
                      (___kont305912305913_ _hd300125300440_ _hd300119300420_)
                      (let () (declare (not safe)) (_g300114300182_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl300124300443_))
                      (___kont305916305917_ _hd300125300440_ _hd300122300430_)
                      (let () (declare (not safe)) (_g300114300182_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl300124300443_))
                                                        (___kont305916305917_
                                                         _hd300125300440_
                                                         _hd300122300430_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g300114300182_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd300122300430_))
                                                (let ((_e300139300377_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd300122300430_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e300139300377_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl300124300443_))
                                                          (___kont305912305913_
                                                           _hd300125300440_
                                                           _hd300119300420_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl300124300443_))
                      (let ((_e300157300320_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl300124300443_))))
                        (let ((_tl300155300327_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e300157300320_)))
                              (_hd300156300324_
                               (let ()
                                 (declare (not safe))
                                 (##car _e300157300320_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl300155300327_))
                              (___kont305914305915_
                               _hd300156300324_
                               _hd300125300440_)
                              (let ()
                                (declare (not safe))
                                (_g300114300182_)))))
                      (let () (declare (not safe)) (_g300114300182_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl300124300443_))
                  (___kont305916305917_ _hd300125300440_ _hd300122300430_)
                  (let () (declare (not safe)) (_g300114300182_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl300124300443_))
                                                    (___kont305916305917_
                                                     _hd300125300440_
                                                     _hd300122300430_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g300114300182_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd300122300430_))
                                          (let ((_e300139300377_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd300122300430_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e300139300377_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl300124300443_))
                                                    (___kont305912305913_
                                                     _hd300125300440_
                                                     _hd300119300420_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl300124300443_))
                                                        (let ((_e300157300320_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl300124300443_))))
                  (let ((_tl300155300327_
                         (let () (declare (not safe)) (##cdr _e300157300320_)))
                        (_hd300156300324_
                         (let ()
                           (declare (not safe))
                           (##car _e300157300320_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl300155300327_))
                        (___kont305914305915_
                         _hd300156300324_
                         _hd300125300440_)
                        (let () (declare (not safe)) (_g300114300182_)))))
                (let () (declare (not safe)) (_g300114300182_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl300124300443_))
                                                    (___kont305916305917_
                                                     _hd300125300440_
                                                     _hd300122300430_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g300114300182_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl300124300443_))
                                              (___kont305916305917_
                                               _hd300125300440_
                                               _hd300122300430_)
                                              (let ()
                                                (declare (not safe))
                                                (_g300114300182_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd300122300430_))
                                  (let ((_e300139300377_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd300122300430_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl300121300433_))
                                        (___kont305918305919_
                                         _hd300122300430_
                                         _hd300119300420_)
                                        (let ()
                                          (declare (not safe))
                                          (_g300114300182_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl300121300433_))
                                      (___kont305918305919_
                                       _hd300122300430_
                                       _hd300119300420_)
                                      (let ()
                                        (declare (not safe))
                                        (_g300114300182_)))))))
                      (let () (declare (not safe)) (_g300114300182_)))))
              (let () (declare (not safe)) (_g300114300182_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx300484_)
      (let* ((___stx306047306048_ _$stx300484_)
             (_g300489300544_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx306047306048_)))))
        (let ((___kont306050306051_
               (lambda (_L300729_ _L300731_)
                 (let ((__tmp306462
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp306447
                        (let ((__tmp306458
                               (let ((__tmp306461
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp306459
                                      (let ((__tmp306460
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp306460 '()))))
                                 (declare (not safe))
                                 (cons __tmp306461 __tmp306459)))
                              (__tmp306448
                               (let ((__tmp306449
                                      (let ((__tmp306457
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp306450
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L300729_
                                                  _L300731_))
                                               (let ((__tmp306451
                                                      (lambda (_g300748300752_
                                                               _g300749300755_
                                                               _g300750300757_)
                                                        (let ((__tmp306452
                                                               (let ((__tmp306456
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp306453
                              (let ((__tmp306454
                                     (let ((__tmp306455
                                            (let ()
                                              (declare (not safe))
                                              (cons _g300748300752_ '()))))
                                       (declare (not safe))
                                       (cons _g300749300755_ __tmp306455))))
                                (declare (not safe))
                                (cons 'primitive: __tmp306454))))
                         (declare (not safe))
                         (cons __tmp306456 __tmp306453))))
                  (declare (not safe))
                  (cons __tmp306452 _g300750300757_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp306451
                                                         '()
                                                         _L300729_
                                                         _L300731_)))))
                                        (declare (not safe))
                                        (cons __tmp306457 __tmp306450))))
                                 (declare (not safe))
                                 (cons __tmp306449 '()))))
                          (declare (not safe))
                          (cons __tmp306458 __tmp306448))))
                   (declare (not safe))
                   (cons __tmp306462 __tmp306447))))
              (___kont306054306055_
               (lambda (_L300615_ _L300617_)
                 (let ((__tmp306477
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp306463
                        (let ((__tmp306473
                               (let ((__tmp306476
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp306474
                                      (let ((__tmp306475
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp306475 '()))))
                                 (declare (not safe))
                                 (cons __tmp306476 __tmp306474)))
                              (__tmp306464
                               (let ((__tmp306465
                                      (let ((__tmp306472
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp306466
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L300615_
                                                  _L300617_))
                                               (let ((__tmp306467
                                                      (lambda (_g300632300636_
                                                               _g300633300639_
                                                               _g300634300641_)
                                                        (let ((__tmp306468
                                                               (let ((__tmp306471
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp306469
                              (let ((__tmp306470
                                     (let ()
                                       (declare (not safe))
                                       (cons _g300632300636_ '()))))
                                (declare (not safe))
                                (cons _g300633300639_ __tmp306470))))
                         (declare (not safe))
                         (cons __tmp306471 __tmp306469))))
                  (declare (not safe))
                  (cons __tmp306468 _g300634300641_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp306467
                                                         '()
                                                         _L300615_
                                                         _L300617_)))))
                                        (declare (not safe))
                                        (cons __tmp306472 __tmp306466))))
                                 (declare (not safe))
                                 (cons __tmp306465 '()))))
                          (declare (not safe))
                          (cons __tmp306473 __tmp306464))))
                   (declare (not safe))
                   (cons __tmp306477 __tmp306463)))))
          (let* ((___match306098306099_
                  (lambda (_e300521300551_
                           _hd300520300555_
                           _tl300519300558_
                           ___splice306056306057_
                           _target300522300561_
                           _tl300524300564_)
                    (letrec ((_loop300525300567_
                              (lambda (_hd300523300571_
                                       _dispatch300529300574_
                                       _arity300530300576_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd300523300571_))
                                    (let ((_e300526300579_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd300523300571_))))
                                      (let ((_lp-tl300528300586_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e300526300579_)))
                                            (_lp-hd300527300583_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e300526300579_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd300527300583_))
                                            (let ((_e300535300589_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd300527300583_))))
                                              (let ((_tl300533300596_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e300535300589_)))
                                                    (_hd300534300593_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e300535300589_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl300533300596_))
                                                    (let ((_e300538300599_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl300533300596_))))
                                                      (let ((_tl300536300606_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e300538300599_)))
                    (_hd300537300603_
                     (let () (declare (not safe)) (##car _e300538300599_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl300536300606_))
                    (_loop300525300567_
                     _lp-tl300528300586_
                     (let ()
                       (declare (not safe))
                       (cons _hd300537300603_ _dispatch300529300574_))
                     (let ()
                       (declare (not safe))
                       (cons _hd300534300593_ _arity300530300576_)))
                    (let () (declare (not safe)) (_g300489300544_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g300489300544_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g300489300544_)))))
                                    (let ((_arity300532300612_
                                           (reverse _arity300530300576_))
                                          (_dispatch300531300609_
                                           (reverse _dispatch300529300574_)))
                                      (___kont306054306055_
                                       _dispatch300531300609_
                                       _arity300532300612_))))))
                      (_loop300525300567_ _target300522300561_ '() '()))))
                 (___match306090306091_
                  (lambda (_e300521300551_ _hd300520300555_ _tl300519300558_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl300519300558_))
                        (let ((___splice306056306057_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl300519300558_
                                  '0))))
                          (let ((_tl300524300564_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice306056306057_ '1)))
                                (_target300522300561_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice306056306057_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl300524300564_))
                                (___match306098306099_
                                 _e300521300551_
                                 _hd300520300555_
                                 _tl300519300558_
                                 ___splice306056306057_
                                 _target300522300561_
                                 _tl300524300564_)
                                (let ()
                                  (declare (not safe))
                                  (_g300489300544_)))))
                        (let () (declare (not safe)) (_g300489300544_)))))
                 (___match306084306085_
                  (lambda (_e300495300651_
                           _hd300494300655_
                           _tl300493300658_
                           _e300498300661_
                           _hd300497300665_
                           _tl300496300668_
                           _e300499300671_
                           ___splice306052306053_
                           _target300500300675_
                           _tl300502300678_)
                    (letrec ((_loop300503300681_
                              (lambda (_hd300501300685_
                                       _dispatch300507300688_
                                       _arity300508300690_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd300501300685_))
                                    (let ((_e300504300693_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd300501300685_))))
                                      (let ((_lp-tl300506300700_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e300504300693_)))
                                            (_lp-hd300505300697_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e300504300693_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd300505300697_))
                                            (let ((_e300513300703_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd300505300697_))))
                                              (let ((_tl300511300710_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e300513300703_)))
                                                    (_hd300512300707_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e300513300703_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl300511300710_))
                                                    (let ((_e300516300713_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl300511300710_))))
                                                      (let ((_tl300514300720_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e300516300713_)))
                    (_hd300515300717_
                     (let () (declare (not safe)) (##car _e300516300713_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl300514300720_))
                    (_loop300503300681_
                     _lp-tl300506300700_
                     (let ()
                       (declare (not safe))
                       (cons _hd300515300717_ _dispatch300507300688_))
                     (let ()
                       (declare (not safe))
                       (cons _hd300512300707_ _arity300508300690_)))
                    (___match306090306091_
                     _e300495300651_
                     _hd300494300655_
                     _tl300493300658_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match306090306091_
                                                     _e300495300651_
                                                     _hd300494300655_
                                                     _tl300493300658_))))
                                            (___match306090306091_
                                             _e300495300651_
                                             _hd300494300655_
                                             _tl300493300658_))))
                                    (let ((_arity300510300726_
                                           (reverse _arity300508300690_))
                                          (_dispatch300509300723_
                                           (reverse _dispatch300507300688_)))
                                      (___kont306050306051_
                                       _dispatch300509300723_
                                       _arity300510300726_))))))
                      (_loop300503300681_ _target300500300675_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx306047306048_))
                (let ((_e300495300651_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx306047306048_))))
                  (let ((_tl300493300658_
                         (let () (declare (not safe)) (##cdr _e300495300651_)))
                        (_hd300494300655_
                         (let ()
                           (declare (not safe))
                           (##car _e300495300651_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl300493300658_))
                        (let ((_e300498300661_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl300493300658_))))
                          (let ((_tl300496300668_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e300498300661_)))
                                (_hd300497300665_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e300498300661_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd300497300665_))
                                (let ((_e300499300671_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd300497300665_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e300499300671_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl300496300668_))
                                          (let ((___splice306052306053_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl300496300668_
                                                    '0))))
                                            (let ((_tl300502300678_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice306052306053_
                                                      '1)))
                                                  (_target300500300675_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice306052306053_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl300502300678_))
                                                  (___match306084306085_
                                                   _e300495300651_
                                                   _hd300494300655_
                                                   _tl300493300658_
                                                   _e300498300661_
                                                   _hd300497300665_
                                                   _tl300496300668_
                                                   _e300499300671_
                                                   ___splice306052306053_
                                                   _target300500300675_
                                                   _tl300502300678_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl300493300658_))
                                                      (let ((___splice306056306057_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl300493300658_ '0))))
                (let ((_tl300524300564_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice306056306057_ '1)))
                      (_target300522300561_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice306056306057_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl300524300564_))
                      (___match306098306099_
                       _e300495300651_
                       _hd300494300655_
                       _tl300493300658_
                       ___splice306056306057_
                       _target300522300561_
                       _tl300524300564_)
                      (let () (declare (not safe)) (_g300489300544_)))))
              (let () (declare (not safe)) (_g300489300544_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl300493300658_))
                                              (let ((___splice306056306057_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl300493300658_
                                                        '0))))
                                                (let ((_tl300524300564_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice306056306057_
                                                          '1)))
                                                      (_target300522300561_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice306056306057_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl300524300564_))
                                                      (___match306098306099_
                                                       _e300495300651_
                                                       _hd300494300655_
                                                       _tl300493300658_
                                                       ___splice306056306057_
                                                       _target300522300561_
                                                       _tl300524300564_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g300489300544_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g300489300544_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl300493300658_))
                                          (let ((___splice306056306057_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl300493300658_
                                                    '0))))
                                            (let ((_tl300524300564_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice306056306057_
                                                      '1)))
                                                  (_target300522300561_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice306056306057_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl300524300564_))
                                                  (___match306098306099_
                                                   _e300495300651_
                                                   _hd300494300655_
                                                   _tl300493300658_
                                                   ___splice306056306057_
                                                   _target300522300561_
                                                   _tl300524300564_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g300489300544_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g300489300544_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl300493300658_))
                                    (let ((___splice306056306057_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl300493300658_
                                              '0))))
                                      (let ((_tl300524300564_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice306056306057_
                                                '1)))
                                            (_target300522300561_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice306056306057_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl300524300564_))
                                            (___match306098306099_
                                             _e300495300651_
                                             _hd300494300655_
                                             _tl300493300658_
                                             ___splice306056306057_
                                             _target300522300561_
                                             _tl300524300564_)
                                            (let ()
                                              (declare (not safe))
                                              (_g300489300544_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g300489300544_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl300493300658_))
                            (let ((___splice306056306057_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl300493300658_
                                      '0))))
                              (let ((_tl300524300564_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice306056306057_
                                        '1)))
                                    (_target300522300561_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice306056306057_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl300524300564_))
                                    (___match306098306099_
                                     _e300495300651_
                                     _hd300494300655_
                                     _tl300493300658_
                                     ___splice306056306057_
                                     _target300522300561_
                                     _tl300524300564_)
                                    (let ()
                                      (declare (not safe))
                                      (_g300489300544_)))))
                            (let () (declare (not safe)) (_g300489300544_))))))
                (let () (declare (not safe)) (_g300489300544_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx300766_)
      (let* ((_g300770300788_
              (lambda (_g300771300784_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g300771300784_))))
             (_g300769300843_
              (lambda (_g300771300792_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g300771300792_))
                    (let ((_e300776300795_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g300771300792_))))
                      (let ((_hd300775300799_
                             (let ()
                               (declare (not safe))
                               (##car _e300776300795_)))
                            (_tl300774300802_
                             (let ()
                               (declare (not safe))
                               (##cdr _e300776300795_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl300774300802_))
                            (let ((_e300779300805_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl300774300802_))))
                              (let ((_hd300778300809_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e300779300805_)))
                                    (_tl300777300812_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e300779300805_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl300777300812_))
                                    (let ((_e300782300815_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl300777300812_))))
                                      (let ((_hd300781300819_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e300782300815_)))
                                            (_tl300780300822_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e300782300815_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl300780300822_))
                                            ((lambda (_L300825_ _L300827_)
                                               (let ((__tmp306491
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp306478
                                                      (let ((__tmp306487
                                                             (let ((__tmp306490
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp306488
                            (let ((__tmp306489
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp306489 '()))))
                       (declare (not safe))
                       (cons __tmp306490 __tmp306488)))
                    (__tmp306479
                     (let ((__tmp306484
                            (let ((__tmp306486
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp306485
                                   (let ()
                                     (declare (not safe))
                                     (cons _L300827_ '()))))
                              (declare (not safe))
                              (cons __tmp306486 __tmp306485)))
                           (__tmp306480
                            (let ((__tmp306481
                                   (let ((__tmp306483
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp306482
                                          (let ()
                                            (declare (not safe))
                                            (cons _L300825_ '()))))
                                     (declare (not safe))
                                     (cons __tmp306483 __tmp306482))))
                              (declare (not safe))
                              (cons __tmp306481 '()))))
                       (declare (not safe))
                       (cons __tmp306484 __tmp306480))))
                (declare (not safe))
                (cons __tmp306487 __tmp306479))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp306491
                                                       __tmp306478)))
                                             _hd300781300819_
                                             _hd300778300809_)
                                            (_g300770300788_
                                             _g300771300792_))))
                                    (_g300770300788_ _g300771300792_))))
                            (_g300770300788_ _g300771300792_))))
                    (_g300770300788_ _g300771300792_)))))
        (_g300769300843_ _$stx300766_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx300847_)
      (let* ((_g300851300869_
              (lambda (_g300852300865_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g300852300865_))))
             (_g300850300924_
              (lambda (_g300852300873_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g300852300873_))
                    (let ((_e300857300876_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g300852300873_))))
                      (let ((_hd300856300880_
                             (let ()
                               (declare (not safe))
                               (##car _e300857300876_)))
                            (_tl300855300883_
                             (let ()
                               (declare (not safe))
                               (##cdr _e300857300876_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl300855300883_))
                            (let ((_e300860300886_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl300855300883_))))
                              (let ((_hd300859300890_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e300860300886_)))
                                    (_tl300858300893_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e300860300886_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl300858300893_))
                                    (let ((_e300863300896_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl300858300893_))))
                                      (let ((_hd300862300900_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e300863300896_)))
                                            (_tl300861300903_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e300863300896_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl300861300903_))
                                            ((lambda (_L300906_ _L300908_)
                                               (let ((__tmp306505
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp306492
                                                      (let ((__tmp306501
                                                             (let ((__tmp306504
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp306502
                            (let ((__tmp306503
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp306503 '()))))
                       (declare (not safe))
                       (cons __tmp306504 __tmp306502)))
                    (__tmp306493
                     (let ((__tmp306498
                            (let ((__tmp306500
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp306499
                                   (let ()
                                     (declare (not safe))
                                     (cons _L300908_ '()))))
                              (declare (not safe))
                              (cons __tmp306500 __tmp306499)))
                           (__tmp306494
                            (let ((__tmp306495
                                   (let ((__tmp306497
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp306496
                                          (let ()
                                            (declare (not safe))
                                            (cons _L300906_ '()))))
                                     (declare (not safe))
                                     (cons __tmp306497 __tmp306496))))
                              (declare (not safe))
                              (cons __tmp306495 '()))))
                       (declare (not safe))
                       (cons __tmp306498 __tmp306494))))
                (declare (not safe))
                (cons __tmp306501 __tmp306493))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp306505
                                                       __tmp306492)))
                                             _hd300862300900_
                                             _hd300859300890_)
                                            (_g300851300869_
                                             _g300852300873_))))
                                    (_g300851300869_ _g300852300873_))))
                            (_g300851300869_ _g300852300873_))))
                    (_g300851300869_ _g300852300873_)))))
        (_g300850300924_ _$stx300847_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx300928_)
      (let* ((___stx306101306102_ _$stx300928_)
             (_g300935301006_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx306101306102_)))))
        (let ((___kont306104306105_
               (lambda (_L301297_ _L301299_)
                 (let ((__tmp306511
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp306506
                        (let ((__tmp306507
                               (let ((__tmp306508
                                      (let ((__tmp306510
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp306509
                                             (let ()
                                               (declare (not safe))
                                               (cons _L301297_ '()))))
                                        (declare (not safe))
                                        (cons __tmp306510 __tmp306509))))
                                 (declare (not safe))
                                 (cons __tmp306508 '()))))
                          (declare (not safe))
                          (cons _L301299_ __tmp306507))))
                   (declare (not safe))
                   (cons __tmp306511 __tmp306506))))
              (___kont306106306107_
               (lambda (_L301216_ _L301218_)
                 (let ((__tmp306520
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp306512
                        (let ((__tmp306513
                               (let ((__tmp306514
                                      (let ((__tmp306519
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp306515
                                             (let ((__tmp306516
                                                    (lambda (_g301237301240_
                                                             _g301238301243_)
                                                      (let ((__tmp306517
                                                             (let ((__tmp306518
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g301237301240_ __tmp306518))))
                (declare (not safe))
                (cons __tmp306517 _g301238301243_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp306516
                                                       '()
                                                       _L301216_))))
                                        (declare (not safe))
                                        (cons __tmp306519 __tmp306515))))
                                 (declare (not safe))
                                 (cons __tmp306514 '()))))
                          (declare (not safe))
                          (cons _L301218_ __tmp306513))))
                   (declare (not safe))
                   (cons __tmp306520 __tmp306512))))
              (___kont306110306111_
               (lambda (_L301128_ _L301130_)
                 (let ((__tmp306527
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp306521
                        (let ((__tmp306522
                               (let ((__tmp306523
                                      (let ((__tmp306526
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp306524
                                             (let ((__tmp306525
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L301128_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp306525))))
                                        (declare (not safe))
                                        (cons __tmp306526 __tmp306524))))
                                 (declare (not safe))
                                 (cons __tmp306523 '()))))
                          (declare (not safe))
                          (cons _L301130_ __tmp306522))))
                   (declare (not safe))
                   (cons __tmp306527 __tmp306521))))
              (___kont306112306113_
               (lambda (_L301063_ _L301065_)
                 (let ((__tmp306537
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp306528
                        (let ((__tmp306529
                               (let ((__tmp306530
                                      (let ((__tmp306536
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp306531
                                             (let ((__tmp306532
                                                    (let ((__tmp306533
                                                           (lambda (_g301082301085_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g301083301088_)
                     (let ((__tmp306534
                            (let ((__tmp306535
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g301082301085_ __tmp306535))))
                       (declare (not safe))
                       (cons __tmp306534 _g301083301088_)))))
              (declare (not safe))
              (foldr1 __tmp306533 '() _L301063_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp306532))))
                                        (declare (not safe))
                                        (cons __tmp306536 __tmp306531))))
                                 (declare (not safe))
                                 (cons __tmp306530 '()))))
                          (declare (not safe))
                          (cons _L301065_ __tmp306529))))
                   (declare (not safe))
                   (cons __tmp306537 __tmp306528)))))
          (let* ((___match306220306221_
                  (lambda (_e300988301013_
                           _hd300987301017_
                           _tl300986301020_
                           _e300991301023_
                           _hd300990301027_
                           _tl300989301030_
                           ___splice306114306115_
                           _target300992301033_
                           _tl300994301036_)
                    (letrec ((_loop300995301039_
                              (lambda (_hd300993301043_ _arity300999301046_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd300993301043_))
                                    (let ((_e300996301049_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd300993301043_))))
                                      (let ((_lp-tl300998301056_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e300996301049_)))
                                            (_lp-hd300997301053_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e300996301049_))))
                                        (_loop300995301039_
                                         _lp-tl300998301056_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd300997301053_
                                                 _arity300999301046_)))))
                                    (let ((_arity301000301059_
                                           (reverse _arity300999301046_)))
                                      (___kont306112306113_
                                       _arity301000301059_
                                       _hd300990301027_))))))
                      (_loop300995301039_ _target300992301033_ '()))))
                 (___match306180306181_
                  (lambda (_e300956301152_
                           _hd300955301156_
                           _tl300954301159_
                           _e300959301162_
                           _hd300958301166_
                           _tl300957301169_
                           _e300962301172_
                           _hd300961301176_
                           _tl300960301179_
                           _e300963301182_
                           ___splice306108306109_
                           _target300964301186_
                           _tl300966301189_)
                    (letrec ((_loop300967301192_
                              (lambda (_hd300965301196_ _arity300971301199_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd300965301196_))
                                    (let ((_e300968301202_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd300965301196_))))
                                      (let ((_lp-tl300970301209_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e300968301202_)))
                                            (_lp-hd300969301206_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e300968301202_))))
                                        (_loop300967301192_
                                         _lp-tl300970301209_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd300969301206_
                                                 _arity300971301199_)))))
                                    (let ((_arity300972301212_
                                           (reverse _arity300971301199_)))
                                      (___kont306106306107_
                                       _arity300972301212_
                                       _hd300958301166_))))))
                      (_loop300967301192_ _target300964301186_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx306101306102_))
                (let ((_e300941301253_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx306101306102_))))
                  (let ((_tl300939301260_
                         (let () (declare (not safe)) (##cdr _e300941301253_)))
                        (_hd300940301257_
                         (let ()
                           (declare (not safe))
                           (##car _e300941301253_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl300939301260_))
                        (let ((_e300944301263_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl300939301260_))))
                          (let ((_tl300942301270_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e300944301263_)))
                                (_hd300943301267_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e300944301263_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl300942301270_))
                                (let ((_e300947301273_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl300942301270_))))
                                  (let ((_tl300945301280_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e300947301273_)))
                                        (_hd300946301277_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e300947301273_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd300946301277_))
                                        (let ((_e300948301283_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd300946301277_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e300948301283_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl300945301280_))
                                                  (let ((_e300951301287_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl300945301280_))))
                                                    (let ((_tl300949301294_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e300951301287_)))
                                                          (_hd300950301291_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e300951301287_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl300949301294_))
                                                          (___kont306104306105_
                                                           _hd300950301291_
                                                           _hd300943301267_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl300945301280_))
                      (let ((___splice306108306109_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl300945301280_ '0))))
                        (let ((_tl300966301189_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice306108306109_ '1)))
                              (_target300964301186_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice306108306109_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl300966301189_))
                              (___match306180306181_
                               _e300941301253_
                               _hd300940301257_
                               _tl300939301260_
                               _e300944301263_
                               _hd300943301267_
                               _tl300942301270_
                               _e300947301273_
                               _hd300946301277_
                               _tl300945301280_
                               _e300948301283_
                               ___splice306108306109_
                               _target300964301186_
                               _tl300966301189_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl300942301270_))
                                  (let ((___splice306114306115_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl300942301270_
                                            '0))))
                                    (let ((_tl300994301036_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice306114306115_
                                              '1)))
                                          (_target300992301033_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice306114306115_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl300994301036_))
                                          (___match306220306221_
                                           _e300941301253_
                                           _hd300940301257_
                                           _tl300939301260_
                                           _e300944301263_
                                           _hd300943301267_
                                           _tl300942301270_
                                           ___splice306114306115_
                                           _target300992301033_
                                           _tl300994301036_)
                                          (let ()
                                            (declare (not safe))
                                            (_g300935301006_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g300935301006_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl300942301270_))
                          (let ((___splice306114306115_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl300942301270_
                                    '0))))
                            (let ((_tl300994301036_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice306114306115_ '1)))
                                  (_target300992301033_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice306114306115_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl300994301036_))
                                  (___match306220306221_
                                   _e300941301253_
                                   _hd300940301257_
                                   _tl300939301260_
                                   _e300944301263_
                                   _hd300943301267_
                                   _tl300942301270_
                                   ___splice306114306115_
                                   _target300992301033_
                                   _tl300994301036_)
                                  (let ()
                                    (declare (not safe))
                                    (_g300935301006_)))))
                          (let () (declare (not safe)) (_g300935301006_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl300945301280_))
                                                      (let ((___splice306108306109_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl300945301280_ '0))))
                (let ((_tl300966301189_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice306108306109_ '1)))
                      (_target300964301186_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice306108306109_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl300966301189_))
                      (___match306180306181_
                       _e300941301253_
                       _hd300940301257_
                       _tl300939301260_
                       _e300944301263_
                       _hd300943301267_
                       _tl300942301270_
                       _e300947301273_
                       _hd300946301277_
                       _tl300945301280_
                       _e300948301283_
                       ___splice306108306109_
                       _target300964301186_
                       _tl300966301189_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl300945301280_))
                          (___kont306110306111_
                           _hd300946301277_
                           _hd300943301267_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl300942301270_))
                              (let ((___splice306114306115_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl300942301270_
                                        '0))))
                                (let ((_tl300994301036_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice306114306115_
                                          '1)))
                                      (_target300992301033_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice306114306115_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl300994301036_))
                                      (___match306220306221_
                                       _e300941301253_
                                       _hd300940301257_
                                       _tl300939301260_
                                       _e300944301263_
                                       _hd300943301267_
                                       _tl300942301270_
                                       ___splice306114306115_
                                       _target300992301033_
                                       _tl300994301036_)
                                      (let ()
                                        (declare (not safe))
                                        (_g300935301006_)))))
                              (let ()
                                (declare (not safe))
                                (_g300935301006_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl300945301280_))
                  (___kont306110306111_ _hd300946301277_ _hd300943301267_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl300942301270_))
                      (let ((___splice306114306115_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl300942301270_ '0))))
                        (let ((_tl300994301036_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice306114306115_ '1)))
                              (_target300992301033_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice306114306115_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl300994301036_))
                              (___match306220306221_
                               _e300941301253_
                               _hd300940301257_
                               _tl300939301260_
                               _e300944301263_
                               _hd300943301267_
                               _tl300942301270_
                               ___splice306114306115_
                               _target300992301033_
                               _tl300994301036_)
                              (let ()
                                (declare (not safe))
                                (_g300935301006_)))))
                      (let () (declare (not safe)) (_g300935301006_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl300945301280_))
                                                  (___kont306110306111_
                                                   _hd300946301277_
                                                   _hd300943301267_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl300942301270_))
                                                      (let ((___splice306114306115_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl300942301270_ '0))))
                (let ((_tl300994301036_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice306114306115_ '1)))
                      (_target300992301033_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice306114306115_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl300994301036_))
                      (___match306220306221_
                       _e300941301253_
                       _hd300940301257_
                       _tl300939301260_
                       _e300944301263_
                       _hd300943301267_
                       _tl300942301270_
                       ___splice306114306115_
                       _target300992301033_
                       _tl300994301036_)
                      (let () (declare (not safe)) (_g300935301006_)))))
              (let () (declare (not safe)) (_g300935301006_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl300945301280_))
                                            (___kont306110306111_
                                             _hd300946301277_
                                             _hd300943301267_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl300942301270_))
                                                (let ((___splice306114306115_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl300942301270_
                                                          '0))))
                                                  (let ((_tl300994301036_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice306114306115_
                                                            '1)))
                                                        (_target300992301033_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice306114306115_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl300994301036_))
                                                        (___match306220306221_
                                                         _e300941301253_
                                                         _hd300940301257_
                                                         _tl300939301260_
                                                         _e300944301263_
                                                         _hd300943301267_
                                                         _tl300942301270_
                                                         ___splice306114306115_
                                                         _target300992301033_
                                                         _tl300994301036_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g300935301006_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g300935301006_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl300942301270_))
                                    (let ((___splice306114306115_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl300942301270_
                                              '0))))
                                      (let ((_tl300994301036_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice306114306115_
                                                '1)))
                                            (_target300992301033_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice306114306115_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl300994301036_))
                                            (___match306220306221_
                                             _e300941301253_
                                             _hd300940301257_
                                             _tl300939301260_
                                             _e300944301263_
                                             _hd300943301267_
                                             _tl300942301270_
                                             ___splice306114306115_
                                             _target300992301033_
                                             _tl300994301036_)
                                            (let ()
                                              (declare (not safe))
                                              (_g300935301006_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g300935301006_))))))
                        (let () (declare (not safe)) (_g300935301006_)))))
                (let () (declare (not safe)) (_g300935301006_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx301323_)
      (let* ((___stx306223306224_ _$stx301323_)
             (_g301328301363_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx306223306224_)))))
        (let ((___kont306226306227_
               (lambda (_L301485_ _L301487_)
                 (let ((__tmp306543
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp306538
                        (let ((__tmp306539
                               (let ((__tmp306540
                                      (let ((__tmp306542
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp306541
                                             (let ()
                                               (declare (not safe))
                                               (cons _L301485_ '()))))
                                        (declare (not safe))
                                        (cons __tmp306542 __tmp306541))))
                                 (declare (not safe))
                                 (cons __tmp306540 '()))))
                          (declare (not safe))
                          (cons _L301487_ __tmp306539))))
                   (declare (not safe))
                   (cons __tmp306543 __tmp306538))))
              (___kont306228306229_
               (lambda (_L301420_ _L301422_)
                 (let ((__tmp306552
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp306544
                        (let ((__tmp306545
                               (let ((__tmp306546
                                      (let ((__tmp306551
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp306547
                                             (let ((__tmp306548
                                                    (lambda (_g301439301442_
                                                             _g301440301445_)
                                                      (let ((__tmp306549
                                                             (let ((__tmp306550
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g301439301442_ __tmp306550))))
                (declare (not safe))
                (cons __tmp306549 _g301440301445_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp306548
                                                       '()
                                                       _L301420_))))
                                        (declare (not safe))
                                        (cons __tmp306551 __tmp306547))))
                                 (declare (not safe))
                                 (cons __tmp306546 '()))))
                          (declare (not safe))
                          (cons _L301422_ __tmp306545))))
                   (declare (not safe))
                   (cons __tmp306552 __tmp306544)))))
          (let ((___match306272306273_
                 (lambda (_e301345301370_
                          _hd301344301374_
                          _tl301343301377_
                          _e301348301380_
                          _hd301347301384_
                          _tl301346301387_
                          ___splice306230306231_
                          _target301349301390_
                          _tl301351301393_)
                   (letrec ((_loop301352301396_
                             (lambda (_hd301350301400_ _arity301356301403_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd301350301400_))
                                   (let ((_e301353301406_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd301350301400_))))
                                     (let ((_lp-tl301355301413_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e301353301406_)))
                                           (_lp-hd301354301410_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e301353301406_))))
                                       (_loop301352301396_
                                        _lp-tl301355301413_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd301354301410_
                                                _arity301356301403_)))))
                                   (let ((_arity301357301416_
                                          (reverse _arity301356301403_)))
                                     (___kont306228306229_
                                      _arity301357301416_
                                      _hd301347301384_))))))
                     (_loop301352301396_ _target301349301390_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx306223306224_))
                (let ((_e301334301455_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx306223306224_))))
                  (let ((_tl301332301462_
                         (let () (declare (not safe)) (##cdr _e301334301455_)))
                        (_hd301333301459_
                         (let ()
                           (declare (not safe))
                           (##car _e301334301455_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl301332301462_))
                        (let ((_e301337301465_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl301332301462_))))
                          (let ((_tl301335301472_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e301337301465_)))
                                (_hd301336301469_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e301337301465_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl301335301472_))
                                (let ((_e301340301475_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl301335301472_))))
                                  (let ((_tl301338301482_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e301340301475_)))
                                        (_hd301339301479_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e301340301475_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl301338301482_))
                                        (___kont306226306227_
                                         _hd301339301479_
                                         _hd301336301469_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl301335301472_))
                                            (let ((___splice306230306231_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl301335301472_
                                                      '0))))
                                              (let ((_tl301351301393_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice306230306231_
                                                        '1)))
                                                    (_target301349301390_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice306230306231_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl301351301393_))
                                                    (___match306272306273_
                                                     _e301334301455_
                                                     _hd301333301459_
                                                     _tl301332301462_
                                                     _e301337301465_
                                                     _hd301336301469_
                                                     _tl301335301472_
                                                     ___splice306230306231_
                                                     _target301349301390_
                                                     _tl301351301393_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g301328301363_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g301328301363_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl301335301472_))
                                    (let ((___splice306230306231_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl301335301472_
                                              '0))))
                                      (let ((_tl301351301393_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice306230306231_
                                                '1)))
                                            (_target301349301390_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice306230306231_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl301351301393_))
                                            (___match306272306273_
                                             _e301334301455_
                                             _hd301333301459_
                                             _tl301332301462_
                                             _e301337301465_
                                             _hd301336301469_
                                             _tl301335301472_
                                             ___splice306230306231_
                                             _target301349301390_
                                             _tl301351301393_)
                                            (let ()
                                              (declare (not safe))
                                              (_g301328301363_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g301328301363_))))))
                        (let () (declare (not safe)) (_g301328301363_)))))
                (let () (declare (not safe)) (_g301328301363_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx301507_)
      (let* ((_g301511301546_
              (lambda (_g301512301542_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g301512301542_))))
             (_g301510301674_
              (lambda (_g301512301550_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g301512301550_))
                    (let ((_e301517301553_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g301512301550_))))
                      (let ((_hd301516301557_
                             (let ()
                               (declare (not safe))
                               (##car _e301517301553_)))
                            (_tl301515301560_
                             (let ()
                               (declare (not safe))
                               (##cdr _e301517301553_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl301515301560_))
                            (let ((_g306553_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl301515301560_
                                      '0))))
                              (begin
                                (let ((_g306554_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g306553_)
                                             (##vector-length _g306553_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g306554_ 2)))
                                      (error "Context expects 2 values"
                                             _g306554_)))
                                (let ((_target301518301563_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g306553_ 0)))
                                      (_tl301520301566_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g306553_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl301520301566_))
                                      (letrec ((_loop301521301569_
                                                (lambda (_hd301519301573_
                                                         _arity301525301576_
                                                         _prim301526301578_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd301519301573_))
                                                      (let ((_e301522301581_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd301519301573_))))
                (let ((_lp-hd301523301585_
                       (let () (declare (not safe)) (##car _e301522301581_)))
                      (_lp-tl301524301588_
                       (let () (declare (not safe)) (##cdr _e301522301581_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd301523301585_))
                      (let ((_e301531301591_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd301523301585_))))
                        (let ((_hd301530301595_
                               (let ()
                                 (declare (not safe))
                                 (##car _e301531301591_)))
                              (_tl301529301598_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e301531301591_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl301529301598_))
                              (let ((_g306563_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl301529301598_
                                        '0))))
                                (begin
                                  (let ((_g306564_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g306563_)
                                               (##vector-length _g306563_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g306564_ 2)))
                                        (error "Context expects 2 values"
                                               _g306564_)))
                                  (let ((_target301532301601_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g306563_ 0)))
                                        (_tl301534301604_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g306563_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl301534301604_))
                                        (letrec ((_loop301535301607_
                                                  (lambda (_hd301533301611_
                                                           _arity301539301614_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd301533301611_))
                                                        (let ((_e301536301617_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd301533301611_))))
                  (let ((_lp-hd301537301621_
                         (let () (declare (not safe)) (##car _e301536301617_)))
                        (_lp-tl301538301624_
                         (let ()
                           (declare (not safe))
                           (##cdr _e301536301617_))))
                    (_loop301535301607_
                     _lp-tl301538301624_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd301537301621_ _arity301539301614_)))))
                (let ((_arity301540301627_ (reverse _arity301539301614_)))
                  (_loop301521301569_
                   _lp-tl301524301588_
                   (let ()
                     (declare (not safe))
                     (cons _arity301540301627_ _arity301525301576_))
                   (let ()
                     (declare (not safe))
                     (cons _hd301530301595_ _prim301526301578_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop301535301607_
                                           _target301532301601_
                                           '()))
                                        (_g301511301546_ _g301512301550_)))))
                              (_g301511301546_ _g301512301550_))))
                      (_g301511301546_ _g301512301550_))))
              (let ((_arity301527301631_ (reverse _arity301525301576_))
                    (_prim301528301634_ (reverse _prim301526301578_)))
                ((lambda (_L301637_ _L301639_)
                   (let ((__tmp306562
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp306555
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L301637_
                               _L301639_))
                            (let ((__tmp306556
                                   (lambda (_g301654301660_
                                            _g301655301663_
                                            _g301656301665_)
                                     (let ((__tmp306557
                                            (let ((__tmp306561
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp306558
                                                   (let ((__tmp306559
                                                          (let ((__tmp306560
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g301657301668_ _g301658301671_)
                           (let ()
                             (declare (not safe))
                             (cons _g301657301668_ _g301658301671_)))))
                    (declare (not safe))
                    (foldr1 __tmp306560 '() _g301654301660_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g301655301663_
                                                           __tmp306559))))
                                              (declare (not safe))
                                              (cons __tmp306561 __tmp306558))))
                                       (declare (not safe))
                                       (cons __tmp306557 _g301656301665_)))))
                              (declare (not safe))
                              (foldr2 __tmp306556 '() _L301637_ _L301639_)))))
                     (declare (not safe))
                     (cons __tmp306562 __tmp306555)))
                 _arity301527301631_
                 _prim301528301634_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop301521301569_
                                         _target301518301563_
                                         '()
                                         '()))
                                      (_g301511301546_ _g301512301550_)))))
                            (_g301511301546_ _g301512301550_))))
                    (_g301511301546_ _g301512301550_)))))
        (_g301510301674_ _$stx301507_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx301680_)
      (let* ((_g301684301719_
              (lambda (_g301685301715_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g301685301715_))))
             (_g301683301847_
              (lambda (_g301685301723_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g301685301723_))
                    (let ((_e301690301726_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g301685301723_))))
                      (let ((_hd301689301730_
                             (let ()
                               (declare (not safe))
                               (##car _e301690301726_)))
                            (_tl301688301733_
                             (let ()
                               (declare (not safe))
                               (##cdr _e301690301726_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl301688301733_))
                            (let ((_g306565_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl301688301733_
                                      '0))))
                              (begin
                                (let ((_g306566_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g306565_)
                                             (##vector-length _g306565_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g306566_ 2)))
                                      (error "Context expects 2 values"
                                             _g306566_)))
                                (let ((_target301691301736_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g306565_ 0)))
                                      (_tl301693301739_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g306565_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl301693301739_))
                                      (letrec ((_loop301694301742_
                                                (lambda (_hd301692301746_
                                                         _arity301698301749_
                                                         _prim301699301751_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd301692301746_))
                                                      (let ((_e301695301754_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd301692301746_))))
                (let ((_lp-hd301696301758_
                       (let () (declare (not safe)) (##car _e301695301754_)))
                      (_lp-tl301697301761_
                       (let () (declare (not safe)) (##cdr _e301695301754_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd301696301758_))
                      (let ((_e301704301764_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd301696301758_))))
                        (let ((_hd301703301768_
                               (let ()
                                 (declare (not safe))
                                 (##car _e301704301764_)))
                              (_tl301702301771_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e301704301764_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl301702301771_))
                              (let ((_g306575_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl301702301771_
                                        '0))))
                                (begin
                                  (let ((_g306576_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g306575_)
                                               (##vector-length _g306575_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g306576_ 2)))
                                        (error "Context expects 2 values"
                                               _g306576_)))
                                  (let ((_target301705301774_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g306575_ 0)))
                                        (_tl301707301777_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g306575_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl301707301777_))
                                        (letrec ((_loop301708301780_
                                                  (lambda (_hd301706301784_
                                                           _arity301712301787_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd301706301784_))
                                                        (let ((_e301709301790_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd301706301784_))))
                  (let ((_lp-hd301710301794_
                         (let () (declare (not safe)) (##car _e301709301790_)))
                        (_lp-tl301711301797_
                         (let ()
                           (declare (not safe))
                           (##cdr _e301709301790_))))
                    (_loop301708301780_
                     _lp-tl301711301797_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd301710301794_ _arity301712301787_)))))
                (let ((_arity301713301800_ (reverse _arity301712301787_)))
                  (_loop301694301742_
                   _lp-tl301697301761_
                   (let ()
                     (declare (not safe))
                     (cons _arity301713301800_ _arity301698301749_))
                   (let ()
                     (declare (not safe))
                     (cons _hd301703301768_ _prim301699301751_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop301708301780_
                                           _target301705301774_
                                           '()))
                                        (_g301684301719_ _g301685301723_)))))
                              (_g301684301719_ _g301685301723_))))
                      (_g301684301719_ _g301685301723_))))
              (let ((_arity301700301804_ (reverse _arity301698301749_))
                    (_prim301701301807_ (reverse _prim301699301751_)))
                ((lambda (_L301810_ _L301812_)
                   (let ((__tmp306574
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp306567
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L301810_
                               _L301812_))
                            (let ((__tmp306568
                                   (lambda (_g301827301833_
                                            _g301828301836_
                                            _g301829301838_)
                                     (let ((__tmp306569
                                            (let ((__tmp306573
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp306570
                                                   (let ((__tmp306571
                                                          (let ((__tmp306572
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g301830301841_ _g301831301844_)
                           (let ()
                             (declare (not safe))
                             (cons _g301830301841_ _g301831301844_)))))
                    (declare (not safe))
                    (foldr1 __tmp306572 '() _g301827301833_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g301828301836_
                                                           __tmp306571))))
                                              (declare (not safe))
                                              (cons __tmp306573 __tmp306570))))
                                       (declare (not safe))
                                       (cons __tmp306569 _g301829301838_)))))
                              (declare (not safe))
                              (foldr2 __tmp306568 '() _L301810_ _L301812_)))))
                     (declare (not safe))
                     (cons __tmp306574 __tmp306567)))
                 _arity301700301804_
                 _prim301701301807_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop301694301742_
                                         _target301691301736_
                                         '()
                                         '()))
                                      (_g301684301719_ _g301685301723_)))))
                            (_g301684301719_ _g301685301723_))))
                    (_g301684301719_ _g301685301723_)))))
        (_g301683301847_ _$stx301680_)))))
