(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1707616243)
  (begin
    (define gxc#&optimize-call
      (make-promise
       (lambda ()
         (let ((_tbl274549_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp279308 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl274549_ __tmp279308))
           (let ()
             (declare (not safe))
             (table-set! _tbl274549_ '%#call gxc#optimize-call%))
           _tbl274549_))))
    (define gxc#apply-optimize-call
      (lambda (_stx274532_ . _args274534_)
        (let ((__tmp279310
               (lambda ()
                 (declare (not safe))
                 (if (null? _args274534_)
                     (gxc#compile-e__0 _stx274532_)
                     (let ((_arg1274539_ (car _args274534_))
                           (_rest274541_ (cdr _args274534_)))
                       (if (null? _rest274541_)
                           (gxc#compile-e__1 _stx274532_ _arg1274539_)
                           (let ((_arg2274544_ (car _rest274541_))
                                 (_rest274546_ (cdr _rest274541_)))
                             (if (null? _rest274546_)
                                 (gxc#compile-e__2
                                  _stx274532_
                                  _arg1274539_
                                  _arg2274544_)
                                 (apply gxc#compile-e
                                        _stx274532_
                                        _arg1274539_
                                        _arg2274544_
                                        _rest274546_))))))))
              (__tmp279309 (force gxc#&optimize-call)))
          (declare (not safe))
          (call-with-parameters
           __tmp279310
           gxc#current-compile-methods
           __tmp279309))))
    (define gxc#optimize-call%
      (lambda (_stx274387_)
        (let* ((___stx279058279059_ _stx274387_)
               (_g274390274410_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx279058279059_)))))
          (let ((___kont279060279061_
                 (lambda (_L274454_ _L274455_)
                   (let* ((_rator-id274473_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L274455_)))
                          (_rator-type274475_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id274473_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type274475_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp279311
                                  (##structure-ref
                                   _rator-type274475_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id274473_
                              '" => "
                              _rator-type274475_
                              '" "
                              __tmp279311))
                           (let ((_optimized274478_
                                  (let ((__method279306
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type274475_
                                            'optimize-call))))
                                    (if __method279306
                                        (__method279306
                                         _rator-type274475_
                                         _stx274387_
                                         _L274454_)
                                        (error '"Missing method"
                                               _rator-type274475_
                                               'optimize-call)))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type274475_))
                                 _optimized274478_
                                 (let* ((___stx279040279041_ _optimized274478_)
                                        (_g274481274491_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx279040279041_)))))
                                   (let ((___kont279042279043_
                                          (lambda (_L274511_)
                                            (let ((__tmp279312
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L274511_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp279312
                                               _stx274387_))))
                                         (___kont279044279045_
                                          (lambda () _optimized274478_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx279040279041_))
                                         (let ((_e274486274503_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx279040279041_))))
                                           (let ((_tl274484274508_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e274486274503_)))
                                                 (_hd274485274506_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e274486274503_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd274485274506_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd274485274506_))
                                                     (___kont279042279043_
                                                      _tl274484274508_)
                                                     (___kont279044279045_))
                                                 (___kont279044279045_))))
                                         (___kont279044279045_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type274475_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx274387_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx274387_
                                _rator-type274475_)))))))
                (___kont279062279063_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _stx274387_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx279058279059_))
                (let ((_e274396274422_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx279058279059_))))
                  (let ((_tl274394274427_
                         (let () (declare (not safe)) (##cdr _e274396274422_)))
                        (_hd274395274425_
                         (let ()
                           (declare (not safe))
                           (##car _e274396274422_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl274394274427_))
                        (let ((_e274399274430_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl274394274427_))))
                          (let ((_tl274397274435_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e274399274430_)))
                                (_hd274398274433_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e274399274430_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd274398274433_))
                                (let ((_e274402274438_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd274398274433_))))
                                  (let ((_tl274400274443_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e274402274438_)))
                                        (_hd274401274441_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e274402274438_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd274401274441_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd274401274441_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl274400274443_))
                                                (let ((_e274405274446_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl274400274443_))))
                                                  (let ((_tl274403274451_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e274405274446_)))
                                                        (_hd274404274449_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e274405274446_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl274403274451_))
                                                        (___kont279060279061_
                                                         _tl274397274435_
                                                         _hd274404274449_)
                                                        (___kont279062279063_))))
                                                (___kont279062279063_))
                                            (___kont279062279063_))
                                        (___kont279062279063_))))
                                (___kont279062279063_))))
                        (___kont279062279063_))))
                (___kont279062279063_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self274341_ _stx274342_ _args274343_)
        (let* ((_g274345274355_
                (lambda (_g274346274352_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g274346274352_))))
               (_g274344274384_
                (lambda (_g274346274358_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g274346274358_))
                      (let ((_e274350274360_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g274346274358_))))
                        (let ((_hd274349274363_
                               (let ()
                                 (declare (not safe))
                                 (##car _e274350274360_)))
                              (_tl274348274365_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e274350274360_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl274348274365_))
                              ((lambda (_L274368_)
                                 (let* ((_klass274379_
                                         (let ((__tmp279313
                                                (##structure-ref
                                                 _self274341_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx274342_
                                            __tmp279313)))
                                        (_object274381_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L274368_))))
                                   (if (##structure-ref
                                        _klass274379_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp279329
                                              (let ((__tmp279330
                                                     (let ((__tmp279332
                                                            (let ((__tmp279333
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279334
                                  (##structure-ref
                                   _klass274379_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp279334 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp279333)))
                   (__tmp279331
                    (let () (declare (not safe)) (cons _object274381_ '()))))
               (declare (not safe))
               (cons __tmp279332 __tmp279331))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp279330))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp279329
                                          _stx274342_))
                                       (if (##structure-ref
                                            _klass274379_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp279323
                                                  (let ((__tmp279324
                                                         (let ((__tmp279326
                                                                (let ((__tmp279327
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp279328
                                      (##structure-ref
                                       _klass274379_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp279328 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp279327)))
                       (__tmp279325
                        (let ()
                          (declare (not safe))
                          (cons _object274381_ '()))))
                   (declare (not safe))
                   (cons __tmp279326 __tmp279325))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp279324))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp279323
                                              _stx274342_))
                                           (let ((__tmp279314
                                                  (let ((__tmp279315
                                                         (let ((__tmp279321
                                                                (let ((__tmp279322
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp279322)))
                       (__tmp279316
                        (let ((__tmp279318
                               (let ((__tmp279319
                                      (let ((__tmp279320
                                             (##structure-ref
                                              _self274341_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp279320 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp279319)))
                              (__tmp279317
                               (let ()
                                 (declare (not safe))
                                 (cons _object274381_ '()))))
                          (declare (not safe))
                          (cons __tmp279318 __tmp279317))))
                   (declare (not safe))
                   (cons __tmp279321 __tmp279316))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp279315))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp279314
                                              _stx274342_))))))
                               _hd274349274363_)
                              (let ()
                                (declare (not safe))
                                (_g274345274355_ _g274346274358_)))))
                      (let ()
                        (declare (not safe))
                        (_g274345274355_ _g274346274358_))))))
          (declare (not safe))
          (_g274344274384_ _args274343_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__t279019)
        (let ((__id279020
               (let ((__tmp279021
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t279019 'id))))
                 (if __tmp279021 __tmp279021 (error '"Unknown slot" 'id)))))
          (lambda (_self274341_ _stx274342_ _args274343_)
            (let* ((_g274345274355_
                    (lambda (_g274346274352_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g274346274352_))))
                   (_g274344274384_
                    (lambda (_g274346274358_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g274346274358_))
                          (let ((_e274350274360_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g274346274358_))))
                            (let ((_hd274349274363_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e274350274360_)))
                                  (_tl274348274365_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e274350274360_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl274348274365_))
                                  ((lambda (_L274368_)
                                     (let* ((_klass274379_
                                             (let ((__tmp279335
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self274341_
                                                       __id279020
                                                       __t279019
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx274342_
                                                __tmp279335)))
                                            (_object274381_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L274368_))))
                                       (if (##structure-ref
                                            _klass274379_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp279351
                                                  (let ((__tmp279352
                                                         (let ((__tmp279354
                                                                (let ((__tmp279355
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp279356
                                      (##structure-ref
                                       _klass274379_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp279356 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp279355)))
                       (__tmp279353
                        (let ()
                          (declare (not safe))
                          (cons _object274381_ '()))))
                   (declare (not safe))
                   (cons __tmp279354 __tmp279353))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp279352))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp279351
                                              _stx274342_))
                                           (if (##structure-ref
                                                _klass274379_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp279345
                                                      (let ((__tmp279346
                                                             (let ((__tmp279348
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp279349
                                   (let ((__tmp279350
                                          (##structure-ref
                                           _klass274379_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp279350 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp279349)))
                           (__tmp279347
                            (let ()
                              (declare (not safe))
                              (cons _object274381_ '()))))
                       (declare (not safe))
                       (cons __tmp279348 __tmp279347))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp279346))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp279345
                                                  _stx274342_))
                                               (let ((__tmp279336
                                                      (let ((__tmp279337
                                                             (let ((__tmp279343
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp279344
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp279344)))
                           (__tmp279338
                            (let ((__tmp279340
                                   (let ((__tmp279341
                                          (let ((__tmp279342
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self274341_
                                                    __id279020
                                                    __t279019
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp279342 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp279341)))
                                  (__tmp279339
                                   (let ()
                                     (declare (not safe))
                                     (cons _object274381_ '()))))
                              (declare (not safe))
                              (cons __tmp279340 __tmp279339))))
                       (declare (not safe))
                       (cons __tmp279343 __tmp279338))))
                (declare (not safe))
                (cons '%#call __tmp279337))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp279336
                                                  _stx274342_))))))
                                   _hd274349274363_)
                                  (let ()
                                    (declare (not safe))
                                    (_g274345274355_ _g274346274358_)))))
                          (let ()
                            (declare (not safe))
                            (_g274345274355_ _g274346274358_))))))
              (declare (not safe))
              (_g274344274384_ _args274343_))))))
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
      (lambda (_self274072_ _stx274073_ _args274074_)
        (let* ((_klass274076_
                (let ((__tmp279357
                       (##structure-ref _self274072_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx274073_ __tmp279357)))
               (_fields274078_
                (length (##structure-ref _klass274076_ '5 gxc#!class::t '#f)))
               (_args274080_ (map gxc#compile-e _args274074_))
               (_inline-make-object274082_
                (let ((__tmp279358
                       (let ((__tmp279364
                              (let ((__tmp279365
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp279365)))
                             (__tmp279359
                              (let ((__tmp279361
                                     (let ((__tmp279362
                                            (let ((__tmp279363
                                                   (##structure-ref
                                                    _self274072_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp279363 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp279362)))
                                    (__tmp279360
                                     (make-list _fields274078_ '(%#quote #f))))
                                (declare (not safe))
                                (cons __tmp279361 __tmp279360))))
                         (declare (not safe))
                         (cons __tmp279364 __tmp279359))))
                  (declare (not safe))
                  (cons '%#call __tmp279358))))
          (let ((_$e274085_
                 (##structure-ref _klass274076_ '6 gxc#!class::t '#f)))
            (if _$e274085_
                ((lambda (_ctor274088_)
                   (let ((_$obj274090_
                          (let ((__tmp279427 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp279427)))
                         (_ctor-impl274091_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass274076_
                             _ctor274088_))))
                     (let ((__tmp279428
                            (let ((__tmp279429
                                   (let ((__tmp279494
                                          (let ((__tmp279495
                                                 (let ((__tmp279497
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj274090_
                                                                '())))
                                                       (__tmp279496
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object274082_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp279497
                                                         __tmp279496))))
                                            (declare (not safe))
                                            (cons __tmp279495 '())))
                                         (__tmp279430
                                          (let ((__tmp279431
                                                 (let ((__tmp279432
                                                        (let ((__tmp279436
                                                               (if _ctor-impl274091_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279488
                                  (let ((__tmp279492
                                         (let ((__tmp279493
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl274091_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp279493)))
                                        (__tmp279489
                                         (let ((__tmp279490
                                                (let ((__tmp279491
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj274090_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp279491))))
                                           (declare (not safe))
                                           (cons __tmp279490 _args274080_))))
                                    (declare (not safe))
                                    (cons __tmp279492 __tmp279489))))
                             (declare (not safe))
                             (cons '%#call __tmp279488))
                           (let* ((_$ctor274093_
                                   (let ((__tmp279437 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp279437)))
                                  (__tmp279438
                                   (let ((__tmp279473
                                          (let ((__tmp279474
                                                 (let ((__tmp279487
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor274093_
                                                                '())))
                                                       (__tmp279475
                                                        (let ((__tmp279476
                                                               (let ((__tmp279477
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp279485
                                     (let ((__tmp279486
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp279486)))
                                    (__tmp279478
                                     (let ((__tmp279482
                                            (let ((__tmp279483
                                                   (let ((__tmp279484
                                                          (##structure-ref
                                                           _self274072_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp279484 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp279483)))
                                           (__tmp279479
                                            (let ((__tmp279480
                                                   (let ((__tmp279481
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _ctor274088_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#quote
                                                           __tmp279481))))
                                              (declare (not safe))
                                              (cons __tmp279480 '()))))
                                       (declare (not safe))
                                       (cons __tmp279482 __tmp279479))))
                                (declare (not safe))
                                (cons __tmp279485 __tmp279478))))
                         (declare (not safe))
                         (cons '%#call __tmp279477))))
                  (declare (not safe))
                  (cons __tmp279476 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279487
                                                         __tmp279475))))
                                            (declare (not safe))
                                            (cons __tmp279474 '())))
                                         (__tmp279439
                                          (let ((__tmp279440
                                                 (let ((__tmp279441
                                                        (let ((__tmp279471
                                                               (let ((__tmp279472
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor274093_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp279472)))
                      (__tmp279442
                       (let ((__tmp279464
                              (let ((__tmp279465
                                     (let ((__tmp279469
                                            (let ((__tmp279470
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor274093_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp279470)))
                                           (__tmp279466
                                            (let ((__tmp279467
                                                   (let ((__tmp279468
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj274090_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp279468))))
                                              (declare (not safe))
                                              (cons __tmp279467
                                                    _args274080_))))
                                       (declare (not safe))
                                       (cons __tmp279469 __tmp279466))))
                                (declare (not safe))
                                (cons '%#call __tmp279465)))
                             (__tmp279443
                              (let ((__tmp279444
                                     (let ((__tmp279445
                                            (let ((__tmp279462
                                                   (let ((__tmp279463
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp279463)))
                                                  (__tmp279446
                                                   (let ((__tmp279460
                                                          (let ((__tmp279461
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp279461)))
                 (__tmp279447
                  (let ((__tmp279458
                         (let ((__tmp279459
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp279459)))
                        (__tmp279448
                         (let ((__tmp279455
                                (let ((__tmp279456
                                       (let ((__tmp279457
                                              (##structure-ref
                                               _self274072_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp279457 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp279456)))
                               (__tmp279449
                                (let ((__tmp279453
                                       (let ((__tmp279454
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp279454)))
                                      (__tmp279450
                                       (let ((__tmp279451
                                              (let ((__tmp279452
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor274088_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp279452))))
                                         (declare (not safe))
                                         (cons __tmp279451 '()))))
                                  (declare (not safe))
                                  (cons __tmp279453 __tmp279450))))
                           (declare (not safe))
                           (cons __tmp279455 __tmp279449))))
                    (declare (not safe))
                    (cons __tmp279458 __tmp279448))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp279460
                                                           __tmp279447))))
                                              (declare (not safe))
                                              (cons __tmp279462 __tmp279446))))
                                       (declare (not safe))
                                       (cons '%#call __tmp279445))))
                                (declare (not safe))
                                (cons __tmp279444 '()))))
                         (declare (not safe))
                         (cons __tmp279464 __tmp279443))))
                  (declare (not safe))
                  (cons __tmp279471 __tmp279442))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp279441))))
                                            (declare (not safe))
                                            (cons __tmp279440 '()))))
                                     (declare (not safe))
                                     (cons __tmp279473 __tmp279439))))
                             (declare (not safe))
                             (cons '%#let-values __tmp279438))))
                      (__tmp279433
                       (let ((__tmp279434
                              (let ((__tmp279435
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj274090_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp279435))))
                         (declare (not safe))
                         (cons __tmp279434 '()))))
                  (declare (not safe))
                  (cons __tmp279436 __tmp279433))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp279432))))
                                            (declare (not safe))
                                            (cons __tmp279431 '()))))
                                     (declare (not safe))
                                     (cons __tmp279494 __tmp279430))))
                              (declare (not safe))
                              (cons '%#let-values __tmp279429))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp279428 _stx274073_))))
                 _$e274085_)
                (if (##structure-ref _klass274076_ '7 gxc#!class::t '#f)
                    (if (fx= (length _args274080_) _fields274078_)
                        (let ((__tmp279419
                               (let ((__tmp279420
                                      (let ((__tmp279425
                                             (let ((__tmp279426
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '##structure
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp279426)))
                                            (__tmp279421
                                             (let ((__tmp279422
                                                    (let ((__tmp279423
                                                           (let ((__tmp279424
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##structure-ref _self274072_ '1 gxc#!type::t '#f)))
                     (declare (not safe))
                     (cons __tmp279424 '()))))
              (declare (not safe))
              (cons '%#ref __tmp279423))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp279422
                                                     _args274080_))))
                                        (declare (not safe))
                                        (cons __tmp279425 __tmp279421))))
                                 (declare (not safe))
                                 (cons '%#call __tmp279420))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp279419 _stx274073_))
                        (let ((__tmp279418
                               (##structure-ref
                                _self274072_
                                '1
                                gxc#!type::t
                                '#f))
                              (__tmp279417
                               (length (##structure-ref
                                        _klass274076_
                                        '5
                                        gxc#!class::t
                                        '#f))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"illegal struct constructor application; arity mismatch"
                           _stx274073_
                           __tmp279418
                           __tmp279417)))
                    (let ((_$obj274095_
                           (let ((__tmp279366 (gensym '__obj)))
                             (declare (not safe))
                             (make-symbol__0 __tmp279366))))
                      (let _lp274097_ ((_rest274099_ _args274080_)
                                       (_initializers274100_ '()))
                        (let* ((___stx279096279097_ _rest274099_)
                               (_g274104274125_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     ___stx279096279097_)))))
                          (let ((___kont279098279099_
                                 (lambda (_L274179_ _L274180_ _L274181_)
                                   (let* ((_slot274211_
                                           (keyword->symbol
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _L274181_))))
                                          (_off274213_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!class-slot->field-offset
                                              _klass274076_
                                              _slot274211_))))
                                     (if _off274213_
                                         (let ((__tmp279368
                                                (let ((__tmp279369
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _off274213_
                                                               _L274180_))))
                                                  (declare (not safe))
                                                  (cons __tmp279369
                                                        _initializers274100_))))
                                           (declare (not safe))
                                           (_lp274097_ _L274179_ __tmp279368))
                                         (let ((__tmp279367
                                                (##structure-ref
                                                 _self274072_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#raise-compile-error
                                            '"unknown slot"
                                            _stx274073_
                                            __tmp279367
                                            _slot274211_))))))
                                (___kont279100279101_
                                 (lambda ()
                                   (let ((__tmp279370
                                          (let ((__tmp279371
                                                 (let ((__tmp279394
                                                        (let ((__tmp279395
                                                               (let ((__tmp279397
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$obj274095_ '())))
                             (__tmp279396
                              (let ()
                                (declare (not safe))
                                (cons _inline-make-object274082_ '()))))
                         (declare (not safe))
                         (cons __tmp279397 __tmp279396))))
                  (declare (not safe))
                  (cons __tmp279395 '())))
               (__tmp279372
                (let ((__tmp279373
                       (let ((__tmp279374
                              (let ((__tmp279391
                                     (let ((__tmp279392
                                            (let ((__tmp279393
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$obj274095_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp279393))))
                                       (declare (not safe))
                                       (cons __tmp279392 '())))
                                    (__tmp279375
                                     (let ((__tmp279376
                                            (lambda (_i274139_ _r274140_)
                                              (let ((__tmp279377
                                                     (let ((__tmp279378
                                                            (let ((__tmp279388
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279389
                                  (let ((__tmp279390
                                         (##structure-ref
                                          _self274072_
                                          '1
                                          gxc#!type::t
                                          '#f)))
                                    (declare (not safe))
                                    (cons __tmp279390 '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp279389)))
                          (__tmp279379
                           (let ((__tmp279385
                                  (let ((__tmp279386
                                         (let ((__tmp279387 (car _i274139_)))
                                           (declare (not safe))
                                           (cons __tmp279387 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp279386)))
                                 (__tmp279380
                                  (let ((__tmp279383
                                         (let ((__tmp279384
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj274095_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp279384)))
                                        (__tmp279381
                                         (let ((__tmp279382 (cdr _i274139_)))
                                           (declare (not safe))
                                           (cons __tmp279382 '()))))
                                    (declare (not safe))
                                    (cons __tmp279383 __tmp279381))))
                             (declare (not safe))
                             (cons __tmp279385 __tmp279380))))
                      (declare (not safe))
                      (cons __tmp279388 __tmp279379))))
               (declare (not safe))
               (cons '%#struct-unchecked-set! __tmp279378))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp279377
                                                      _r274140_)))))
                                       (declare (not safe))
                                       (foldl1 __tmp279376
                                               '()
                                               _initializers274100_))))
                                (declare (not safe))
                                (foldr1 cons __tmp279391 __tmp279375))))
                         (declare (not safe))
                         (cons '%#begin __tmp279374))))
                  (declare (not safe))
                  (cons __tmp279373 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279394
                                                         __tmp279372))))
                                            (declare (not safe))
                                            (cons '%#let-values __tmp279371))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp279370
                                      _stx274073_))))
                                (___kont279102279103_
                                 (lambda ()
                                   (let ((__tmp279398
                                          (let ((__tmp279399
                                                 (let ((__tmp279413
                                                        (let ((__tmp279414
                                                               (let ((__tmp279416
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$obj274095_ '())))
                             (__tmp279415
                              (let ()
                                (declare (not safe))
                                (cons _inline-make-object274082_ '()))))
                         (declare (not safe))
                         (cons __tmp279416 __tmp279415))))
                  (declare (not safe))
                  (cons __tmp279414 '())))
               (__tmp279400
                (let ((__tmp279401
                       (let ((__tmp279402
                              (let ((__tmp279406
                                     (let ((__tmp279407
                                            (let ((__tmp279411
                                                   (let ((__tmp279412
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'class-instance-init!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp279412)))
                                                  (__tmp279408
                                                   (let ((__tmp279409
                                                          (let ((__tmp279410
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj274095_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp279410))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp279409
                                                           _args274080_))))
                                              (declare (not safe))
                                              (cons __tmp279411 __tmp279408))))
                                       (declare (not safe))
                                       (cons '%#call __tmp279407)))
                                    (__tmp279403
                                     (let ((__tmp279404
                                            (let ((__tmp279405
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$obj274095_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp279405))))
                                       (declare (not safe))
                                       (cons __tmp279404 '()))))
                                (declare (not safe))
                                (cons __tmp279406 __tmp279403))))
                         (declare (not safe))
                         (cons '%#begin __tmp279402))))
                  (declare (not safe))
                  (cons __tmp279401 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279413
                                                         __tmp279400))))
                                            (declare (not safe))
                                            (cons '%#let-values __tmp279399))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp279398
                                      _stx274073_)))))
                            (let* ((_g274102274142_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? ___stx279096279097_))
                                          (___kont279100279101_)
                                          (___kont279102279103_))))
                                   (___match279133279134_
                                    (lambda (_e274111274147_
                                             _hd274110274150_
                                             _tl274109274152_
                                             _e274114274155_
                                             _hd274113274158_
                                             _tl274112274160_
                                             _e274117274163_
                                             _hd274116274166_
                                             _tl274115274168_
                                             _e274120274171_
                                             _hd274119274174_
                                             _tl274118274176_)
                                      (let ((_L274179_ _tl274118274176_)
                                            (_L274180_ _hd274119274174_)
                                            (_L274181_ _hd274116274166_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-keyword? _L274181_))
                                            (___kont279098279099_
                                             _L274179_
                                             _L274180_
                                             _L274181_)
                                            (___kont279102279103_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? ___stx279096279097_))
                                  (let ((_e274111274147_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e ___stx279096279097_))))
                                    (let ((_tl274109274152_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e274111274147_)))
                                          (_hd274110274150_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e274111274147_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd274110274150_))
                                          (let ((_e274114274155_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd274110274150_))))
                                            (let ((_tl274112274160_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e274114274155_)))
                                                  (_hd274113274158_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e274114274155_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd274113274158_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#quote
                                                         _hd274113274158_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl274112274160_))
                                                          (let ((_e274117274163_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl274112274160_))))
                    (let ((_tl274115274168_
                           (let ()
                             (declare (not safe))
                             (##cdr _e274117274163_)))
                          (_hd274116274166_
                           (let ()
                             (declare (not safe))
                             (##car _e274117274163_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl274115274168_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl274109274152_))
                              (let ((_e274120274171_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl274109274152_))))
                                (let ((_tl274118274176_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e274120274171_)))
                                      (_hd274119274174_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e274120274171_))))
                                  (___match279133279134_
                                   _e274111274147_
                                   _hd274110274150_
                                   _tl274109274152_
                                   _e274114274155_
                                   _hd274113274158_
                                   _tl274112274160_
                                   _e274117274163_
                                   _hd274116274166_
                                   _tl274115274168_
                                   _e274120274171_
                                   _hd274119274174_
                                   _tl274118274176_)))
                              (___kont279102279103_))
                          (___kont279102279103_))))
                  (___kont279102279103_))
              (___kont279102279103_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont279102279103_))))
                                          (___kont279102279103_))))
                                  (let ()
                                    (declare (not safe))
                                    (_g274102274142_))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__t279022)
        (let ((__id279023
               (let ((__tmp279024
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t279022 'id))))
                 (if __tmp279024 __tmp279024 (error '"Unknown slot" 'id)))))
          (lambda (_self274072_ _stx274073_ _args274074_)
            (let* ((_klass274076_
                    (let ((__tmp279498
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self274072_
                              __id279023
                              __t279022
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx274073_ __tmp279498)))
                   (_fields274078_
                    (length (##structure-ref
                             _klass274076_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args274080_ (map gxc#compile-e _args274074_))
                   (_inline-make-object274082_
                    (let ((__tmp279499
                           (let ((__tmp279505
                                  (let ((__tmp279506
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp279506)))
                                 (__tmp279500
                                  (let ((__tmp279502
                                         (let ((__tmp279503
                                                (let ((__tmp279504
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self274072_
                                                          __id279023
                                                          __t279022
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp279504 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp279503)))
                                        (__tmp279501
                                         (make-list
                                          _fields274078_
                                          '(%#quote #f))))
                                    (declare (not safe))
                                    (cons __tmp279502 __tmp279501))))
                             (declare (not safe))
                             (cons __tmp279505 __tmp279500))))
                      (declare (not safe))
                      (cons '%#call __tmp279499))))
              (let ((_$e274085_
                     (##structure-ref _klass274076_ '6 gxc#!class::t '#f)))
                (if _$e274085_
                    ((lambda (_ctor274088_)
                       (let ((_$obj274090_
                              (let ((__tmp279568 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp279568)))
                             (_ctor-impl274091_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass274076_
                                 _ctor274088_))))
                         (let ((__tmp279569
                                (let ((__tmp279570
                                       (let ((__tmp279635
                                              (let ((__tmp279636
                                                     (let ((__tmp279638
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj274090_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp279637
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object274082_ '()))))
               (declare (not safe))
               (cons __tmp279638 __tmp279637))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp279636 '())))
                                             (__tmp279571
                                              (let ((__tmp279572
                                                     (let ((__tmp279573
                                                            (let ((__tmp279577
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl274091_
                               (let ((__tmp279629
                                      (let ((__tmp279633
                                             (let ((__tmp279634
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl274091_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp279634)))
                                            (__tmp279630
                                             (let ((__tmp279631
                                                    (let ((__tmp279632
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj274090_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp279632))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp279631
                                                     _args274080_))))
                                        (declare (not safe))
                                        (cons __tmp279633 __tmp279630))))
                                 (declare (not safe))
                                 (cons '%#call __tmp279629))
                               (let* ((_$ctor274093_
                                       (let ((__tmp279578
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp279578)))
                                      (__tmp279579
                                       (let ((__tmp279614
                                              (let ((__tmp279615
                                                     (let ((__tmp279628
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor274093_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp279616
                    (let ((__tmp279617
                           (let ((__tmp279618
                                  (let ((__tmp279626
                                         (let ((__tmp279627
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp279627)))
                                        (__tmp279619
                                         (let ((__tmp279623
                                                (let ((__tmp279624
                                                       (let ((__tmp279625
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self274072_
                         __id279023
                         __t279022
                         '#f))))
                 (declare (not safe))
                 (cons __tmp279625 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp279624)))
                                               (__tmp279620
                                                (let ((__tmp279621
                                                       (let ((__tmp279622
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _ctor274088_ '()))))
                 (declare (not safe))
                 (cons '%#quote __tmp279622))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp279621 '()))))
                                           (declare (not safe))
                                           (cons __tmp279623 __tmp279620))))
                                    (declare (not safe))
                                    (cons __tmp279626 __tmp279619))))
                             (declare (not safe))
                             (cons '%#call __tmp279618))))
                      (declare (not safe))
                      (cons __tmp279617 '()))))
               (declare (not safe))
               (cons __tmp279628 __tmp279616))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp279615 '())))
                                             (__tmp279580
                                              (let ((__tmp279581
                                                     (let ((__tmp279582
                                                            (let ((__tmp279612
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279613
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor274093_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp279613)))
                          (__tmp279583
                           (let ((__tmp279605
                                  (let ((__tmp279606
                                         (let ((__tmp279610
                                                (let ((__tmp279611
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor274093_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp279611)))
                                               (__tmp279607
                                                (let ((__tmp279608
                                                       (let ((__tmp279609
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj274090_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp279609))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp279608
                                                        _args274080_))))
                                           (declare (not safe))
                                           (cons __tmp279610 __tmp279607))))
                                    (declare (not safe))
                                    (cons '%#call __tmp279606)))
                                 (__tmp279584
                                  (let ((__tmp279585
                                         (let ((__tmp279586
                                                (let ((__tmp279603
                                                       (let ((__tmp279604
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp279604)))
              (__tmp279587
               (let ((__tmp279601
                      (let ((__tmp279602
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp279602)))
                     (__tmp279588
                      (let ((__tmp279599
                             (let ((__tmp279600
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp279600)))
                            (__tmp279589
                             (let ((__tmp279596
                                    (let ((__tmp279597
                                           (let ((__tmp279598
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self274072_
                                                     __id279023
                                                     __t279022
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp279598 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp279597)))
                                   (__tmp279590
                                    (let ((__tmp279594
                                           (let ((__tmp279595
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp279595)))
                                          (__tmp279591
                                           (let ((__tmp279592
                                                  (let ((__tmp279593
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor274088_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp279593))))
                                             (declare (not safe))
                                             (cons __tmp279592 '()))))
                                      (declare (not safe))
                                      (cons __tmp279594 __tmp279591))))
                               (declare (not safe))
                               (cons __tmp279596 __tmp279590))))
                        (declare (not safe))
                        (cons __tmp279599 __tmp279589))))
                 (declare (not safe))
                 (cons __tmp279601 __tmp279588))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp279603
                                                        __tmp279587))))
                                           (declare (not safe))
                                           (cons '%#call __tmp279586))))
                                    (declare (not safe))
                                    (cons __tmp279585 '()))))
                             (declare (not safe))
                             (cons __tmp279605 __tmp279584))))
                      (declare (not safe))
                      (cons __tmp279612 __tmp279583))))
               (declare (not safe))
               (cons '%#if __tmp279582))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp279581 '()))))
                                         (declare (not safe))
                                         (cons __tmp279614 __tmp279580))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp279579))))
                          (__tmp279574
                           (let ((__tmp279575
                                  (let ((__tmp279576
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj274090_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp279576))))
                             (declare (not safe))
                             (cons __tmp279575 '()))))
                      (declare (not safe))
                      (cons __tmp279577 __tmp279574))))
               (declare (not safe))
               (cons '%#begin __tmp279573))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp279572 '()))))
                                         (declare (not safe))
                                         (cons __tmp279635 __tmp279571))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp279570))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp279569 _stx274073_))))
                     _$e274085_)
                    (if (##structure-ref _klass274076_ '7 gxc#!class::t '#f)
                        (if (fx= (length _args274080_) _fields274078_)
                            (let ((__tmp279560
                                   (let ((__tmp279561
                                          (let ((__tmp279566
                                                 (let ((__tmp279567
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons '##structure
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp279567)))
                                                (__tmp279562
                                                 (let ((__tmp279563
                                                        (let ((__tmp279564
                                                               (let ((__tmp279565
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self274072_
                                 __id279023
                                 __t279022
                                 '#f))))
                         (declare (not safe))
                         (cons __tmp279565 '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp279564))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279563
                                                         _args274080_))))
                                            (declare (not safe))
                                            (cons __tmp279566 __tmp279562))))
                                     (declare (not safe))
                                     (cons '%#call __tmp279561))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp279560 _stx274073_))
                            (let ((__tmp279559
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _self274072_
                                      __id279023
                                      __t279022
                                      '#f)))
                                  (__tmp279558
                                   (length (##structure-ref
                                            _klass274076_
                                            '5
                                            gxc#!class::t
                                            '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _stx274073_
                               __tmp279559
                               __tmp279558)))
                        (let ((_$obj274095_
                               (let ((__tmp279507 (gensym '__obj)))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp279507))))
                          (let _lp274097_ ((_rest274099_ _args274080_)
                                           (_initializers274100_ '()))
                            (let* ((___stx279138279139_ _rest274099_)
                                   (_g274104274125_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         ___stx279138279139_)))))
                              (let ((___kont279140279141_
                                     (lambda (_L274179_ _L274180_ _L274181_)
                                       (let* ((_slot274211_
                                               (keyword->symbol
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L274181_))))
                                              (_off274213_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _klass274076_
                                                  _slot274211_))))
                                         (if _off274213_
                                             (let ((__tmp279509
                                                    (let ((__tmp279510
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _off274213_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L274180_))))
              (declare (not safe))
              (cons __tmp279510 _initializers274100_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_lp274097_
                                                _L274179_
                                                __tmp279509))
                                             (let ((__tmp279508
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self274072_
                                                       __id279023
                                                       __t279022
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _stx274073_
                                                __tmp279508
                                                _slot274211_))))))
                                    (___kont279142279143_
                                     (lambda ()
                                       (let ((__tmp279511
                                              (let ((__tmp279512
                                                     (let ((__tmp279535
                                                            (let ((__tmp279536
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279538
                                  (let ()
                                    (declare (not safe))
                                    (cons _$obj274095_ '())))
                                 (__tmp279537
                                  (let ()
                                    (declare (not safe))
                                    (cons _inline-make-object274082_ '()))))
                             (declare (not safe))
                             (cons __tmp279538 __tmp279537))))
                      (declare (not safe))
                      (cons __tmp279536 '())))
                   (__tmp279513
                    (let ((__tmp279514
                           (let ((__tmp279515
                                  (let ((__tmp279532
                                         (let ((__tmp279533
                                                (let ((__tmp279534
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj274095_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp279534))))
                                           (declare (not safe))
                                           (cons __tmp279533 '())))
                                        (__tmp279516
                                         (let ((__tmp279517
                                                (lambda (_i274139_ _r274140_)
                                                  (let ((__tmp279518
                                                         (let ((__tmp279519
                                                                (let ((__tmp279529
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp279530
                                      (let ((__tmp279531
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _self274072_
                                                __id279023
                                                __t279022
                                                '#f))))
                                        (declare (not safe))
                                        (cons __tmp279531 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp279530)))
                              (__tmp279520
                               (let ((__tmp279526
                                      (let ((__tmp279527
                                             (let ((__tmp279528
                                                    (car _i274139_)))
                                               (declare (not safe))
                                               (cons __tmp279528 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp279527)))
                                     (__tmp279521
                                      (let ((__tmp279524
                                             (let ((__tmp279525
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj274095_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp279525)))
                                            (__tmp279522
                                             (let ((__tmp279523
                                                    (cdr _i274139_)))
                                               (declare (not safe))
                                               (cons __tmp279523 '()))))
                                        (declare (not safe))
                                        (cons __tmp279524 __tmp279522))))
                                 (declare (not safe))
                                 (cons __tmp279526 __tmp279521))))
                          (declare (not safe))
                          (cons __tmp279529 __tmp279520))))
                   (declare (not safe))
                   (cons '%#struct-unchecked-set! __tmp279519))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp279518
                                                          _r274140_)))))
                                           (declare (not safe))
                                           (foldl1 __tmp279517
                                                   '()
                                                   _initializers274100_))))
                                    (declare (not safe))
                                    (foldr1 cons __tmp279532 __tmp279516))))
                             (declare (not safe))
                             (cons '%#begin __tmp279515))))
                      (declare (not safe))
                      (cons __tmp279514 '()))))
               (declare (not safe))
               (cons __tmp279535 __tmp279513))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#let-values
                                                      __tmp279512))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp279511
                                          _stx274073_))))
                                    (___kont279144279145_
                                     (lambda ()
                                       (let ((__tmp279539
                                              (let ((__tmp279540
                                                     (let ((__tmp279554
                                                            (let ((__tmp279555
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279557
                                  (let ()
                                    (declare (not safe))
                                    (cons _$obj274095_ '())))
                                 (__tmp279556
                                  (let ()
                                    (declare (not safe))
                                    (cons _inline-make-object274082_ '()))))
                             (declare (not safe))
                             (cons __tmp279557 __tmp279556))))
                      (declare (not safe))
                      (cons __tmp279555 '())))
                   (__tmp279541
                    (let ((__tmp279542
                           (let ((__tmp279543
                                  (let ((__tmp279547
                                         (let ((__tmp279548
                                                (let ((__tmp279552
                                                       (let ((__tmp279553
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'class-instance-init! '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp279553)))
              (__tmp279549
               (let ((__tmp279550
                      (let ((__tmp279551
                             (let ()
                               (declare (not safe))
                               (cons _$obj274095_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp279551))))
                 (declare (not safe))
                 (cons __tmp279550 _args274080_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp279552
                                                        __tmp279549))))
                                           (declare (not safe))
                                           (cons '%#call __tmp279548)))
                                        (__tmp279544
                                         (let ((__tmp279545
                                                (let ((__tmp279546
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj274095_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp279546))))
                                           (declare (not safe))
                                           (cons __tmp279545 '()))))
                                    (declare (not safe))
                                    (cons __tmp279547 __tmp279544))))
                             (declare (not safe))
                             (cons '%#begin __tmp279543))))
                      (declare (not safe))
                      (cons __tmp279542 '()))))
               (declare (not safe))
               (cons __tmp279554 __tmp279541))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#let-values
                                                      __tmp279540))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp279539
                                          _stx274073_)))))
                                (let* ((_g274102274142_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 ___stx279138279139_))
                                              (___kont279142279143_)
                                              (___kont279144279145_))))
                                       (___match279175279176_
                                        (lambda (_e274111274147_
                                                 _hd274110274150_
                                                 _tl274109274152_
                                                 _e274114274155_
                                                 _hd274113274158_
                                                 _tl274112274160_
                                                 _e274117274163_
                                                 _hd274116274166_
                                                 _tl274115274168_
                                                 _e274120274171_
                                                 _hd274119274174_
                                                 _tl274118274176_)
                                          (let ((_L274179_ _tl274118274176_)
                                                (_L274180_ _hd274119274174_)
                                                (_L274181_ _hd274116274166_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword? _L274181_))
                                                (___kont279140279141_
                                                 _L274179_
                                                 _L274180_
                                                 _L274181_)
                                                (___kont279144279145_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? ___stx279138279139_))
                                      (let ((_e274111274147_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                ___stx279138279139_))))
                                        (let ((_tl274109274152_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e274111274147_)))
                                              (_hd274110274150_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e274111274147_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd274110274150_))
                                              (let ((_e274114274155_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd274110274150_))))
                                                (let ((_tl274112274160_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e274114274155_)))
                                                      (_hd274113274158_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e274114274155_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd274113274158_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _hd274113274158_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl274112274160_))
                      (let ((_e274117274163_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl274112274160_))))
                        (let ((_tl274115274168_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e274117274163_)))
                              (_hd274116274166_
                               (let ()
                                 (declare (not safe))
                                 (##car _e274117274163_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl274115274168_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl274109274152_))
                                  (let ((_e274120274171_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl274109274152_))))
                                    (let ((_tl274118274176_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e274120274171_)))
                                          (_hd274119274174_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e274120274171_))))
                                      (___match279175279176_
                                       _e274111274147_
                                       _hd274110274150_
                                       _tl274109274152_
                                       _e274114274155_
                                       _hd274113274158_
                                       _tl274112274160_
                                       _e274117274163_
                                       _hd274116274166_
                                       _tl274115274168_
                                       _e274120274171_
                                       _hd274119274174_
                                       _tl274118274176_)))
                                  (___kont279144279145_))
                              (___kont279144279145_))))
                      (___kont279144279145_))
                  (___kont279144279145_))
              (___kont279144279145_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont279144279145_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g274102274142_))))))))))))))))
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
      (lambda (_self273895_ _stx273896_ _args273897_)
        (let* ((_g273899273909_
                (lambda (_g273900273906_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g273900273906_))))
               (_g273898273947_
                (lambda (_g273900273912_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g273900273912_))
                      (let ((_e273904273914_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g273900273912_))))
                        (let ((_hd273903273917_
                               (let ()
                                 (declare (not safe))
                                 (##car _e273904273914_)))
                              (_tl273902273919_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e273904273914_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl273902273919_))
                              ((lambda (_L273922_)
                                 (let* ((_klass273933_
                                         (let ((__tmp279639
                                                (##structure-ref
                                                 _self273895_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx273896_
                                            __tmp279639)))
                                        (_field273935_
                                         (let ((__tmp279640
                                                (##structure-ref
                                                 _self273895_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass273933_
                                            __tmp279640)))
                                        (_object273937_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L273922_))))
                                   (if (##structure-ref
                                        _klass273933_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp279717
                                              (let ((__tmp279726
                                                     (if (##structure-ref
                                                          _self273895_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp279718
                                                     (let ((__tmp279723
                                                            (let ((__tmp279724
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279725
                                  (##structure-ref
                                   _self273895_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp279725 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp279724)))
                   (__tmp279719
                    (let ((__tmp279721
                           (let ((__tmp279722
                                  (let ()
                                    (declare (not safe))
                                    (cons _field273935_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp279722)))
                          (__tmp279720
                           (let ()
                             (declare (not safe))
                             (cons _object273937_ '()))))
                      (declare (not safe))
                      (cons __tmp279721 __tmp279720))))
               (declare (not safe))
               (cons __tmp279723 __tmp279719))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp279726
                                                      __tmp279718))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp279717
                                          _stx273896_))
                                       (if (##structure-ref
                                            _klass273933_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp279707
                                                  (let ((__tmp279716
                                                         (if (##structure-ref
                                                              _self273895_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp279708
                                                         (let ((__tmp279713
                                                                (let ((__tmp279714
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp279715
                                      (##structure-ref
                                       _self273895_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp279715 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp279714)))
                       (__tmp279709
                        (let ((__tmp279711
                               (let ((__tmp279712
                                      (let ()
                                        (declare (not safe))
                                        (cons _field273935_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp279712)))
                              (__tmp279710
                               (let ()
                                 (declare (not safe))
                                 (cons _object273937_ '()))))
                          (declare (not safe))
                          (cons __tmp279711 __tmp279710))))
                   (declare (not safe))
                   (cons __tmp279713 __tmp279709))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp279716
                                                          __tmp279708))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp279707
                                              _stx273896_))
                                           (let ((_$e273940_
                                                  (let ((__tmp279641
                                                         (##structure-ref
                                                          _self273895_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass273933_
                                                     __tmp279641))))
                                             (if _$e273940_
                                                 ((lambda (_klass273943_)
                                                    (let ((__tmp279697
                                                           (let ((__tmp279706
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self273895_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp279698
                          (let ((__tmp279703
                                 (let ((__tmp279704
                                        (let ((__tmp279705
                                               (##structure-ref
                                                _self273895_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp279705 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp279704)))
                                (__tmp279699
                                 (let ((__tmp279701
                                        (let ((__tmp279702
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field273935_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp279702)))
                                       (__tmp279700
                                        (let ()
                                          (declare (not safe))
                                          (cons _object273937_ '()))))
                                   (declare (not safe))
                                   (cons __tmp279701 __tmp279700))))
                            (declare (not safe))
                            (cons __tmp279703 __tmp279699))))
                     (declare (not safe))
                     (cons __tmp279706 __tmp279698))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp279697 _stx273896_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e273940_)
                                                 (if (##structure-ref
                                                      _self273895_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp279651
                                                            (let* ((_$obj273945_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp279652 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp279652)))
                           (__tmp279653
                            (let ((__tmp279693
                                   (let ((__tmp279694
                                          (let ((__tmp279696
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj273945_ '())))
                                                (__tmp279695
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object273937_ '()))))
                                            (declare (not safe))
                                            (cons __tmp279696 __tmp279695))))
                                     (declare (not safe))
                                     (cons __tmp279694 '())))
                                  (__tmp279654
                                   (let ((__tmp279655
                                          (let ((__tmp279656
                                                 (let ((__tmp279685
                                                        (let ((__tmp279686
                                                               (let ((__tmp279690
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp279691
                                     (let ((__tmp279692
                                            (##structure-ref
                                             _klass273933_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp279692 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp279691)))
                             (__tmp279687
                              (let ((__tmp279688
                                     (let ((__tmp279689
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj273945_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp279689))))
                                (declare (not safe))
                                (cons __tmp279688 '()))))
                         (declare (not safe))
                         (cons __tmp279690 __tmp279687))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp279686)))
               (__tmp279657
                (let ((__tmp279674
                       (let ((__tmp279675
                              (let ((__tmp279682
                                     (let ((__tmp279683
                                            (let ((__tmp279684
                                                   (##structure-ref
                                                    _self273895_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp279684 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp279683)))
                                    (__tmp279676
                                     (let ((__tmp279680
                                            (let ((__tmp279681
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field273935_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp279681)))
                                           (__tmp279677
                                            (let ((__tmp279678
                                                   (let ((__tmp279679
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj273945_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp279679))))
                                              (declare (not safe))
                                              (cons __tmp279678 '()))))
                                       (declare (not safe))
                                       (cons __tmp279680 __tmp279677))))
                                (declare (not safe))
                                (cons __tmp279682 __tmp279676))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp279675)))
                      (__tmp279658
                       (let ((__tmp279659
                              (let ((__tmp279660
                                     (let ((__tmp279672
                                            (let ((__tmp279673
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp279673)))
                                           (__tmp279661
                                            (let ((__tmp279669
                                                   (let ((__tmp279670
                                                          (let ((__tmp279671
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self273895_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp279671 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp279670)))
                                                  (__tmp279662
                                                   (let ((__tmp279667
                                                          (let ((__tmp279668
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj273945_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp279668)))
                 (__tmp279663
                  (let ((__tmp279664
                         (let ((__tmp279665
                                (let ((__tmp279666
                                       (##structure-ref
                                        _self273895_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp279666 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp279665))))
                    (declare (not safe))
                    (cons __tmp279664 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp279667
                                                           __tmp279663))))
                                              (declare (not safe))
                                              (cons __tmp279669 __tmp279662))))
                                       (declare (not safe))
                                       (cons __tmp279672 __tmp279661))))
                                (declare (not safe))
                                (cons '%#call __tmp279660))))
                         (declare (not safe))
                         (cons __tmp279659 '()))))
                  (declare (not safe))
                  (cons __tmp279674 __tmp279658))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279685
                                                         __tmp279657))))
                                            (declare (not safe))
                                            (cons '%#if __tmp279656))))
                                     (declare (not safe))
                                     (cons __tmp279655 '()))))
                              (declare (not safe))
                              (cons __tmp279693 __tmp279654))))
                      (declare (not safe))
                      (cons '%#let-values __tmp279653))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp279651 _stx273896_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp279642
                                                            (let ((__tmp279643
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279649
                                  (let ((__tmp279650
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp279650)))
                                 (__tmp279644
                                  (let ((__tmp279645
                                         (let ((__tmp279646
                                                (let ((__tmp279647
                                                       (let ((__tmp279648
                                                              (##structure-ref
                                                               _self273895_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp279648
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp279647))))
                                           (declare (not safe))
                                           (cons __tmp279646 '()))))
                                    (declare (not safe))
                                    (cons _object273937_ __tmp279645))))
                             (declare (not safe))
                             (cons __tmp279649 __tmp279644))))
                      (declare (not safe))
                      (cons '%#call __tmp279643))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp279642 _stx273896_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd273903273917_)
                              (let ()
                                (declare (not safe))
                                (_g273899273909_ _g273900273912_)))))
                      (let ()
                        (declare (not safe))
                        (_g273899273909_ _g273900273912_))))))
          (declare (not safe))
          (_g273898273947_ _args273897_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__t279025)
        (let ((__id279026
               (let ((__tmp279029
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t279025 'id))))
                 (if __tmp279029 __tmp279029 (error '"Unknown slot" 'id))))
              (__slot279027
               (let ((__tmp279030
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t279025 'slot))))
                 (if __tmp279030 __tmp279030 (error '"Unknown slot" 'slot))))
              (__checked?279028
               (let ((__tmp279031
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t279025 'checked?))))
                 (if __tmp279031
                     __tmp279031
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self273895_ _stx273896_ _args273897_)
            (let* ((_g273899273909_
                    (lambda (_g273900273906_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g273900273906_))))
                   (_g273898273947_
                    (lambda (_g273900273912_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g273900273912_))
                          (let ((_e273904273914_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g273900273912_))))
                            (let ((_hd273903273917_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e273904273914_)))
                                  (_tl273902273919_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e273904273914_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl273902273919_))
                                  ((lambda (_L273922_)
                                     (let* ((_klass273933_
                                             (let ((__tmp279727
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self273895_
                                                       __id279026
                                                       __t279025
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx273896_
                                                __tmp279727)))
                                            (_field273935_
                                             (let ((__tmp279728
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self273895_
                                                       __slot279027
                                                       __t279025
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass273933_
                                                __tmp279728)))
                                            (_object273937_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L273922_))))
                                       (if (##structure-ref
                                            _klass273933_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp279805
                                                  (let ((__tmp279814
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self273895_
                        __checked?279028
                        __t279025
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp279806
                 (let ((__tmp279811
                        (let ((__tmp279812
                               (let ((__tmp279813
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self273895_
                                         __id279026
                                         __t279025
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp279813 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp279812)))
                       (__tmp279807
                        (let ((__tmp279809
                               (let ((__tmp279810
                                      (let ()
                                        (declare (not safe))
                                        (cons _field273935_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp279810)))
                              (__tmp279808
                               (let ()
                                 (declare (not safe))
                                 (cons _object273937_ '()))))
                          (declare (not safe))
                          (cons __tmp279809 __tmp279808))))
                   (declare (not safe))
                   (cons __tmp279811 __tmp279807))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp279814
                                                          __tmp279806))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp279805
                                              _stx273896_))
                                           (if (##structure-ref
                                                _klass273933_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp279795
                                                      (let ((__tmp279804
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self273895_
                            __checked?279028
                            __t279025
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp279796
                     (let ((__tmp279801
                            (let ((__tmp279802
                                   (let ((__tmp279803
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self273895_
                                             __id279026
                                             __t279025
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp279803 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp279802)))
                           (__tmp279797
                            (let ((__tmp279799
                                   (let ((__tmp279800
                                          (let ()
                                            (declare (not safe))
                                            (cons _field273935_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp279800)))
                                  (__tmp279798
                                   (let ()
                                     (declare (not safe))
                                     (cons _object273937_ '()))))
                              (declare (not safe))
                              (cons __tmp279799 __tmp279798))))
                       (declare (not safe))
                       (cons __tmp279801 __tmp279797))))
                (declare (not safe))
                (cons __tmp279804 __tmp279796))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp279795
                                                  _stx273896_))
                                               (let ((_$e273940_
                                                      (let ((__tmp279729
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self273895_
                        __slot279027
                        __t279025
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass273933_ __tmp279729))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e273940_
                                                     ((lambda (_klass273943_)
                                                        (let ((__tmp279785
                                                               (let ((__tmp279794
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self273895_
                                     __checked?279028
                                     __t279025
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp279786
                              (let ((__tmp279791
                                     (let ((__tmp279792
                                            (let ((__tmp279793
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self273895_
                                                      __id279026
                                                      __t279025
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp279793 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp279792)))
                                    (__tmp279787
                                     (let ((__tmp279789
                                            (let ((__tmp279790
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field273935_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp279790)))
                                           (__tmp279788
                                            (let ()
                                              (declare (not safe))
                                              (cons _object273937_ '()))))
                                       (declare (not safe))
                                       (cons __tmp279789 __tmp279788))))
                                (declare (not safe))
                                (cons __tmp279791 __tmp279787))))
                         (declare (not safe))
                         (cons __tmp279794 __tmp279786))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp279785 _stx273896_)))
              _$e273940_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self273895_
                                                            __checked?279028
                                                            __t279025
                                                            '#f))
                                                         (let ((__tmp279739
                                                                (let* ((_$obj273945_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp279740 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp279740)))
                               (__tmp279741
                                (let ((__tmp279781
                                       (let ((__tmp279782
                                              (let ((__tmp279784
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj273945_
                                                             '())))
                                                    (__tmp279783
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object273937_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp279784
                                                      __tmp279783))))
                                         (declare (not safe))
                                         (cons __tmp279782 '())))
                                      (__tmp279742
                                       (let ((__tmp279743
                                              (let ((__tmp279744
                                                     (let ((__tmp279773
                                                            (let ((__tmp279774
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279778
                                  (let ((__tmp279779
                                         (let ((__tmp279780
                                                (##structure-ref
                                                 _klass273933_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp279780 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp279779)))
                                 (__tmp279775
                                  (let ((__tmp279776
                                         (let ((__tmp279777
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj273945_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp279777))))
                                    (declare (not safe))
                                    (cons __tmp279776 '()))))
                             (declare (not safe))
                             (cons __tmp279778 __tmp279775))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp279774)))
                   (__tmp279745
                    (let ((__tmp279762
                           (let ((__tmp279763
                                  (let ((__tmp279770
                                         (let ((__tmp279771
                                                (let ((__tmp279772
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self273895_
                                                          __id279026
                                                          __t279025
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp279772 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp279771)))
                                        (__tmp279764
                                         (let ((__tmp279768
                                                (let ((__tmp279769
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field273935_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp279769)))
                                               (__tmp279765
                                                (let ((__tmp279766
                                                       (let ((__tmp279767
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj273945_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp279767))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp279766 '()))))
                                           (declare (not safe))
                                           (cons __tmp279768 __tmp279765))))
                                    (declare (not safe))
                                    (cons __tmp279770 __tmp279764))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp279763)))
                          (__tmp279746
                           (let ((__tmp279747
                                  (let ((__tmp279748
                                         (let ((__tmp279760
                                                (let ((__tmp279761
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp279761)))
                                               (__tmp279749
                                                (let ((__tmp279757
                                                       (let ((__tmp279758
                                                              (let ((__tmp279759
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self273895_
                                __id279026
                                __t279025
                                '#f))))
                        (declare (not safe))
                        (cons __tmp279759 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp279758)))
              (__tmp279750
               (let ((__tmp279755
                      (let ((__tmp279756
                             (let ()
                               (declare (not safe))
                               (cons _$obj273945_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp279756)))
                     (__tmp279751
                      (let ((__tmp279752
                             (let ((__tmp279753
                                    (let ((__tmp279754
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self273895_
                                              __slot279027
                                              __t279025
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp279754 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp279753))))
                        (declare (not safe))
                        (cons __tmp279752 '()))))
                 (declare (not safe))
                 (cons __tmp279755 __tmp279751))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp279757
                                                        __tmp279750))))
                                           (declare (not safe))
                                           (cons __tmp279760 __tmp279749))))
                                    (declare (not safe))
                                    (cons '%#call __tmp279748))))
                             (declare (not safe))
                             (cons __tmp279747 '()))))
                      (declare (not safe))
                      (cons __tmp279762 __tmp279746))))
               (declare (not safe))
               (cons __tmp279773 __tmp279745))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp279744))))
                                         (declare (not safe))
                                         (cons __tmp279743 '()))))
                                  (declare (not safe))
                                  (cons __tmp279781 __tmp279742))))
                          (declare (not safe))
                          (cons '%#let-values __tmp279741))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp279739 _stx273896_))
                 (let ((__tmp279730
                        (let ((__tmp279731
                               (let ((__tmp279737
                                      (let ((__tmp279738
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp279738)))
                                     (__tmp279732
                                      (let ((__tmp279733
                                             (let ((__tmp279734
                                                    (let ((__tmp279735
                                                           (let ((__tmp279736
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self273895_
                             __slot279027
                             __t279025
                             '#f))))
                     (declare (not safe))
                     (cons __tmp279736 '()))))
              (declare (not safe))
              (cons '%#quote __tmp279735))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp279734 '()))))
                                        (declare (not safe))
                                        (cons _object273937_ __tmp279733))))
                                 (declare (not safe))
                                 (cons __tmp279737 __tmp279732))))
                          (declare (not safe))
                          (cons '%#call __tmp279731))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp279730 _stx273896_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd273903273917_)
                                  (let ()
                                    (declare (not safe))
                                    (_g273899273909_ _g273900273912_)))))
                          (let ()
                            (declare (not safe))
                            (_g273899273909_ _g273900273912_))))))
              (declare (not safe))
              (_g273898273947_ _args273897_))))))
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
      (lambda (_self273700_ _stx273701_ _args273702_)
        (let* ((_g273704273718_
                (lambda (_g273705273715_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g273705273715_))))
               (_g273703273770_
                (lambda (_g273705273721_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g273705273721_))
                      (let ((_e273710273723_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g273705273721_))))
                        (let ((_hd273709273726_
                               (let ()
                                 (declare (not safe))
                                 (##car _e273710273723_)))
                              (_tl273708273728_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e273710273723_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl273708273728_))
                              (let ((_e273713273731_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl273708273728_))))
                                (let ((_hd273712273734_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e273713273731_)))
                                      (_tl273711273736_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e273713273731_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl273711273736_))
                                      ((lambda (_L273739_ _L273740_)
                                         (let* ((_klass273754_
                                                 (let ((__tmp279815
                                                        (##structure-ref
                                                         _self273700_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx273701_
                                                    __tmp279815)))
                                                (_field273756_
                                                 (let ((__tmp279816
                                                        (##structure-ref
                                                         _self273700_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass273754_
                                                    __tmp279816)))
                                                (_object273758_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L273740_)))
                                                (_value273760_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L273739_))))
                                           (if (##structure-ref
                                                _klass273754_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp279898
                                                      (let ((__tmp279908
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self273700_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp279899
                     (let ((__tmp279905
                            (let ((__tmp279906
                                   (let ((__tmp279907
                                          (##structure-ref
                                           _self273700_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp279907 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp279906)))
                           (__tmp279900
                            (let ((__tmp279903
                                   (let ((__tmp279904
                                          (let ()
                                            (declare (not safe))
                                            (cons _field273756_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp279904)))
                                  (__tmp279901
                                   (let ((__tmp279902
                                          (let ()
                                            (declare (not safe))
                                            (cons _value273760_ '()))))
                                     (declare (not safe))
                                     (cons _object273758_ __tmp279902))))
                              (declare (not safe))
                              (cons __tmp279903 __tmp279901))))
                       (declare (not safe))
                       (cons __tmp279905 __tmp279900))))
                (declare (not safe))
                (cons __tmp279908 __tmp279899))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp279898
                                                  _stx273701_))
                                               (if (##structure-ref
                                                    _klass273754_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp279887
                                                          (let ((__tmp279897
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self273700_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp279888
                         (let ((__tmp279894
                                (let ((__tmp279895
                                       (let ((__tmp279896
                                              (##structure-ref
                                               _self273700_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp279896 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp279895)))
                               (__tmp279889
                                (let ((__tmp279892
                                       (let ((__tmp279893
                                              (let ()
                                                (declare (not safe))
                                                (cons _field273756_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp279893)))
                                      (__tmp279890
                                       (let ((__tmp279891
                                              (let ()
                                                (declare (not safe))
                                                (cons _value273760_ '()))))
                                         (declare (not safe))
                                         (cons _object273758_ __tmp279891))))
                                  (declare (not safe))
                                  (cons __tmp279892 __tmp279890))))
                           (declare (not safe))
                           (cons __tmp279894 __tmp279889))))
                    (declare (not safe))
                    (cons __tmp279897 __tmp279888))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp279887
                                                      _stx273701_))
                                                   (let ((_$e273763_
                                                          (let ((__tmp279817
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self273700_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass273754_ __tmp279817))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e273763_
                                                         ((lambda (_klass273766_)
                                                            (let ((__tmp279876
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279886
                                  (if (##structure-ref
                                       _self273700_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp279877
                                  (let ((__tmp279883
                                         (let ((__tmp279884
                                                (let ((__tmp279885
                                                       (##structure-ref
                                                        _self273700_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp279885 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp279884)))
                                        (__tmp279878
                                         (let ((__tmp279881
                                                (let ((__tmp279882
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field273756_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp279882)))
                                               (__tmp279879
                                                (let ((__tmp279880
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value273760_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object273758_
                                                        __tmp279880))))
                                           (declare (not safe))
                                           (cons __tmp279881 __tmp279879))))
                                    (declare (not safe))
                                    (cons __tmp279883 __tmp279878))))
                             (declare (not safe))
                             (cons __tmp279886 __tmp279877))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp279876 _stx273701_)))
                  _$e273763_)
                 (if (##structure-ref _self273700_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp279828
                            (let* ((_$obj273768_
                                    (let ((__tmp279829 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp279829)))
                                   (__tmp279830
                                    (let ((__tmp279872
                                           (let ((__tmp279873
                                                  (let ((__tmp279875
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj273768_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp279874
                 (let () (declare (not safe)) (cons _object273758_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp279875
                                                          __tmp279874))))
                                             (declare (not safe))
                                             (cons __tmp279873 '())))
                                          (__tmp279831
                                           (let ((__tmp279832
                                                  (let ((__tmp279833
                                                         (let ((__tmp279864
                                                                (let ((__tmp279865
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp279869
                                      (let ((__tmp279870
                                             (let ((__tmp279871
                                                    (##structure-ref
                                                     _klass273754_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp279871 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp279870)))
                                     (__tmp279866
                                      (let ((__tmp279867
                                             (let ((__tmp279868
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj273768_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp279868))))
                                        (declare (not safe))
                                        (cons __tmp279867 '()))))
                                 (declare (not safe))
                                 (cons __tmp279869 __tmp279866))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp279865)))
                       (__tmp279834
                        (let ((__tmp279852
                               (let ((__tmp279853
                                      (let ((__tmp279861
                                             (let ((__tmp279862
                                                    (let ((__tmp279863
                                                           (##structure-ref
                                                            _self273700_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp279863 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp279862)))
                                            (__tmp279854
                                             (let ((__tmp279859
                                                    (let ((__tmp279860
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field273756_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp279860)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp279855
                                                    (let ((__tmp279857
                                                           (let ((__tmp279858
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj273768_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp279858)))
                  (__tmp279856
                   (let () (declare (not safe)) (cons _value273760_ '()))))
              (declare (not safe))
              (cons __tmp279857 __tmp279856))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp279859
                                                     __tmp279855))))
                                        (declare (not safe))
                                        (cons __tmp279861 __tmp279854))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp279853)))
                              (__tmp279835
                               (let ((__tmp279836
                                      (let ((__tmp279837
                                             (let ((__tmp279850
                                                    (let ((__tmp279851
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp279851)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp279838
                                                    (let ((__tmp279847
                                                           (let ((__tmp279848
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp279849
                                 (##structure-ref
                                  _self273700_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp279849 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp279848)))
                  (__tmp279839
                   (let ((__tmp279845
                          (let ((__tmp279846
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj273768_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp279846)))
                         (__tmp279840
                          (let ((__tmp279842
                                 (let ((__tmp279843
                                        (let ((__tmp279844
                                               (##structure-ref
                                                _self273700_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp279844 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp279843)))
                                (__tmp279841
                                 (let ()
                                   (declare (not safe))
                                   (cons _value273760_ '()))))
                            (declare (not safe))
                            (cons __tmp279842 __tmp279841))))
                     (declare (not safe))
                     (cons __tmp279845 __tmp279840))))
              (declare (not safe))
              (cons __tmp279847 __tmp279839))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp279850
                                                     __tmp279838))))
                                        (declare (not safe))
                                        (cons '%#call __tmp279837))))
                                 (declare (not safe))
                                 (cons __tmp279836 '()))))
                          (declare (not safe))
                          (cons __tmp279852 __tmp279835))))
                   (declare (not safe))
                   (cons __tmp279864 __tmp279834))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp279833))))
                                             (declare (not safe))
                                             (cons __tmp279832 '()))))
                                      (declare (not safe))
                                      (cons __tmp279872 __tmp279831))))
                              (declare (not safe))
                              (cons '%#let-values __tmp279830))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp279828 _stx273701_))
                     (let ((__tmp279818
                            (let ((__tmp279819
                                   (let ((__tmp279826
                                          (let ((__tmp279827
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp279827)))
                                         (__tmp279820
                                          (let ((__tmp279821
                                                 (let ((__tmp279823
                                                        (let ((__tmp279824
                                                               (let ((__tmp279825
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self273700_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp279825 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp279824)))
               (__tmp279822
                (let () (declare (not safe)) (cons _value273760_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279823
                                                         __tmp279822))))
                                            (declare (not safe))
                                            (cons _object273758_
                                                  __tmp279821))))
                                     (declare (not safe))
                                     (cons __tmp279826 __tmp279820))))
                              (declare (not safe))
                              (cons '%#call __tmp279819))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp279818 _stx273701_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd273712273734_
                                       _hd273709273726_)
                                      (let ()
                                        (declare (not safe))
                                        (_g273704273718_ _g273705273721_)))))
                              (let ()
                                (declare (not safe))
                                (_g273704273718_ _g273705273721_)))))
                      (let ()
                        (declare (not safe))
                        (_g273704273718_ _g273705273721_))))))
          (declare (not safe))
          (_g273703273770_ _args273702_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__t279032)
        (let ((__id279033
               (let ((__tmp279036
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t279032 'id))))
                 (if __tmp279036 __tmp279036 (error '"Unknown slot" 'id))))
              (__slot279034
               (let ((__tmp279037
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t279032 'slot))))
                 (if __tmp279037 __tmp279037 (error '"Unknown slot" 'slot))))
              (__checked?279035
               (let ((__tmp279038
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t279032 'checked?))))
                 (if __tmp279038
                     __tmp279038
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self273700_ _stx273701_ _args273702_)
            (let* ((_g273704273718_
                    (lambda (_g273705273715_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g273705273715_))))
                   (_g273703273770_
                    (lambda (_g273705273721_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g273705273721_))
                          (let ((_e273710273723_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g273705273721_))))
                            (let ((_hd273709273726_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e273710273723_)))
                                  (_tl273708273728_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e273710273723_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl273708273728_))
                                  (let ((_e273713273731_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl273708273728_))))
                                    (let ((_hd273712273734_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e273713273731_)))
                                          (_tl273711273736_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e273713273731_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl273711273736_))
                                          ((lambda (_L273739_ _L273740_)
                                             (let* ((_klass273754_
                                                     (let ((__tmp279909
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self273700_
                                                               __id279033
                                                               __t279032
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx273701_
                                                        __tmp279909)))
                                                    (_field273756_
                                                     (let ((__tmp279910
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self273700_
                                                               __slot279034
                                                               __t279032
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass273754_
                                                        __tmp279910)))
                                                    (_object273758_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L273740_)))
                                                    (_value273760_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L273739_))))
                                               (if (##structure-ref
                                                    _klass273754_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp279992
                                                          (let ((__tmp280002
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self273700_
                                __checked?279035
                                __t279032
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp279993
                         (let ((__tmp279999
                                (let ((__tmp280000
                                       (let ((__tmp280001
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self273700_
                                                 __id279033
                                                 __t279032
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp280001 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp280000)))
                               (__tmp279994
                                (let ((__tmp279997
                                       (let ((__tmp279998
                                              (let ()
                                                (declare (not safe))
                                                (cons _field273756_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp279998)))
                                      (__tmp279995
                                       (let ((__tmp279996
                                              (let ()
                                                (declare (not safe))
                                                (cons _value273760_ '()))))
                                         (declare (not safe))
                                         (cons _object273758_ __tmp279996))))
                                  (declare (not safe))
                                  (cons __tmp279997 __tmp279995))))
                           (declare (not safe))
                           (cons __tmp279999 __tmp279994))))
                    (declare (not safe))
                    (cons __tmp280002 __tmp279993))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp279992
                                                      _stx273701_))
                                                   (if (##structure-ref
                                                        _klass273754_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp279981
                                                              (let ((__tmp279991
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self273700_
                                    __checked?279035
                                    __t279032
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp279982
                             (let ((__tmp279988
                                    (let ((__tmp279989
                                           (let ((__tmp279990
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self273700_
                                                     __id279033
                                                     __t279032
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp279990 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp279989)))
                                   (__tmp279983
                                    (let ((__tmp279986
                                           (let ((__tmp279987
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field273756_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp279987)))
                                          (__tmp279984
                                           (let ((__tmp279985
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value273760_ '()))))
                                             (declare (not safe))
                                             (cons _object273758_
                                                   __tmp279985))))
                                      (declare (not safe))
                                      (cons __tmp279986 __tmp279984))))
                               (declare (not safe))
                               (cons __tmp279988 __tmp279983))))
                        (declare (not safe))
                        (cons __tmp279991 __tmp279982))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp279981 _stx273701_))
               (let ((_$e273763_
                      (let ((__tmp279911
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self273700_
                                __slot279034
                                __t279032
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass273754_
                         __tmp279911))))
                 (if _$e273763_
                     ((lambda (_klass273766_)
                        (let ((__tmp279970
                               (let ((__tmp279980
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self273700_
                                             __checked?279035
                                             __t279032
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp279971
                                      (let ((__tmp279977
                                             (let ((__tmp279978
                                                    (let ((__tmp279979
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self273700_
                                                              __id279033
                                                              __t279032
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp279979 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp279978)))
                                            (__tmp279972
                                             (let ((__tmp279975
                                                    (let ((__tmp279976
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field273756_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp279976)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp279973
                                                    (let ((__tmp279974
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value273760_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object273758_ __tmp279974))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp279975
                                                     __tmp279973))))
                                        (declare (not safe))
                                        (cons __tmp279977 __tmp279972))))
                                 (declare (not safe))
                                 (cons __tmp279980 __tmp279971))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp279970 _stx273701_)))
                      _$e273763_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self273700_
                            __checked?279035
                            __t279032
                            '#f))
                         (let ((__tmp279922
                                (let* ((_$obj273768_
                                        (let ((__tmp279923 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp279923)))
                                       (__tmp279924
                                        (let ((__tmp279966
                                               (let ((__tmp279967
                                                      (let ((__tmp279969
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj273768_ '())))
                    (__tmp279968
                     (let () (declare (not safe)) (cons _object273758_ '()))))
                (declare (not safe))
                (cons __tmp279969 __tmp279968))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp279967 '())))
                                              (__tmp279925
                                               (let ((__tmp279926
                                                      (let ((__tmp279927
                                                             (let ((__tmp279958
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp279959
                                   (let ((__tmp279963
                                          (let ((__tmp279964
                                                 (let ((__tmp279965
                                                        (##structure-ref
                                                         _klass273754_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp279965 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp279964)))
                                         (__tmp279960
                                          (let ((__tmp279961
                                                 (let ((__tmp279962
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj273768_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp279962))))
                                            (declare (not safe))
                                            (cons __tmp279961 '()))))
                                     (declare (not safe))
                                     (cons __tmp279963 __tmp279960))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp279959)))
                           (__tmp279928
                            (let ((__tmp279946
                                   (let ((__tmp279947
                                          (let ((__tmp279955
                                                 (let ((__tmp279956
                                                        (let ((__tmp279957
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self273700_
                          __id279033
                          __t279032
                          '#f))))
                  (declare (not safe))
                  (cons __tmp279957 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp279956)))
                                                (__tmp279948
                                                 (let ((__tmp279953
                                                        (let ((__tmp279954
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field273756_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp279954)))
               (__tmp279949
                (let ((__tmp279951
                       (let ((__tmp279952
                              (let ()
                                (declare (not safe))
                                (cons _$obj273768_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp279952)))
                      (__tmp279950
                       (let () (declare (not safe)) (cons _value273760_ '()))))
                  (declare (not safe))
                  (cons __tmp279951 __tmp279950))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279953
                                                         __tmp279949))))
                                            (declare (not safe))
                                            (cons __tmp279955 __tmp279948))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp279947)))
                                  (__tmp279929
                                   (let ((__tmp279930
                                          (let ((__tmp279931
                                                 (let ((__tmp279944
                                                        (let ((__tmp279945
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp279945)))
               (__tmp279932
                (let ((__tmp279941
                       (let ((__tmp279942
                              (let ((__tmp279943
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self273700_
                                        __id279033
                                        __t279032
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp279943 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp279942)))
                      (__tmp279933
                       (let ((__tmp279939
                              (let ((__tmp279940
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj273768_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp279940)))
                             (__tmp279934
                              (let ((__tmp279936
                                     (let ((__tmp279937
                                            (let ((__tmp279938
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self273700_
                                                      __slot279034
                                                      __t279032
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp279938 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp279937)))
                                    (__tmp279935
                                     (let ()
                                       (declare (not safe))
                                       (cons _value273760_ '()))))
                                (declare (not safe))
                                (cons __tmp279936 __tmp279935))))
                         (declare (not safe))
                         (cons __tmp279939 __tmp279934))))
                  (declare (not safe))
                  (cons __tmp279941 __tmp279933))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279944
                                                         __tmp279932))))
                                            (declare (not safe))
                                            (cons '%#call __tmp279931))))
                                     (declare (not safe))
                                     (cons __tmp279930 '()))))
                              (declare (not safe))
                              (cons __tmp279946 __tmp279929))))
                       (declare (not safe))
                       (cons __tmp279958 __tmp279928))))
                (declare (not safe))
                (cons '%#if __tmp279927))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp279926 '()))))
                                          (declare (not safe))
                                          (cons __tmp279966 __tmp279925))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp279924))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp279922 _stx273701_))
                         (let ((__tmp279912
                                (let ((__tmp279913
                                       (let ((__tmp279920
                                              (let ((__tmp279921
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp279921)))
                                             (__tmp279914
                                              (let ((__tmp279915
                                                     (let ((__tmp279917
                                                            (let ((__tmp279918
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279919
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self273700_
                                     __slot279034
                                     __t279032
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp279919 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp279918)))
                   (__tmp279916
                    (let () (declare (not safe)) (cons _value273760_ '()))))
               (declare (not safe))
               (cons __tmp279917 __tmp279916))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object273758_
                                                      __tmp279915))))
                                         (declare (not safe))
                                         (cons __tmp279920 __tmp279914))))
                                  (declare (not safe))
                                  (cons '%#call __tmp279913))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp279912
                            _stx273701_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd273712273734_
                                           _hd273709273726_)
                                          (let ()
                                            (declare (not safe))
                                            (_g273704273718_
                                             _g273705273721_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g273704273718_ _g273705273721_)))))
                          (let ()
                            (declare (not safe))
                            (_g273704273718_ _g273705273721_))))))
              (declare (not safe))
              (_g273703273770_ _args273702_))))))
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
      (lambda (_self273534_ _stx273535_ _args273536_)
        (let* ((_self273537273546_ _self273534_)
               (_E273539273550_
                (lambda () (error '"No clause matching" _self273537273546_)))
               (_K273540273557_
                (lambda (_inline273553_ _dispatch273554_ _arity273555_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self273534_ _args273536_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx273535_
                         _arity273555_)))
                  (if _inline273553_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp280008
                               (let ((__tmp280009
                                      (_inline273553_ _stx273535_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp280009
                                  _stx273535_))))
                          (declare (not safe))
                          (gxc#compile-e__0 __tmp280008)))
                      (if _dispatch273554_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch273554_))
                            (let ((__tmp280003
                                   (let ((__tmp280004
                                          (let ((__tmp280005
                                                 (let ((__tmp280006
                                                        (let ((__tmp280007
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch273554_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp280007))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp280006
                                                         _args273536_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp280005))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp280004
                                      _stx273535_))))
                              (declare (not safe))
                              (gxc#compile-e__0 __tmp280003)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _stx273535_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self273537273546_ 'gxc#!lambda::t))
              (let* ((_e273541273560_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273537273546_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e273542273563_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273537273546_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity273566_ _e273542273563_)
                     (_e273543273568_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273537273546_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch273571_ _e273543273568_)
                     (_e273544273573_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273537273546_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline273576_ _e273544273573_))
                (declare (not safe))
                (_K273540273557_
                 _inline273576_
                 _dispatch273571_
                 _arity273566_))
              (let () (declare (not safe)) (_E273539273550_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self273373_ _stx273374_ _args273375_)
        (let* ((_self273376273383_ _self273373_)
               (_E273378273387_
                (lambda () (error '"No clause matching" _self273376273383_)))
               (_K273379273401_
                (lambda (_clauses273390_)
                  (let ((_$e273396_
                         (let ((__tmp280010
                                (lambda (_g273391273393_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g273391273393_
                                     _args273375_)))))
                           (declare (not safe))
                           (find __tmp280010 _clauses273390_))))
                    (if _$e273396_
                        ((lambda (_clause273399_)
                           (let ((__method279307
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause273399_
                                     'optimize-call))))
                             (if __method279307
                                 (__method279307
                                  _clause273399_
                                  _stx273374_
                                  _args273375_)
                                 (error '"Missing method"
                                        _clause273399_
                                        'optimize-call))))
                         _$e273396_)
                        (let ((__tmp280011
                               (map gxc#!lambda-arity _clauses273390_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx273374_
                           __tmp280011)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self273376273383_
                 'gxc#!case-lambda::t))
              (let* ((_e273380273404_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273376273383_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e273381273407_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273376273383_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses273410_ _e273381273407_))
                (declare (not safe))
                (_K273379273401_ _clauses273410_))
              (let () (declare (not safe)) (_E273378273387_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self273187_ _args273188_)
        (let* ((_self273189273196_ _self273187_)
               (_E273191273200_
                (lambda () (error '"No clause matching" _self273189273196_)))
               (_K273192273240_
                (lambda (_arity273203_)
                  (let* ((_arity273204273213_ _arity273203_)
                         (_E273207273217_
                          (lambda ()
                            (error '"No clause matching"
                                   _arity273204273213_))))
                    (let ((_K273211273237_
                           (lambda ()
                             (fx= (length _args273188_) _arity273203_)))
                          (_K273208273223_
                           (lambda (_arity273221_)
                             (fx>= (length _args273188_) _arity273221_))))
                      (let ((_try-match273206273233_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity273204273213_))
                                   (let ((_tl273210273228_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity273204273213_)))
                                         (_hd273209273226_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity273204273213_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl273210273228_))
                                         (let ((_arity273231_
                                                _hd273209273226_))
                                           (declare (not safe))
                                           (_K273208273223_ _arity273231_))
                                         (let ()
                                           (declare (not safe))
                                           (_E273207273217_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E273207273217_))))))
                        (if (fixnum? _arity273204273213_)
                            (let () (declare (not safe)) (_K273211273237_))
                            (let ()
                              (declare (not safe))
                              (_try-match273206273233_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self273189273196_ 'gxc#!lambda::t))
              (let* ((_e273193273243_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273189273196_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e273194273246_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273189273196_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity273249_ _e273194273246_))
                (declare (not safe))
                (_K273192273240_ _arity273249_))
              (let () (declare (not safe)) (_E273191273200_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self273072_ _stx273073_ _args273074_)
        (let* ((_self273075273083_ _self273072_)
               (_E273077273087_
                (lambda () (error '"No clause matching" _self273075273083_)))
               (_K273078273171_
                (lambda (_dispatch273090_ _table273091_)
                  (let* ((_g273092273101_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch273090_)))
                         (_else273094273109_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch273090_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _stx273073_))))
                         (_K273096273155_
                          (lambda (_main273112_ _keys273113_)
                            (let ((_g280012_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx273073_
                                      _args273074_))))
                              (begin
                                (let ((_g280013_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g280012_)
                                             (##vector-length _g280012_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g280013_ 2)))
                                      (error "Context expects 2 values"
                                             _g280013_)))
                                (let ((_pargs273115_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g280012_ 0)))
                                      (_kwargs273116_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g280012_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main273112_))
                                    (if _table273091_
                                        (let ((_xargs273123_
                                               (map (lambda (_key273118_)
                                                      (let ((_$e273120_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _key273118_ _kwargs273116_))))
                (if _$e273120_ (values _$e273120_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys273113_)))
                                          (for-each
                                           (lambda (_kw273125_)
                                             (if (memq (car _kw273125_)
                                                       _keys273113_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx273073_
                                                    _keys273113_
                                                    _kw273125_))))
                                           _kwargs273116_)
                                          (let ((__tmp280065
                                                 (let ((__tmp280066
                                                        (let ((__tmp280067
                                                               (let ((__tmp280072
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp280073
                                     (let ()
                                       (declare (not safe))
                                       (cons _main273112_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp280073)))
                             (__tmp280068
                              (let ((__tmp280070
                                     (let ((__tmp280071
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp280071)))
                                    (__tmp280069
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs273115_
                                               _xargs273123_))))
                                (declare (not safe))
                                (cons __tmp280070 __tmp280069))))
                         (declare (not safe))
                         (cons __tmp280072 __tmp280068))))
                  (declare (not safe))
                  (cons '%#call __tmp280067))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp280066
                                                    _stx273073_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0 __tmp280065)))
                                        (let* ((_kwt273127_
                                                (let ((__tmp280014
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp280014)))
                                               (_kwvars273130_
                                                (map (lambda (_g280015_)
                                                       (let ((__tmp280016
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp280016)))
                                                     _kwargs273116_))
                                               (_kwbind273135_
                                                (map (lambda (_kw273132_
                                                              _kwvar273133_)
                                                       (let ((__tmp280019
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar273133_ '())))
                     (__tmp280017
                      (let ((__tmp280018 (cdr _kw273132_)))
                        (declare (not safe))
                        (cons __tmp280018 '()))))
                 (declare (not safe))
                 (cons __tmp280019 __tmp280017)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs273116_
                                                     _kwvars273130_))
                                               (_kwset273140_
                                                (map (lambda (_kw273137_
                                                              _kwvar273138_)
                                                       (let ((__tmp280020
                                                              (let ((__tmp280021
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp280029
                                    (let ((__tmp280030
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt273127_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp280030)))
                                   (__tmp280022
                                    (let ((__tmp280026
                                           (let ((__tmp280027
                                                  (let ((__tmp280028
                                                         (car _kw273137_)))
                                                    (declare (not safe))
                                                    (cons __tmp280028 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp280027)))
                                          (__tmp280023
                                           (let ((__tmp280024
                                                  (let ((__tmp280025
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar273138_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp280025))))
                                             (declare (not safe))
                                             (cons __tmp280024 '()))))
                                      (declare (not safe))
                                      (cons __tmp280026 __tmp280023))))
                               (declare (not safe))
                               (cons __tmp280029 __tmp280022))))
                        (declare (not safe))
                        (cons '(%#ref hash-put!) __tmp280021))))
                 (declare (not safe))
                 (cons '%#call __tmp280020)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs273116_
                                                     _kwvars273130_))
                                               (_xkwargs273145_
                                                (map (lambda (_kw273142_
                                                              _kwvar273143_)
                                                       (let ((__tmp280033
                                                              (car _kw273142_))
                                                             (__tmp280031
                                                              (let ((__tmp280032
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar273143_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp280032))))
                 (declare (not safe))
                 (cons __tmp280033 __tmp280031)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs273116_
                                                     _kwvars273130_))
                                               (_xargs273152_
                                                (map (lambda (_key273147_)
                                                       (let ((_$e273149_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq _key273147_ _xkwargs273145_))))
                 (if _$e273149_ (values _$e273149_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys273113_)))
                                          (let ((__tmp280034
                                                 (let ((__tmp280035
                                                        (let ((__tmp280036
                                                               (let ((__tmp280037
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp280038
                                     (let ((__tmp280039
                                            (let ((__tmp280053
                                                   (let ((__tmp280054
                                                          (let ((__tmp280064
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt273127_ '())))
                        (__tmp280055
                         (let ((__tmp280056
                                (let ((__tmp280057
                                       (let ((__tmp280058
                                              (let ((__tmp280059
                                                     (let ((__tmp280060
                                                            (let ((__tmp280061
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp280062
                                  (let ((__tmp280063 (length _kwargs273116_)))
                                    (declare (not safe))
                                    (cons __tmp280063 '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp280062))))
                      (declare (not safe))
                      (cons __tmp280061 '()))))
               (declare (not safe))
               (cons '(%#quote size:) __tmp280060))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-hash-table-eq)
                                                      __tmp280059))))
                                         (declare (not safe))
                                         (cons '%#call __tmp280058))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp280057
                                   _stx273073_))))
                           (declare (not safe))
                           (cons __tmp280056 '()))))
                    (declare (not safe))
                    (cons __tmp280064 __tmp280055))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp280054 '())))
                                                  (__tmp280040
                                                   (let ((__tmp280041
                                                          (let ((__tmp280042
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp280043
                                (let ((__tmp280044
                                       (let ((__tmp280045
                                              (let ((__tmp280046
                                                     (let ((__tmp280051
                                                            (let ((__tmp280052
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main273112_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp280052)))
                   (__tmp280047
                    (let ((__tmp280049
                           (let ((__tmp280050
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt273127_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp280050)))
                          (__tmp280048
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs273115_ _xargs273152_))))
                      (declare (not safe))
                      (cons __tmp280049 __tmp280048))))
               (declare (not safe))
               (cons __tmp280051 __tmp280047))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp280046))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp280045
                                          _stx273073_))))
                                  (declare (not safe))
                                  (cons __tmp280044 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp280043 _kwset273140_))))
                    (declare (not safe))
                    (cons '%#begin __tmp280042))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp280041 '()))))
                                              (declare (not safe))
                                              (cons __tmp280053 __tmp280040))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp280039))))
                                (declare (not safe))
                                (cons __tmp280038 '()))))
                         (declare (not safe))
                         (cons _kwbind273135_ __tmp280037))))
                  (declare (not safe))
                  (cons '%#let-values __tmp280036))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp280035
                                                    _stx273073_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0
                                             __tmp280034)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g273092273101_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e273097273158_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g273092273101_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e273098273161_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g273092273101_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys273164_ _e273098273161_)
                               (_e273099273166_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g273092273101_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main273169_ _e273099273166_))
                          (declare (not safe))
                          (_K273096273155_ _main273169_ _keys273164_))
                        (let () (declare (not safe)) (_else273094273109_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self273075273083_
                 'gxc#!kw-lambda::t))
              (let* ((_e273079273174_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273075273083_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e273080273177_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273075273083_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table273180_ _e273080273177_)
                     (_e273081273182_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273075273083_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch273185_ _e273081273182_))
                (declare (not safe))
                (_K273078273171_ _dispatch273185_ _table273180_))
              (let () (declare (not safe)) (_E273077273087_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx272685_ _args272686_)
        (let _lp272688_ ((_rest272690_ _args272686_)
                         (_pargs272691_ '())
                         (_kwargs272692_ '()))
          (let* ((___stx279189279190_ _rest272690_)
                 (_g272698272750_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx279189279190_)))))
            (let ((___kont279191279192_
                   (lambda (_L272929_ _L272930_)
                     (let ((__tmp280074
                            (let ()
                              (declare (not safe))
                              (cons _L272930_ _pargs272691_))))
                       (declare (not safe))
                       (_lp272688_ _L272929_ __tmp280074 _kwargs272692_))))
                  (___kont279193279194_
                   (lambda (_L272875_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L272875_ _pargs272691_))
                             (reverse _kwargs272692_))))
                  (___kont279195279196_
                   (lambda (_L272822_ _L272823_ _L272824_)
                     (let ((_kw272841_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L272824_))))
                       (if (assq _kw272841_ _kwargs272692_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx272685_
                              _kw272841_))
                           (let ((__tmp280075
                                  (let ((__tmp280076
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw272841_ _L272823_))))
                                    (declare (not safe))
                                    (cons __tmp280076 _kwargs272692_))))
                             (declare (not safe))
                             (_lp272688_
                              _L272822_
                              _pargs272691_
                              __tmp280075))))))
                  (___kont279197279198_
                   (lambda (_L272770_ _L272771_)
                     (let ((__tmp280077
                            (let ()
                              (declare (not safe))
                              (cons _L272771_ _pargs272691_))))
                       (declare (not safe))
                       (_lp272688_ _L272770_ __tmp280077 _kwargs272692_))))
                  (___kont279199279200_
                   (lambda ()
                     (values (reverse _pargs272691_)
                             (reverse _kwargs272692_)))))
              (let* ((_g272697272757_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx279189279190_))
                            (___kont279199279200_)
                            (let () (declare (not safe)) (_g272698272750_)))))
                     (___match279296279297_
                      (lambda (_e272731272790_
                               _hd272730272793_
                               _tl272729272795_
                               _e272734272798_
                               _hd272733272801_
                               _tl272732272803_
                               _e272737272806_
                               _hd272736272809_
                               _tl272735272811_
                               _e272740272814_
                               _hd272739272817_
                               _tl272738272819_)
                        (let ((_L272822_ _tl272738272819_)
                              (_L272823_ _hd272739272817_)
                              (_L272824_ _hd272736272809_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L272824_))
                              (___kont279195279196_
                               _L272822_
                               _L272823_
                               _L272824_)
                              (___kont279197279198_
                               _tl272729272795_
                               _hd272730272793_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx279189279190_))
                    (let ((_e272704272894_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx279189279190_))))
                      (let ((_tl272702272899_
                             (let ()
                               (declare (not safe))
                               (##cdr _e272704272894_)))
                            (_hd272703272897_
                             (let ()
                               (declare (not safe))
                               (##car _e272704272894_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd272703272897_))
                            (let ((_e272707272902_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd272703272897_))))
                              (let ((_tl272705272907_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e272707272902_)))
                                    (_hd272706272905_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e272707272902_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd272706272905_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd272706272905_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl272705272907_))
                                            (let ((_e272710272910_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl272705272907_))))
                                              (let ((_tl272708272915_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e272710272910_)))
                                                    (_hd272709272913_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e272710272910_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd272709272913_))
                                                    (let ((_e272711272918_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd272709272913_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e272711272918_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl272708272915_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl272702272899_))
                          (let ((_e272714272921_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl272702272899_))))
                            (let ((_tl272712272926_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e272714272921_)))
                                  (_hd272713272924_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e272714272921_))))
                              (___kont279191279192_
                               _tl272712272926_
                               _hd272713272924_)))
                          (___kont279197279198_
                           _tl272702272899_
                           _hd272703272897_))
                      (___kont279197279198_ _tl272702272899_ _hd272703272897_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e272711272918_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl272708272915_))
                          (___kont279193279194_ _tl272702272899_)
                          (___kont279197279198_
                           _tl272702272899_
                           _hd272703272897_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl272708272915_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl272702272899_))
                              (let ((_e272740272814_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl272702272899_))))
                                (let ((_tl272738272819_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e272740272814_)))
                                      (_hd272739272817_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e272740272814_))))
                                  (___match279296279297_
                                   _e272704272894_
                                   _hd272703272897_
                                   _tl272702272899_
                                   _e272707272902_
                                   _hd272706272905_
                                   _tl272705272907_
                                   _e272710272910_
                                   _hd272709272913_
                                   _tl272708272915_
                                   _e272740272814_
                                   _hd272739272817_
                                   _tl272738272819_)))
                              (___kont279197279198_
                               _tl272702272899_
                               _hd272703272897_))
                          (___kont279197279198_
                           _tl272702272899_
                           _hd272703272897_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl272708272915_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl272702272899_))
                                                            (let ((_e272740272814_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl272702272899_))))
                      (let ((_tl272738272819_
                             (let ()
                               (declare (not safe))
                               (##cdr _e272740272814_)))
                            (_hd272739272817_
                             (let ()
                               (declare (not safe))
                               (##car _e272740272814_))))
                        (___match279296279297_
                         _e272704272894_
                         _hd272703272897_
                         _tl272702272899_
                         _e272707272902_
                         _hd272706272905_
                         _tl272705272907_
                         _e272710272910_
                         _hd272709272913_
                         _tl272708272915_
                         _e272740272814_
                         _hd272739272817_
                         _tl272738272819_)))
                    (___kont279197279198_ _tl272702272899_ _hd272703272897_))
                (___kont279197279198_ _tl272702272899_ _hd272703272897_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont279197279198_
                                             _tl272702272899_
                                             _hd272703272897_))
                                        (___kont279197279198_
                                         _tl272702272899_
                                         _hd272703272897_))
                                    (___kont279197279198_
                                     _tl272702272899_
                                     _hd272703272897_))))
                            (___kont279197279198_
                             _tl272702272899_
                             _hd272703272897_))))
                    (let () (declare (not safe)) (_g272697272757_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self272681_ _stx272682_ _args272683_)
        (let () (declare (not safe)) (gxc#xform-call% _stx272682_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
