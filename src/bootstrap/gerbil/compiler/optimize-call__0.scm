(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1707601722)
  (begin
    (define gxc#&optimize-call
      (make-promise
       (lambda ()
         (let ((_tbl274513_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp279272 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl274513_ __tmp279272))
           (let ()
             (declare (not safe))
             (table-set! _tbl274513_ '%#call gxc#optimize-call%))
           _tbl274513_))))
    (define gxc#apply-optimize-call
      (lambda (_stx274496_ . _args274498_)
        (let ((__tmp279274
               (lambda ()
                 (declare (not safe))
                 (if (null? _args274498_)
                     (gxc#compile-e__0 _stx274496_)
                     (let ((_arg1274503_ (car _args274498_))
                           (_rest274505_ (cdr _args274498_)))
                       (if (null? _rest274505_)
                           (gxc#compile-e__1 _stx274496_ _arg1274503_)
                           (let ((_arg2274508_ (car _rest274505_))
                                 (_rest274510_ (cdr _rest274505_)))
                             (if (null? _rest274510_)
                                 (gxc#compile-e__2
                                  _stx274496_
                                  _arg1274503_
                                  _arg2274508_)
                                 (apply gxc#compile-e
                                        _stx274496_
                                        _arg1274503_
                                        _arg2274508_
                                        _rest274510_))))))))
              (__tmp279273 (force gxc#&optimize-call)))
          (declare (not safe))
          (call-with-parameters
           __tmp279274
           gxc#current-compile-methods
           __tmp279273))))
    (define gxc#optimize-call%
      (lambda (_stx274351_)
        (let* ((___stx279022279023_ _stx274351_)
               (_g274354274374_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx279022279023_)))))
          (let ((___kont279024279025_
                 (lambda (_L274418_ _L274419_)
                   (let* ((_rator-id274437_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L274419_)))
                          (_rator-type274439_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id274437_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type274439_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp279275
                                  (##structure-ref
                                   _rator-type274439_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id274437_
                              '" => "
                              _rator-type274439_
                              '" "
                              __tmp279275))
                           (let ((_optimized274442_
                                  (let ((__method279270
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type274439_
                                            'optimize-call))))
                                    (if __method279270
                                        (__method279270
                                         _rator-type274439_
                                         _stx274351_
                                         _L274418_)
                                        (error '"Missing method"
                                               _rator-type274439_
                                               'optimize-call)))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type274439_))
                                 _optimized274442_
                                 (let* ((___stx279004279005_ _optimized274442_)
                                        (_g274445274455_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx279004279005_)))))
                                   (let ((___kont279006279007_
                                          (lambda (_L274475_)
                                            (let ((__tmp279276
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L274475_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp279276
                                               _stx274351_))))
                                         (___kont279008279009_
                                          (lambda () _optimized274442_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx279004279005_))
                                         (let ((_e274450274467_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx279004279005_))))
                                           (let ((_tl274448274472_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e274450274467_)))
                                                 (_hd274449274470_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e274450274467_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd274449274470_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd274449274470_))
                                                     (___kont279006279007_
                                                      _tl274448274472_)
                                                     (___kont279008279009_))
                                                 (___kont279008279009_))))
                                         (___kont279008279009_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type274439_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx274351_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx274351_
                                _rator-type274439_)))))))
                (___kont279026279027_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _stx274351_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx279022279023_))
                (let ((_e274360274386_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx279022279023_))))
                  (let ((_tl274358274391_
                         (let () (declare (not safe)) (##cdr _e274360274386_)))
                        (_hd274359274389_
                         (let ()
                           (declare (not safe))
                           (##car _e274360274386_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl274358274391_))
                        (let ((_e274363274394_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl274358274391_))))
                          (let ((_tl274361274399_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e274363274394_)))
                                (_hd274362274397_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e274363274394_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd274362274397_))
                                (let ((_e274366274402_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd274362274397_))))
                                  (let ((_tl274364274407_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e274366274402_)))
                                        (_hd274365274405_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e274366274402_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd274365274405_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd274365274405_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl274364274407_))
                                                (let ((_e274369274410_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl274364274407_))))
                                                  (let ((_tl274367274415_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e274369274410_)))
                                                        (_hd274368274413_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e274369274410_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl274367274415_))
                                                        (___kont279024279025_
                                                         _tl274361274399_
                                                         _hd274368274413_)
                                                        (___kont279026279027_))))
                                                (___kont279026279027_))
                                            (___kont279026279027_))
                                        (___kont279026279027_))))
                                (___kont279026279027_))))
                        (___kont279026279027_))))
                (___kont279026279027_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self274305_ _stx274306_ _args274307_)
        (let* ((_g274309274319_
                (lambda (_g274310274316_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g274310274316_))))
               (_g274308274348_
                (lambda (_g274310274322_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g274310274322_))
                      (let ((_e274314274324_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g274310274322_))))
                        (let ((_hd274313274327_
                               (let ()
                                 (declare (not safe))
                                 (##car _e274314274324_)))
                              (_tl274312274329_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e274314274324_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl274312274329_))
                              ((lambda (_L274332_)
                                 (let* ((_klass274343_
                                         (let ((__tmp279277
                                                (##structure-ref
                                                 _self274305_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx274306_
                                            __tmp279277)))
                                        (_object274345_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L274332_))))
                                   (if (##structure-ref
                                        _klass274343_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp279293
                                              (let ((__tmp279294
                                                     (let ((__tmp279296
                                                            (let ((__tmp279297
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279298
                                  (##structure-ref
                                   _klass274343_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp279298 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp279297)))
                   (__tmp279295
                    (let () (declare (not safe)) (cons _object274345_ '()))))
               (declare (not safe))
               (cons __tmp279296 __tmp279295))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp279294))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp279293
                                          _stx274306_))
                                       (if (##structure-ref
                                            _klass274343_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp279287
                                                  (let ((__tmp279288
                                                         (let ((__tmp279290
                                                                (let ((__tmp279291
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp279292
                                      (##structure-ref
                                       _klass274343_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp279292 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp279291)))
                       (__tmp279289
                        (let ()
                          (declare (not safe))
                          (cons _object274345_ '()))))
                   (declare (not safe))
                   (cons __tmp279290 __tmp279289))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp279288))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp279287
                                              _stx274306_))
                                           (let ((__tmp279278
                                                  (let ((__tmp279279
                                                         (let ((__tmp279285
                                                                (let ((__tmp279286
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp279286)))
                       (__tmp279280
                        (let ((__tmp279282
                               (let ((__tmp279283
                                      (let ((__tmp279284
                                             (##structure-ref
                                              _self274305_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp279284 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp279283)))
                              (__tmp279281
                               (let ()
                                 (declare (not safe))
                                 (cons _object274345_ '()))))
                          (declare (not safe))
                          (cons __tmp279282 __tmp279281))))
                   (declare (not safe))
                   (cons __tmp279285 __tmp279280))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp279279))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp279278
                                              _stx274306_))))))
                               _hd274313274327_)
                              (let ()
                                (declare (not safe))
                                (_g274309274319_ _g274310274322_)))))
                      (let ()
                        (declare (not safe))
                        (_g274309274319_ _g274310274322_))))))
          (declare (not safe))
          (_g274308274348_ _args274307_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__t278983)
        (let ((__id278984
               (let ((__tmp278985
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t278983 'id))))
                 (if __tmp278985 __tmp278985 (error '"Unknown slot" 'id)))))
          (lambda (_self274305_ _stx274306_ _args274307_)
            (let* ((_g274309274319_
                    (lambda (_g274310274316_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g274310274316_))))
                   (_g274308274348_
                    (lambda (_g274310274322_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g274310274322_))
                          (let ((_e274314274324_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g274310274322_))))
                            (let ((_hd274313274327_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e274314274324_)))
                                  (_tl274312274329_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e274314274324_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl274312274329_))
                                  ((lambda (_L274332_)
                                     (let* ((_klass274343_
                                             (let ((__tmp279299
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self274305_
                                                       __id278984
                                                       __t278983
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx274306_
                                                __tmp279299)))
                                            (_object274345_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L274332_))))
                                       (if (##structure-ref
                                            _klass274343_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp279315
                                                  (let ((__tmp279316
                                                         (let ((__tmp279318
                                                                (let ((__tmp279319
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp279320
                                      (##structure-ref
                                       _klass274343_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp279320 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp279319)))
                       (__tmp279317
                        (let ()
                          (declare (not safe))
                          (cons _object274345_ '()))))
                   (declare (not safe))
                   (cons __tmp279318 __tmp279317))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp279316))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp279315
                                              _stx274306_))
                                           (if (##structure-ref
                                                _klass274343_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp279309
                                                      (let ((__tmp279310
                                                             (let ((__tmp279312
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp279313
                                   (let ((__tmp279314
                                          (##structure-ref
                                           _klass274343_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp279314 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp279313)))
                           (__tmp279311
                            (let ()
                              (declare (not safe))
                              (cons _object274345_ '()))))
                       (declare (not safe))
                       (cons __tmp279312 __tmp279311))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp279310))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp279309
                                                  _stx274306_))
                                               (let ((__tmp279300
                                                      (let ((__tmp279301
                                                             (let ((__tmp279307
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp279308
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp279308)))
                           (__tmp279302
                            (let ((__tmp279304
                                   (let ((__tmp279305
                                          (let ((__tmp279306
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self274305_
                                                    __id278984
                                                    __t278983
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp279306 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp279305)))
                                  (__tmp279303
                                   (let ()
                                     (declare (not safe))
                                     (cons _object274345_ '()))))
                              (declare (not safe))
                              (cons __tmp279304 __tmp279303))))
                       (declare (not safe))
                       (cons __tmp279307 __tmp279302))))
                (declare (not safe))
                (cons '%#call __tmp279301))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp279300
                                                  _stx274306_))))))
                                   _hd274313274327_)
                                  (let ()
                                    (declare (not safe))
                                    (_g274309274319_ _g274310274322_)))))
                          (let ()
                            (declare (not safe))
                            (_g274309274319_ _g274310274322_))))))
              (declare (not safe))
              (_g274308274348_ _args274307_))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!predicate::optimize-call
       gxc#!predicate::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#!constructor::optimize-call
      (lambda (_self274036_ _stx274037_ _args274038_)
        (let* ((_klass274040_
                (let ((__tmp279321
                       (##structure-ref _self274036_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx274037_ __tmp279321)))
               (_fields274042_
                (length (##structure-ref _klass274040_ '5 gxc#!class::t '#f)))
               (_args274044_ (map gxc#compile-e _args274038_))
               (_inline-make-object274046_
                (let ((__tmp279322
                       (let ((__tmp279328
                              (let ((__tmp279329
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp279329)))
                             (__tmp279323
                              (let ((__tmp279325
                                     (let ((__tmp279326
                                            (let ((__tmp279327
                                                   (##structure-ref
                                                    _self274036_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp279327 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp279326)))
                                    (__tmp279324
                                     (make-list _fields274042_ '(%#quote #f))))
                                (declare (not safe))
                                (cons __tmp279325 __tmp279324))))
                         (declare (not safe))
                         (cons __tmp279328 __tmp279323))))
                  (declare (not safe))
                  (cons '%#call __tmp279322))))
          (let ((_$e274049_
                 (##structure-ref _klass274040_ '6 gxc#!class::t '#f)))
            (if _$e274049_
                ((lambda (_ctor274052_)
                   (let ((_$obj274054_
                          (let ((__tmp279391 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp279391)))
                         (_ctor-impl274055_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass274040_
                             _ctor274052_))))
                     (let ((__tmp279392
                            (let ((__tmp279393
                                   (let ((__tmp279458
                                          (let ((__tmp279459
                                                 (let ((__tmp279461
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj274054_
                                                                '())))
                                                       (__tmp279460
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object274046_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp279461
                                                         __tmp279460))))
                                            (declare (not safe))
                                            (cons __tmp279459 '())))
                                         (__tmp279394
                                          (let ((__tmp279395
                                                 (let ((__tmp279396
                                                        (let ((__tmp279400
                                                               (if _ctor-impl274055_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279452
                                  (let ((__tmp279456
                                         (let ((__tmp279457
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl274055_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp279457)))
                                        (__tmp279453
                                         (let ((__tmp279454
                                                (let ((__tmp279455
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj274054_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp279455))))
                                           (declare (not safe))
                                           (cons __tmp279454 _args274044_))))
                                    (declare (not safe))
                                    (cons __tmp279456 __tmp279453))))
                             (declare (not safe))
                             (cons '%#call __tmp279452))
                           (let* ((_$ctor274057_
                                   (let ((__tmp279401 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp279401)))
                                  (__tmp279402
                                   (let ((__tmp279437
                                          (let ((__tmp279438
                                                 (let ((__tmp279451
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor274057_
                                                                '())))
                                                       (__tmp279439
                                                        (let ((__tmp279440
                                                               (let ((__tmp279441
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp279449
                                     (let ((__tmp279450
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp279450)))
                                    (__tmp279442
                                     (let ((__tmp279446
                                            (let ((__tmp279447
                                                   (let ((__tmp279448
                                                          (##structure-ref
                                                           _self274036_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp279448 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp279447)))
                                           (__tmp279443
                                            (let ((__tmp279444
                                                   (let ((__tmp279445
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _ctor274052_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#quote
                                                           __tmp279445))))
                                              (declare (not safe))
                                              (cons __tmp279444 '()))))
                                       (declare (not safe))
                                       (cons __tmp279446 __tmp279443))))
                                (declare (not safe))
                                (cons __tmp279449 __tmp279442))))
                         (declare (not safe))
                         (cons '%#call __tmp279441))))
                  (declare (not safe))
                  (cons __tmp279440 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279451
                                                         __tmp279439))))
                                            (declare (not safe))
                                            (cons __tmp279438 '())))
                                         (__tmp279403
                                          (let ((__tmp279404
                                                 (let ((__tmp279405
                                                        (let ((__tmp279435
                                                               (let ((__tmp279436
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor274057_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp279436)))
                      (__tmp279406
                       (let ((__tmp279428
                              (let ((__tmp279429
                                     (let ((__tmp279433
                                            (let ((__tmp279434
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor274057_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp279434)))
                                           (__tmp279430
                                            (let ((__tmp279431
                                                   (let ((__tmp279432
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj274054_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp279432))))
                                              (declare (not safe))
                                              (cons __tmp279431
                                                    _args274044_))))
                                       (declare (not safe))
                                       (cons __tmp279433 __tmp279430))))
                                (declare (not safe))
                                (cons '%#call __tmp279429)))
                             (__tmp279407
                              (let ((__tmp279408
                                     (let ((__tmp279409
                                            (let ((__tmp279426
                                                   (let ((__tmp279427
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp279427)))
                                                  (__tmp279410
                                                   (let ((__tmp279424
                                                          (let ((__tmp279425
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp279425)))
                 (__tmp279411
                  (let ((__tmp279422
                         (let ((__tmp279423
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp279423)))
                        (__tmp279412
                         (let ((__tmp279419
                                (let ((__tmp279420
                                       (let ((__tmp279421
                                              (##structure-ref
                                               _self274036_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp279421 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp279420)))
                               (__tmp279413
                                (let ((__tmp279417
                                       (let ((__tmp279418
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp279418)))
                                      (__tmp279414
                                       (let ((__tmp279415
                                              (let ((__tmp279416
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor274052_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp279416))))
                                         (declare (not safe))
                                         (cons __tmp279415 '()))))
                                  (declare (not safe))
                                  (cons __tmp279417 __tmp279414))))
                           (declare (not safe))
                           (cons __tmp279419 __tmp279413))))
                    (declare (not safe))
                    (cons __tmp279422 __tmp279412))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp279424
                                                           __tmp279411))))
                                              (declare (not safe))
                                              (cons __tmp279426 __tmp279410))))
                                       (declare (not safe))
                                       (cons '%#call __tmp279409))))
                                (declare (not safe))
                                (cons __tmp279408 '()))))
                         (declare (not safe))
                         (cons __tmp279428 __tmp279407))))
                  (declare (not safe))
                  (cons __tmp279435 __tmp279406))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp279405))))
                                            (declare (not safe))
                                            (cons __tmp279404 '()))))
                                     (declare (not safe))
                                     (cons __tmp279437 __tmp279403))))
                             (declare (not safe))
                             (cons '%#let-values __tmp279402))))
                      (__tmp279397
                       (let ((__tmp279398
                              (let ((__tmp279399
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj274054_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp279399))))
                         (declare (not safe))
                         (cons __tmp279398 '()))))
                  (declare (not safe))
                  (cons __tmp279400 __tmp279397))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp279396))))
                                            (declare (not safe))
                                            (cons __tmp279395 '()))))
                                     (declare (not safe))
                                     (cons __tmp279458 __tmp279394))))
                              (declare (not safe))
                              (cons '%#let-values __tmp279393))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp279392 _stx274037_))))
                 _$e274049_)
                (if (##structure-ref _klass274040_ '7 gxc#!class::t '#f)
                    (if (fx= (length _args274044_) _fields274042_)
                        (let ((__tmp279383
                               (let ((__tmp279384
                                      (let ((__tmp279389
                                             (let ((__tmp279390
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '##structure
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp279390)))
                                            (__tmp279385
                                             (let ((__tmp279386
                                                    (let ((__tmp279387
                                                           (let ((__tmp279388
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##structure-ref _self274036_ '1 gxc#!type::t '#f)))
                     (declare (not safe))
                     (cons __tmp279388 '()))))
              (declare (not safe))
              (cons '%#ref __tmp279387))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp279386
                                                     _args274044_))))
                                        (declare (not safe))
                                        (cons __tmp279389 __tmp279385))))
                                 (declare (not safe))
                                 (cons '%#call __tmp279384))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp279383 _stx274037_))
                        (let ((__tmp279382
                               (##structure-ref
                                _self274036_
                                '1
                                gxc#!type::t
                                '#f))
                              (__tmp279381
                               (length (##structure-ref
                                        _klass274040_
                                        '5
                                        gxc#!class::t
                                        '#f))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"illegal struct constructor application; arity mismatch"
                           _stx274037_
                           __tmp279382
                           __tmp279381)))
                    (let ((_$obj274059_
                           (let ((__tmp279330 (gensym '__obj)))
                             (declare (not safe))
                             (make-symbol__0 __tmp279330))))
                      (let _lp274061_ ((_rest274063_ _args274044_)
                                       (_initializers274064_ '()))
                        (let* ((___stx279060279061_ _rest274063_)
                               (_g274068274089_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     ___stx279060279061_)))))
                          (let ((___kont279062279063_
                                 (lambda (_L274143_ _L274144_ _L274145_)
                                   (let* ((_slot274175_
                                           (keyword->symbol
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _L274145_))))
                                          (_off274177_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!class-slot->field-offset
                                              _klass274040_
                                              _slot274175_))))
                                     (if _off274177_
                                         (let ((__tmp279332
                                                (let ((__tmp279333
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _off274177_
                                                               _L274144_))))
                                                  (declare (not safe))
                                                  (cons __tmp279333
                                                        _initializers274064_))))
                                           (declare (not safe))
                                           (_lp274061_ _L274143_ __tmp279332))
                                         (let ((__tmp279331
                                                (##structure-ref
                                                 _self274036_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#raise-compile-error
                                            '"unknown slot"
                                            _stx274037_
                                            __tmp279331
                                            _slot274175_))))))
                                (___kont279064279065_
                                 (lambda ()
                                   (let ((__tmp279334
                                          (let ((__tmp279335
                                                 (let ((__tmp279358
                                                        (let ((__tmp279359
                                                               (let ((__tmp279361
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$obj274059_ '())))
                             (__tmp279360
                              (let ()
                                (declare (not safe))
                                (cons _inline-make-object274046_ '()))))
                         (declare (not safe))
                         (cons __tmp279361 __tmp279360))))
                  (declare (not safe))
                  (cons __tmp279359 '())))
               (__tmp279336
                (let ((__tmp279337
                       (let ((__tmp279338
                              (let ((__tmp279355
                                     (let ((__tmp279356
                                            (let ((__tmp279357
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$obj274059_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp279357))))
                                       (declare (not safe))
                                       (cons __tmp279356 '())))
                                    (__tmp279339
                                     (let ((__tmp279340
                                            (lambda (_i274103_ _r274104_)
                                              (let ((__tmp279341
                                                     (let ((__tmp279342
                                                            (let ((__tmp279352
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279353
                                  (let ((__tmp279354
                                         (##structure-ref
                                          _self274036_
                                          '1
                                          gxc#!type::t
                                          '#f)))
                                    (declare (not safe))
                                    (cons __tmp279354 '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp279353)))
                          (__tmp279343
                           (let ((__tmp279349
                                  (let ((__tmp279350
                                         (let ((__tmp279351 (car _i274103_)))
                                           (declare (not safe))
                                           (cons __tmp279351 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp279350)))
                                 (__tmp279344
                                  (let ((__tmp279347
                                         (let ((__tmp279348
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj274059_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp279348)))
                                        (__tmp279345
                                         (let ((__tmp279346 (cdr _i274103_)))
                                           (declare (not safe))
                                           (cons __tmp279346 '()))))
                                    (declare (not safe))
                                    (cons __tmp279347 __tmp279345))))
                             (declare (not safe))
                             (cons __tmp279349 __tmp279344))))
                      (declare (not safe))
                      (cons __tmp279352 __tmp279343))))
               (declare (not safe))
               (cons '%#struct-unchecked-set! __tmp279342))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp279341
                                                      _r274104_)))))
                                       (declare (not safe))
                                       (foldl1 __tmp279340
                                               '()
                                               _initializers274064_))))
                                (declare (not safe))
                                (foldr1 cons __tmp279355 __tmp279339))))
                         (declare (not safe))
                         (cons '%#begin __tmp279338))))
                  (declare (not safe))
                  (cons __tmp279337 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279358
                                                         __tmp279336))))
                                            (declare (not safe))
                                            (cons '%#let-values __tmp279335))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp279334
                                      _stx274037_))))
                                (___kont279066279067_
                                 (lambda ()
                                   (let ((__tmp279362
                                          (let ((__tmp279363
                                                 (let ((__tmp279377
                                                        (let ((__tmp279378
                                                               (let ((__tmp279380
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$obj274059_ '())))
                             (__tmp279379
                              (let ()
                                (declare (not safe))
                                (cons _inline-make-object274046_ '()))))
                         (declare (not safe))
                         (cons __tmp279380 __tmp279379))))
                  (declare (not safe))
                  (cons __tmp279378 '())))
               (__tmp279364
                (let ((__tmp279365
                       (let ((__tmp279366
                              (let ((__tmp279370
                                     (let ((__tmp279371
                                            (let ((__tmp279375
                                                   (let ((__tmp279376
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'class-instance-init!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp279376)))
                                                  (__tmp279372
                                                   (let ((__tmp279373
                                                          (let ((__tmp279374
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj274059_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp279374))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp279373
                                                           _args274044_))))
                                              (declare (not safe))
                                              (cons __tmp279375 __tmp279372))))
                                       (declare (not safe))
                                       (cons '%#call __tmp279371)))
                                    (__tmp279367
                                     (let ((__tmp279368
                                            (let ((__tmp279369
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$obj274059_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp279369))))
                                       (declare (not safe))
                                       (cons __tmp279368 '()))))
                                (declare (not safe))
                                (cons __tmp279370 __tmp279367))))
                         (declare (not safe))
                         (cons '%#begin __tmp279366))))
                  (declare (not safe))
                  (cons __tmp279365 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279377
                                                         __tmp279364))))
                                            (declare (not safe))
                                            (cons '%#let-values __tmp279363))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp279362
                                      _stx274037_)))))
                            (let* ((_g274066274106_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? ___stx279060279061_))
                                          (___kont279064279065_)
                                          (___kont279066279067_))))
                                   (___match279097279098_
                                    (lambda (_e274075274111_
                                             _hd274074274114_
                                             _tl274073274116_
                                             _e274078274119_
                                             _hd274077274122_
                                             _tl274076274124_
                                             _e274081274127_
                                             _hd274080274130_
                                             _tl274079274132_
                                             _e274084274135_
                                             _hd274083274138_
                                             _tl274082274140_)
                                      (let ((_L274143_ _tl274082274140_)
                                            (_L274144_ _hd274083274138_)
                                            (_L274145_ _hd274080274130_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-keyword? _L274145_))
                                            (___kont279062279063_
                                             _L274143_
                                             _L274144_
                                             _L274145_)
                                            (___kont279066279067_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? ___stx279060279061_))
                                  (let ((_e274075274111_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e ___stx279060279061_))))
                                    (let ((_tl274073274116_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e274075274111_)))
                                          (_hd274074274114_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e274075274111_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd274074274114_))
                                          (let ((_e274078274119_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd274074274114_))))
                                            (let ((_tl274076274124_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e274078274119_)))
                                                  (_hd274077274122_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e274078274119_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd274077274122_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#quote
                                                         _hd274077274122_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl274076274124_))
                                                          (let ((_e274081274127_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl274076274124_))))
                    (let ((_tl274079274132_
                           (let ()
                             (declare (not safe))
                             (##cdr _e274081274127_)))
                          (_hd274080274130_
                           (let ()
                             (declare (not safe))
                             (##car _e274081274127_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl274079274132_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl274073274116_))
                              (let ((_e274084274135_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl274073274116_))))
                                (let ((_tl274082274140_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e274084274135_)))
                                      (_hd274083274138_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e274084274135_))))
                                  (___match279097279098_
                                   _e274075274111_
                                   _hd274074274114_
                                   _tl274073274116_
                                   _e274078274119_
                                   _hd274077274122_
                                   _tl274076274124_
                                   _e274081274127_
                                   _hd274080274130_
                                   _tl274079274132_
                                   _e274084274135_
                                   _hd274083274138_
                                   _tl274082274140_)))
                              (___kont279066279067_))
                          (___kont279066279067_))))
                  (___kont279066279067_))
              (___kont279066279067_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont279066279067_))))
                                          (___kont279066279067_))))
                                  (let ()
                                    (declare (not safe))
                                    (_g274066274106_))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__t278986)
        (let ((__id278987
               (let ((__tmp278988
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t278986 'id))))
                 (if __tmp278988 __tmp278988 (error '"Unknown slot" 'id)))))
          (lambda (_self274036_ _stx274037_ _args274038_)
            (let* ((_klass274040_
                    (let ((__tmp279462
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self274036_
                              __id278987
                              __t278986
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx274037_ __tmp279462)))
                   (_fields274042_
                    (length (##structure-ref
                             _klass274040_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args274044_ (map gxc#compile-e _args274038_))
                   (_inline-make-object274046_
                    (let ((__tmp279463
                           (let ((__tmp279469
                                  (let ((__tmp279470
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp279470)))
                                 (__tmp279464
                                  (let ((__tmp279466
                                         (let ((__tmp279467
                                                (let ((__tmp279468
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self274036_
                                                          __id278987
                                                          __t278986
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp279468 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp279467)))
                                        (__tmp279465
                                         (make-list
                                          _fields274042_
                                          '(%#quote #f))))
                                    (declare (not safe))
                                    (cons __tmp279466 __tmp279465))))
                             (declare (not safe))
                             (cons __tmp279469 __tmp279464))))
                      (declare (not safe))
                      (cons '%#call __tmp279463))))
              (let ((_$e274049_
                     (##structure-ref _klass274040_ '6 gxc#!class::t '#f)))
                (if _$e274049_
                    ((lambda (_ctor274052_)
                       (let ((_$obj274054_
                              (let ((__tmp279532 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp279532)))
                             (_ctor-impl274055_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass274040_
                                 _ctor274052_))))
                         (let ((__tmp279533
                                (let ((__tmp279534
                                       (let ((__tmp279599
                                              (let ((__tmp279600
                                                     (let ((__tmp279602
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj274054_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp279601
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object274046_ '()))))
               (declare (not safe))
               (cons __tmp279602 __tmp279601))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp279600 '())))
                                             (__tmp279535
                                              (let ((__tmp279536
                                                     (let ((__tmp279537
                                                            (let ((__tmp279541
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl274055_
                               (let ((__tmp279593
                                      (let ((__tmp279597
                                             (let ((__tmp279598
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl274055_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp279598)))
                                            (__tmp279594
                                             (let ((__tmp279595
                                                    (let ((__tmp279596
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj274054_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp279596))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp279595
                                                     _args274044_))))
                                        (declare (not safe))
                                        (cons __tmp279597 __tmp279594))))
                                 (declare (not safe))
                                 (cons '%#call __tmp279593))
                               (let* ((_$ctor274057_
                                       (let ((__tmp279542
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp279542)))
                                      (__tmp279543
                                       (let ((__tmp279578
                                              (let ((__tmp279579
                                                     (let ((__tmp279592
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor274057_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp279580
                    (let ((__tmp279581
                           (let ((__tmp279582
                                  (let ((__tmp279590
                                         (let ((__tmp279591
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp279591)))
                                        (__tmp279583
                                         (let ((__tmp279587
                                                (let ((__tmp279588
                                                       (let ((__tmp279589
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self274036_
                         __id278987
                         __t278986
                         '#f))))
                 (declare (not safe))
                 (cons __tmp279589 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp279588)))
                                               (__tmp279584
                                                (let ((__tmp279585
                                                       (let ((__tmp279586
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _ctor274052_ '()))))
                 (declare (not safe))
                 (cons '%#quote __tmp279586))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp279585 '()))))
                                           (declare (not safe))
                                           (cons __tmp279587 __tmp279584))))
                                    (declare (not safe))
                                    (cons __tmp279590 __tmp279583))))
                             (declare (not safe))
                             (cons '%#call __tmp279582))))
                      (declare (not safe))
                      (cons __tmp279581 '()))))
               (declare (not safe))
               (cons __tmp279592 __tmp279580))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp279579 '())))
                                             (__tmp279544
                                              (let ((__tmp279545
                                                     (let ((__tmp279546
                                                            (let ((__tmp279576
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279577
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor274057_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp279577)))
                          (__tmp279547
                           (let ((__tmp279569
                                  (let ((__tmp279570
                                         (let ((__tmp279574
                                                (let ((__tmp279575
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor274057_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp279575)))
                                               (__tmp279571
                                                (let ((__tmp279572
                                                       (let ((__tmp279573
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj274054_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp279573))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp279572
                                                        _args274044_))))
                                           (declare (not safe))
                                           (cons __tmp279574 __tmp279571))))
                                    (declare (not safe))
                                    (cons '%#call __tmp279570)))
                                 (__tmp279548
                                  (let ((__tmp279549
                                         (let ((__tmp279550
                                                (let ((__tmp279567
                                                       (let ((__tmp279568
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp279568)))
              (__tmp279551
               (let ((__tmp279565
                      (let ((__tmp279566
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp279566)))
                     (__tmp279552
                      (let ((__tmp279563
                             (let ((__tmp279564
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp279564)))
                            (__tmp279553
                             (let ((__tmp279560
                                    (let ((__tmp279561
                                           (let ((__tmp279562
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self274036_
                                                     __id278987
                                                     __t278986
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp279562 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp279561)))
                                   (__tmp279554
                                    (let ((__tmp279558
                                           (let ((__tmp279559
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp279559)))
                                          (__tmp279555
                                           (let ((__tmp279556
                                                  (let ((__tmp279557
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor274052_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp279557))))
                                             (declare (not safe))
                                             (cons __tmp279556 '()))))
                                      (declare (not safe))
                                      (cons __tmp279558 __tmp279555))))
                               (declare (not safe))
                               (cons __tmp279560 __tmp279554))))
                        (declare (not safe))
                        (cons __tmp279563 __tmp279553))))
                 (declare (not safe))
                 (cons __tmp279565 __tmp279552))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp279567
                                                        __tmp279551))))
                                           (declare (not safe))
                                           (cons '%#call __tmp279550))))
                                    (declare (not safe))
                                    (cons __tmp279549 '()))))
                             (declare (not safe))
                             (cons __tmp279569 __tmp279548))))
                      (declare (not safe))
                      (cons __tmp279576 __tmp279547))))
               (declare (not safe))
               (cons '%#if __tmp279546))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp279545 '()))))
                                         (declare (not safe))
                                         (cons __tmp279578 __tmp279544))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp279543))))
                          (__tmp279538
                           (let ((__tmp279539
                                  (let ((__tmp279540
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj274054_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp279540))))
                             (declare (not safe))
                             (cons __tmp279539 '()))))
                      (declare (not safe))
                      (cons __tmp279541 __tmp279538))))
               (declare (not safe))
               (cons '%#begin __tmp279537))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp279536 '()))))
                                         (declare (not safe))
                                         (cons __tmp279599 __tmp279535))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp279534))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp279533 _stx274037_))))
                     _$e274049_)
                    (if (##structure-ref _klass274040_ '7 gxc#!class::t '#f)
                        (if (fx= (length _args274044_) _fields274042_)
                            (let ((__tmp279524
                                   (let ((__tmp279525
                                          (let ((__tmp279530
                                                 (let ((__tmp279531
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons '##structure
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp279531)))
                                                (__tmp279526
                                                 (let ((__tmp279527
                                                        (let ((__tmp279528
                                                               (let ((__tmp279529
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self274036_
                                 __id278987
                                 __t278986
                                 '#f))))
                         (declare (not safe))
                         (cons __tmp279529 '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp279528))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279527
                                                         _args274044_))))
                                            (declare (not safe))
                                            (cons __tmp279530 __tmp279526))))
                                     (declare (not safe))
                                     (cons '%#call __tmp279525))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp279524 _stx274037_))
                            (let ((__tmp279523
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _self274036_
                                      __id278987
                                      __t278986
                                      '#f)))
                                  (__tmp279522
                                   (length (##structure-ref
                                            _klass274040_
                                            '5
                                            gxc#!class::t
                                            '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _stx274037_
                               __tmp279523
                               __tmp279522)))
                        (let ((_$obj274059_
                               (let ((__tmp279471 (gensym '__obj)))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp279471))))
                          (let _lp274061_ ((_rest274063_ _args274044_)
                                           (_initializers274064_ '()))
                            (let* ((___stx279102279103_ _rest274063_)
                                   (_g274068274089_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         ___stx279102279103_)))))
                              (let ((___kont279104279105_
                                     (lambda (_L274143_ _L274144_ _L274145_)
                                       (let* ((_slot274175_
                                               (keyword->symbol
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L274145_))))
                                              (_off274177_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _klass274040_
                                                  _slot274175_))))
                                         (if _off274177_
                                             (let ((__tmp279473
                                                    (let ((__tmp279474
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _off274177_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L274144_))))
              (declare (not safe))
              (cons __tmp279474 _initializers274064_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_lp274061_
                                                _L274143_
                                                __tmp279473))
                                             (let ((__tmp279472
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self274036_
                                                       __id278987
                                                       __t278986
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _stx274037_
                                                __tmp279472
                                                _slot274175_))))))
                                    (___kont279106279107_
                                     (lambda ()
                                       (let ((__tmp279475
                                              (let ((__tmp279476
                                                     (let ((__tmp279499
                                                            (let ((__tmp279500
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279502
                                  (let ()
                                    (declare (not safe))
                                    (cons _$obj274059_ '())))
                                 (__tmp279501
                                  (let ()
                                    (declare (not safe))
                                    (cons _inline-make-object274046_ '()))))
                             (declare (not safe))
                             (cons __tmp279502 __tmp279501))))
                      (declare (not safe))
                      (cons __tmp279500 '())))
                   (__tmp279477
                    (let ((__tmp279478
                           (let ((__tmp279479
                                  (let ((__tmp279496
                                         (let ((__tmp279497
                                                (let ((__tmp279498
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj274059_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp279498))))
                                           (declare (not safe))
                                           (cons __tmp279497 '())))
                                        (__tmp279480
                                         (let ((__tmp279481
                                                (lambda (_i274103_ _r274104_)
                                                  (let ((__tmp279482
                                                         (let ((__tmp279483
                                                                (let ((__tmp279493
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp279494
                                      (let ((__tmp279495
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _self274036_
                                                __id278987
                                                __t278986
                                                '#f))))
                                        (declare (not safe))
                                        (cons __tmp279495 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp279494)))
                              (__tmp279484
                               (let ((__tmp279490
                                      (let ((__tmp279491
                                             (let ((__tmp279492
                                                    (car _i274103_)))
                                               (declare (not safe))
                                               (cons __tmp279492 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp279491)))
                                     (__tmp279485
                                      (let ((__tmp279488
                                             (let ((__tmp279489
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj274059_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp279489)))
                                            (__tmp279486
                                             (let ((__tmp279487
                                                    (cdr _i274103_)))
                                               (declare (not safe))
                                               (cons __tmp279487 '()))))
                                        (declare (not safe))
                                        (cons __tmp279488 __tmp279486))))
                                 (declare (not safe))
                                 (cons __tmp279490 __tmp279485))))
                          (declare (not safe))
                          (cons __tmp279493 __tmp279484))))
                   (declare (not safe))
                   (cons '%#struct-unchecked-set! __tmp279483))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp279482
                                                          _r274104_)))))
                                           (declare (not safe))
                                           (foldl1 __tmp279481
                                                   '()
                                                   _initializers274064_))))
                                    (declare (not safe))
                                    (foldr1 cons __tmp279496 __tmp279480))))
                             (declare (not safe))
                             (cons '%#begin __tmp279479))))
                      (declare (not safe))
                      (cons __tmp279478 '()))))
               (declare (not safe))
               (cons __tmp279499 __tmp279477))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#let-values
                                                      __tmp279476))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp279475
                                          _stx274037_))))
                                    (___kont279108279109_
                                     (lambda ()
                                       (let ((__tmp279503
                                              (let ((__tmp279504
                                                     (let ((__tmp279518
                                                            (let ((__tmp279519
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279521
                                  (let ()
                                    (declare (not safe))
                                    (cons _$obj274059_ '())))
                                 (__tmp279520
                                  (let ()
                                    (declare (not safe))
                                    (cons _inline-make-object274046_ '()))))
                             (declare (not safe))
                             (cons __tmp279521 __tmp279520))))
                      (declare (not safe))
                      (cons __tmp279519 '())))
                   (__tmp279505
                    (let ((__tmp279506
                           (let ((__tmp279507
                                  (let ((__tmp279511
                                         (let ((__tmp279512
                                                (let ((__tmp279516
                                                       (let ((__tmp279517
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'class-instance-init! '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp279517)))
              (__tmp279513
               (let ((__tmp279514
                      (let ((__tmp279515
                             (let ()
                               (declare (not safe))
                               (cons _$obj274059_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp279515))))
                 (declare (not safe))
                 (cons __tmp279514 _args274044_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp279516
                                                        __tmp279513))))
                                           (declare (not safe))
                                           (cons '%#call __tmp279512)))
                                        (__tmp279508
                                         (let ((__tmp279509
                                                (let ((__tmp279510
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj274059_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp279510))))
                                           (declare (not safe))
                                           (cons __tmp279509 '()))))
                                    (declare (not safe))
                                    (cons __tmp279511 __tmp279508))))
                             (declare (not safe))
                             (cons '%#begin __tmp279507))))
                      (declare (not safe))
                      (cons __tmp279506 '()))))
               (declare (not safe))
               (cons __tmp279518 __tmp279505))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#let-values
                                                      __tmp279504))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp279503
                                          _stx274037_)))))
                                (let* ((_g274066274106_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 ___stx279102279103_))
                                              (___kont279106279107_)
                                              (___kont279108279109_))))
                                       (___match279139279140_
                                        (lambda (_e274075274111_
                                                 _hd274074274114_
                                                 _tl274073274116_
                                                 _e274078274119_
                                                 _hd274077274122_
                                                 _tl274076274124_
                                                 _e274081274127_
                                                 _hd274080274130_
                                                 _tl274079274132_
                                                 _e274084274135_
                                                 _hd274083274138_
                                                 _tl274082274140_)
                                          (let ((_L274143_ _tl274082274140_)
                                                (_L274144_ _hd274083274138_)
                                                (_L274145_ _hd274080274130_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword? _L274145_))
                                                (___kont279104279105_
                                                 _L274143_
                                                 _L274144_
                                                 _L274145_)
                                                (___kont279108279109_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? ___stx279102279103_))
                                      (let ((_e274075274111_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                ___stx279102279103_))))
                                        (let ((_tl274073274116_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e274075274111_)))
                                              (_hd274074274114_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e274075274111_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd274074274114_))
                                              (let ((_e274078274119_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd274074274114_))))
                                                (let ((_tl274076274124_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e274078274119_)))
                                                      (_hd274077274122_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e274078274119_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd274077274122_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _hd274077274122_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl274076274124_))
                      (let ((_e274081274127_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl274076274124_))))
                        (let ((_tl274079274132_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e274081274127_)))
                              (_hd274080274130_
                               (let ()
                                 (declare (not safe))
                                 (##car _e274081274127_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl274079274132_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl274073274116_))
                                  (let ((_e274084274135_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl274073274116_))))
                                    (let ((_tl274082274140_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e274084274135_)))
                                          (_hd274083274138_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e274084274135_))))
                                      (___match279139279140_
                                       _e274075274111_
                                       _hd274074274114_
                                       _tl274073274116_
                                       _e274078274119_
                                       _hd274077274122_
                                       _tl274076274124_
                                       _e274081274127_
                                       _hd274080274130_
                                       _tl274079274132_
                                       _e274084274135_
                                       _hd274083274138_
                                       _tl274082274140_)))
                                  (___kont279108279109_))
                              (___kont279108279109_))))
                      (___kont279108279109_))
                  (___kont279108279109_))
              (___kont279108279109_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont279108279109_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g274066274106_))))))))))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!constructor::optimize-call
       gxc#!constructor::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_self273859_ _stx273860_ _args273861_)
        (let* ((_g273863273873_
                (lambda (_g273864273870_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g273864273870_))))
               (_g273862273911_
                (lambda (_g273864273876_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g273864273876_))
                      (let ((_e273868273878_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g273864273876_))))
                        (let ((_hd273867273881_
                               (let ()
                                 (declare (not safe))
                                 (##car _e273868273878_)))
                              (_tl273866273883_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e273868273878_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl273866273883_))
                              ((lambda (_L273886_)
                                 (let* ((_klass273897_
                                         (let ((__tmp279603
                                                (##structure-ref
                                                 _self273859_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx273860_
                                            __tmp279603)))
                                        (_field273899_
                                         (let ((__tmp279604
                                                (##structure-ref
                                                 _self273859_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass273897_
                                            __tmp279604)))
                                        (_object273901_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L273886_))))
                                   (if (##structure-ref
                                        _klass273897_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp279681
                                              (let ((__tmp279690
                                                     (if (##structure-ref
                                                          _self273859_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp279682
                                                     (let ((__tmp279687
                                                            (let ((__tmp279688
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279689
                                  (##structure-ref
                                   _self273859_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp279689 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp279688)))
                   (__tmp279683
                    (let ((__tmp279685
                           (let ((__tmp279686
                                  (let ()
                                    (declare (not safe))
                                    (cons _field273899_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp279686)))
                          (__tmp279684
                           (let ()
                             (declare (not safe))
                             (cons _object273901_ '()))))
                      (declare (not safe))
                      (cons __tmp279685 __tmp279684))))
               (declare (not safe))
               (cons __tmp279687 __tmp279683))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp279690
                                                      __tmp279682))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp279681
                                          _stx273860_))
                                       (if (##structure-ref
                                            _klass273897_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp279671
                                                  (let ((__tmp279680
                                                         (if (##structure-ref
                                                              _self273859_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp279672
                                                         (let ((__tmp279677
                                                                (let ((__tmp279678
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp279679
                                      (##structure-ref
                                       _self273859_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp279679 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp279678)))
                       (__tmp279673
                        (let ((__tmp279675
                               (let ((__tmp279676
                                      (let ()
                                        (declare (not safe))
                                        (cons _field273899_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp279676)))
                              (__tmp279674
                               (let ()
                                 (declare (not safe))
                                 (cons _object273901_ '()))))
                          (declare (not safe))
                          (cons __tmp279675 __tmp279674))))
                   (declare (not safe))
                   (cons __tmp279677 __tmp279673))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp279680
                                                          __tmp279672))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp279671
                                              _stx273860_))
                                           (let ((_$e273904_
                                                  (let ((__tmp279605
                                                         (##structure-ref
                                                          _self273859_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass273897_
                                                     __tmp279605))))
                                             (if _$e273904_
                                                 ((lambda (_klass273907_)
                                                    (let ((__tmp279661
                                                           (let ((__tmp279670
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self273859_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp279662
                          (let ((__tmp279667
                                 (let ((__tmp279668
                                        (let ((__tmp279669
                                               (##structure-ref
                                                _self273859_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp279669 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp279668)))
                                (__tmp279663
                                 (let ((__tmp279665
                                        (let ((__tmp279666
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field273899_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp279666)))
                                       (__tmp279664
                                        (let ()
                                          (declare (not safe))
                                          (cons _object273901_ '()))))
                                   (declare (not safe))
                                   (cons __tmp279665 __tmp279664))))
                            (declare (not safe))
                            (cons __tmp279667 __tmp279663))))
                     (declare (not safe))
                     (cons __tmp279670 __tmp279662))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp279661 _stx273860_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e273904_)
                                                 (if (##structure-ref
                                                      _self273859_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp279615
                                                            (let* ((_$obj273909_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp279616 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp279616)))
                           (__tmp279617
                            (let ((__tmp279657
                                   (let ((__tmp279658
                                          (let ((__tmp279660
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj273909_ '())))
                                                (__tmp279659
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object273901_ '()))))
                                            (declare (not safe))
                                            (cons __tmp279660 __tmp279659))))
                                     (declare (not safe))
                                     (cons __tmp279658 '())))
                                  (__tmp279618
                                   (let ((__tmp279619
                                          (let ((__tmp279620
                                                 (let ((__tmp279649
                                                        (let ((__tmp279650
                                                               (let ((__tmp279654
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp279655
                                     (let ((__tmp279656
                                            (##structure-ref
                                             _klass273897_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp279656 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp279655)))
                             (__tmp279651
                              (let ((__tmp279652
                                     (let ((__tmp279653
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj273909_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp279653))))
                                (declare (not safe))
                                (cons __tmp279652 '()))))
                         (declare (not safe))
                         (cons __tmp279654 __tmp279651))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp279650)))
               (__tmp279621
                (let ((__tmp279638
                       (let ((__tmp279639
                              (let ((__tmp279646
                                     (let ((__tmp279647
                                            (let ((__tmp279648
                                                   (##structure-ref
                                                    _self273859_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp279648 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp279647)))
                                    (__tmp279640
                                     (let ((__tmp279644
                                            (let ((__tmp279645
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field273899_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp279645)))
                                           (__tmp279641
                                            (let ((__tmp279642
                                                   (let ((__tmp279643
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj273909_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp279643))))
                                              (declare (not safe))
                                              (cons __tmp279642 '()))))
                                       (declare (not safe))
                                       (cons __tmp279644 __tmp279641))))
                                (declare (not safe))
                                (cons __tmp279646 __tmp279640))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp279639)))
                      (__tmp279622
                       (let ((__tmp279623
                              (let ((__tmp279624
                                     (let ((__tmp279636
                                            (let ((__tmp279637
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp279637)))
                                           (__tmp279625
                                            (let ((__tmp279633
                                                   (let ((__tmp279634
                                                          (let ((__tmp279635
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self273859_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp279635 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp279634)))
                                                  (__tmp279626
                                                   (let ((__tmp279631
                                                          (let ((__tmp279632
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj273909_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp279632)))
                 (__tmp279627
                  (let ((__tmp279628
                         (let ((__tmp279629
                                (let ((__tmp279630
                                       (##structure-ref
                                        _self273859_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp279630 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp279629))))
                    (declare (not safe))
                    (cons __tmp279628 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp279631
                                                           __tmp279627))))
                                              (declare (not safe))
                                              (cons __tmp279633 __tmp279626))))
                                       (declare (not safe))
                                       (cons __tmp279636 __tmp279625))))
                                (declare (not safe))
                                (cons '%#call __tmp279624))))
                         (declare (not safe))
                         (cons __tmp279623 '()))))
                  (declare (not safe))
                  (cons __tmp279638 __tmp279622))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279649
                                                         __tmp279621))))
                                            (declare (not safe))
                                            (cons '%#if __tmp279620))))
                                     (declare (not safe))
                                     (cons __tmp279619 '()))))
                              (declare (not safe))
                              (cons __tmp279657 __tmp279618))))
                      (declare (not safe))
                      (cons '%#let-values __tmp279617))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp279615 _stx273860_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp279606
                                                            (let ((__tmp279607
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279613
                                  (let ((__tmp279614
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp279614)))
                                 (__tmp279608
                                  (let ((__tmp279609
                                         (let ((__tmp279610
                                                (let ((__tmp279611
                                                       (let ((__tmp279612
                                                              (##structure-ref
                                                               _self273859_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp279612
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp279611))))
                                           (declare (not safe))
                                           (cons __tmp279610 '()))))
                                    (declare (not safe))
                                    (cons _object273901_ __tmp279609))))
                             (declare (not safe))
                             (cons __tmp279613 __tmp279608))))
                      (declare (not safe))
                      (cons '%#call __tmp279607))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp279606 _stx273860_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd273867273881_)
                              (let ()
                                (declare (not safe))
                                (_g273863273873_ _g273864273876_)))))
                      (let ()
                        (declare (not safe))
                        (_g273863273873_ _g273864273876_))))))
          (declare (not safe))
          (_g273862273911_ _args273861_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__t278989)
        (let ((__slot278990
               (let ((__tmp278993
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t278989 'slot))))
                 (if __tmp278993 __tmp278993 (error '"Unknown slot" 'slot))))
              (__id278991
               (let ((__tmp278994
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t278989 'id))))
                 (if __tmp278994 __tmp278994 (error '"Unknown slot" 'id))))
              (__checked?278992
               (let ((__tmp278995
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t278989 'checked?))))
                 (if __tmp278995
                     __tmp278995
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self273859_ _stx273860_ _args273861_)
            (let* ((_g273863273873_
                    (lambda (_g273864273870_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g273864273870_))))
                   (_g273862273911_
                    (lambda (_g273864273876_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g273864273876_))
                          (let ((_e273868273878_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g273864273876_))))
                            (let ((_hd273867273881_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e273868273878_)))
                                  (_tl273866273883_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e273868273878_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl273866273883_))
                                  ((lambda (_L273886_)
                                     (let* ((_klass273897_
                                             (let ((__tmp279691
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self273859_
                                                       __id278991
                                                       __t278989
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx273860_
                                                __tmp279691)))
                                            (_field273899_
                                             (let ((__tmp279692
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self273859_
                                                       __slot278990
                                                       __t278989
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass273897_
                                                __tmp279692)))
                                            (_object273901_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L273886_))))
                                       (if (##structure-ref
                                            _klass273897_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp279769
                                                  (let ((__tmp279778
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self273859_
                        __checked?278992
                        __t278989
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp279770
                 (let ((__tmp279775
                        (let ((__tmp279776
                               (let ((__tmp279777
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self273859_
                                         __id278991
                                         __t278989
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp279777 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp279776)))
                       (__tmp279771
                        (let ((__tmp279773
                               (let ((__tmp279774
                                      (let ()
                                        (declare (not safe))
                                        (cons _field273899_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp279774)))
                              (__tmp279772
                               (let ()
                                 (declare (not safe))
                                 (cons _object273901_ '()))))
                          (declare (not safe))
                          (cons __tmp279773 __tmp279772))))
                   (declare (not safe))
                   (cons __tmp279775 __tmp279771))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp279778
                                                          __tmp279770))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp279769
                                              _stx273860_))
                                           (if (##structure-ref
                                                _klass273897_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp279759
                                                      (let ((__tmp279768
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self273859_
                            __checked?278992
                            __t278989
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp279760
                     (let ((__tmp279765
                            (let ((__tmp279766
                                   (let ((__tmp279767
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self273859_
                                             __id278991
                                             __t278989
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp279767 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp279766)))
                           (__tmp279761
                            (let ((__tmp279763
                                   (let ((__tmp279764
                                          (let ()
                                            (declare (not safe))
                                            (cons _field273899_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp279764)))
                                  (__tmp279762
                                   (let ()
                                     (declare (not safe))
                                     (cons _object273901_ '()))))
                              (declare (not safe))
                              (cons __tmp279763 __tmp279762))))
                       (declare (not safe))
                       (cons __tmp279765 __tmp279761))))
                (declare (not safe))
                (cons __tmp279768 __tmp279760))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp279759
                                                  _stx273860_))
                                               (let ((_$e273904_
                                                      (let ((__tmp279693
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self273859_
                        __slot278990
                        __t278989
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass273897_ __tmp279693))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e273904_
                                                     ((lambda (_klass273907_)
                                                        (let ((__tmp279749
                                                               (let ((__tmp279758
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self273859_
                                     __checked?278992
                                     __t278989
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp279750
                              (let ((__tmp279755
                                     (let ((__tmp279756
                                            (let ((__tmp279757
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self273859_
                                                      __id278991
                                                      __t278989
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp279757 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp279756)))
                                    (__tmp279751
                                     (let ((__tmp279753
                                            (let ((__tmp279754
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field273899_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp279754)))
                                           (__tmp279752
                                            (let ()
                                              (declare (not safe))
                                              (cons _object273901_ '()))))
                                       (declare (not safe))
                                       (cons __tmp279753 __tmp279752))))
                                (declare (not safe))
                                (cons __tmp279755 __tmp279751))))
                         (declare (not safe))
                         (cons __tmp279758 __tmp279750))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp279749 _stx273860_)))
              _$e273904_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self273859_
                                                            __checked?278992
                                                            __t278989
                                                            '#f))
                                                         (let ((__tmp279703
                                                                (let* ((_$obj273909_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp279704 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp279704)))
                               (__tmp279705
                                (let ((__tmp279745
                                       (let ((__tmp279746
                                              (let ((__tmp279748
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj273909_
                                                             '())))
                                                    (__tmp279747
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object273901_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp279748
                                                      __tmp279747))))
                                         (declare (not safe))
                                         (cons __tmp279746 '())))
                                      (__tmp279706
                                       (let ((__tmp279707
                                              (let ((__tmp279708
                                                     (let ((__tmp279737
                                                            (let ((__tmp279738
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279742
                                  (let ((__tmp279743
                                         (let ((__tmp279744
                                                (##structure-ref
                                                 _klass273897_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp279744 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp279743)))
                                 (__tmp279739
                                  (let ((__tmp279740
                                         (let ((__tmp279741
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj273909_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp279741))))
                                    (declare (not safe))
                                    (cons __tmp279740 '()))))
                             (declare (not safe))
                             (cons __tmp279742 __tmp279739))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp279738)))
                   (__tmp279709
                    (let ((__tmp279726
                           (let ((__tmp279727
                                  (let ((__tmp279734
                                         (let ((__tmp279735
                                                (let ((__tmp279736
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self273859_
                                                          __id278991
                                                          __t278989
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp279736 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp279735)))
                                        (__tmp279728
                                         (let ((__tmp279732
                                                (let ((__tmp279733
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field273899_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp279733)))
                                               (__tmp279729
                                                (let ((__tmp279730
                                                       (let ((__tmp279731
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj273909_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp279731))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp279730 '()))))
                                           (declare (not safe))
                                           (cons __tmp279732 __tmp279729))))
                                    (declare (not safe))
                                    (cons __tmp279734 __tmp279728))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp279727)))
                          (__tmp279710
                           (let ((__tmp279711
                                  (let ((__tmp279712
                                         (let ((__tmp279724
                                                (let ((__tmp279725
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp279725)))
                                               (__tmp279713
                                                (let ((__tmp279721
                                                       (let ((__tmp279722
                                                              (let ((__tmp279723
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self273859_
                                __id278991
                                __t278989
                                '#f))))
                        (declare (not safe))
                        (cons __tmp279723 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp279722)))
              (__tmp279714
               (let ((__tmp279719
                      (let ((__tmp279720
                             (let ()
                               (declare (not safe))
                               (cons _$obj273909_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp279720)))
                     (__tmp279715
                      (let ((__tmp279716
                             (let ((__tmp279717
                                    (let ((__tmp279718
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self273859_
                                              __slot278990
                                              __t278989
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp279718 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp279717))))
                        (declare (not safe))
                        (cons __tmp279716 '()))))
                 (declare (not safe))
                 (cons __tmp279719 __tmp279715))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp279721
                                                        __tmp279714))))
                                           (declare (not safe))
                                           (cons __tmp279724 __tmp279713))))
                                    (declare (not safe))
                                    (cons '%#call __tmp279712))))
                             (declare (not safe))
                             (cons __tmp279711 '()))))
                      (declare (not safe))
                      (cons __tmp279726 __tmp279710))))
               (declare (not safe))
               (cons __tmp279737 __tmp279709))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp279708))))
                                         (declare (not safe))
                                         (cons __tmp279707 '()))))
                                  (declare (not safe))
                                  (cons __tmp279745 __tmp279706))))
                          (declare (not safe))
                          (cons '%#let-values __tmp279705))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp279703 _stx273860_))
                 (let ((__tmp279694
                        (let ((__tmp279695
                               (let ((__tmp279701
                                      (let ((__tmp279702
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp279702)))
                                     (__tmp279696
                                      (let ((__tmp279697
                                             (let ((__tmp279698
                                                    (let ((__tmp279699
                                                           (let ((__tmp279700
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self273859_
                             __slot278990
                             __t278989
                             '#f))))
                     (declare (not safe))
                     (cons __tmp279700 '()))))
              (declare (not safe))
              (cons '%#quote __tmp279699))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp279698 '()))))
                                        (declare (not safe))
                                        (cons _object273901_ __tmp279697))))
                                 (declare (not safe))
                                 (cons __tmp279701 __tmp279696))))
                          (declare (not safe))
                          (cons '%#call __tmp279695))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp279694 _stx273860_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd273867273881_)
                                  (let ()
                                    (declare (not safe))
                                    (_g273863273873_ _g273864273876_)))))
                          (let ()
                            (declare (not safe))
                            (_g273863273873_ _g273864273876_))))))
              (declare (not safe))
              (_g273862273911_ _args273861_))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!accessor::optimize-call
       gxc#!accessor::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!accessor::t
       'optimize-call
       gxc#!accessor::optimize-call
       '#f))
    (define gxc#!mutator::optimize-call
      (lambda (_self273664_ _stx273665_ _args273666_)
        (let* ((_g273668273682_
                (lambda (_g273669273679_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g273669273679_))))
               (_g273667273734_
                (lambda (_g273669273685_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g273669273685_))
                      (let ((_e273674273687_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g273669273685_))))
                        (let ((_hd273673273690_
                               (let ()
                                 (declare (not safe))
                                 (##car _e273674273687_)))
                              (_tl273672273692_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e273674273687_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl273672273692_))
                              (let ((_e273677273695_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl273672273692_))))
                                (let ((_hd273676273698_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e273677273695_)))
                                      (_tl273675273700_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e273677273695_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl273675273700_))
                                      ((lambda (_L273703_ _L273704_)
                                         (let* ((_klass273718_
                                                 (let ((__tmp279779
                                                        (##structure-ref
                                                         _self273664_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx273665_
                                                    __tmp279779)))
                                                (_field273720_
                                                 (let ((__tmp279780
                                                        (##structure-ref
                                                         _self273664_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass273718_
                                                    __tmp279780)))
                                                (_object273722_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L273704_)))
                                                (_value273724_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L273703_))))
                                           (if (##structure-ref
                                                _klass273718_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp279862
                                                      (let ((__tmp279872
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self273664_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp279863
                     (let ((__tmp279869
                            (let ((__tmp279870
                                   (let ((__tmp279871
                                          (##structure-ref
                                           _self273664_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp279871 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp279870)))
                           (__tmp279864
                            (let ((__tmp279867
                                   (let ((__tmp279868
                                          (let ()
                                            (declare (not safe))
                                            (cons _field273720_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp279868)))
                                  (__tmp279865
                                   (let ((__tmp279866
                                          (let ()
                                            (declare (not safe))
                                            (cons _value273724_ '()))))
                                     (declare (not safe))
                                     (cons _object273722_ __tmp279866))))
                              (declare (not safe))
                              (cons __tmp279867 __tmp279865))))
                       (declare (not safe))
                       (cons __tmp279869 __tmp279864))))
                (declare (not safe))
                (cons __tmp279872 __tmp279863))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp279862
                                                  _stx273665_))
                                               (if (##structure-ref
                                                    _klass273718_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp279851
                                                          (let ((__tmp279861
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self273664_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp279852
                         (let ((__tmp279858
                                (let ((__tmp279859
                                       (let ((__tmp279860
                                              (##structure-ref
                                               _self273664_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp279860 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp279859)))
                               (__tmp279853
                                (let ((__tmp279856
                                       (let ((__tmp279857
                                              (let ()
                                                (declare (not safe))
                                                (cons _field273720_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp279857)))
                                      (__tmp279854
                                       (let ((__tmp279855
                                              (let ()
                                                (declare (not safe))
                                                (cons _value273724_ '()))))
                                         (declare (not safe))
                                         (cons _object273722_ __tmp279855))))
                                  (declare (not safe))
                                  (cons __tmp279856 __tmp279854))))
                           (declare (not safe))
                           (cons __tmp279858 __tmp279853))))
                    (declare (not safe))
                    (cons __tmp279861 __tmp279852))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp279851
                                                      _stx273665_))
                                                   (let ((_$e273727_
                                                          (let ((__tmp279781
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self273664_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass273718_ __tmp279781))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e273727_
                                                         ((lambda (_klass273730_)
                                                            (let ((__tmp279840
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279850
                                  (if (##structure-ref
                                       _self273664_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp279841
                                  (let ((__tmp279847
                                         (let ((__tmp279848
                                                (let ((__tmp279849
                                                       (##structure-ref
                                                        _self273664_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp279849 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp279848)))
                                        (__tmp279842
                                         (let ((__tmp279845
                                                (let ((__tmp279846
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field273720_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp279846)))
                                               (__tmp279843
                                                (let ((__tmp279844
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value273724_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object273722_
                                                        __tmp279844))))
                                           (declare (not safe))
                                           (cons __tmp279845 __tmp279843))))
                                    (declare (not safe))
                                    (cons __tmp279847 __tmp279842))))
                             (declare (not safe))
                             (cons __tmp279850 __tmp279841))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp279840 _stx273665_)))
                  _$e273727_)
                 (if (##structure-ref _self273664_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp279792
                            (let* ((_$obj273732_
                                    (let ((__tmp279793 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp279793)))
                                   (__tmp279794
                                    (let ((__tmp279836
                                           (let ((__tmp279837
                                                  (let ((__tmp279839
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj273732_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp279838
                 (let () (declare (not safe)) (cons _object273722_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp279839
                                                          __tmp279838))))
                                             (declare (not safe))
                                             (cons __tmp279837 '())))
                                          (__tmp279795
                                           (let ((__tmp279796
                                                  (let ((__tmp279797
                                                         (let ((__tmp279828
                                                                (let ((__tmp279829
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp279833
                                      (let ((__tmp279834
                                             (let ((__tmp279835
                                                    (##structure-ref
                                                     _klass273718_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp279835 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp279834)))
                                     (__tmp279830
                                      (let ((__tmp279831
                                             (let ((__tmp279832
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj273732_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp279832))))
                                        (declare (not safe))
                                        (cons __tmp279831 '()))))
                                 (declare (not safe))
                                 (cons __tmp279833 __tmp279830))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp279829)))
                       (__tmp279798
                        (let ((__tmp279816
                               (let ((__tmp279817
                                      (let ((__tmp279825
                                             (let ((__tmp279826
                                                    (let ((__tmp279827
                                                           (##structure-ref
                                                            _self273664_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp279827 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp279826)))
                                            (__tmp279818
                                             (let ((__tmp279823
                                                    (let ((__tmp279824
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field273720_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp279824)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp279819
                                                    (let ((__tmp279821
                                                           (let ((__tmp279822
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj273732_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp279822)))
                  (__tmp279820
                   (let () (declare (not safe)) (cons _value273724_ '()))))
              (declare (not safe))
              (cons __tmp279821 __tmp279820))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp279823
                                                     __tmp279819))))
                                        (declare (not safe))
                                        (cons __tmp279825 __tmp279818))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp279817)))
                              (__tmp279799
                               (let ((__tmp279800
                                      (let ((__tmp279801
                                             (let ((__tmp279814
                                                    (let ((__tmp279815
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp279815)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp279802
                                                    (let ((__tmp279811
                                                           (let ((__tmp279812
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp279813
                                 (##structure-ref
                                  _self273664_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp279813 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp279812)))
                  (__tmp279803
                   (let ((__tmp279809
                          (let ((__tmp279810
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj273732_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp279810)))
                         (__tmp279804
                          (let ((__tmp279806
                                 (let ((__tmp279807
                                        (let ((__tmp279808
                                               (##structure-ref
                                                _self273664_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp279808 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp279807)))
                                (__tmp279805
                                 (let ()
                                   (declare (not safe))
                                   (cons _value273724_ '()))))
                            (declare (not safe))
                            (cons __tmp279806 __tmp279805))))
                     (declare (not safe))
                     (cons __tmp279809 __tmp279804))))
              (declare (not safe))
              (cons __tmp279811 __tmp279803))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp279814
                                                     __tmp279802))))
                                        (declare (not safe))
                                        (cons '%#call __tmp279801))))
                                 (declare (not safe))
                                 (cons __tmp279800 '()))))
                          (declare (not safe))
                          (cons __tmp279816 __tmp279799))))
                   (declare (not safe))
                   (cons __tmp279828 __tmp279798))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp279797))))
                                             (declare (not safe))
                                             (cons __tmp279796 '()))))
                                      (declare (not safe))
                                      (cons __tmp279836 __tmp279795))))
                              (declare (not safe))
                              (cons '%#let-values __tmp279794))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp279792 _stx273665_))
                     (let ((__tmp279782
                            (let ((__tmp279783
                                   (let ((__tmp279790
                                          (let ((__tmp279791
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp279791)))
                                         (__tmp279784
                                          (let ((__tmp279785
                                                 (let ((__tmp279787
                                                        (let ((__tmp279788
                                                               (let ((__tmp279789
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self273664_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp279789 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp279788)))
               (__tmp279786
                (let () (declare (not safe)) (cons _value273724_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279787
                                                         __tmp279786))))
                                            (declare (not safe))
                                            (cons _object273722_
                                                  __tmp279785))))
                                     (declare (not safe))
                                     (cons __tmp279790 __tmp279784))))
                              (declare (not safe))
                              (cons '%#call __tmp279783))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp279782 _stx273665_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd273676273698_
                                       _hd273673273690_)
                                      (let ()
                                        (declare (not safe))
                                        (_g273668273682_ _g273669273685_)))))
                              (let ()
                                (declare (not safe))
                                (_g273668273682_ _g273669273685_)))))
                      (let ()
                        (declare (not safe))
                        (_g273668273682_ _g273669273685_))))))
          (declare (not safe))
          (_g273667273734_ _args273666_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__t278996)
        (let ((__slot278997
               (let ((__tmp279000
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t278996 'slot))))
                 (if __tmp279000 __tmp279000 (error '"Unknown slot" 'slot))))
              (__id278998
               (let ((__tmp279001
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t278996 'id))))
                 (if __tmp279001 __tmp279001 (error '"Unknown slot" 'id))))
              (__checked?278999
               (let ((__tmp279002
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t278996 'checked?))))
                 (if __tmp279002
                     __tmp279002
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self273664_ _stx273665_ _args273666_)
            (let* ((_g273668273682_
                    (lambda (_g273669273679_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g273669273679_))))
                   (_g273667273734_
                    (lambda (_g273669273685_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g273669273685_))
                          (let ((_e273674273687_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g273669273685_))))
                            (let ((_hd273673273690_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e273674273687_)))
                                  (_tl273672273692_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e273674273687_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl273672273692_))
                                  (let ((_e273677273695_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl273672273692_))))
                                    (let ((_hd273676273698_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e273677273695_)))
                                          (_tl273675273700_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e273677273695_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl273675273700_))
                                          ((lambda (_L273703_ _L273704_)
                                             (let* ((_klass273718_
                                                     (let ((__tmp279873
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self273664_
                                                               __id278998
                                                               __t278996
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx273665_
                                                        __tmp279873)))
                                                    (_field273720_
                                                     (let ((__tmp279874
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self273664_
                                                               __slot278997
                                                               __t278996
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass273718_
                                                        __tmp279874)))
                                                    (_object273722_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L273704_)))
                                                    (_value273724_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L273703_))))
                                               (if (##structure-ref
                                                    _klass273718_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp279956
                                                          (let ((__tmp279966
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self273664_
                                __checked?278999
                                __t278996
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp279957
                         (let ((__tmp279963
                                (let ((__tmp279964
                                       (let ((__tmp279965
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self273664_
                                                 __id278998
                                                 __t278996
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp279965 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp279964)))
                               (__tmp279958
                                (let ((__tmp279961
                                       (let ((__tmp279962
                                              (let ()
                                                (declare (not safe))
                                                (cons _field273720_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp279962)))
                                      (__tmp279959
                                       (let ((__tmp279960
                                              (let ()
                                                (declare (not safe))
                                                (cons _value273724_ '()))))
                                         (declare (not safe))
                                         (cons _object273722_ __tmp279960))))
                                  (declare (not safe))
                                  (cons __tmp279961 __tmp279959))))
                           (declare (not safe))
                           (cons __tmp279963 __tmp279958))))
                    (declare (not safe))
                    (cons __tmp279966 __tmp279957))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp279956
                                                      _stx273665_))
                                                   (if (##structure-ref
                                                        _klass273718_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp279945
                                                              (let ((__tmp279955
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self273664_
                                    __checked?278999
                                    __t278996
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp279946
                             (let ((__tmp279952
                                    (let ((__tmp279953
                                           (let ((__tmp279954
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self273664_
                                                     __id278998
                                                     __t278996
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp279954 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp279953)))
                                   (__tmp279947
                                    (let ((__tmp279950
                                           (let ((__tmp279951
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field273720_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp279951)))
                                          (__tmp279948
                                           (let ((__tmp279949
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value273724_ '()))))
                                             (declare (not safe))
                                             (cons _object273722_
                                                   __tmp279949))))
                                      (declare (not safe))
                                      (cons __tmp279950 __tmp279948))))
                               (declare (not safe))
                               (cons __tmp279952 __tmp279947))))
                        (declare (not safe))
                        (cons __tmp279955 __tmp279946))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp279945 _stx273665_))
               (let ((_$e273727_
                      (let ((__tmp279875
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self273664_
                                __slot278997
                                __t278996
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass273718_
                         __tmp279875))))
                 (if _$e273727_
                     ((lambda (_klass273730_)
                        (let ((__tmp279934
                               (let ((__tmp279944
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self273664_
                                             __checked?278999
                                             __t278996
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp279935
                                      (let ((__tmp279941
                                             (let ((__tmp279942
                                                    (let ((__tmp279943
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self273664_
                                                              __id278998
                                                              __t278996
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp279943 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp279942)))
                                            (__tmp279936
                                             (let ((__tmp279939
                                                    (let ((__tmp279940
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field273720_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp279940)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp279937
                                                    (let ((__tmp279938
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value273724_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object273722_ __tmp279938))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp279939
                                                     __tmp279937))))
                                        (declare (not safe))
                                        (cons __tmp279941 __tmp279936))))
                                 (declare (not safe))
                                 (cons __tmp279944 __tmp279935))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp279934 _stx273665_)))
                      _$e273727_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self273664_
                            __checked?278999
                            __t278996
                            '#f))
                         (let ((__tmp279886
                                (let* ((_$obj273732_
                                        (let ((__tmp279887 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp279887)))
                                       (__tmp279888
                                        (let ((__tmp279930
                                               (let ((__tmp279931
                                                      (let ((__tmp279933
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj273732_ '())))
                    (__tmp279932
                     (let () (declare (not safe)) (cons _object273722_ '()))))
                (declare (not safe))
                (cons __tmp279933 __tmp279932))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp279931 '())))
                                              (__tmp279889
                                               (let ((__tmp279890
                                                      (let ((__tmp279891
                                                             (let ((__tmp279922
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp279923
                                   (let ((__tmp279927
                                          (let ((__tmp279928
                                                 (let ((__tmp279929
                                                        (##structure-ref
                                                         _klass273718_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp279929 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp279928)))
                                         (__tmp279924
                                          (let ((__tmp279925
                                                 (let ((__tmp279926
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj273732_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp279926))))
                                            (declare (not safe))
                                            (cons __tmp279925 '()))))
                                     (declare (not safe))
                                     (cons __tmp279927 __tmp279924))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp279923)))
                           (__tmp279892
                            (let ((__tmp279910
                                   (let ((__tmp279911
                                          (let ((__tmp279919
                                                 (let ((__tmp279920
                                                        (let ((__tmp279921
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self273664_
                          __id278998
                          __t278996
                          '#f))))
                  (declare (not safe))
                  (cons __tmp279921 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp279920)))
                                                (__tmp279912
                                                 (let ((__tmp279917
                                                        (let ((__tmp279918
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field273720_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp279918)))
               (__tmp279913
                (let ((__tmp279915
                       (let ((__tmp279916
                              (let ()
                                (declare (not safe))
                                (cons _$obj273732_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp279916)))
                      (__tmp279914
                       (let () (declare (not safe)) (cons _value273724_ '()))))
                  (declare (not safe))
                  (cons __tmp279915 __tmp279914))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279917
                                                         __tmp279913))))
                                            (declare (not safe))
                                            (cons __tmp279919 __tmp279912))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp279911)))
                                  (__tmp279893
                                   (let ((__tmp279894
                                          (let ((__tmp279895
                                                 (let ((__tmp279908
                                                        (let ((__tmp279909
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp279909)))
               (__tmp279896
                (let ((__tmp279905
                       (let ((__tmp279906
                              (let ((__tmp279907
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self273664_
                                        __id278998
                                        __t278996
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp279907 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp279906)))
                      (__tmp279897
                       (let ((__tmp279903
                              (let ((__tmp279904
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj273732_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp279904)))
                             (__tmp279898
                              (let ((__tmp279900
                                     (let ((__tmp279901
                                            (let ((__tmp279902
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self273664_
                                                      __slot278997
                                                      __t278996
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp279902 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp279901)))
                                    (__tmp279899
                                     (let ()
                                       (declare (not safe))
                                       (cons _value273724_ '()))))
                                (declare (not safe))
                                (cons __tmp279900 __tmp279899))))
                         (declare (not safe))
                         (cons __tmp279903 __tmp279898))))
                  (declare (not safe))
                  (cons __tmp279905 __tmp279897))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279908
                                                         __tmp279896))))
                                            (declare (not safe))
                                            (cons '%#call __tmp279895))))
                                     (declare (not safe))
                                     (cons __tmp279894 '()))))
                              (declare (not safe))
                              (cons __tmp279910 __tmp279893))))
                       (declare (not safe))
                       (cons __tmp279922 __tmp279892))))
                (declare (not safe))
                (cons '%#if __tmp279891))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp279890 '()))))
                                          (declare (not safe))
                                          (cons __tmp279930 __tmp279889))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp279888))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp279886 _stx273665_))
                         (let ((__tmp279876
                                (let ((__tmp279877
                                       (let ((__tmp279884
                                              (let ((__tmp279885
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp279885)))
                                             (__tmp279878
                                              (let ((__tmp279879
                                                     (let ((__tmp279881
                                                            (let ((__tmp279882
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279883
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self273664_
                                     __slot278997
                                     __t278996
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp279883 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp279882)))
                   (__tmp279880
                    (let () (declare (not safe)) (cons _value273724_ '()))))
               (declare (not safe))
               (cons __tmp279881 __tmp279880))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object273722_
                                                      __tmp279879))))
                                         (declare (not safe))
                                         (cons __tmp279884 __tmp279878))))
                                  (declare (not safe))
                                  (cons '%#call __tmp279877))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp279876
                            _stx273665_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd273676273698_
                                           _hd273673273690_)
                                          (let ()
                                            (declare (not safe))
                                            (_g273668273682_
                                             _g273669273685_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g273668273682_ _g273669273685_)))))
                          (let ()
                            (declare (not safe))
                            (_g273668273682_ _g273669273685_))))))
              (declare (not safe))
              (_g273667273734_ _args273666_))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!mutator::optimize-call
       gxc#!mutator::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!mutator::t
       'optimize-call
       gxc#!mutator::optimize-call
       '#f))
    (define gxc#!lambda::optimize-call
      (lambda (_self273498_ _stx273499_ _args273500_)
        (let* ((_self273501273510_ _self273498_)
               (_E273503273514_
                (lambda () (error '"No clause matching" _self273501273510_)))
               (_K273504273521_
                (lambda (_inline273517_ _dispatch273518_ _arity273519_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self273498_ _args273500_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx273499_
                         _arity273519_)))
                  (if _inline273517_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp279972
                               (let ((__tmp279973
                                      (_inline273517_ _stx273499_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp279973
                                  _stx273499_))))
                          (declare (not safe))
                          (gxc#compile-e__0 __tmp279972)))
                      (if _dispatch273518_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch273518_))
                            (let ((__tmp279967
                                   (let ((__tmp279968
                                          (let ((__tmp279969
                                                 (let ((__tmp279970
                                                        (let ((__tmp279971
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch273518_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp279971))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279970
                                                         _args273500_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp279969))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp279968
                                      _stx273499_))))
                              (declare (not safe))
                              (gxc#compile-e__0 __tmp279967)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _stx273499_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self273501273510_ 'gxc#!lambda::t))
              (let* ((_e273505273524_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273501273510_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e273506273527_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273501273510_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity273530_ _e273506273527_)
                     (_e273507273532_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273501273510_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch273535_ _e273507273532_)
                     (_e273508273537_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273501273510_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline273540_ _e273508273537_))
                (declare (not safe))
                (_K273504273521_
                 _inline273540_
                 _dispatch273535_
                 _arity273530_))
              (let () (declare (not safe)) (_E273503273514_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self273337_ _stx273338_ _args273339_)
        (let* ((_self273340273347_ _self273337_)
               (_E273342273351_
                (lambda () (error '"No clause matching" _self273340273347_)))
               (_K273343273365_
                (lambda (_clauses273354_)
                  (let ((_$e273360_
                         (let ((__tmp279974
                                (lambda (_g273355273357_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g273355273357_
                                     _args273339_)))))
                           (declare (not safe))
                           (find __tmp279974 _clauses273354_))))
                    (if _$e273360_
                        ((lambda (_clause273363_)
                           (let ((__method279271
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause273363_
                                     'optimize-call))))
                             (if __method279271
                                 (__method279271
                                  _clause273363_
                                  _stx273338_
                                  _args273339_)
                                 (error '"Missing method"
                                        _clause273363_
                                        'optimize-call))))
                         _$e273360_)
                        (let ((__tmp279975
                               (map gxc#!lambda-arity _clauses273354_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx273338_
                           __tmp279975)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self273340273347_
                 'gxc#!case-lambda::t))
              (let* ((_e273344273368_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273340273347_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e273345273371_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273340273347_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses273374_ _e273345273371_))
                (declare (not safe))
                (_K273343273365_ _clauses273374_))
              (let () (declare (not safe)) (_E273342273351_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self273151_ _args273152_)
        (let* ((_self273153273160_ _self273151_)
               (_E273155273164_
                (lambda () (error '"No clause matching" _self273153273160_)))
               (_K273156273204_
                (lambda (_arity273167_)
                  (let* ((_arity273168273177_ _arity273167_)
                         (_E273171273181_
                          (lambda ()
                            (error '"No clause matching"
                                   _arity273168273177_))))
                    (let ((_K273175273201_
                           (lambda ()
                             (fx= (length _args273152_) _arity273167_)))
                          (_K273172273187_
                           (lambda (_arity273185_)
                             (fx>= (length _args273152_) _arity273185_))))
                      (let ((_try-match273170273197_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity273168273177_))
                                   (let ((_tl273174273192_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity273168273177_)))
                                         (_hd273173273190_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity273168273177_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl273174273192_))
                                         (let ((_arity273195_
                                                _hd273173273190_))
                                           (declare (not safe))
                                           (_K273172273187_ _arity273195_))
                                         (let ()
                                           (declare (not safe))
                                           (_E273171273181_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E273171273181_))))))
                        (if (fixnum? _arity273168273177_)
                            (let () (declare (not safe)) (_K273175273201_))
                            (let ()
                              (declare (not safe))
                              (_try-match273170273197_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self273153273160_ 'gxc#!lambda::t))
              (let* ((_e273157273207_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273153273160_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e273158273210_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273153273160_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity273213_ _e273158273210_))
                (declare (not safe))
                (_K273156273204_ _arity273213_))
              (let () (declare (not safe)) (_E273155273164_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self273036_ _stx273037_ _args273038_)
        (let* ((_self273039273047_ _self273036_)
               (_E273041273051_
                (lambda () (error '"No clause matching" _self273039273047_)))
               (_K273042273135_
                (lambda (_dispatch273054_ _table273055_)
                  (let* ((_g273056273065_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch273054_)))
                         (_else273058273073_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch273054_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _stx273037_))))
                         (_K273060273119_
                          (lambda (_main273076_ _keys273077_)
                            (let ((_g279976_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx273037_
                                      _args273038_))))
                              (begin
                                (let ((_g279977_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g279976_)
                                             (##vector-length _g279976_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g279977_ 2)))
                                      (error "Context expects 2 values"
                                             _g279977_)))
                                (let ((_pargs273079_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g279976_ 0)))
                                      (_kwargs273080_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g279976_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main273076_))
                                    (if _table273055_
                                        (let ((_xargs273087_
                                               (map (lambda (_key273082_)
                                                      (let ((_$e273084_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _key273082_ _kwargs273080_))))
                (if _$e273084_ (values _$e273084_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys273077_)))
                                          (for-each
                                           (lambda (_kw273089_)
                                             (if (memq (car _kw273089_)
                                                       _keys273077_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx273037_
                                                    _keys273077_
                                                    _kw273089_))))
                                           _kwargs273080_)
                                          (let ((__tmp280029
                                                 (let ((__tmp280030
                                                        (let ((__tmp280031
                                                               (let ((__tmp280036
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp280037
                                     (let ()
                                       (declare (not safe))
                                       (cons _main273076_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp280037)))
                             (__tmp280032
                              (let ((__tmp280034
                                     (let ((__tmp280035
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp280035)))
                                    (__tmp280033
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs273079_
                                               _xargs273087_))))
                                (declare (not safe))
                                (cons __tmp280034 __tmp280033))))
                         (declare (not safe))
                         (cons __tmp280036 __tmp280032))))
                  (declare (not safe))
                  (cons '%#call __tmp280031))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp280030
                                                    _stx273037_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0 __tmp280029)))
                                        (let* ((_kwt273091_
                                                (let ((__tmp279978
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp279978)))
                                               (_kwvars273094_
                                                (map (lambda (_g279979_)
                                                       (let ((__tmp279980
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp279980)))
                                                     _kwargs273080_))
                                               (_kwbind273099_
                                                (map (lambda (_kw273096_
                                                              _kwvar273097_)
                                                       (let ((__tmp279983
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar273097_ '())))
                     (__tmp279981
                      (let ((__tmp279982 (cdr _kw273096_)))
                        (declare (not safe))
                        (cons __tmp279982 '()))))
                 (declare (not safe))
                 (cons __tmp279983 __tmp279981)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs273080_
                                                     _kwvars273094_))
                                               (_kwset273104_
                                                (map (lambda (_kw273101_
                                                              _kwvar273102_)
                                                       (let ((__tmp279984
                                                              (let ((__tmp279985
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp279993
                                    (let ((__tmp279994
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt273091_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp279994)))
                                   (__tmp279986
                                    (let ((__tmp279990
                                           (let ((__tmp279991
                                                  (let ((__tmp279992
                                                         (car _kw273101_)))
                                                    (declare (not safe))
                                                    (cons __tmp279992 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp279991)))
                                          (__tmp279987
                                           (let ((__tmp279988
                                                  (let ((__tmp279989
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar273102_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp279989))))
                                             (declare (not safe))
                                             (cons __tmp279988 '()))))
                                      (declare (not safe))
                                      (cons __tmp279990 __tmp279987))))
                               (declare (not safe))
                               (cons __tmp279993 __tmp279986))))
                        (declare (not safe))
                        (cons '(%#ref hash-put!) __tmp279985))))
                 (declare (not safe))
                 (cons '%#call __tmp279984)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs273080_
                                                     _kwvars273094_))
                                               (_xkwargs273109_
                                                (map (lambda (_kw273106_
                                                              _kwvar273107_)
                                                       (let ((__tmp279997
                                                              (car _kw273106_))
                                                             (__tmp279995
                                                              (let ((__tmp279996
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar273107_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp279996))))
                 (declare (not safe))
                 (cons __tmp279997 __tmp279995)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs273080_
                                                     _kwvars273094_))
                                               (_xargs273116_
                                                (map (lambda (_key273111_)
                                                       (let ((_$e273113_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq _key273111_ _xkwargs273109_))))
                 (if _$e273113_ (values _$e273113_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys273077_)))
                                          (let ((__tmp279998
                                                 (let ((__tmp279999
                                                        (let ((__tmp280000
                                                               (let ((__tmp280001
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp280002
                                     (let ((__tmp280003
                                            (let ((__tmp280017
                                                   (let ((__tmp280018
                                                          (let ((__tmp280028
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt273091_ '())))
                        (__tmp280019
                         (let ((__tmp280020
                                (let ((__tmp280021
                                       (let ((__tmp280022
                                              (let ((__tmp280023
                                                     (let ((__tmp280024
                                                            (let ((__tmp280025
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp280026
                                  (let ((__tmp280027 (length _kwargs273080_)))
                                    (declare (not safe))
                                    (cons __tmp280027 '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp280026))))
                      (declare (not safe))
                      (cons __tmp280025 '()))))
               (declare (not safe))
               (cons '(%#quote size:) __tmp280024))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-hash-table-eq)
                                                      __tmp280023))))
                                         (declare (not safe))
                                         (cons '%#call __tmp280022))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp280021
                                   _stx273037_))))
                           (declare (not safe))
                           (cons __tmp280020 '()))))
                    (declare (not safe))
                    (cons __tmp280028 __tmp280019))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp280018 '())))
                                                  (__tmp280004
                                                   (let ((__tmp280005
                                                          (let ((__tmp280006
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp280007
                                (let ((__tmp280008
                                       (let ((__tmp280009
                                              (let ((__tmp280010
                                                     (let ((__tmp280015
                                                            (let ((__tmp280016
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main273076_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp280016)))
                   (__tmp280011
                    (let ((__tmp280013
                           (let ((__tmp280014
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt273091_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp280014)))
                          (__tmp280012
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs273079_ _xargs273116_))))
                      (declare (not safe))
                      (cons __tmp280013 __tmp280012))))
               (declare (not safe))
               (cons __tmp280015 __tmp280011))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp280010))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp280009
                                          _stx273037_))))
                                  (declare (not safe))
                                  (cons __tmp280008 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp280007 _kwset273104_))))
                    (declare (not safe))
                    (cons '%#begin __tmp280006))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp280005 '()))))
                                              (declare (not safe))
                                              (cons __tmp280017 __tmp280004))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp280003))))
                                (declare (not safe))
                                (cons __tmp280002 '()))))
                         (declare (not safe))
                         (cons _kwbind273099_ __tmp280001))))
                  (declare (not safe))
                  (cons '%#let-values __tmp280000))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp279999
                                                    _stx273037_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0
                                             __tmp279998)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g273056273065_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e273061273122_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g273056273065_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e273062273125_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g273056273065_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys273128_ _e273062273125_)
                               (_e273063273130_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g273056273065_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main273133_ _e273063273130_))
                          (declare (not safe))
                          (_K273060273119_ _main273133_ _keys273128_))
                        (let () (declare (not safe)) (_else273058273073_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self273039273047_
                 'gxc#!kw-lambda::t))
              (let* ((_e273043273138_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273039273047_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e273044273141_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273039273047_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table273144_ _e273044273141_)
                     (_e273045273146_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273039273047_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch273149_ _e273045273146_))
                (declare (not safe))
                (_K273042273135_ _dispatch273149_ _table273144_))
              (let () (declare (not safe)) (_E273041273051_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx272649_ _args272650_)
        (let _lp272652_ ((_rest272654_ _args272650_)
                         (_pargs272655_ '())
                         (_kwargs272656_ '()))
          (let* ((___stx279153279154_ _rest272654_)
                 (_g272662272714_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx279153279154_)))))
            (let ((___kont279155279156_
                   (lambda (_L272893_ _L272894_)
                     (let ((__tmp280038
                            (let ()
                              (declare (not safe))
                              (cons _L272894_ _pargs272655_))))
                       (declare (not safe))
                       (_lp272652_ _L272893_ __tmp280038 _kwargs272656_))))
                  (___kont279157279158_
                   (lambda (_L272839_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L272839_ _pargs272655_))
                             (reverse _kwargs272656_))))
                  (___kont279159279160_
                   (lambda (_L272786_ _L272787_ _L272788_)
                     (let ((_kw272805_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L272788_))))
                       (if (assq _kw272805_ _kwargs272656_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx272649_
                              _kw272805_))
                           (let ((__tmp280039
                                  (let ((__tmp280040
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw272805_ _L272787_))))
                                    (declare (not safe))
                                    (cons __tmp280040 _kwargs272656_))))
                             (declare (not safe))
                             (_lp272652_
                              _L272786_
                              _pargs272655_
                              __tmp280039))))))
                  (___kont279161279162_
                   (lambda (_L272734_ _L272735_)
                     (let ((__tmp280041
                            (let ()
                              (declare (not safe))
                              (cons _L272735_ _pargs272655_))))
                       (declare (not safe))
                       (_lp272652_ _L272734_ __tmp280041 _kwargs272656_))))
                  (___kont279163279164_
                   (lambda ()
                     (values (reverse _pargs272655_)
                             (reverse _kwargs272656_)))))
              (let* ((_g272661272721_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx279153279154_))
                            (___kont279163279164_)
                            (let () (declare (not safe)) (_g272662272714_)))))
                     (___match279260279261_
                      (lambda (_e272695272754_
                               _hd272694272757_
                               _tl272693272759_
                               _e272698272762_
                               _hd272697272765_
                               _tl272696272767_
                               _e272701272770_
                               _hd272700272773_
                               _tl272699272775_
                               _e272704272778_
                               _hd272703272781_
                               _tl272702272783_)
                        (let ((_L272786_ _tl272702272783_)
                              (_L272787_ _hd272703272781_)
                              (_L272788_ _hd272700272773_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L272788_))
                              (___kont279159279160_
                               _L272786_
                               _L272787_
                               _L272788_)
                              (___kont279161279162_
                               _tl272693272759_
                               _hd272694272757_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx279153279154_))
                    (let ((_e272668272858_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx279153279154_))))
                      (let ((_tl272666272863_
                             (let ()
                               (declare (not safe))
                               (##cdr _e272668272858_)))
                            (_hd272667272861_
                             (let ()
                               (declare (not safe))
                               (##car _e272668272858_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd272667272861_))
                            (let ((_e272671272866_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd272667272861_))))
                              (let ((_tl272669272871_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e272671272866_)))
                                    (_hd272670272869_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e272671272866_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd272670272869_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd272670272869_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl272669272871_))
                                            (let ((_e272674272874_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl272669272871_))))
                                              (let ((_tl272672272879_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e272674272874_)))
                                                    (_hd272673272877_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e272674272874_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd272673272877_))
                                                    (let ((_e272675272882_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd272673272877_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e272675272882_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl272672272879_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl272666272863_))
                          (let ((_e272678272885_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl272666272863_))))
                            (let ((_tl272676272890_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e272678272885_)))
                                  (_hd272677272888_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e272678272885_))))
                              (___kont279155279156_
                               _tl272676272890_
                               _hd272677272888_)))
                          (___kont279161279162_
                           _tl272666272863_
                           _hd272667272861_))
                      (___kont279161279162_ _tl272666272863_ _hd272667272861_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e272675272882_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl272672272879_))
                          (___kont279157279158_ _tl272666272863_)
                          (___kont279161279162_
                           _tl272666272863_
                           _hd272667272861_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl272672272879_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl272666272863_))
                              (let ((_e272704272778_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl272666272863_))))
                                (let ((_tl272702272783_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e272704272778_)))
                                      (_hd272703272781_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e272704272778_))))
                                  (___match279260279261_
                                   _e272668272858_
                                   _hd272667272861_
                                   _tl272666272863_
                                   _e272671272866_
                                   _hd272670272869_
                                   _tl272669272871_
                                   _e272674272874_
                                   _hd272673272877_
                                   _tl272672272879_
                                   _e272704272778_
                                   _hd272703272781_
                                   _tl272702272783_)))
                              (___kont279161279162_
                               _tl272666272863_
                               _hd272667272861_))
                          (___kont279161279162_
                           _tl272666272863_
                           _hd272667272861_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl272672272879_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl272666272863_))
                                                            (let ((_e272704272778_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl272666272863_))))
                      (let ((_tl272702272783_
                             (let ()
                               (declare (not safe))
                               (##cdr _e272704272778_)))
                            (_hd272703272781_
                             (let ()
                               (declare (not safe))
                               (##car _e272704272778_))))
                        (___match279260279261_
                         _e272668272858_
                         _hd272667272861_
                         _tl272666272863_
                         _e272671272866_
                         _hd272670272869_
                         _tl272669272871_
                         _e272674272874_
                         _hd272673272877_
                         _tl272672272879_
                         _e272704272778_
                         _hd272703272781_
                         _tl272702272783_)))
                    (___kont279161279162_ _tl272666272863_ _hd272667272861_))
                (___kont279161279162_ _tl272666272863_ _hd272667272861_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont279161279162_
                                             _tl272666272863_
                                             _hd272667272861_))
                                        (___kont279161279162_
                                         _tl272666272863_
                                         _hd272667272861_))
                                    (___kont279161279162_
                                     _tl272666272863_
                                     _hd272667272861_))))
                            (___kont279161279162_
                             _tl272666272863_
                             _hd272667272861_))))
                    (let () (declare (not safe)) (_g272661272721_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self272645_ _stx272646_ _args272647_)
        (let () (declare (not safe)) (gxc#xform-call% _stx272646_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
