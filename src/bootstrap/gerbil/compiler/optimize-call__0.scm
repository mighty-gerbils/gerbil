(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1707610219)
  (begin
    (define gxc#&optimize-call
      (make-promise
       (lambda ()
         (let ((_tbl274545_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp279304 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl274545_ __tmp279304))
           (let ()
             (declare (not safe))
             (table-set! _tbl274545_ '%#call gxc#optimize-call%))
           _tbl274545_))))
    (define gxc#apply-optimize-call
      (lambda (_stx274528_ . _args274530_)
        (let ((__tmp279306
               (lambda ()
                 (declare (not safe))
                 (if (null? _args274530_)
                     (gxc#compile-e__0 _stx274528_)
                     (let ((_arg1274535_ (car _args274530_))
                           (_rest274537_ (cdr _args274530_)))
                       (if (null? _rest274537_)
                           (gxc#compile-e__1 _stx274528_ _arg1274535_)
                           (let ((_arg2274540_ (car _rest274537_))
                                 (_rest274542_ (cdr _rest274537_)))
                             (if (null? _rest274542_)
                                 (gxc#compile-e__2
                                  _stx274528_
                                  _arg1274535_
                                  _arg2274540_)
                                 (apply gxc#compile-e
                                        _stx274528_
                                        _arg1274535_
                                        _arg2274540_
                                        _rest274542_))))))))
              (__tmp279305 (force gxc#&optimize-call)))
          (declare (not safe))
          (call-with-parameters
           __tmp279306
           gxc#current-compile-methods
           __tmp279305))))
    (define gxc#optimize-call%
      (lambda (_stx274383_)
        (let* ((___stx279054279055_ _stx274383_)
               (_g274386274406_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx279054279055_)))))
          (let ((___kont279056279057_
                 (lambda (_L274450_ _L274451_)
                   (let* ((_rator-id274469_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L274451_)))
                          (_rator-type274471_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id274469_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type274471_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp279307
                                  (##structure-ref
                                   _rator-type274471_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id274469_
                              '" => "
                              _rator-type274471_
                              '" "
                              __tmp279307))
                           (let ((_optimized274474_
                                  (let ((__method279302
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type274471_
                                            'optimize-call))))
                                    (if __method279302
                                        (__method279302
                                         _rator-type274471_
                                         _stx274383_
                                         _L274450_)
                                        (error '"Missing method"
                                               _rator-type274471_
                                               'optimize-call)))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type274471_))
                                 _optimized274474_
                                 (let* ((___stx279036279037_ _optimized274474_)
                                        (_g274477274487_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx279036279037_)))))
                                   (let ((___kont279038279039_
                                          (lambda (_L274507_)
                                            (let ((__tmp279308
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L274507_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp279308
                                               _stx274383_))))
                                         (___kont279040279041_
                                          (lambda () _optimized274474_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx279036279037_))
                                         (let ((_e274482274499_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx279036279037_))))
                                           (let ((_tl274480274504_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e274482274499_)))
                                                 (_hd274481274502_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e274482274499_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd274481274502_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd274481274502_))
                                                     (___kont279038279039_
                                                      _tl274480274504_)
                                                     (___kont279040279041_))
                                                 (___kont279040279041_))))
                                         (___kont279040279041_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type274471_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx274383_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx274383_
                                _rator-type274471_)))))))
                (___kont279058279059_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _stx274383_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx279054279055_))
                (let ((_e274392274418_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx279054279055_))))
                  (let ((_tl274390274423_
                         (let () (declare (not safe)) (##cdr _e274392274418_)))
                        (_hd274391274421_
                         (let ()
                           (declare (not safe))
                           (##car _e274392274418_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl274390274423_))
                        (let ((_e274395274426_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl274390274423_))))
                          (let ((_tl274393274431_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e274395274426_)))
                                (_hd274394274429_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e274395274426_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd274394274429_))
                                (let ((_e274398274434_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd274394274429_))))
                                  (let ((_tl274396274439_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e274398274434_)))
                                        (_hd274397274437_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e274398274434_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd274397274437_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd274397274437_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl274396274439_))
                                                (let ((_e274401274442_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl274396274439_))))
                                                  (let ((_tl274399274447_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e274401274442_)))
                                                        (_hd274400274445_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e274401274442_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl274399274447_))
                                                        (___kont279056279057_
                                                         _tl274393274431_
                                                         _hd274400274445_)
                                                        (___kont279058279059_))))
                                                (___kont279058279059_))
                                            (___kont279058279059_))
                                        (___kont279058279059_))))
                                (___kont279058279059_))))
                        (___kont279058279059_))))
                (___kont279058279059_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self274337_ _stx274338_ _args274339_)
        (let* ((_g274341274351_
                (lambda (_g274342274348_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g274342274348_))))
               (_g274340274380_
                (lambda (_g274342274354_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g274342274354_))
                      (let ((_e274346274356_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g274342274354_))))
                        (let ((_hd274345274359_
                               (let ()
                                 (declare (not safe))
                                 (##car _e274346274356_)))
                              (_tl274344274361_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e274346274356_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl274344274361_))
                              ((lambda (_L274364_)
                                 (let* ((_klass274375_
                                         (let ((__tmp279309
                                                (##structure-ref
                                                 _self274337_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx274338_
                                            __tmp279309)))
                                        (_object274377_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L274364_))))
                                   (if (##structure-ref
                                        _klass274375_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp279325
                                              (let ((__tmp279326
                                                     (let ((__tmp279328
                                                            (let ((__tmp279329
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279330
                                  (##structure-ref
                                   _klass274375_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp279330 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp279329)))
                   (__tmp279327
                    (let () (declare (not safe)) (cons _object274377_ '()))))
               (declare (not safe))
               (cons __tmp279328 __tmp279327))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp279326))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp279325
                                          _stx274338_))
                                       (if (##structure-ref
                                            _klass274375_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp279319
                                                  (let ((__tmp279320
                                                         (let ((__tmp279322
                                                                (let ((__tmp279323
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp279324
                                      (##structure-ref
                                       _klass274375_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp279324 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp279323)))
                       (__tmp279321
                        (let ()
                          (declare (not safe))
                          (cons _object274377_ '()))))
                   (declare (not safe))
                   (cons __tmp279322 __tmp279321))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp279320))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp279319
                                              _stx274338_))
                                           (let ((__tmp279310
                                                  (let ((__tmp279311
                                                         (let ((__tmp279317
                                                                (let ((__tmp279318
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp279318)))
                       (__tmp279312
                        (let ((__tmp279314
                               (let ((__tmp279315
                                      (let ((__tmp279316
                                             (##structure-ref
                                              _self274337_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp279316 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp279315)))
                              (__tmp279313
                               (let ()
                                 (declare (not safe))
                                 (cons _object274377_ '()))))
                          (declare (not safe))
                          (cons __tmp279314 __tmp279313))))
                   (declare (not safe))
                   (cons __tmp279317 __tmp279312))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp279311))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp279310
                                              _stx274338_))))))
                               _hd274345274359_)
                              (let ()
                                (declare (not safe))
                                (_g274341274351_ _g274342274354_)))))
                      (let ()
                        (declare (not safe))
                        (_g274341274351_ _g274342274354_))))))
          (declare (not safe))
          (_g274340274380_ _args274339_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__t279015)
        (let ((__id279016
               (let ((__tmp279017
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t279015 'id))))
                 (if __tmp279017 __tmp279017 (error '"Unknown slot" 'id)))))
          (lambda (_self274337_ _stx274338_ _args274339_)
            (let* ((_g274341274351_
                    (lambda (_g274342274348_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g274342274348_))))
                   (_g274340274380_
                    (lambda (_g274342274354_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g274342274354_))
                          (let ((_e274346274356_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g274342274354_))))
                            (let ((_hd274345274359_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e274346274356_)))
                                  (_tl274344274361_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e274346274356_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl274344274361_))
                                  ((lambda (_L274364_)
                                     (let* ((_klass274375_
                                             (let ((__tmp279331
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self274337_
                                                       __id279016
                                                       __t279015
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx274338_
                                                __tmp279331)))
                                            (_object274377_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L274364_))))
                                       (if (##structure-ref
                                            _klass274375_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp279347
                                                  (let ((__tmp279348
                                                         (let ((__tmp279350
                                                                (let ((__tmp279351
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp279352
                                      (##structure-ref
                                       _klass274375_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp279352 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp279351)))
                       (__tmp279349
                        (let ()
                          (declare (not safe))
                          (cons _object274377_ '()))))
                   (declare (not safe))
                   (cons __tmp279350 __tmp279349))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp279348))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp279347
                                              _stx274338_))
                                           (if (##structure-ref
                                                _klass274375_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp279341
                                                      (let ((__tmp279342
                                                             (let ((__tmp279344
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp279345
                                   (let ((__tmp279346
                                          (##structure-ref
                                           _klass274375_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp279346 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp279345)))
                           (__tmp279343
                            (let ()
                              (declare (not safe))
                              (cons _object274377_ '()))))
                       (declare (not safe))
                       (cons __tmp279344 __tmp279343))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp279342))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp279341
                                                  _stx274338_))
                                               (let ((__tmp279332
                                                      (let ((__tmp279333
                                                             (let ((__tmp279339
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp279340
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp279340)))
                           (__tmp279334
                            (let ((__tmp279336
                                   (let ((__tmp279337
                                          (let ((__tmp279338
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self274337_
                                                    __id279016
                                                    __t279015
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp279338 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp279337)))
                                  (__tmp279335
                                   (let ()
                                     (declare (not safe))
                                     (cons _object274377_ '()))))
                              (declare (not safe))
                              (cons __tmp279336 __tmp279335))))
                       (declare (not safe))
                       (cons __tmp279339 __tmp279334))))
                (declare (not safe))
                (cons '%#call __tmp279333))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp279332
                                                  _stx274338_))))))
                                   _hd274345274359_)
                                  (let ()
                                    (declare (not safe))
                                    (_g274341274351_ _g274342274354_)))))
                          (let ()
                            (declare (not safe))
                            (_g274341274351_ _g274342274354_))))))
              (declare (not safe))
              (_g274340274380_ _args274339_))))))
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
      (lambda (_self274068_ _stx274069_ _args274070_)
        (let* ((_klass274072_
                (let ((__tmp279353
                       (##structure-ref _self274068_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx274069_ __tmp279353)))
               (_fields274074_
                (length (##structure-ref _klass274072_ '5 gxc#!class::t '#f)))
               (_args274076_ (map gxc#compile-e _args274070_))
               (_inline-make-object274078_
                (let ((__tmp279354
                       (let ((__tmp279360
                              (let ((__tmp279361
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp279361)))
                             (__tmp279355
                              (let ((__tmp279357
                                     (let ((__tmp279358
                                            (let ((__tmp279359
                                                   (##structure-ref
                                                    _self274068_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp279359 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp279358)))
                                    (__tmp279356
                                     (make-list _fields274074_ '(%#quote #f))))
                                (declare (not safe))
                                (cons __tmp279357 __tmp279356))))
                         (declare (not safe))
                         (cons __tmp279360 __tmp279355))))
                  (declare (not safe))
                  (cons '%#call __tmp279354))))
          (let ((_$e274081_
                 (##structure-ref _klass274072_ '6 gxc#!class::t '#f)))
            (if _$e274081_
                ((lambda (_ctor274084_)
                   (let ((_$obj274086_
                          (let ((__tmp279423 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp279423)))
                         (_ctor-impl274087_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass274072_
                             _ctor274084_))))
                     (let ((__tmp279424
                            (let ((__tmp279425
                                   (let ((__tmp279490
                                          (let ((__tmp279491
                                                 (let ((__tmp279493
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj274086_
                                                                '())))
                                                       (__tmp279492
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object274078_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp279493
                                                         __tmp279492))))
                                            (declare (not safe))
                                            (cons __tmp279491 '())))
                                         (__tmp279426
                                          (let ((__tmp279427
                                                 (let ((__tmp279428
                                                        (let ((__tmp279432
                                                               (if _ctor-impl274087_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279484
                                  (let ((__tmp279488
                                         (let ((__tmp279489
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl274087_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp279489)))
                                        (__tmp279485
                                         (let ((__tmp279486
                                                (let ((__tmp279487
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj274086_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp279487))))
                                           (declare (not safe))
                                           (cons __tmp279486 _args274076_))))
                                    (declare (not safe))
                                    (cons __tmp279488 __tmp279485))))
                             (declare (not safe))
                             (cons '%#call __tmp279484))
                           (let* ((_$ctor274089_
                                   (let ((__tmp279433 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp279433)))
                                  (__tmp279434
                                   (let ((__tmp279469
                                          (let ((__tmp279470
                                                 (let ((__tmp279483
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor274089_
                                                                '())))
                                                       (__tmp279471
                                                        (let ((__tmp279472
                                                               (let ((__tmp279473
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp279481
                                     (let ((__tmp279482
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp279482)))
                                    (__tmp279474
                                     (let ((__tmp279478
                                            (let ((__tmp279479
                                                   (let ((__tmp279480
                                                          (##structure-ref
                                                           _self274068_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp279480 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp279479)))
                                           (__tmp279475
                                            (let ((__tmp279476
                                                   (let ((__tmp279477
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _ctor274084_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#quote
                                                           __tmp279477))))
                                              (declare (not safe))
                                              (cons __tmp279476 '()))))
                                       (declare (not safe))
                                       (cons __tmp279478 __tmp279475))))
                                (declare (not safe))
                                (cons __tmp279481 __tmp279474))))
                         (declare (not safe))
                         (cons '%#call __tmp279473))))
                  (declare (not safe))
                  (cons __tmp279472 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279483
                                                         __tmp279471))))
                                            (declare (not safe))
                                            (cons __tmp279470 '())))
                                         (__tmp279435
                                          (let ((__tmp279436
                                                 (let ((__tmp279437
                                                        (let ((__tmp279467
                                                               (let ((__tmp279468
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor274089_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp279468)))
                      (__tmp279438
                       (let ((__tmp279460
                              (let ((__tmp279461
                                     (let ((__tmp279465
                                            (let ((__tmp279466
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor274089_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp279466)))
                                           (__tmp279462
                                            (let ((__tmp279463
                                                   (let ((__tmp279464
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj274086_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp279464))))
                                              (declare (not safe))
                                              (cons __tmp279463
                                                    _args274076_))))
                                       (declare (not safe))
                                       (cons __tmp279465 __tmp279462))))
                                (declare (not safe))
                                (cons '%#call __tmp279461)))
                             (__tmp279439
                              (let ((__tmp279440
                                     (let ((__tmp279441
                                            (let ((__tmp279458
                                                   (let ((__tmp279459
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp279459)))
                                                  (__tmp279442
                                                   (let ((__tmp279456
                                                          (let ((__tmp279457
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp279457)))
                 (__tmp279443
                  (let ((__tmp279454
                         (let ((__tmp279455
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp279455)))
                        (__tmp279444
                         (let ((__tmp279451
                                (let ((__tmp279452
                                       (let ((__tmp279453
                                              (##structure-ref
                                               _self274068_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp279453 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp279452)))
                               (__tmp279445
                                (let ((__tmp279449
                                       (let ((__tmp279450
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp279450)))
                                      (__tmp279446
                                       (let ((__tmp279447
                                              (let ((__tmp279448
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor274084_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp279448))))
                                         (declare (not safe))
                                         (cons __tmp279447 '()))))
                                  (declare (not safe))
                                  (cons __tmp279449 __tmp279446))))
                           (declare (not safe))
                           (cons __tmp279451 __tmp279445))))
                    (declare (not safe))
                    (cons __tmp279454 __tmp279444))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp279456
                                                           __tmp279443))))
                                              (declare (not safe))
                                              (cons __tmp279458 __tmp279442))))
                                       (declare (not safe))
                                       (cons '%#call __tmp279441))))
                                (declare (not safe))
                                (cons __tmp279440 '()))))
                         (declare (not safe))
                         (cons __tmp279460 __tmp279439))))
                  (declare (not safe))
                  (cons __tmp279467 __tmp279438))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp279437))))
                                            (declare (not safe))
                                            (cons __tmp279436 '()))))
                                     (declare (not safe))
                                     (cons __tmp279469 __tmp279435))))
                             (declare (not safe))
                             (cons '%#let-values __tmp279434))))
                      (__tmp279429
                       (let ((__tmp279430
                              (let ((__tmp279431
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj274086_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp279431))))
                         (declare (not safe))
                         (cons __tmp279430 '()))))
                  (declare (not safe))
                  (cons __tmp279432 __tmp279429))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp279428))))
                                            (declare (not safe))
                                            (cons __tmp279427 '()))))
                                     (declare (not safe))
                                     (cons __tmp279490 __tmp279426))))
                              (declare (not safe))
                              (cons '%#let-values __tmp279425))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp279424 _stx274069_))))
                 _$e274081_)
                (if (##structure-ref _klass274072_ '7 gxc#!class::t '#f)
                    (if (fx= (length _args274076_) _fields274074_)
                        (let ((__tmp279415
                               (let ((__tmp279416
                                      (let ((__tmp279421
                                             (let ((__tmp279422
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '##structure
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp279422)))
                                            (__tmp279417
                                             (let ((__tmp279418
                                                    (let ((__tmp279419
                                                           (let ((__tmp279420
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##structure-ref _self274068_ '1 gxc#!type::t '#f)))
                     (declare (not safe))
                     (cons __tmp279420 '()))))
              (declare (not safe))
              (cons '%#ref __tmp279419))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp279418
                                                     _args274076_))))
                                        (declare (not safe))
                                        (cons __tmp279421 __tmp279417))))
                                 (declare (not safe))
                                 (cons '%#call __tmp279416))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp279415 _stx274069_))
                        (let ((__tmp279414
                               (##structure-ref
                                _self274068_
                                '1
                                gxc#!type::t
                                '#f))
                              (__tmp279413
                               (length (##structure-ref
                                        _klass274072_
                                        '5
                                        gxc#!class::t
                                        '#f))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"illegal struct constructor application; arity mismatch"
                           _stx274069_
                           __tmp279414
                           __tmp279413)))
                    (let ((_$obj274091_
                           (let ((__tmp279362 (gensym '__obj)))
                             (declare (not safe))
                             (make-symbol__0 __tmp279362))))
                      (let _lp274093_ ((_rest274095_ _args274076_)
                                       (_initializers274096_ '()))
                        (let* ((___stx279092279093_ _rest274095_)
                               (_g274100274121_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     ___stx279092279093_)))))
                          (let ((___kont279094279095_
                                 (lambda (_L274175_ _L274176_ _L274177_)
                                   (let* ((_slot274207_
                                           (keyword->symbol
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _L274177_))))
                                          (_off274209_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!class-slot->field-offset
                                              _klass274072_
                                              _slot274207_))))
                                     (if _off274209_
                                         (let ((__tmp279364
                                                (let ((__tmp279365
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _off274209_
                                                               _L274176_))))
                                                  (declare (not safe))
                                                  (cons __tmp279365
                                                        _initializers274096_))))
                                           (declare (not safe))
                                           (_lp274093_ _L274175_ __tmp279364))
                                         (let ((__tmp279363
                                                (##structure-ref
                                                 _self274068_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#raise-compile-error
                                            '"unknown slot"
                                            _stx274069_
                                            __tmp279363
                                            _slot274207_))))))
                                (___kont279096279097_
                                 (lambda ()
                                   (let ((__tmp279366
                                          (let ((__tmp279367
                                                 (let ((__tmp279390
                                                        (let ((__tmp279391
                                                               (let ((__tmp279393
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$obj274091_ '())))
                             (__tmp279392
                              (let ()
                                (declare (not safe))
                                (cons _inline-make-object274078_ '()))))
                         (declare (not safe))
                         (cons __tmp279393 __tmp279392))))
                  (declare (not safe))
                  (cons __tmp279391 '())))
               (__tmp279368
                (let ((__tmp279369
                       (let ((__tmp279370
                              (let ((__tmp279387
                                     (let ((__tmp279388
                                            (let ((__tmp279389
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$obj274091_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp279389))))
                                       (declare (not safe))
                                       (cons __tmp279388 '())))
                                    (__tmp279371
                                     (let ((__tmp279372
                                            (lambda (_i274135_ _r274136_)
                                              (let ((__tmp279373
                                                     (let ((__tmp279374
                                                            (let ((__tmp279384
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279385
                                  (let ((__tmp279386
                                         (##structure-ref
                                          _self274068_
                                          '1
                                          gxc#!type::t
                                          '#f)))
                                    (declare (not safe))
                                    (cons __tmp279386 '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp279385)))
                          (__tmp279375
                           (let ((__tmp279381
                                  (let ((__tmp279382
                                         (let ((__tmp279383 (car _i274135_)))
                                           (declare (not safe))
                                           (cons __tmp279383 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp279382)))
                                 (__tmp279376
                                  (let ((__tmp279379
                                         (let ((__tmp279380
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj274091_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp279380)))
                                        (__tmp279377
                                         (let ((__tmp279378 (cdr _i274135_)))
                                           (declare (not safe))
                                           (cons __tmp279378 '()))))
                                    (declare (not safe))
                                    (cons __tmp279379 __tmp279377))))
                             (declare (not safe))
                             (cons __tmp279381 __tmp279376))))
                      (declare (not safe))
                      (cons __tmp279384 __tmp279375))))
               (declare (not safe))
               (cons '%#struct-unchecked-set! __tmp279374))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp279373
                                                      _r274136_)))))
                                       (declare (not safe))
                                       (foldl1 __tmp279372
                                               '()
                                               _initializers274096_))))
                                (declare (not safe))
                                (foldr1 cons __tmp279387 __tmp279371))))
                         (declare (not safe))
                         (cons '%#begin __tmp279370))))
                  (declare (not safe))
                  (cons __tmp279369 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279390
                                                         __tmp279368))))
                                            (declare (not safe))
                                            (cons '%#let-values __tmp279367))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp279366
                                      _stx274069_))))
                                (___kont279098279099_
                                 (lambda ()
                                   (let ((__tmp279394
                                          (let ((__tmp279395
                                                 (let ((__tmp279409
                                                        (let ((__tmp279410
                                                               (let ((__tmp279412
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$obj274091_ '())))
                             (__tmp279411
                              (let ()
                                (declare (not safe))
                                (cons _inline-make-object274078_ '()))))
                         (declare (not safe))
                         (cons __tmp279412 __tmp279411))))
                  (declare (not safe))
                  (cons __tmp279410 '())))
               (__tmp279396
                (let ((__tmp279397
                       (let ((__tmp279398
                              (let ((__tmp279402
                                     (let ((__tmp279403
                                            (let ((__tmp279407
                                                   (let ((__tmp279408
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'class-instance-init!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp279408)))
                                                  (__tmp279404
                                                   (let ((__tmp279405
                                                          (let ((__tmp279406
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj274091_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp279406))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp279405
                                                           _args274076_))))
                                              (declare (not safe))
                                              (cons __tmp279407 __tmp279404))))
                                       (declare (not safe))
                                       (cons '%#call __tmp279403)))
                                    (__tmp279399
                                     (let ((__tmp279400
                                            (let ((__tmp279401
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$obj274091_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp279401))))
                                       (declare (not safe))
                                       (cons __tmp279400 '()))))
                                (declare (not safe))
                                (cons __tmp279402 __tmp279399))))
                         (declare (not safe))
                         (cons '%#begin __tmp279398))))
                  (declare (not safe))
                  (cons __tmp279397 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279409
                                                         __tmp279396))))
                                            (declare (not safe))
                                            (cons '%#let-values __tmp279395))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp279394
                                      _stx274069_)))))
                            (let* ((_g274098274138_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? ___stx279092279093_))
                                          (___kont279096279097_)
                                          (___kont279098279099_))))
                                   (___match279129279130_
                                    (lambda (_e274107274143_
                                             _hd274106274146_
                                             _tl274105274148_
                                             _e274110274151_
                                             _hd274109274154_
                                             _tl274108274156_
                                             _e274113274159_
                                             _hd274112274162_
                                             _tl274111274164_
                                             _e274116274167_
                                             _hd274115274170_
                                             _tl274114274172_)
                                      (let ((_L274175_ _tl274114274172_)
                                            (_L274176_ _hd274115274170_)
                                            (_L274177_ _hd274112274162_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-keyword? _L274177_))
                                            (___kont279094279095_
                                             _L274175_
                                             _L274176_
                                             _L274177_)
                                            (___kont279098279099_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? ___stx279092279093_))
                                  (let ((_e274107274143_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e ___stx279092279093_))))
                                    (let ((_tl274105274148_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e274107274143_)))
                                          (_hd274106274146_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e274107274143_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd274106274146_))
                                          (let ((_e274110274151_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd274106274146_))))
                                            (let ((_tl274108274156_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e274110274151_)))
                                                  (_hd274109274154_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e274110274151_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd274109274154_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#quote
                                                         _hd274109274154_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl274108274156_))
                                                          (let ((_e274113274159_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl274108274156_))))
                    (let ((_tl274111274164_
                           (let ()
                             (declare (not safe))
                             (##cdr _e274113274159_)))
                          (_hd274112274162_
                           (let ()
                             (declare (not safe))
                             (##car _e274113274159_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl274111274164_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl274105274148_))
                              (let ((_e274116274167_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl274105274148_))))
                                (let ((_tl274114274172_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e274116274167_)))
                                      (_hd274115274170_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e274116274167_))))
                                  (___match279129279130_
                                   _e274107274143_
                                   _hd274106274146_
                                   _tl274105274148_
                                   _e274110274151_
                                   _hd274109274154_
                                   _tl274108274156_
                                   _e274113274159_
                                   _hd274112274162_
                                   _tl274111274164_
                                   _e274116274167_
                                   _hd274115274170_
                                   _tl274114274172_)))
                              (___kont279098279099_))
                          (___kont279098279099_))))
                  (___kont279098279099_))
              (___kont279098279099_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont279098279099_))))
                                          (___kont279098279099_))))
                                  (let ()
                                    (declare (not safe))
                                    (_g274098274138_))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__t279018)
        (let ((__id279019
               (let ((__tmp279020
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t279018 'id))))
                 (if __tmp279020 __tmp279020 (error '"Unknown slot" 'id)))))
          (lambda (_self274068_ _stx274069_ _args274070_)
            (let* ((_klass274072_
                    (let ((__tmp279494
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self274068_
                              __id279019
                              __t279018
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx274069_ __tmp279494)))
                   (_fields274074_
                    (length (##structure-ref
                             _klass274072_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args274076_ (map gxc#compile-e _args274070_))
                   (_inline-make-object274078_
                    (let ((__tmp279495
                           (let ((__tmp279501
                                  (let ((__tmp279502
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp279502)))
                                 (__tmp279496
                                  (let ((__tmp279498
                                         (let ((__tmp279499
                                                (let ((__tmp279500
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self274068_
                                                          __id279019
                                                          __t279018
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp279500 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp279499)))
                                        (__tmp279497
                                         (make-list
                                          _fields274074_
                                          '(%#quote #f))))
                                    (declare (not safe))
                                    (cons __tmp279498 __tmp279497))))
                             (declare (not safe))
                             (cons __tmp279501 __tmp279496))))
                      (declare (not safe))
                      (cons '%#call __tmp279495))))
              (let ((_$e274081_
                     (##structure-ref _klass274072_ '6 gxc#!class::t '#f)))
                (if _$e274081_
                    ((lambda (_ctor274084_)
                       (let ((_$obj274086_
                              (let ((__tmp279564 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp279564)))
                             (_ctor-impl274087_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass274072_
                                 _ctor274084_))))
                         (let ((__tmp279565
                                (let ((__tmp279566
                                       (let ((__tmp279631
                                              (let ((__tmp279632
                                                     (let ((__tmp279634
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj274086_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp279633
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object274078_ '()))))
               (declare (not safe))
               (cons __tmp279634 __tmp279633))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp279632 '())))
                                             (__tmp279567
                                              (let ((__tmp279568
                                                     (let ((__tmp279569
                                                            (let ((__tmp279573
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl274087_
                               (let ((__tmp279625
                                      (let ((__tmp279629
                                             (let ((__tmp279630
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl274087_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp279630)))
                                            (__tmp279626
                                             (let ((__tmp279627
                                                    (let ((__tmp279628
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj274086_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp279628))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp279627
                                                     _args274076_))))
                                        (declare (not safe))
                                        (cons __tmp279629 __tmp279626))))
                                 (declare (not safe))
                                 (cons '%#call __tmp279625))
                               (let* ((_$ctor274089_
                                       (let ((__tmp279574
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp279574)))
                                      (__tmp279575
                                       (let ((__tmp279610
                                              (let ((__tmp279611
                                                     (let ((__tmp279624
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor274089_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp279612
                    (let ((__tmp279613
                           (let ((__tmp279614
                                  (let ((__tmp279622
                                         (let ((__tmp279623
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp279623)))
                                        (__tmp279615
                                         (let ((__tmp279619
                                                (let ((__tmp279620
                                                       (let ((__tmp279621
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self274068_
                         __id279019
                         __t279018
                         '#f))))
                 (declare (not safe))
                 (cons __tmp279621 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp279620)))
                                               (__tmp279616
                                                (let ((__tmp279617
                                                       (let ((__tmp279618
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _ctor274084_ '()))))
                 (declare (not safe))
                 (cons '%#quote __tmp279618))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp279617 '()))))
                                           (declare (not safe))
                                           (cons __tmp279619 __tmp279616))))
                                    (declare (not safe))
                                    (cons __tmp279622 __tmp279615))))
                             (declare (not safe))
                             (cons '%#call __tmp279614))))
                      (declare (not safe))
                      (cons __tmp279613 '()))))
               (declare (not safe))
               (cons __tmp279624 __tmp279612))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp279611 '())))
                                             (__tmp279576
                                              (let ((__tmp279577
                                                     (let ((__tmp279578
                                                            (let ((__tmp279608
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279609
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor274089_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp279609)))
                          (__tmp279579
                           (let ((__tmp279601
                                  (let ((__tmp279602
                                         (let ((__tmp279606
                                                (let ((__tmp279607
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor274089_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp279607)))
                                               (__tmp279603
                                                (let ((__tmp279604
                                                       (let ((__tmp279605
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj274086_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp279605))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp279604
                                                        _args274076_))))
                                           (declare (not safe))
                                           (cons __tmp279606 __tmp279603))))
                                    (declare (not safe))
                                    (cons '%#call __tmp279602)))
                                 (__tmp279580
                                  (let ((__tmp279581
                                         (let ((__tmp279582
                                                (let ((__tmp279599
                                                       (let ((__tmp279600
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp279600)))
              (__tmp279583
               (let ((__tmp279597
                      (let ((__tmp279598
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp279598)))
                     (__tmp279584
                      (let ((__tmp279595
                             (let ((__tmp279596
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp279596)))
                            (__tmp279585
                             (let ((__tmp279592
                                    (let ((__tmp279593
                                           (let ((__tmp279594
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self274068_
                                                     __id279019
                                                     __t279018
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp279594 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp279593)))
                                   (__tmp279586
                                    (let ((__tmp279590
                                           (let ((__tmp279591
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp279591)))
                                          (__tmp279587
                                           (let ((__tmp279588
                                                  (let ((__tmp279589
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor274084_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp279589))))
                                             (declare (not safe))
                                             (cons __tmp279588 '()))))
                                      (declare (not safe))
                                      (cons __tmp279590 __tmp279587))))
                               (declare (not safe))
                               (cons __tmp279592 __tmp279586))))
                        (declare (not safe))
                        (cons __tmp279595 __tmp279585))))
                 (declare (not safe))
                 (cons __tmp279597 __tmp279584))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp279599
                                                        __tmp279583))))
                                           (declare (not safe))
                                           (cons '%#call __tmp279582))))
                                    (declare (not safe))
                                    (cons __tmp279581 '()))))
                             (declare (not safe))
                             (cons __tmp279601 __tmp279580))))
                      (declare (not safe))
                      (cons __tmp279608 __tmp279579))))
               (declare (not safe))
               (cons '%#if __tmp279578))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp279577 '()))))
                                         (declare (not safe))
                                         (cons __tmp279610 __tmp279576))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp279575))))
                          (__tmp279570
                           (let ((__tmp279571
                                  (let ((__tmp279572
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj274086_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp279572))))
                             (declare (not safe))
                             (cons __tmp279571 '()))))
                      (declare (not safe))
                      (cons __tmp279573 __tmp279570))))
               (declare (not safe))
               (cons '%#begin __tmp279569))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp279568 '()))))
                                         (declare (not safe))
                                         (cons __tmp279631 __tmp279567))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp279566))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp279565 _stx274069_))))
                     _$e274081_)
                    (if (##structure-ref _klass274072_ '7 gxc#!class::t '#f)
                        (if (fx= (length _args274076_) _fields274074_)
                            (let ((__tmp279556
                                   (let ((__tmp279557
                                          (let ((__tmp279562
                                                 (let ((__tmp279563
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons '##structure
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp279563)))
                                                (__tmp279558
                                                 (let ((__tmp279559
                                                        (let ((__tmp279560
                                                               (let ((__tmp279561
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self274068_
                                 __id279019
                                 __t279018
                                 '#f))))
                         (declare (not safe))
                         (cons __tmp279561 '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp279560))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279559
                                                         _args274076_))))
                                            (declare (not safe))
                                            (cons __tmp279562 __tmp279558))))
                                     (declare (not safe))
                                     (cons '%#call __tmp279557))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp279556 _stx274069_))
                            (let ((__tmp279555
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _self274068_
                                      __id279019
                                      __t279018
                                      '#f)))
                                  (__tmp279554
                                   (length (##structure-ref
                                            _klass274072_
                                            '5
                                            gxc#!class::t
                                            '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _stx274069_
                               __tmp279555
                               __tmp279554)))
                        (let ((_$obj274091_
                               (let ((__tmp279503 (gensym '__obj)))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp279503))))
                          (let _lp274093_ ((_rest274095_ _args274076_)
                                           (_initializers274096_ '()))
                            (let* ((___stx279134279135_ _rest274095_)
                                   (_g274100274121_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         ___stx279134279135_)))))
                              (let ((___kont279136279137_
                                     (lambda (_L274175_ _L274176_ _L274177_)
                                       (let* ((_slot274207_
                                               (keyword->symbol
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L274177_))))
                                              (_off274209_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _klass274072_
                                                  _slot274207_))))
                                         (if _off274209_
                                             (let ((__tmp279505
                                                    (let ((__tmp279506
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _off274209_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L274176_))))
              (declare (not safe))
              (cons __tmp279506 _initializers274096_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_lp274093_
                                                _L274175_
                                                __tmp279505))
                                             (let ((__tmp279504
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self274068_
                                                       __id279019
                                                       __t279018
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _stx274069_
                                                __tmp279504
                                                _slot274207_))))))
                                    (___kont279138279139_
                                     (lambda ()
                                       (let ((__tmp279507
                                              (let ((__tmp279508
                                                     (let ((__tmp279531
                                                            (let ((__tmp279532
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279534
                                  (let ()
                                    (declare (not safe))
                                    (cons _$obj274091_ '())))
                                 (__tmp279533
                                  (let ()
                                    (declare (not safe))
                                    (cons _inline-make-object274078_ '()))))
                             (declare (not safe))
                             (cons __tmp279534 __tmp279533))))
                      (declare (not safe))
                      (cons __tmp279532 '())))
                   (__tmp279509
                    (let ((__tmp279510
                           (let ((__tmp279511
                                  (let ((__tmp279528
                                         (let ((__tmp279529
                                                (let ((__tmp279530
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj274091_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp279530))))
                                           (declare (not safe))
                                           (cons __tmp279529 '())))
                                        (__tmp279512
                                         (let ((__tmp279513
                                                (lambda (_i274135_ _r274136_)
                                                  (let ((__tmp279514
                                                         (let ((__tmp279515
                                                                (let ((__tmp279525
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp279526
                                      (let ((__tmp279527
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _self274068_
                                                __id279019
                                                __t279018
                                                '#f))))
                                        (declare (not safe))
                                        (cons __tmp279527 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp279526)))
                              (__tmp279516
                               (let ((__tmp279522
                                      (let ((__tmp279523
                                             (let ((__tmp279524
                                                    (car _i274135_)))
                                               (declare (not safe))
                                               (cons __tmp279524 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp279523)))
                                     (__tmp279517
                                      (let ((__tmp279520
                                             (let ((__tmp279521
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj274091_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp279521)))
                                            (__tmp279518
                                             (let ((__tmp279519
                                                    (cdr _i274135_)))
                                               (declare (not safe))
                                               (cons __tmp279519 '()))))
                                        (declare (not safe))
                                        (cons __tmp279520 __tmp279518))))
                                 (declare (not safe))
                                 (cons __tmp279522 __tmp279517))))
                          (declare (not safe))
                          (cons __tmp279525 __tmp279516))))
                   (declare (not safe))
                   (cons '%#struct-unchecked-set! __tmp279515))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp279514
                                                          _r274136_)))))
                                           (declare (not safe))
                                           (foldl1 __tmp279513
                                                   '()
                                                   _initializers274096_))))
                                    (declare (not safe))
                                    (foldr1 cons __tmp279528 __tmp279512))))
                             (declare (not safe))
                             (cons '%#begin __tmp279511))))
                      (declare (not safe))
                      (cons __tmp279510 '()))))
               (declare (not safe))
               (cons __tmp279531 __tmp279509))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#let-values
                                                      __tmp279508))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp279507
                                          _stx274069_))))
                                    (___kont279140279141_
                                     (lambda ()
                                       (let ((__tmp279535
                                              (let ((__tmp279536
                                                     (let ((__tmp279550
                                                            (let ((__tmp279551
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279553
                                  (let ()
                                    (declare (not safe))
                                    (cons _$obj274091_ '())))
                                 (__tmp279552
                                  (let ()
                                    (declare (not safe))
                                    (cons _inline-make-object274078_ '()))))
                             (declare (not safe))
                             (cons __tmp279553 __tmp279552))))
                      (declare (not safe))
                      (cons __tmp279551 '())))
                   (__tmp279537
                    (let ((__tmp279538
                           (let ((__tmp279539
                                  (let ((__tmp279543
                                         (let ((__tmp279544
                                                (let ((__tmp279548
                                                       (let ((__tmp279549
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'class-instance-init! '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp279549)))
              (__tmp279545
               (let ((__tmp279546
                      (let ((__tmp279547
                             (let ()
                               (declare (not safe))
                               (cons _$obj274091_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp279547))))
                 (declare (not safe))
                 (cons __tmp279546 _args274076_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp279548
                                                        __tmp279545))))
                                           (declare (not safe))
                                           (cons '%#call __tmp279544)))
                                        (__tmp279540
                                         (let ((__tmp279541
                                                (let ((__tmp279542
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj274091_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp279542))))
                                           (declare (not safe))
                                           (cons __tmp279541 '()))))
                                    (declare (not safe))
                                    (cons __tmp279543 __tmp279540))))
                             (declare (not safe))
                             (cons '%#begin __tmp279539))))
                      (declare (not safe))
                      (cons __tmp279538 '()))))
               (declare (not safe))
               (cons __tmp279550 __tmp279537))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#let-values
                                                      __tmp279536))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp279535
                                          _stx274069_)))))
                                (let* ((_g274098274138_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 ___stx279134279135_))
                                              (___kont279138279139_)
                                              (___kont279140279141_))))
                                       (___match279171279172_
                                        (lambda (_e274107274143_
                                                 _hd274106274146_
                                                 _tl274105274148_
                                                 _e274110274151_
                                                 _hd274109274154_
                                                 _tl274108274156_
                                                 _e274113274159_
                                                 _hd274112274162_
                                                 _tl274111274164_
                                                 _e274116274167_
                                                 _hd274115274170_
                                                 _tl274114274172_)
                                          (let ((_L274175_ _tl274114274172_)
                                                (_L274176_ _hd274115274170_)
                                                (_L274177_ _hd274112274162_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword? _L274177_))
                                                (___kont279136279137_
                                                 _L274175_
                                                 _L274176_
                                                 _L274177_)
                                                (___kont279140279141_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? ___stx279134279135_))
                                      (let ((_e274107274143_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                ___stx279134279135_))))
                                        (let ((_tl274105274148_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e274107274143_)))
                                              (_hd274106274146_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e274107274143_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd274106274146_))
                                              (let ((_e274110274151_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd274106274146_))))
                                                (let ((_tl274108274156_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e274110274151_)))
                                                      (_hd274109274154_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e274110274151_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd274109274154_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _hd274109274154_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl274108274156_))
                      (let ((_e274113274159_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl274108274156_))))
                        (let ((_tl274111274164_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e274113274159_)))
                              (_hd274112274162_
                               (let ()
                                 (declare (not safe))
                                 (##car _e274113274159_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl274111274164_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl274105274148_))
                                  (let ((_e274116274167_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl274105274148_))))
                                    (let ((_tl274114274172_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e274116274167_)))
                                          (_hd274115274170_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e274116274167_))))
                                      (___match279171279172_
                                       _e274107274143_
                                       _hd274106274146_
                                       _tl274105274148_
                                       _e274110274151_
                                       _hd274109274154_
                                       _tl274108274156_
                                       _e274113274159_
                                       _hd274112274162_
                                       _tl274111274164_
                                       _e274116274167_
                                       _hd274115274170_
                                       _tl274114274172_)))
                                  (___kont279140279141_))
                              (___kont279140279141_))))
                      (___kont279140279141_))
                  (___kont279140279141_))
              (___kont279140279141_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont279140279141_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g274098274138_))))))))))))))))
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
      (lambda (_self273891_ _stx273892_ _args273893_)
        (let* ((_g273895273905_
                (lambda (_g273896273902_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g273896273902_))))
               (_g273894273943_
                (lambda (_g273896273908_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g273896273908_))
                      (let ((_e273900273910_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g273896273908_))))
                        (let ((_hd273899273913_
                               (let ()
                                 (declare (not safe))
                                 (##car _e273900273910_)))
                              (_tl273898273915_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e273900273910_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl273898273915_))
                              ((lambda (_L273918_)
                                 (let* ((_klass273929_
                                         (let ((__tmp279635
                                                (##structure-ref
                                                 _self273891_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx273892_
                                            __tmp279635)))
                                        (_field273931_
                                         (let ((__tmp279636
                                                (##structure-ref
                                                 _self273891_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass273929_
                                            __tmp279636)))
                                        (_object273933_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L273918_))))
                                   (if (##structure-ref
                                        _klass273929_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp279713
                                              (let ((__tmp279722
                                                     (if (##structure-ref
                                                          _self273891_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp279714
                                                     (let ((__tmp279719
                                                            (let ((__tmp279720
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279721
                                  (##structure-ref
                                   _self273891_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp279721 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp279720)))
                   (__tmp279715
                    (let ((__tmp279717
                           (let ((__tmp279718
                                  (let ()
                                    (declare (not safe))
                                    (cons _field273931_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp279718)))
                          (__tmp279716
                           (let ()
                             (declare (not safe))
                             (cons _object273933_ '()))))
                      (declare (not safe))
                      (cons __tmp279717 __tmp279716))))
               (declare (not safe))
               (cons __tmp279719 __tmp279715))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp279722
                                                      __tmp279714))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp279713
                                          _stx273892_))
                                       (if (##structure-ref
                                            _klass273929_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp279703
                                                  (let ((__tmp279712
                                                         (if (##structure-ref
                                                              _self273891_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp279704
                                                         (let ((__tmp279709
                                                                (let ((__tmp279710
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp279711
                                      (##structure-ref
                                       _self273891_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp279711 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp279710)))
                       (__tmp279705
                        (let ((__tmp279707
                               (let ((__tmp279708
                                      (let ()
                                        (declare (not safe))
                                        (cons _field273931_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp279708)))
                              (__tmp279706
                               (let ()
                                 (declare (not safe))
                                 (cons _object273933_ '()))))
                          (declare (not safe))
                          (cons __tmp279707 __tmp279706))))
                   (declare (not safe))
                   (cons __tmp279709 __tmp279705))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp279712
                                                          __tmp279704))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp279703
                                              _stx273892_))
                                           (let ((_$e273936_
                                                  (let ((__tmp279637
                                                         (##structure-ref
                                                          _self273891_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass273929_
                                                     __tmp279637))))
                                             (if _$e273936_
                                                 ((lambda (_klass273939_)
                                                    (let ((__tmp279693
                                                           (let ((__tmp279702
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self273891_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp279694
                          (let ((__tmp279699
                                 (let ((__tmp279700
                                        (let ((__tmp279701
                                               (##structure-ref
                                                _self273891_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp279701 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp279700)))
                                (__tmp279695
                                 (let ((__tmp279697
                                        (let ((__tmp279698
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field273931_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp279698)))
                                       (__tmp279696
                                        (let ()
                                          (declare (not safe))
                                          (cons _object273933_ '()))))
                                   (declare (not safe))
                                   (cons __tmp279697 __tmp279696))))
                            (declare (not safe))
                            (cons __tmp279699 __tmp279695))))
                     (declare (not safe))
                     (cons __tmp279702 __tmp279694))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp279693 _stx273892_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e273936_)
                                                 (if (##structure-ref
                                                      _self273891_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp279647
                                                            (let* ((_$obj273941_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp279648 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp279648)))
                           (__tmp279649
                            (let ((__tmp279689
                                   (let ((__tmp279690
                                          (let ((__tmp279692
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj273941_ '())))
                                                (__tmp279691
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object273933_ '()))))
                                            (declare (not safe))
                                            (cons __tmp279692 __tmp279691))))
                                     (declare (not safe))
                                     (cons __tmp279690 '())))
                                  (__tmp279650
                                   (let ((__tmp279651
                                          (let ((__tmp279652
                                                 (let ((__tmp279681
                                                        (let ((__tmp279682
                                                               (let ((__tmp279686
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp279687
                                     (let ((__tmp279688
                                            (##structure-ref
                                             _klass273929_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp279688 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp279687)))
                             (__tmp279683
                              (let ((__tmp279684
                                     (let ((__tmp279685
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj273941_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp279685))))
                                (declare (not safe))
                                (cons __tmp279684 '()))))
                         (declare (not safe))
                         (cons __tmp279686 __tmp279683))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp279682)))
               (__tmp279653
                (let ((__tmp279670
                       (let ((__tmp279671
                              (let ((__tmp279678
                                     (let ((__tmp279679
                                            (let ((__tmp279680
                                                   (##structure-ref
                                                    _self273891_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp279680 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp279679)))
                                    (__tmp279672
                                     (let ((__tmp279676
                                            (let ((__tmp279677
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field273931_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp279677)))
                                           (__tmp279673
                                            (let ((__tmp279674
                                                   (let ((__tmp279675
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj273941_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp279675))))
                                              (declare (not safe))
                                              (cons __tmp279674 '()))))
                                       (declare (not safe))
                                       (cons __tmp279676 __tmp279673))))
                                (declare (not safe))
                                (cons __tmp279678 __tmp279672))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp279671)))
                      (__tmp279654
                       (let ((__tmp279655
                              (let ((__tmp279656
                                     (let ((__tmp279668
                                            (let ((__tmp279669
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp279669)))
                                           (__tmp279657
                                            (let ((__tmp279665
                                                   (let ((__tmp279666
                                                          (let ((__tmp279667
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self273891_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp279667 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp279666)))
                                                  (__tmp279658
                                                   (let ((__tmp279663
                                                          (let ((__tmp279664
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj273941_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp279664)))
                 (__tmp279659
                  (let ((__tmp279660
                         (let ((__tmp279661
                                (let ((__tmp279662
                                       (##structure-ref
                                        _self273891_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp279662 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp279661))))
                    (declare (not safe))
                    (cons __tmp279660 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp279663
                                                           __tmp279659))))
                                              (declare (not safe))
                                              (cons __tmp279665 __tmp279658))))
                                       (declare (not safe))
                                       (cons __tmp279668 __tmp279657))))
                                (declare (not safe))
                                (cons '%#call __tmp279656))))
                         (declare (not safe))
                         (cons __tmp279655 '()))))
                  (declare (not safe))
                  (cons __tmp279670 __tmp279654))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279681
                                                         __tmp279653))))
                                            (declare (not safe))
                                            (cons '%#if __tmp279652))))
                                     (declare (not safe))
                                     (cons __tmp279651 '()))))
                              (declare (not safe))
                              (cons __tmp279689 __tmp279650))))
                      (declare (not safe))
                      (cons '%#let-values __tmp279649))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp279647 _stx273892_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp279638
                                                            (let ((__tmp279639
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279645
                                  (let ((__tmp279646
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp279646)))
                                 (__tmp279640
                                  (let ((__tmp279641
                                         (let ((__tmp279642
                                                (let ((__tmp279643
                                                       (let ((__tmp279644
                                                              (##structure-ref
                                                               _self273891_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp279644
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp279643))))
                                           (declare (not safe))
                                           (cons __tmp279642 '()))))
                                    (declare (not safe))
                                    (cons _object273933_ __tmp279641))))
                             (declare (not safe))
                             (cons __tmp279645 __tmp279640))))
                      (declare (not safe))
                      (cons '%#call __tmp279639))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp279638 _stx273892_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd273899273913_)
                              (let ()
                                (declare (not safe))
                                (_g273895273905_ _g273896273908_)))))
                      (let ()
                        (declare (not safe))
                        (_g273895273905_ _g273896273908_))))))
          (declare (not safe))
          (_g273894273943_ _args273893_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__t279021)
        (let ((__checked?279022
               (let ((__tmp279025
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t279021 'checked?))))
                 (if __tmp279025
                     __tmp279025
                     (error '"Unknown slot" 'checked?))))
              (__id279023
               (let ((__tmp279026
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t279021 'id))))
                 (if __tmp279026 __tmp279026 (error '"Unknown slot" 'id))))
              (__slot279024
               (let ((__tmp279027
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t279021 'slot))))
                 (if __tmp279027 __tmp279027 (error '"Unknown slot" 'slot)))))
          (lambda (_self273891_ _stx273892_ _args273893_)
            (let* ((_g273895273905_
                    (lambda (_g273896273902_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g273896273902_))))
                   (_g273894273943_
                    (lambda (_g273896273908_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g273896273908_))
                          (let ((_e273900273910_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g273896273908_))))
                            (let ((_hd273899273913_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e273900273910_)))
                                  (_tl273898273915_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e273900273910_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl273898273915_))
                                  ((lambda (_L273918_)
                                     (let* ((_klass273929_
                                             (let ((__tmp279723
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self273891_
                                                       __id279023
                                                       __t279021
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx273892_
                                                __tmp279723)))
                                            (_field273931_
                                             (let ((__tmp279724
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self273891_
                                                       __slot279024
                                                       __t279021
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass273929_
                                                __tmp279724)))
                                            (_object273933_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L273918_))))
                                       (if (##structure-ref
                                            _klass273929_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp279801
                                                  (let ((__tmp279810
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self273891_
                        __checked?279022
                        __t279021
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp279802
                 (let ((__tmp279807
                        (let ((__tmp279808
                               (let ((__tmp279809
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self273891_
                                         __id279023
                                         __t279021
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp279809 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp279808)))
                       (__tmp279803
                        (let ((__tmp279805
                               (let ((__tmp279806
                                      (let ()
                                        (declare (not safe))
                                        (cons _field273931_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp279806)))
                              (__tmp279804
                               (let ()
                                 (declare (not safe))
                                 (cons _object273933_ '()))))
                          (declare (not safe))
                          (cons __tmp279805 __tmp279804))))
                   (declare (not safe))
                   (cons __tmp279807 __tmp279803))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp279810
                                                          __tmp279802))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp279801
                                              _stx273892_))
                                           (if (##structure-ref
                                                _klass273929_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp279791
                                                      (let ((__tmp279800
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self273891_
                            __checked?279022
                            __t279021
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp279792
                     (let ((__tmp279797
                            (let ((__tmp279798
                                   (let ((__tmp279799
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self273891_
                                             __id279023
                                             __t279021
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp279799 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp279798)))
                           (__tmp279793
                            (let ((__tmp279795
                                   (let ((__tmp279796
                                          (let ()
                                            (declare (not safe))
                                            (cons _field273931_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp279796)))
                                  (__tmp279794
                                   (let ()
                                     (declare (not safe))
                                     (cons _object273933_ '()))))
                              (declare (not safe))
                              (cons __tmp279795 __tmp279794))))
                       (declare (not safe))
                       (cons __tmp279797 __tmp279793))))
                (declare (not safe))
                (cons __tmp279800 __tmp279792))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp279791
                                                  _stx273892_))
                                               (let ((_$e273936_
                                                      (let ((__tmp279725
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self273891_
                        __slot279024
                        __t279021
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass273929_ __tmp279725))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e273936_
                                                     ((lambda (_klass273939_)
                                                        (let ((__tmp279781
                                                               (let ((__tmp279790
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self273891_
                                     __checked?279022
                                     __t279021
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp279782
                              (let ((__tmp279787
                                     (let ((__tmp279788
                                            (let ((__tmp279789
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self273891_
                                                      __id279023
                                                      __t279021
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp279789 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp279788)))
                                    (__tmp279783
                                     (let ((__tmp279785
                                            (let ((__tmp279786
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field273931_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp279786)))
                                           (__tmp279784
                                            (let ()
                                              (declare (not safe))
                                              (cons _object273933_ '()))))
                                       (declare (not safe))
                                       (cons __tmp279785 __tmp279784))))
                                (declare (not safe))
                                (cons __tmp279787 __tmp279783))))
                         (declare (not safe))
                         (cons __tmp279790 __tmp279782))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp279781 _stx273892_)))
              _$e273936_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self273891_
                                                            __checked?279022
                                                            __t279021
                                                            '#f))
                                                         (let ((__tmp279735
                                                                (let* ((_$obj273941_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp279736 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp279736)))
                               (__tmp279737
                                (let ((__tmp279777
                                       (let ((__tmp279778
                                              (let ((__tmp279780
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj273941_
                                                             '())))
                                                    (__tmp279779
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object273933_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp279780
                                                      __tmp279779))))
                                         (declare (not safe))
                                         (cons __tmp279778 '())))
                                      (__tmp279738
                                       (let ((__tmp279739
                                              (let ((__tmp279740
                                                     (let ((__tmp279769
                                                            (let ((__tmp279770
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279774
                                  (let ((__tmp279775
                                         (let ((__tmp279776
                                                (##structure-ref
                                                 _klass273929_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp279776 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp279775)))
                                 (__tmp279771
                                  (let ((__tmp279772
                                         (let ((__tmp279773
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj273941_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp279773))))
                                    (declare (not safe))
                                    (cons __tmp279772 '()))))
                             (declare (not safe))
                             (cons __tmp279774 __tmp279771))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp279770)))
                   (__tmp279741
                    (let ((__tmp279758
                           (let ((__tmp279759
                                  (let ((__tmp279766
                                         (let ((__tmp279767
                                                (let ((__tmp279768
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self273891_
                                                          __id279023
                                                          __t279021
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp279768 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp279767)))
                                        (__tmp279760
                                         (let ((__tmp279764
                                                (let ((__tmp279765
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field273931_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp279765)))
                                               (__tmp279761
                                                (let ((__tmp279762
                                                       (let ((__tmp279763
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj273941_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp279763))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp279762 '()))))
                                           (declare (not safe))
                                           (cons __tmp279764 __tmp279761))))
                                    (declare (not safe))
                                    (cons __tmp279766 __tmp279760))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp279759)))
                          (__tmp279742
                           (let ((__tmp279743
                                  (let ((__tmp279744
                                         (let ((__tmp279756
                                                (let ((__tmp279757
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp279757)))
                                               (__tmp279745
                                                (let ((__tmp279753
                                                       (let ((__tmp279754
                                                              (let ((__tmp279755
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self273891_
                                __id279023
                                __t279021
                                '#f))))
                        (declare (not safe))
                        (cons __tmp279755 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp279754)))
              (__tmp279746
               (let ((__tmp279751
                      (let ((__tmp279752
                             (let ()
                               (declare (not safe))
                               (cons _$obj273941_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp279752)))
                     (__tmp279747
                      (let ((__tmp279748
                             (let ((__tmp279749
                                    (let ((__tmp279750
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self273891_
                                              __slot279024
                                              __t279021
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp279750 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp279749))))
                        (declare (not safe))
                        (cons __tmp279748 '()))))
                 (declare (not safe))
                 (cons __tmp279751 __tmp279747))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp279753
                                                        __tmp279746))))
                                           (declare (not safe))
                                           (cons __tmp279756 __tmp279745))))
                                    (declare (not safe))
                                    (cons '%#call __tmp279744))))
                             (declare (not safe))
                             (cons __tmp279743 '()))))
                      (declare (not safe))
                      (cons __tmp279758 __tmp279742))))
               (declare (not safe))
               (cons __tmp279769 __tmp279741))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp279740))))
                                         (declare (not safe))
                                         (cons __tmp279739 '()))))
                                  (declare (not safe))
                                  (cons __tmp279777 __tmp279738))))
                          (declare (not safe))
                          (cons '%#let-values __tmp279737))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp279735 _stx273892_))
                 (let ((__tmp279726
                        (let ((__tmp279727
                               (let ((__tmp279733
                                      (let ((__tmp279734
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp279734)))
                                     (__tmp279728
                                      (let ((__tmp279729
                                             (let ((__tmp279730
                                                    (let ((__tmp279731
                                                           (let ((__tmp279732
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self273891_
                             __slot279024
                             __t279021
                             '#f))))
                     (declare (not safe))
                     (cons __tmp279732 '()))))
              (declare (not safe))
              (cons '%#quote __tmp279731))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp279730 '()))))
                                        (declare (not safe))
                                        (cons _object273933_ __tmp279729))))
                                 (declare (not safe))
                                 (cons __tmp279733 __tmp279728))))
                          (declare (not safe))
                          (cons '%#call __tmp279727))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp279726 _stx273892_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd273899273913_)
                                  (let ()
                                    (declare (not safe))
                                    (_g273895273905_ _g273896273908_)))))
                          (let ()
                            (declare (not safe))
                            (_g273895273905_ _g273896273908_))))))
              (declare (not safe))
              (_g273894273943_ _args273893_))))))
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
      (lambda (_self273696_ _stx273697_ _args273698_)
        (let* ((_g273700273714_
                (lambda (_g273701273711_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g273701273711_))))
               (_g273699273766_
                (lambda (_g273701273717_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g273701273717_))
                      (let ((_e273706273719_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g273701273717_))))
                        (let ((_hd273705273722_
                               (let ()
                                 (declare (not safe))
                                 (##car _e273706273719_)))
                              (_tl273704273724_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e273706273719_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl273704273724_))
                              (let ((_e273709273727_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl273704273724_))))
                                (let ((_hd273708273730_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e273709273727_)))
                                      (_tl273707273732_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e273709273727_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl273707273732_))
                                      ((lambda (_L273735_ _L273736_)
                                         (let* ((_klass273750_
                                                 (let ((__tmp279811
                                                        (##structure-ref
                                                         _self273696_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx273697_
                                                    __tmp279811)))
                                                (_field273752_
                                                 (let ((__tmp279812
                                                        (##structure-ref
                                                         _self273696_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass273750_
                                                    __tmp279812)))
                                                (_object273754_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L273736_)))
                                                (_value273756_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L273735_))))
                                           (if (##structure-ref
                                                _klass273750_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp279894
                                                      (let ((__tmp279904
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self273696_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp279895
                     (let ((__tmp279901
                            (let ((__tmp279902
                                   (let ((__tmp279903
                                          (##structure-ref
                                           _self273696_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp279903 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp279902)))
                           (__tmp279896
                            (let ((__tmp279899
                                   (let ((__tmp279900
                                          (let ()
                                            (declare (not safe))
                                            (cons _field273752_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp279900)))
                                  (__tmp279897
                                   (let ((__tmp279898
                                          (let ()
                                            (declare (not safe))
                                            (cons _value273756_ '()))))
                                     (declare (not safe))
                                     (cons _object273754_ __tmp279898))))
                              (declare (not safe))
                              (cons __tmp279899 __tmp279897))))
                       (declare (not safe))
                       (cons __tmp279901 __tmp279896))))
                (declare (not safe))
                (cons __tmp279904 __tmp279895))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp279894
                                                  _stx273697_))
                                               (if (##structure-ref
                                                    _klass273750_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp279883
                                                          (let ((__tmp279893
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self273696_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp279884
                         (let ((__tmp279890
                                (let ((__tmp279891
                                       (let ((__tmp279892
                                              (##structure-ref
                                               _self273696_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp279892 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp279891)))
                               (__tmp279885
                                (let ((__tmp279888
                                       (let ((__tmp279889
                                              (let ()
                                                (declare (not safe))
                                                (cons _field273752_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp279889)))
                                      (__tmp279886
                                       (let ((__tmp279887
                                              (let ()
                                                (declare (not safe))
                                                (cons _value273756_ '()))))
                                         (declare (not safe))
                                         (cons _object273754_ __tmp279887))))
                                  (declare (not safe))
                                  (cons __tmp279888 __tmp279886))))
                           (declare (not safe))
                           (cons __tmp279890 __tmp279885))))
                    (declare (not safe))
                    (cons __tmp279893 __tmp279884))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp279883
                                                      _stx273697_))
                                                   (let ((_$e273759_
                                                          (let ((__tmp279813
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self273696_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass273750_ __tmp279813))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e273759_
                                                         ((lambda (_klass273762_)
                                                            (let ((__tmp279872
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279882
                                  (if (##structure-ref
                                       _self273696_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp279873
                                  (let ((__tmp279879
                                         (let ((__tmp279880
                                                (let ((__tmp279881
                                                       (##structure-ref
                                                        _self273696_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp279881 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp279880)))
                                        (__tmp279874
                                         (let ((__tmp279877
                                                (let ((__tmp279878
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field273752_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp279878)))
                                               (__tmp279875
                                                (let ((__tmp279876
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value273756_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object273754_
                                                        __tmp279876))))
                                           (declare (not safe))
                                           (cons __tmp279877 __tmp279875))))
                                    (declare (not safe))
                                    (cons __tmp279879 __tmp279874))))
                             (declare (not safe))
                             (cons __tmp279882 __tmp279873))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp279872 _stx273697_)))
                  _$e273759_)
                 (if (##structure-ref _self273696_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp279824
                            (let* ((_$obj273764_
                                    (let ((__tmp279825 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp279825)))
                                   (__tmp279826
                                    (let ((__tmp279868
                                           (let ((__tmp279869
                                                  (let ((__tmp279871
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj273764_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp279870
                 (let () (declare (not safe)) (cons _object273754_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp279871
                                                          __tmp279870))))
                                             (declare (not safe))
                                             (cons __tmp279869 '())))
                                          (__tmp279827
                                           (let ((__tmp279828
                                                  (let ((__tmp279829
                                                         (let ((__tmp279860
                                                                (let ((__tmp279861
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp279865
                                      (let ((__tmp279866
                                             (let ((__tmp279867
                                                    (##structure-ref
                                                     _klass273750_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp279867 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp279866)))
                                     (__tmp279862
                                      (let ((__tmp279863
                                             (let ((__tmp279864
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj273764_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp279864))))
                                        (declare (not safe))
                                        (cons __tmp279863 '()))))
                                 (declare (not safe))
                                 (cons __tmp279865 __tmp279862))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp279861)))
                       (__tmp279830
                        (let ((__tmp279848
                               (let ((__tmp279849
                                      (let ((__tmp279857
                                             (let ((__tmp279858
                                                    (let ((__tmp279859
                                                           (##structure-ref
                                                            _self273696_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp279859 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp279858)))
                                            (__tmp279850
                                             (let ((__tmp279855
                                                    (let ((__tmp279856
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field273752_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp279856)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp279851
                                                    (let ((__tmp279853
                                                           (let ((__tmp279854
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj273764_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp279854)))
                  (__tmp279852
                   (let () (declare (not safe)) (cons _value273756_ '()))))
              (declare (not safe))
              (cons __tmp279853 __tmp279852))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp279855
                                                     __tmp279851))))
                                        (declare (not safe))
                                        (cons __tmp279857 __tmp279850))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp279849)))
                              (__tmp279831
                               (let ((__tmp279832
                                      (let ((__tmp279833
                                             (let ((__tmp279846
                                                    (let ((__tmp279847
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp279847)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp279834
                                                    (let ((__tmp279843
                                                           (let ((__tmp279844
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp279845
                                 (##structure-ref
                                  _self273696_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp279845 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp279844)))
                  (__tmp279835
                   (let ((__tmp279841
                          (let ((__tmp279842
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj273764_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp279842)))
                         (__tmp279836
                          (let ((__tmp279838
                                 (let ((__tmp279839
                                        (let ((__tmp279840
                                               (##structure-ref
                                                _self273696_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp279840 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp279839)))
                                (__tmp279837
                                 (let ()
                                   (declare (not safe))
                                   (cons _value273756_ '()))))
                            (declare (not safe))
                            (cons __tmp279838 __tmp279837))))
                     (declare (not safe))
                     (cons __tmp279841 __tmp279836))))
              (declare (not safe))
              (cons __tmp279843 __tmp279835))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp279846
                                                     __tmp279834))))
                                        (declare (not safe))
                                        (cons '%#call __tmp279833))))
                                 (declare (not safe))
                                 (cons __tmp279832 '()))))
                          (declare (not safe))
                          (cons __tmp279848 __tmp279831))))
                   (declare (not safe))
                   (cons __tmp279860 __tmp279830))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp279829))))
                                             (declare (not safe))
                                             (cons __tmp279828 '()))))
                                      (declare (not safe))
                                      (cons __tmp279868 __tmp279827))))
                              (declare (not safe))
                              (cons '%#let-values __tmp279826))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp279824 _stx273697_))
                     (let ((__tmp279814
                            (let ((__tmp279815
                                   (let ((__tmp279822
                                          (let ((__tmp279823
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp279823)))
                                         (__tmp279816
                                          (let ((__tmp279817
                                                 (let ((__tmp279819
                                                        (let ((__tmp279820
                                                               (let ((__tmp279821
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self273696_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp279821 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp279820)))
               (__tmp279818
                (let () (declare (not safe)) (cons _value273756_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279819
                                                         __tmp279818))))
                                            (declare (not safe))
                                            (cons _object273754_
                                                  __tmp279817))))
                                     (declare (not safe))
                                     (cons __tmp279822 __tmp279816))))
                              (declare (not safe))
                              (cons '%#call __tmp279815))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp279814 _stx273697_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd273708273730_
                                       _hd273705273722_)
                                      (let ()
                                        (declare (not safe))
                                        (_g273700273714_ _g273701273717_)))))
                              (let ()
                                (declare (not safe))
                                (_g273700273714_ _g273701273717_)))))
                      (let ()
                        (declare (not safe))
                        (_g273700273714_ _g273701273717_))))))
          (declare (not safe))
          (_g273699273766_ _args273698_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__t279028)
        (let ((__checked?279029
               (let ((__tmp279032
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t279028 'checked?))))
                 (if __tmp279032
                     __tmp279032
                     (error '"Unknown slot" 'checked?))))
              (__id279030
               (let ((__tmp279033
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t279028 'id))))
                 (if __tmp279033 __tmp279033 (error '"Unknown slot" 'id))))
              (__slot279031
               (let ((__tmp279034
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t279028 'slot))))
                 (if __tmp279034 __tmp279034 (error '"Unknown slot" 'slot)))))
          (lambda (_self273696_ _stx273697_ _args273698_)
            (let* ((_g273700273714_
                    (lambda (_g273701273711_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g273701273711_))))
                   (_g273699273766_
                    (lambda (_g273701273717_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g273701273717_))
                          (let ((_e273706273719_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g273701273717_))))
                            (let ((_hd273705273722_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e273706273719_)))
                                  (_tl273704273724_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e273706273719_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl273704273724_))
                                  (let ((_e273709273727_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl273704273724_))))
                                    (let ((_hd273708273730_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e273709273727_)))
                                          (_tl273707273732_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e273709273727_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl273707273732_))
                                          ((lambda (_L273735_ _L273736_)
                                             (let* ((_klass273750_
                                                     (let ((__tmp279905
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self273696_
                                                               __id279030
                                                               __t279028
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx273697_
                                                        __tmp279905)))
                                                    (_field273752_
                                                     (let ((__tmp279906
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self273696_
                                                               __slot279031
                                                               __t279028
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass273750_
                                                        __tmp279906)))
                                                    (_object273754_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L273736_)))
                                                    (_value273756_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L273735_))))
                                               (if (##structure-ref
                                                    _klass273750_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp279988
                                                          (let ((__tmp279998
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self273696_
                                __checked?279029
                                __t279028
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp279989
                         (let ((__tmp279995
                                (let ((__tmp279996
                                       (let ((__tmp279997
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self273696_
                                                 __id279030
                                                 __t279028
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp279997 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp279996)))
                               (__tmp279990
                                (let ((__tmp279993
                                       (let ((__tmp279994
                                              (let ()
                                                (declare (not safe))
                                                (cons _field273752_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp279994)))
                                      (__tmp279991
                                       (let ((__tmp279992
                                              (let ()
                                                (declare (not safe))
                                                (cons _value273756_ '()))))
                                         (declare (not safe))
                                         (cons _object273754_ __tmp279992))))
                                  (declare (not safe))
                                  (cons __tmp279993 __tmp279991))))
                           (declare (not safe))
                           (cons __tmp279995 __tmp279990))))
                    (declare (not safe))
                    (cons __tmp279998 __tmp279989))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp279988
                                                      _stx273697_))
                                                   (if (##structure-ref
                                                        _klass273750_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp279977
                                                              (let ((__tmp279987
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self273696_
                                    __checked?279029
                                    __t279028
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp279978
                             (let ((__tmp279984
                                    (let ((__tmp279985
                                           (let ((__tmp279986
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self273696_
                                                     __id279030
                                                     __t279028
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp279986 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp279985)))
                                   (__tmp279979
                                    (let ((__tmp279982
                                           (let ((__tmp279983
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field273752_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp279983)))
                                          (__tmp279980
                                           (let ((__tmp279981
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value273756_ '()))))
                                             (declare (not safe))
                                             (cons _object273754_
                                                   __tmp279981))))
                                      (declare (not safe))
                                      (cons __tmp279982 __tmp279980))))
                               (declare (not safe))
                               (cons __tmp279984 __tmp279979))))
                        (declare (not safe))
                        (cons __tmp279987 __tmp279978))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp279977 _stx273697_))
               (let ((_$e273759_
                      (let ((__tmp279907
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self273696_
                                __slot279031
                                __t279028
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass273750_
                         __tmp279907))))
                 (if _$e273759_
                     ((lambda (_klass273762_)
                        (let ((__tmp279966
                               (let ((__tmp279976
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self273696_
                                             __checked?279029
                                             __t279028
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp279967
                                      (let ((__tmp279973
                                             (let ((__tmp279974
                                                    (let ((__tmp279975
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self273696_
                                                              __id279030
                                                              __t279028
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp279975 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp279974)))
                                            (__tmp279968
                                             (let ((__tmp279971
                                                    (let ((__tmp279972
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field273752_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp279972)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp279969
                                                    (let ((__tmp279970
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value273756_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object273754_ __tmp279970))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp279971
                                                     __tmp279969))))
                                        (declare (not safe))
                                        (cons __tmp279973 __tmp279968))))
                                 (declare (not safe))
                                 (cons __tmp279976 __tmp279967))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp279966 _stx273697_)))
                      _$e273759_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self273696_
                            __checked?279029
                            __t279028
                            '#f))
                         (let ((__tmp279918
                                (let* ((_$obj273764_
                                        (let ((__tmp279919 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp279919)))
                                       (__tmp279920
                                        (let ((__tmp279962
                                               (let ((__tmp279963
                                                      (let ((__tmp279965
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj273764_ '())))
                    (__tmp279964
                     (let () (declare (not safe)) (cons _object273754_ '()))))
                (declare (not safe))
                (cons __tmp279965 __tmp279964))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp279963 '())))
                                              (__tmp279921
                                               (let ((__tmp279922
                                                      (let ((__tmp279923
                                                             (let ((__tmp279954
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp279955
                                   (let ((__tmp279959
                                          (let ((__tmp279960
                                                 (let ((__tmp279961
                                                        (##structure-ref
                                                         _klass273750_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp279961 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp279960)))
                                         (__tmp279956
                                          (let ((__tmp279957
                                                 (let ((__tmp279958
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj273764_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp279958))))
                                            (declare (not safe))
                                            (cons __tmp279957 '()))))
                                     (declare (not safe))
                                     (cons __tmp279959 __tmp279956))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp279955)))
                           (__tmp279924
                            (let ((__tmp279942
                                   (let ((__tmp279943
                                          (let ((__tmp279951
                                                 (let ((__tmp279952
                                                        (let ((__tmp279953
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self273696_
                          __id279030
                          __t279028
                          '#f))))
                  (declare (not safe))
                  (cons __tmp279953 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp279952)))
                                                (__tmp279944
                                                 (let ((__tmp279949
                                                        (let ((__tmp279950
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field273752_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp279950)))
               (__tmp279945
                (let ((__tmp279947
                       (let ((__tmp279948
                              (let ()
                                (declare (not safe))
                                (cons _$obj273764_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp279948)))
                      (__tmp279946
                       (let () (declare (not safe)) (cons _value273756_ '()))))
                  (declare (not safe))
                  (cons __tmp279947 __tmp279946))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279949
                                                         __tmp279945))))
                                            (declare (not safe))
                                            (cons __tmp279951 __tmp279944))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp279943)))
                                  (__tmp279925
                                   (let ((__tmp279926
                                          (let ((__tmp279927
                                                 (let ((__tmp279940
                                                        (let ((__tmp279941
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp279941)))
               (__tmp279928
                (let ((__tmp279937
                       (let ((__tmp279938
                              (let ((__tmp279939
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self273696_
                                        __id279030
                                        __t279028
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp279939 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp279938)))
                      (__tmp279929
                       (let ((__tmp279935
                              (let ((__tmp279936
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj273764_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp279936)))
                             (__tmp279930
                              (let ((__tmp279932
                                     (let ((__tmp279933
                                            (let ((__tmp279934
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self273696_
                                                      __slot279031
                                                      __t279028
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp279934 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp279933)))
                                    (__tmp279931
                                     (let ()
                                       (declare (not safe))
                                       (cons _value273756_ '()))))
                                (declare (not safe))
                                (cons __tmp279932 __tmp279931))))
                         (declare (not safe))
                         (cons __tmp279935 __tmp279930))))
                  (declare (not safe))
                  (cons __tmp279937 __tmp279929))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279940
                                                         __tmp279928))))
                                            (declare (not safe))
                                            (cons '%#call __tmp279927))))
                                     (declare (not safe))
                                     (cons __tmp279926 '()))))
                              (declare (not safe))
                              (cons __tmp279942 __tmp279925))))
                       (declare (not safe))
                       (cons __tmp279954 __tmp279924))))
                (declare (not safe))
                (cons '%#if __tmp279923))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp279922 '()))))
                                          (declare (not safe))
                                          (cons __tmp279962 __tmp279921))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp279920))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp279918 _stx273697_))
                         (let ((__tmp279908
                                (let ((__tmp279909
                                       (let ((__tmp279916
                                              (let ((__tmp279917
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp279917)))
                                             (__tmp279910
                                              (let ((__tmp279911
                                                     (let ((__tmp279913
                                                            (let ((__tmp279914
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279915
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self273696_
                                     __slot279031
                                     __t279028
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp279915 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp279914)))
                   (__tmp279912
                    (let () (declare (not safe)) (cons _value273756_ '()))))
               (declare (not safe))
               (cons __tmp279913 __tmp279912))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object273754_
                                                      __tmp279911))))
                                         (declare (not safe))
                                         (cons __tmp279916 __tmp279910))))
                                  (declare (not safe))
                                  (cons '%#call __tmp279909))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp279908
                            _stx273697_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd273708273730_
                                           _hd273705273722_)
                                          (let ()
                                            (declare (not safe))
                                            (_g273700273714_
                                             _g273701273717_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g273700273714_ _g273701273717_)))))
                          (let ()
                            (declare (not safe))
                            (_g273700273714_ _g273701273717_))))))
              (declare (not safe))
              (_g273699273766_ _args273698_))))))
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
      (lambda (_self273530_ _stx273531_ _args273532_)
        (let* ((_self273533273542_ _self273530_)
               (_E273535273546_
                (lambda () (error '"No clause matching" _self273533273542_)))
               (_K273536273553_
                (lambda (_inline273549_ _dispatch273550_ _arity273551_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self273530_ _args273532_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx273531_
                         _arity273551_)))
                  (if _inline273549_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp280004
                               (let ((__tmp280005
                                      (_inline273549_ _stx273531_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp280005
                                  _stx273531_))))
                          (declare (not safe))
                          (gxc#compile-e__0 __tmp280004)))
                      (if _dispatch273550_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch273550_))
                            (let ((__tmp279999
                                   (let ((__tmp280000
                                          (let ((__tmp280001
                                                 (let ((__tmp280002
                                                        (let ((__tmp280003
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch273550_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp280003))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp280002
                                                         _args273532_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp280001))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp280000
                                      _stx273531_))))
                              (declare (not safe))
                              (gxc#compile-e__0 __tmp279999)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _stx273531_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self273533273542_ 'gxc#!lambda::t))
              (let* ((_e273537273556_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273533273542_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e273538273559_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273533273542_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity273562_ _e273538273559_)
                     (_e273539273564_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273533273542_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch273567_ _e273539273564_)
                     (_e273540273569_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273533273542_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline273572_ _e273540273569_))
                (declare (not safe))
                (_K273536273553_
                 _inline273572_
                 _dispatch273567_
                 _arity273562_))
              (let () (declare (not safe)) (_E273535273546_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self273369_ _stx273370_ _args273371_)
        (let* ((_self273372273379_ _self273369_)
               (_E273374273383_
                (lambda () (error '"No clause matching" _self273372273379_)))
               (_K273375273397_
                (lambda (_clauses273386_)
                  (let ((_$e273392_
                         (let ((__tmp280006
                                (lambda (_g273387273389_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g273387273389_
                                     _args273371_)))))
                           (declare (not safe))
                           (find __tmp280006 _clauses273386_))))
                    (if _$e273392_
                        ((lambda (_clause273395_)
                           (let ((__method279303
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause273395_
                                     'optimize-call))))
                             (if __method279303
                                 (__method279303
                                  _clause273395_
                                  _stx273370_
                                  _args273371_)
                                 (error '"Missing method"
                                        _clause273395_
                                        'optimize-call))))
                         _$e273392_)
                        (let ((__tmp280007
                               (map gxc#!lambda-arity _clauses273386_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx273370_
                           __tmp280007)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self273372273379_
                 'gxc#!case-lambda::t))
              (let* ((_e273376273400_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273372273379_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e273377273403_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273372273379_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses273406_ _e273377273403_))
                (declare (not safe))
                (_K273375273397_ _clauses273406_))
              (let () (declare (not safe)) (_E273374273383_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self273183_ _args273184_)
        (let* ((_self273185273192_ _self273183_)
               (_E273187273196_
                (lambda () (error '"No clause matching" _self273185273192_)))
               (_K273188273236_
                (lambda (_arity273199_)
                  (let* ((_arity273200273209_ _arity273199_)
                         (_E273203273213_
                          (lambda ()
                            (error '"No clause matching"
                                   _arity273200273209_))))
                    (let ((_K273207273233_
                           (lambda ()
                             (fx= (length _args273184_) _arity273199_)))
                          (_K273204273219_
                           (lambda (_arity273217_)
                             (fx>= (length _args273184_) _arity273217_))))
                      (let ((_try-match273202273229_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity273200273209_))
                                   (let ((_tl273206273224_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity273200273209_)))
                                         (_hd273205273222_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity273200273209_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl273206273224_))
                                         (let ((_arity273227_
                                                _hd273205273222_))
                                           (declare (not safe))
                                           (_K273204273219_ _arity273227_))
                                         (let ()
                                           (declare (not safe))
                                           (_E273203273213_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E273203273213_))))))
                        (if (fixnum? _arity273200273209_)
                            (let () (declare (not safe)) (_K273207273233_))
                            (let ()
                              (declare (not safe))
                              (_try-match273202273229_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self273185273192_ 'gxc#!lambda::t))
              (let* ((_e273189273239_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273185273192_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e273190273242_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273185273192_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity273245_ _e273190273242_))
                (declare (not safe))
                (_K273188273236_ _arity273245_))
              (let () (declare (not safe)) (_E273187273196_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self273068_ _stx273069_ _args273070_)
        (let* ((_self273071273079_ _self273068_)
               (_E273073273083_
                (lambda () (error '"No clause matching" _self273071273079_)))
               (_K273074273167_
                (lambda (_dispatch273086_ _table273087_)
                  (let* ((_g273088273097_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch273086_)))
                         (_else273090273105_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch273086_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _stx273069_))))
                         (_K273092273151_
                          (lambda (_main273108_ _keys273109_)
                            (let ((_g280008_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx273069_
                                      _args273070_))))
                              (begin
                                (let ((_g280009_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g280008_)
                                             (##vector-length _g280008_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g280009_ 2)))
                                      (error "Context expects 2 values"
                                             _g280009_)))
                                (let ((_pargs273111_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g280008_ 0)))
                                      (_kwargs273112_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g280008_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main273108_))
                                    (if _table273087_
                                        (let ((_xargs273119_
                                               (map (lambda (_key273114_)
                                                      (let ((_$e273116_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _key273114_ _kwargs273112_))))
                (if _$e273116_ (values _$e273116_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys273109_)))
                                          (for-each
                                           (lambda (_kw273121_)
                                             (if (memq (car _kw273121_)
                                                       _keys273109_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx273069_
                                                    _keys273109_
                                                    _kw273121_))))
                                           _kwargs273112_)
                                          (let ((__tmp280061
                                                 (let ((__tmp280062
                                                        (let ((__tmp280063
                                                               (let ((__tmp280068
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp280069
                                     (let ()
                                       (declare (not safe))
                                       (cons _main273108_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp280069)))
                             (__tmp280064
                              (let ((__tmp280066
                                     (let ((__tmp280067
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp280067)))
                                    (__tmp280065
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs273111_
                                               _xargs273119_))))
                                (declare (not safe))
                                (cons __tmp280066 __tmp280065))))
                         (declare (not safe))
                         (cons __tmp280068 __tmp280064))))
                  (declare (not safe))
                  (cons '%#call __tmp280063))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp280062
                                                    _stx273069_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0 __tmp280061)))
                                        (let* ((_kwt273123_
                                                (let ((__tmp280010
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp280010)))
                                               (_kwvars273126_
                                                (map (lambda (_g280011_)
                                                       (let ((__tmp280012
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp280012)))
                                                     _kwargs273112_))
                                               (_kwbind273131_
                                                (map (lambda (_kw273128_
                                                              _kwvar273129_)
                                                       (let ((__tmp280015
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar273129_ '())))
                     (__tmp280013
                      (let ((__tmp280014 (cdr _kw273128_)))
                        (declare (not safe))
                        (cons __tmp280014 '()))))
                 (declare (not safe))
                 (cons __tmp280015 __tmp280013)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs273112_
                                                     _kwvars273126_))
                                               (_kwset273136_
                                                (map (lambda (_kw273133_
                                                              _kwvar273134_)
                                                       (let ((__tmp280016
                                                              (let ((__tmp280017
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp280025
                                    (let ((__tmp280026
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt273123_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp280026)))
                                   (__tmp280018
                                    (let ((__tmp280022
                                           (let ((__tmp280023
                                                  (let ((__tmp280024
                                                         (car _kw273133_)))
                                                    (declare (not safe))
                                                    (cons __tmp280024 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp280023)))
                                          (__tmp280019
                                           (let ((__tmp280020
                                                  (let ((__tmp280021
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar273134_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp280021))))
                                             (declare (not safe))
                                             (cons __tmp280020 '()))))
                                      (declare (not safe))
                                      (cons __tmp280022 __tmp280019))))
                               (declare (not safe))
                               (cons __tmp280025 __tmp280018))))
                        (declare (not safe))
                        (cons '(%#ref hash-put!) __tmp280017))))
                 (declare (not safe))
                 (cons '%#call __tmp280016)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs273112_
                                                     _kwvars273126_))
                                               (_xkwargs273141_
                                                (map (lambda (_kw273138_
                                                              _kwvar273139_)
                                                       (let ((__tmp280029
                                                              (car _kw273138_))
                                                             (__tmp280027
                                                              (let ((__tmp280028
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar273139_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp280028))))
                 (declare (not safe))
                 (cons __tmp280029 __tmp280027)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs273112_
                                                     _kwvars273126_))
                                               (_xargs273148_
                                                (map (lambda (_key273143_)
                                                       (let ((_$e273145_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq _key273143_ _xkwargs273141_))))
                 (if _$e273145_ (values _$e273145_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys273109_)))
                                          (let ((__tmp280030
                                                 (let ((__tmp280031
                                                        (let ((__tmp280032
                                                               (let ((__tmp280033
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp280034
                                     (let ((__tmp280035
                                            (let ((__tmp280049
                                                   (let ((__tmp280050
                                                          (let ((__tmp280060
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt273123_ '())))
                        (__tmp280051
                         (let ((__tmp280052
                                (let ((__tmp280053
                                       (let ((__tmp280054
                                              (let ((__tmp280055
                                                     (let ((__tmp280056
                                                            (let ((__tmp280057
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp280058
                                  (let ((__tmp280059 (length _kwargs273112_)))
                                    (declare (not safe))
                                    (cons __tmp280059 '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp280058))))
                      (declare (not safe))
                      (cons __tmp280057 '()))))
               (declare (not safe))
               (cons '(%#quote size:) __tmp280056))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-hash-table-eq)
                                                      __tmp280055))))
                                         (declare (not safe))
                                         (cons '%#call __tmp280054))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp280053
                                   _stx273069_))))
                           (declare (not safe))
                           (cons __tmp280052 '()))))
                    (declare (not safe))
                    (cons __tmp280060 __tmp280051))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp280050 '())))
                                                  (__tmp280036
                                                   (let ((__tmp280037
                                                          (let ((__tmp280038
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp280039
                                (let ((__tmp280040
                                       (let ((__tmp280041
                                              (let ((__tmp280042
                                                     (let ((__tmp280047
                                                            (let ((__tmp280048
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main273108_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp280048)))
                   (__tmp280043
                    (let ((__tmp280045
                           (let ((__tmp280046
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt273123_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp280046)))
                          (__tmp280044
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs273111_ _xargs273148_))))
                      (declare (not safe))
                      (cons __tmp280045 __tmp280044))))
               (declare (not safe))
               (cons __tmp280047 __tmp280043))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp280042))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp280041
                                          _stx273069_))))
                                  (declare (not safe))
                                  (cons __tmp280040 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp280039 _kwset273136_))))
                    (declare (not safe))
                    (cons '%#begin __tmp280038))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp280037 '()))))
                                              (declare (not safe))
                                              (cons __tmp280049 __tmp280036))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp280035))))
                                (declare (not safe))
                                (cons __tmp280034 '()))))
                         (declare (not safe))
                         (cons _kwbind273131_ __tmp280033))))
                  (declare (not safe))
                  (cons '%#let-values __tmp280032))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp280031
                                                    _stx273069_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0
                                             __tmp280030)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g273088273097_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e273093273154_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g273088273097_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e273094273157_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g273088273097_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys273160_ _e273094273157_)
                               (_e273095273162_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g273088273097_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main273165_ _e273095273162_))
                          (declare (not safe))
                          (_K273092273151_ _main273165_ _keys273160_))
                        (let () (declare (not safe)) (_else273090273105_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self273071273079_
                 'gxc#!kw-lambda::t))
              (let* ((_e273075273170_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273071273079_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e273076273173_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273071273079_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table273176_ _e273076273173_)
                     (_e273077273178_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273071273079_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch273181_ _e273077273178_))
                (declare (not safe))
                (_K273074273167_ _dispatch273181_ _table273176_))
              (let () (declare (not safe)) (_E273073273083_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx272681_ _args272682_)
        (let _lp272684_ ((_rest272686_ _args272682_)
                         (_pargs272687_ '())
                         (_kwargs272688_ '()))
          (let* ((___stx279185279186_ _rest272686_)
                 (_g272694272746_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx279185279186_)))))
            (let ((___kont279187279188_
                   (lambda (_L272925_ _L272926_)
                     (let ((__tmp280070
                            (let ()
                              (declare (not safe))
                              (cons _L272926_ _pargs272687_))))
                       (declare (not safe))
                       (_lp272684_ _L272925_ __tmp280070 _kwargs272688_))))
                  (___kont279189279190_
                   (lambda (_L272871_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L272871_ _pargs272687_))
                             (reverse _kwargs272688_))))
                  (___kont279191279192_
                   (lambda (_L272818_ _L272819_ _L272820_)
                     (let ((_kw272837_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L272820_))))
                       (if (assq _kw272837_ _kwargs272688_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx272681_
                              _kw272837_))
                           (let ((__tmp280071
                                  (let ((__tmp280072
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw272837_ _L272819_))))
                                    (declare (not safe))
                                    (cons __tmp280072 _kwargs272688_))))
                             (declare (not safe))
                             (_lp272684_
                              _L272818_
                              _pargs272687_
                              __tmp280071))))))
                  (___kont279193279194_
                   (lambda (_L272766_ _L272767_)
                     (let ((__tmp280073
                            (let ()
                              (declare (not safe))
                              (cons _L272767_ _pargs272687_))))
                       (declare (not safe))
                       (_lp272684_ _L272766_ __tmp280073 _kwargs272688_))))
                  (___kont279195279196_
                   (lambda ()
                     (values (reverse _pargs272687_)
                             (reverse _kwargs272688_)))))
              (let* ((_g272693272753_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx279185279186_))
                            (___kont279195279196_)
                            (let () (declare (not safe)) (_g272694272746_)))))
                     (___match279292279293_
                      (lambda (_e272727272786_
                               _hd272726272789_
                               _tl272725272791_
                               _e272730272794_
                               _hd272729272797_
                               _tl272728272799_
                               _e272733272802_
                               _hd272732272805_
                               _tl272731272807_
                               _e272736272810_
                               _hd272735272813_
                               _tl272734272815_)
                        (let ((_L272818_ _tl272734272815_)
                              (_L272819_ _hd272735272813_)
                              (_L272820_ _hd272732272805_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L272820_))
                              (___kont279191279192_
                               _L272818_
                               _L272819_
                               _L272820_)
                              (___kont279193279194_
                               _tl272725272791_
                               _hd272726272789_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx279185279186_))
                    (let ((_e272700272890_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx279185279186_))))
                      (let ((_tl272698272895_
                             (let ()
                               (declare (not safe))
                               (##cdr _e272700272890_)))
                            (_hd272699272893_
                             (let ()
                               (declare (not safe))
                               (##car _e272700272890_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd272699272893_))
                            (let ((_e272703272898_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd272699272893_))))
                              (let ((_tl272701272903_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e272703272898_)))
                                    (_hd272702272901_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e272703272898_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd272702272901_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd272702272901_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl272701272903_))
                                            (let ((_e272706272906_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl272701272903_))))
                                              (let ((_tl272704272911_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e272706272906_)))
                                                    (_hd272705272909_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e272706272906_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd272705272909_))
                                                    (let ((_e272707272914_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd272705272909_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e272707272914_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl272704272911_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl272698272895_))
                          (let ((_e272710272917_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl272698272895_))))
                            (let ((_tl272708272922_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e272710272917_)))
                                  (_hd272709272920_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e272710272917_))))
                              (___kont279187279188_
                               _tl272708272922_
                               _hd272709272920_)))
                          (___kont279193279194_
                           _tl272698272895_
                           _hd272699272893_))
                      (___kont279193279194_ _tl272698272895_ _hd272699272893_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e272707272914_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl272704272911_))
                          (___kont279189279190_ _tl272698272895_)
                          (___kont279193279194_
                           _tl272698272895_
                           _hd272699272893_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl272704272911_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl272698272895_))
                              (let ((_e272736272810_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl272698272895_))))
                                (let ((_tl272734272815_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e272736272810_)))
                                      (_hd272735272813_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e272736272810_))))
                                  (___match279292279293_
                                   _e272700272890_
                                   _hd272699272893_
                                   _tl272698272895_
                                   _e272703272898_
                                   _hd272702272901_
                                   _tl272701272903_
                                   _e272706272906_
                                   _hd272705272909_
                                   _tl272704272911_
                                   _e272736272810_
                                   _hd272735272813_
                                   _tl272734272815_)))
                              (___kont279193279194_
                               _tl272698272895_
                               _hd272699272893_))
                          (___kont279193279194_
                           _tl272698272895_
                           _hd272699272893_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl272704272911_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl272698272895_))
                                                            (let ((_e272736272810_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl272698272895_))))
                      (let ((_tl272734272815_
                             (let ()
                               (declare (not safe))
                               (##cdr _e272736272810_)))
                            (_hd272735272813_
                             (let ()
                               (declare (not safe))
                               (##car _e272736272810_))))
                        (___match279292279293_
                         _e272700272890_
                         _hd272699272893_
                         _tl272698272895_
                         _e272703272898_
                         _hd272702272901_
                         _tl272701272903_
                         _e272706272906_
                         _hd272705272909_
                         _tl272704272911_
                         _e272736272810_
                         _hd272735272813_
                         _tl272734272815_)))
                    (___kont279193279194_ _tl272698272895_ _hd272699272893_))
                (___kont279193279194_ _tl272698272895_ _hd272699272893_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont279193279194_
                                             _tl272698272895_
                                             _hd272699272893_))
                                        (___kont279193279194_
                                         _tl272698272895_
                                         _hd272699272893_))
                                    (___kont279193279194_
                                     _tl272698272895_
                                     _hd272699272893_))))
                            (___kont279193279194_
                             _tl272698272895_
                             _hd272699272893_))))
                    (let () (declare (not safe)) (_g272693272753_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self272677_ _stx272678_ _args272679_)
        (let () (declare (not safe)) (gxc#xform-call% _stx272678_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
