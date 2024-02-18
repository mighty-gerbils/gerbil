(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1708247281)
  (begin
    (define gxc#&optimize-call
      (make-promise
       (lambda ()
         (let ((_tbl274970_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp279328 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl274970_ __tmp279328))
           (let ()
             (declare (not safe))
             (table-set! _tbl274970_ '%#call gxc#optimize-call%))
           _tbl274970_))))
    (define gxc#apply-optimize-call
      (lambda (_stx274953_ . _args274955_)
        (let ((__tmp279330
               (lambda ()
                 (declare (not safe))
                 (if (null? _args274955_)
                     (gxc#compile-e__0 _stx274953_)
                     (let ((_arg1274960_ (car _args274955_))
                           (_rest274962_ (cdr _args274955_)))
                       (if (null? _rest274962_)
                           (gxc#compile-e__1 _stx274953_ _arg1274960_)
                           (let ((_arg2274965_ (car _rest274962_))
                                 (_rest274967_ (cdr _rest274962_)))
                             (if (null? _rest274967_)
                                 (gxc#compile-e__2
                                  _stx274953_
                                  _arg1274960_
                                  _arg2274965_)
                                 (apply gxc#compile-e
                                        _stx274953_
                                        _arg1274960_
                                        _arg2274965_
                                        _rest274967_))))))))
              (__tmp279329 (force gxc#&optimize-call)))
          (declare (not safe))
          (call-with-parameters
           __tmp279330
           gxc#current-compile-methods
           __tmp279329))))
    (define gxc#optimize-call%
      (lambda (_stx274808_)
        (let* ((___stx279078279079_ _stx274808_)
               (_g274811274831_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx279078279079_)))))
          (let ((___kont279080279081_
                 (lambda (_L274875_ _L274876_)
                   (let* ((_rator-id274894_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L274876_)))
                          (_rator-type274896_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id274894_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type274896_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp279331
                                  (##structure-ref
                                   _rator-type274896_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id274894_
                              '" => "
                              _rator-type274896_
                              '" "
                              __tmp279331))
                           (let ((_optimized274899_
                                  (let ((__method279326
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type274896_
                                            'optimize-call))))
                                    (if __method279326
                                        (__method279326
                                         _rator-type274896_
                                         _stx274808_
                                         _L274875_)
                                        (error '"Missing method"
                                               _rator-type274896_
                                               'optimize-call)))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type274896_))
                                 _optimized274899_
                                 (let* ((___stx279060279061_ _optimized274899_)
                                        (_g274902274912_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx279060279061_)))))
                                   (let ((___kont279062279063_
                                          (lambda (_L274932_)
                                            (let ((__tmp279332
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L274932_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp279332
                                               _stx274808_))))
                                         (___kont279064279065_
                                          (lambda () _optimized274899_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx279060279061_))
                                         (let ((_e274907274924_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx279060279061_))))
                                           (let ((_tl274905274929_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e274907274924_)))
                                                 (_hd274906274927_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e274907274924_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd274906274927_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd274906274927_))
                                                     (___kont279062279063_
                                                      _tl274905274929_)
                                                     (___kont279064279065_))
                                                 (___kont279064279065_))))
                                         (___kont279064279065_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type274896_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx274808_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx274808_
                                _rator-type274896_)))))))
                (___kont279082279083_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _stx274808_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx279078279079_))
                (let ((_e274817274843_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx279078279079_))))
                  (let ((_tl274815274848_
                         (let () (declare (not safe)) (##cdr _e274817274843_)))
                        (_hd274816274846_
                         (let ()
                           (declare (not safe))
                           (##car _e274817274843_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl274815274848_))
                        (let ((_e274820274851_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl274815274848_))))
                          (let ((_tl274818274856_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e274820274851_)))
                                (_hd274819274854_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e274820274851_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd274819274854_))
                                (let ((_e274823274859_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd274819274854_))))
                                  (let ((_tl274821274864_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e274823274859_)))
                                        (_hd274822274862_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e274823274859_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd274822274862_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd274822274862_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl274821274864_))
                                                (let ((_e274826274867_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl274821274864_))))
                                                  (let ((_tl274824274872_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e274826274867_)))
                                                        (_hd274825274870_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e274826274867_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl274824274872_))
                                                        (___kont279080279081_
                                                         _tl274818274856_
                                                         _hd274825274870_)
                                                        (___kont279082279083_))))
                                                (___kont279082279083_))
                                            (___kont279082279083_))
                                        (___kont279082279083_))))
                                (___kont279082279083_))))
                        (___kont279082279083_))))
                (___kont279082279083_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self274762_ _stx274763_ _args274764_)
        (let* ((_g274766274776_
                (lambda (_g274767274773_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g274767274773_))))
               (_g274765274805_
                (lambda (_g274767274779_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g274767274779_))
                      (let ((_e274771274781_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g274767274779_))))
                        (let ((_hd274770274784_
                               (let ()
                                 (declare (not safe))
                                 (##car _e274771274781_)))
                              (_tl274769274786_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e274771274781_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl274769274786_))
                              ((lambda (_L274789_)
                                 (let* ((_klass274800_
                                         (let ((__tmp279333
                                                (##structure-ref
                                                 _self274762_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx274763_
                                            __tmp279333)))
                                        (_object274802_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L274789_))))
                                   (if (##structure-ref
                                        _klass274800_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp279349
                                              (let ((__tmp279350
                                                     (let ((__tmp279352
                                                            (let ((__tmp279353
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279354
                                  (##structure-ref
                                   _klass274800_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp279354 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp279353)))
                   (__tmp279351
                    (let () (declare (not safe)) (cons _object274802_ '()))))
               (declare (not safe))
               (cons __tmp279352 __tmp279351))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp279350))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp279349
                                          _stx274763_))
                                       (if (##structure-ref
                                            _klass274800_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp279343
                                                  (let ((__tmp279344
                                                         (let ((__tmp279346
                                                                (let ((__tmp279347
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp279348
                                      (##structure-ref
                                       _klass274800_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp279348 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp279347)))
                       (__tmp279345
                        (let ()
                          (declare (not safe))
                          (cons _object274802_ '()))))
                   (declare (not safe))
                   (cons __tmp279346 __tmp279345))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp279344))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp279343
                                              _stx274763_))
                                           (let ((__tmp279334
                                                  (let ((__tmp279335
                                                         (let ((__tmp279341
                                                                (let ((__tmp279342
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp279342)))
                       (__tmp279336
                        (let ((__tmp279338
                               (let ((__tmp279339
                                      (let ((__tmp279340
                                             (##structure-ref
                                              _self274762_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp279340 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp279339)))
                              (__tmp279337
                               (let ()
                                 (declare (not safe))
                                 (cons _object274802_ '()))))
                          (declare (not safe))
                          (cons __tmp279338 __tmp279337))))
                   (declare (not safe))
                   (cons __tmp279341 __tmp279336))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp279335))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp279334
                                              _stx274763_))))))
                               _hd274770274784_)
                              (let ()
                                (declare (not safe))
                                (_g274766274776_ _g274767274779_)))))
                      (let ()
                        (declare (not safe))
                        (_g274766274776_ _g274767274779_))))))
          (declare (not safe))
          (_g274765274805_ _args274764_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__t279039)
        (let ((__id279040
               (let ((__tmp279041
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t279039 'id))))
                 (if __tmp279041 __tmp279041 (error '"Unknown slot" 'id)))))
          (lambda (_self274762_ _stx274763_ _args274764_)
            (let* ((_g274766274776_
                    (lambda (_g274767274773_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g274767274773_))))
                   (_g274765274805_
                    (lambda (_g274767274779_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g274767274779_))
                          (let ((_e274771274781_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g274767274779_))))
                            (let ((_hd274770274784_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e274771274781_)))
                                  (_tl274769274786_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e274771274781_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl274769274786_))
                                  ((lambda (_L274789_)
                                     (let* ((_klass274800_
                                             (let ((__tmp279355
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self274762_
                                                       __id279040
                                                       __t279039
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx274763_
                                                __tmp279355)))
                                            (_object274802_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L274789_))))
                                       (if (##structure-ref
                                            _klass274800_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp279371
                                                  (let ((__tmp279372
                                                         (let ((__tmp279374
                                                                (let ((__tmp279375
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp279376
                                      (##structure-ref
                                       _klass274800_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp279376 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp279375)))
                       (__tmp279373
                        (let ()
                          (declare (not safe))
                          (cons _object274802_ '()))))
                   (declare (not safe))
                   (cons __tmp279374 __tmp279373))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp279372))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp279371
                                              _stx274763_))
                                           (if (##structure-ref
                                                _klass274800_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp279365
                                                      (let ((__tmp279366
                                                             (let ((__tmp279368
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp279369
                                   (let ((__tmp279370
                                          (##structure-ref
                                           _klass274800_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp279370 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp279369)))
                           (__tmp279367
                            (let ()
                              (declare (not safe))
                              (cons _object274802_ '()))))
                       (declare (not safe))
                       (cons __tmp279368 __tmp279367))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp279366))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp279365
                                                  _stx274763_))
                                               (let ((__tmp279356
                                                      (let ((__tmp279357
                                                             (let ((__tmp279363
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp279364
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp279364)))
                           (__tmp279358
                            (let ((__tmp279360
                                   (let ((__tmp279361
                                          (let ((__tmp279362
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self274762_
                                                    __id279040
                                                    __t279039
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp279362 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp279361)))
                                  (__tmp279359
                                   (let ()
                                     (declare (not safe))
                                     (cons _object274802_ '()))))
                              (declare (not safe))
                              (cons __tmp279360 __tmp279359))))
                       (declare (not safe))
                       (cons __tmp279363 __tmp279358))))
                (declare (not safe))
                (cons '%#call __tmp279357))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp279356
                                                  _stx274763_))))))
                                   _hd274770274784_)
                                  (let ()
                                    (declare (not safe))
                                    (_g274766274776_ _g274767274779_)))))
                          (let ()
                            (declare (not safe))
                            (_g274766274776_ _g274767274779_))))))
              (declare (not safe))
              (_g274765274805_ _args274764_))))))
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
      (lambda (_self274482_ _stx274483_ _args274484_)
        (let* ((_klass274486_
                (let ((__tmp279377
                       (##structure-ref _self274482_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx274483_ __tmp279377)))
               (_fields274488_
                (length (##structure-ref _klass274486_ '5 gxc#!class::t '#f)))
               (_args274490_ (map gxc#compile-e _args274484_))
               (_inline-make-object274492_
                (let ((__tmp279378
                       (let ((__tmp279384
                              (let ((__tmp279385
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp279385)))
                             (__tmp279379
                              (let ((__tmp279381
                                     (let ((__tmp279382
                                            (let ((__tmp279383
                                                   (##structure-ref
                                                    _self274482_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp279383 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp279382)))
                                    (__tmp279380
                                     (make-list _fields274488_ '(%#quote #f))))
                                (declare (not safe))
                                (cons __tmp279381 __tmp279380))))
                         (declare (not safe))
                         (cons __tmp279384 __tmp279379))))
                  (declare (not safe))
                  (cons '%#call __tmp279378))))
          (let ((_$e274495_
                 (##structure-ref _klass274486_ '6 gxc#!class::t '#f)))
            (if _$e274495_
                ((lambda (_ctor274498_)
                   (let ((_$obj274500_
                          (let ((__tmp279485 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp279485)))
                         (_ctor-impl274501_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass274486_
                             _ctor274498_))))
                     (let ((__tmp279486
                            (let ((__tmp279487
                                   (let ((__tmp279555
                                          (let ((__tmp279556
                                                 (let ((__tmp279558
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj274500_
                                                                '())))
                                                       (__tmp279557
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object274492_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp279558
                                                         __tmp279557))))
                                            (declare (not safe))
                                            (cons __tmp279556 '())))
                                         (__tmp279488
                                          (let ((__tmp279489
                                                 (let ((__tmp279490
                                                        (let ((__tmp279494
                                                               (if _ctor-impl274501_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279549
                                  (let ((__tmp279553
                                         (let ((__tmp279554
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl274501_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp279554)))
                                        (__tmp279550
                                         (let ((__tmp279551
                                                (let ((__tmp279552
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj274500_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp279552))))
                                           (declare (not safe))
                                           (cons __tmp279551 _args274490_))))
                                    (declare (not safe))
                                    (cons __tmp279553 __tmp279550))))
                             (declare (not safe))
                             (cons '%#call __tmp279549))
                           (let* ((_$ctor274503_
                                   (let ((__tmp279495 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp279495)))
                                  (__tmp279496
                                   (let ((__tmp279531
                                          (let ((__tmp279532
                                                 (let ((__tmp279548
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor274503_
                                                                '())))
                                                       (__tmp279533
                                                        (let ((__tmp279534
                                                               (let ((__tmp279535
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp279546
                                     (let ((__tmp279547
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp279547)))
                                    (__tmp279536
                                     (let ((__tmp279543
                                            (let ((__tmp279544
                                                   (let ((__tmp279545
                                                          (##structure-ref
                                                           _self274482_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp279545 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp279544)))
                                           (__tmp279537
                                            (let ((__tmp279541
                                                   (let ((__tmp279542
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj274500_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp279542)))
                                                  (__tmp279538
                                                   (let ((__tmp279539
                                                          (let ((__tmp279540
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _ctor274498_ '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp279540))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp279539 '()))))
                                              (declare (not safe))
                                              (cons __tmp279541 __tmp279538))))
                                       (declare (not safe))
                                       (cons __tmp279543 __tmp279537))))
                                (declare (not safe))
                                (cons __tmp279546 __tmp279536))))
                         (declare (not safe))
                         (cons '%#call __tmp279535))))
                  (declare (not safe))
                  (cons __tmp279534 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279548
                                                         __tmp279533))))
                                            (declare (not safe))
                                            (cons __tmp279532 '())))
                                         (__tmp279497
                                          (let ((__tmp279498
                                                 (let ((__tmp279499
                                                        (let ((__tmp279529
                                                               (let ((__tmp279530
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor274503_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp279530)))
                      (__tmp279500
                       (let ((__tmp279522
                              (let ((__tmp279523
                                     (let ((__tmp279527
                                            (let ((__tmp279528
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor274503_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp279528)))
                                           (__tmp279524
                                            (let ((__tmp279525
                                                   (let ((__tmp279526
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj274500_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp279526))))
                                              (declare (not safe))
                                              (cons __tmp279525
                                                    _args274490_))))
                                       (declare (not safe))
                                       (cons __tmp279527 __tmp279524))))
                                (declare (not safe))
                                (cons '%#call __tmp279523)))
                             (__tmp279501
                              (let ((__tmp279502
                                     (let ((__tmp279503
                                            (let ((__tmp279520
                                                   (let ((__tmp279521
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp279521)))
                                                  (__tmp279504
                                                   (let ((__tmp279518
                                                          (let ((__tmp279519
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp279519)))
                 (__tmp279505
                  (let ((__tmp279516
                         (let ((__tmp279517
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp279517)))
                        (__tmp279506
                         (let ((__tmp279513
                                (let ((__tmp279514
                                       (let ((__tmp279515
                                              (##structure-ref
                                               _self274482_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp279515 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp279514)))
                               (__tmp279507
                                (let ((__tmp279511
                                       (let ((__tmp279512
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp279512)))
                                      (__tmp279508
                                       (let ((__tmp279509
                                              (let ((__tmp279510
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor274498_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp279510))))
                                         (declare (not safe))
                                         (cons __tmp279509 '()))))
                                  (declare (not safe))
                                  (cons __tmp279511 __tmp279508))))
                           (declare (not safe))
                           (cons __tmp279513 __tmp279507))))
                    (declare (not safe))
                    (cons __tmp279516 __tmp279506))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp279518
                                                           __tmp279505))))
                                              (declare (not safe))
                                              (cons __tmp279520 __tmp279504))))
                                       (declare (not safe))
                                       (cons '%#call __tmp279503))))
                                (declare (not safe))
                                (cons __tmp279502 '()))))
                         (declare (not safe))
                         (cons __tmp279522 __tmp279501))))
                  (declare (not safe))
                  (cons __tmp279529 __tmp279500))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp279499))))
                                            (declare (not safe))
                                            (cons __tmp279498 '()))))
                                     (declare (not safe))
                                     (cons __tmp279531 __tmp279497))))
                             (declare (not safe))
                             (cons '%#let-values __tmp279496))))
                      (__tmp279491
                       (let ((__tmp279492
                              (let ((__tmp279493
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj274500_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp279493))))
                         (declare (not safe))
                         (cons __tmp279492 '()))))
                  (declare (not safe))
                  (cons __tmp279494 __tmp279491))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp279490))))
                                            (declare (not safe))
                                            (cons __tmp279489 '()))))
                                     (declare (not safe))
                                     (cons __tmp279555 __tmp279488))))
                              (declare (not safe))
                              (cons '%#let-values __tmp279487))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp279486 _stx274483_))))
                 _$e274495_)
                (let ((_$e274505_
                       (##structure-ref _klass274486_ '9 gxc#!class::t '#f)))
                  (if _$e274505_
                      ((lambda (_metaclass274508_)
                         (let* ((_$obj274510_
                                 (let ((__tmp279447 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp279447)))
                                (_metakons274512_
                                 (let ((__tmp279448
                                        (let ()
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           _stx274483_
                                           _metaclass274508_))))
                                   (declare (not safe))
                                   (gxc#!class-lookup-method
                                    __tmp279448
                                    'instance-init!))))
                           (let ((__tmp279449
                                  (let ((__tmp279450
                                         (let ((__tmp279481
                                                (let ((__tmp279482
                                                       (let ((__tmp279484
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj274510_ '())))
                     (__tmp279483
                      (let ()
                        (declare (not safe))
                        (cons _inline-make-object274492_ '()))))
                 (declare (not safe))
                 (cons __tmp279484 __tmp279483))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp279482 '())))
                                               (__tmp279451
                                                (let ((__tmp279452
                                                       (let ((__tmp279453
                                                              (let ((__tmp279457
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if _metakons274512_
                                 (let ((__tmp279471
                                        (let ((__tmp279479
                                               (let ((__tmp279480
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metakons274512_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp279480)))
                                              (__tmp279472
                                               (let ((__tmp279476
                                                      (let ((__tmp279477
                                                             (let ((__tmp279478
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self274482_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp279478 '()))))
                (declare (not safe))
                (cons '%#ref __tmp279477)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp279473
                                                      (let ((__tmp279474
                                                             (let ((__tmp279475
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _$obj274510_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp279475))))
                (declare (not safe))
                (cons __tmp279474 _args274490_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp279476
                                                       __tmp279473))))
                                          (declare (not safe))
                                          (cons __tmp279479 __tmp279472))))
                                   (declare (not safe))
                                   (cons '%#call __tmp279471))
                                 (let ((__tmp279458
                                        (let ((__tmp279469
                                               (let ((__tmp279470
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'call-method
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp279470)))
                                              (__tmp279459
                                               (let ((__tmp279466
                                                      (let ((__tmp279467
                                                             (let ((__tmp279468
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self274482_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp279468 '()))))
                (declare (not safe))
                (cons '%#ref __tmp279467)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp279460
                                                      (let ((__tmp279464
                                                             (let ((__tmp279465
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'instance-init! '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp279465)))
                    (__tmp279461
                     (let ((__tmp279462
                            (let ((__tmp279463
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj274510_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp279463))))
                       (declare (not safe))
                       (cons __tmp279462 _args274490_))))
                (declare (not safe))
                (cons __tmp279464 __tmp279461))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp279466
                                                       __tmp279460))))
                                          (declare (not safe))
                                          (cons __tmp279469 __tmp279459))))
                                   (declare (not safe))
                                   (cons '%#call __tmp279458))))
                            (__tmp279454
                             (let ((__tmp279455
                                    (let ((__tmp279456
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj274510_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp279456))))
                               (declare (not safe))
                               (cons __tmp279455 '()))))
                        (declare (not safe))
                        (cons __tmp279457 __tmp279454))))
                 (declare (not safe))
                 (cons '%#begin __tmp279453))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp279452 '()))))
                                           (declare (not safe))
                                           (cons __tmp279481 __tmp279451))))
                                    (declare (not safe))
                                    (cons '%#let-values __tmp279450))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp279449 _stx274483_))))
                       _$e274505_)
                      (if (##structure-ref _klass274486_ '7 gxc#!class::t '#f)
                          (if (fx= (length _args274490_) _fields274488_)
                              (let ((__tmp279439
                                     (let ((__tmp279440
                                            (let ((__tmp279445
                                                   (let ((__tmp279446
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp279446)))
                                                  (__tmp279441
                                                   (let ((__tmp279442
                                                          (let ((__tmp279443
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp279444
                                (##structure-ref
                                 _self274482_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp279444 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp279443))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp279442
                                                           _args274490_))))
                                              (declare (not safe))
                                              (cons __tmp279445 __tmp279441))))
                                       (declare (not safe))
                                       (cons '%#call __tmp279440))))
                                (declare (not safe))
                                (gxc#xform-wrap-source
                                 __tmp279439
                                 _stx274483_))
                              (let ((__tmp279438
                                     (##structure-ref
                                      _self274482_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                    (__tmp279437
                                     (length (##structure-ref
                                              _klass274486_
                                              '5
                                              gxc#!class::t
                                              '#f))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"illegal struct constructor application; arity mismatch"
                                 _stx274483_
                                 __tmp279438
                                 __tmp279437)))
                          (let ((_$obj274515_
                                 (let ((__tmp279386 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp279386))))
                            (let _lp274517_ ((_rest274519_ _args274490_)
                                             (_initializers274520_ '()))
                              (let* ((___stx279116279117_ _rest274519_)
                                     (_g274524274545_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx279116279117_)))))
                                (let ((___kont279118279119_
                                       (lambda (_L274599_ _L274600_ _L274601_)
                                         (let* ((_slot274632_
                                                 (keyword->symbol
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e _L274601_))))
                                                (_off274634_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass274486_
                                                    _slot274632_))))
                                           (if _off274634_
                                               (let ((__tmp279388
                                                      (let ((__tmp279389
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off274634_ _L274600_))))
                (declare (not safe))
                (cons __tmp279389 _initializers274520_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp274517_
                                                  _L274599_
                                                  __tmp279388))
                                               (let ((__tmp279387
                                                      (##structure-ref
                                                       _self274482_
                                                       '1
                                                       gxc#!type::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"unknown slot"
                                                  _stx274483_
                                                  __tmp279387
                                                  _slot274632_))))))
                                      (___kont279120279121_
                                       (lambda ()
                                         (let ((__tmp279390
                                                (let ((__tmp279391
                                                       (let ((__tmp279414
                                                              (let ((__tmp279415
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp279417
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj274515_ '())))
                                   (__tmp279416
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object274492_ '()))))
                               (declare (not safe))
                               (cons __tmp279417 __tmp279416))))
                        (declare (not safe))
                        (cons __tmp279415 '())))
                     (__tmp279392
                      (let ((__tmp279393
                             (let ((__tmp279394
                                    (let ((__tmp279411
                                           (let ((__tmp279412
                                                  (let ((__tmp279413
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj274515_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp279413))))
                                             (declare (not safe))
                                             (cons __tmp279412 '())))
                                          (__tmp279395
                                           (let ((__tmp279396
                                                  (lambda (_i274559_ _r274560_)
                                                    (let ((__tmp279397
                                                           (let ((__tmp279398
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp279408
                                 (let ((__tmp279409
                                        (let ((__tmp279410
                                               (##structure-ref
                                                _self274482_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp279410 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp279409)))
                                (__tmp279399
                                 (let ((__tmp279405
                                        (let ((__tmp279406
                                               (let ((__tmp279407
                                                      (car _i274559_)))
                                                 (declare (not safe))
                                                 (cons __tmp279407 '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp279406)))
                                       (__tmp279400
                                        (let ((__tmp279403
                                               (let ((__tmp279404
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _$obj274515_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp279404)))
                                              (__tmp279401
                                               (let ((__tmp279402
                                                      (cdr _i274559_)))
                                                 (declare (not safe))
                                                 (cons __tmp279402 '()))))
                                          (declare (not safe))
                                          (cons __tmp279403 __tmp279401))))
                                   (declare (not safe))
                                   (cons __tmp279405 __tmp279400))))
                            (declare (not safe))
                            (cons __tmp279408 __tmp279399))))
                     (declare (not safe))
                     (cons '%#struct-unchecked-set! __tmp279398))))
              (declare (not safe))
              (cons __tmp279397 _r274560_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (foldl1 __tmp279396
                                                     '()
                                                     _initializers274520_))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp279411 __tmp279395))))
                               (declare (not safe))
                               (cons '%#begin __tmp279394))))
                        (declare (not safe))
                        (cons __tmp279393 '()))))
                 (declare (not safe))
                 (cons __tmp279414 __tmp279392))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp279391))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp279390
                                            _stx274483_))))
                                      (___kont279122279123_
                                       (lambda ()
                                         (let ((__tmp279418
                                                (let ((__tmp279419
                                                       (let ((__tmp279433
                                                              (let ((__tmp279434
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp279436
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj274515_ '())))
                                   (__tmp279435
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object274492_ '()))))
                               (declare (not safe))
                               (cons __tmp279436 __tmp279435))))
                        (declare (not safe))
                        (cons __tmp279434 '())))
                     (__tmp279420
                      (let ((__tmp279421
                             (let ((__tmp279422
                                    (let ((__tmp279426
                                           (let ((__tmp279427
                                                  (let ((__tmp279431
                                                         (let ((__tmp279432
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'class-instance-init! '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp279432)))
                (__tmp279428
                 (let ((__tmp279429
                        (let ((__tmp279430
                               (let ()
                                 (declare (not safe))
                                 (cons _$obj274515_ '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp279430))))
                   (declare (not safe))
                   (cons __tmp279429 _args274490_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp279431
                                                          __tmp279428))))
                                             (declare (not safe))
                                             (cons '%#call __tmp279427)))
                                          (__tmp279423
                                           (let ((__tmp279424
                                                  (let ((__tmp279425
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj274515_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp279425))))
                                             (declare (not safe))
                                             (cons __tmp279424 '()))))
                                      (declare (not safe))
                                      (cons __tmp279426 __tmp279423))))
                               (declare (not safe))
                               (cons '%#begin __tmp279422))))
                        (declare (not safe))
                        (cons __tmp279421 '()))))
                 (declare (not safe))
                 (cons __tmp279433 __tmp279420))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp279419))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp279418
                                            _stx274483_)))))
                                  (let* ((_g274522274562_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   ___stx279116279117_))
                                                (___kont279120279121_)
                                                (___kont279122279123_))))
                                         (___match279153279154_
                                          (lambda (_e274531274567_
                                                   _hd274530274570_
                                                   _tl274529274572_
                                                   _e274534274575_
                                                   _hd274533274578_
                                                   _tl274532274580_
                                                   _e274537274583_
                                                   _hd274536274586_
                                                   _tl274535274588_
                                                   _e274540274591_
                                                   _hd274539274594_
                                                   _tl274538274596_)
                                            (let ((_L274599_ _tl274538274596_)
                                                  (_L274600_ _hd274539274594_)
                                                  (_L274601_ _hd274536274586_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-keyword?
                                                     _L274601_))
                                                  (___kont279118279119_
                                                   _L274599_
                                                   _L274600_
                                                   _L274601_)
                                                  (___kont279122279123_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx279116279117_))
                                        (let ((_e274531274567_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx279116279117_))))
                                          (let ((_tl274529274572_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e274531274567_)))
                                                (_hd274530274570_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e274531274567_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd274530274570_))
                                                (let ((_e274534274575_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd274530274570_))))
                                                  (let ((_tl274532274580_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e274534274575_)))
                                                        (_hd274533274578_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e274534274575_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd274533274578_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#quote
                                                               _hd274533274578_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl274532274580_))
                        (let ((_e274537274583_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl274532274580_))))
                          (let ((_tl274535274588_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e274537274583_)))
                                (_hd274536274586_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e274537274583_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl274535274588_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl274529274572_))
                                    (let ((_e274540274591_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl274529274572_))))
                                      (let ((_tl274538274596_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e274540274591_)))
                                            (_hd274539274594_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e274540274591_))))
                                        (___match279153279154_
                                         _e274531274567_
                                         _hd274530274570_
                                         _tl274529274572_
                                         _e274534274575_
                                         _hd274533274578_
                                         _tl274532274580_
                                         _e274537274583_
                                         _hd274536274586_
                                         _tl274535274588_
                                         _e274540274591_
                                         _hd274539274594_
                                         _tl274538274596_)))
                                    (___kont279122279123_))
                                (___kont279122279123_))))
                        (___kont279122279123_))
                    (___kont279122279123_))
                (___kont279122279123_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont279122279123_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g274522274562_))))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__t279042)
        (let ((__id279043
               (let ((__tmp279044
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t279042 'id))))
                 (if __tmp279044 __tmp279044 (error '"Unknown slot" 'id)))))
          (lambda (_self274482_ _stx274483_ _args274484_)
            (let* ((_klass274486_
                    (let ((__tmp279559
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self274482_
                              __id279043
                              __t279042
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx274483_ __tmp279559)))
                   (_fields274488_
                    (length (##structure-ref
                             _klass274486_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args274490_ (map gxc#compile-e _args274484_))
                   (_inline-make-object274492_
                    (let ((__tmp279560
                           (let ((__tmp279566
                                  (let ((__tmp279567
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp279567)))
                                 (__tmp279561
                                  (let ((__tmp279563
                                         (let ((__tmp279564
                                                (let ((__tmp279565
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self274482_
                                                          __id279043
                                                          __t279042
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp279565 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp279564)))
                                        (__tmp279562
                                         (make-list
                                          _fields274488_
                                          '(%#quote #f))))
                                    (declare (not safe))
                                    (cons __tmp279563 __tmp279562))))
                             (declare (not safe))
                             (cons __tmp279566 __tmp279561))))
                      (declare (not safe))
                      (cons '%#call __tmp279560))))
              (let ((_$e274495_
                     (##structure-ref _klass274486_ '6 gxc#!class::t '#f)))
                (if _$e274495_
                    ((lambda (_ctor274498_)
                       (let ((_$obj274500_
                              (let ((__tmp279667 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp279667)))
                             (_ctor-impl274501_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass274486_
                                 _ctor274498_))))
                         (let ((__tmp279668
                                (let ((__tmp279669
                                       (let ((__tmp279737
                                              (let ((__tmp279738
                                                     (let ((__tmp279740
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj274500_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp279739
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object274492_ '()))))
               (declare (not safe))
               (cons __tmp279740 __tmp279739))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp279738 '())))
                                             (__tmp279670
                                              (let ((__tmp279671
                                                     (let ((__tmp279672
                                                            (let ((__tmp279676
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl274501_
                               (let ((__tmp279731
                                      (let ((__tmp279735
                                             (let ((__tmp279736
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl274501_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp279736)))
                                            (__tmp279732
                                             (let ((__tmp279733
                                                    (let ((__tmp279734
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj274500_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp279734))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp279733
                                                     _args274490_))))
                                        (declare (not safe))
                                        (cons __tmp279735 __tmp279732))))
                                 (declare (not safe))
                                 (cons '%#call __tmp279731))
                               (let* ((_$ctor274503_
                                       (let ((__tmp279677
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp279677)))
                                      (__tmp279678
                                       (let ((__tmp279713
                                              (let ((__tmp279714
                                                     (let ((__tmp279730
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor274503_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp279715
                    (let ((__tmp279716
                           (let ((__tmp279717
                                  (let ((__tmp279728
                                         (let ((__tmp279729
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp279729)))
                                        (__tmp279718
                                         (let ((__tmp279725
                                                (let ((__tmp279726
                                                       (let ((__tmp279727
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self274482_
                         __id279043
                         __t279042
                         '#f))))
                 (declare (not safe))
                 (cons __tmp279727 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp279726)))
                                               (__tmp279719
                                                (let ((__tmp279723
                                                       (let ((__tmp279724
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj274500_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp279724)))
              (__tmp279720
               (let ((__tmp279721
                      (let ((__tmp279722
                             (let ()
                               (declare (not safe))
                               (cons _ctor274498_ '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp279722))))
                 (declare (not safe))
                 (cons __tmp279721 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp279723
                                                        __tmp279720))))
                                           (declare (not safe))
                                           (cons __tmp279725 __tmp279719))))
                                    (declare (not safe))
                                    (cons __tmp279728 __tmp279718))))
                             (declare (not safe))
                             (cons '%#call __tmp279717))))
                      (declare (not safe))
                      (cons __tmp279716 '()))))
               (declare (not safe))
               (cons __tmp279730 __tmp279715))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp279714 '())))
                                             (__tmp279679
                                              (let ((__tmp279680
                                                     (let ((__tmp279681
                                                            (let ((__tmp279711
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279712
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor274503_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp279712)))
                          (__tmp279682
                           (let ((__tmp279704
                                  (let ((__tmp279705
                                         (let ((__tmp279709
                                                (let ((__tmp279710
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor274503_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp279710)))
                                               (__tmp279706
                                                (let ((__tmp279707
                                                       (let ((__tmp279708
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj274500_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp279708))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp279707
                                                        _args274490_))))
                                           (declare (not safe))
                                           (cons __tmp279709 __tmp279706))))
                                    (declare (not safe))
                                    (cons '%#call __tmp279705)))
                                 (__tmp279683
                                  (let ((__tmp279684
                                         (let ((__tmp279685
                                                (let ((__tmp279702
                                                       (let ((__tmp279703
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp279703)))
              (__tmp279686
               (let ((__tmp279700
                      (let ((__tmp279701
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp279701)))
                     (__tmp279687
                      (let ((__tmp279698
                             (let ((__tmp279699
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp279699)))
                            (__tmp279688
                             (let ((__tmp279695
                                    (let ((__tmp279696
                                           (let ((__tmp279697
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self274482_
                                                     __id279043
                                                     __t279042
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp279697 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp279696)))
                                   (__tmp279689
                                    (let ((__tmp279693
                                           (let ((__tmp279694
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp279694)))
                                          (__tmp279690
                                           (let ((__tmp279691
                                                  (let ((__tmp279692
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor274498_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp279692))))
                                             (declare (not safe))
                                             (cons __tmp279691 '()))))
                                      (declare (not safe))
                                      (cons __tmp279693 __tmp279690))))
                               (declare (not safe))
                               (cons __tmp279695 __tmp279689))))
                        (declare (not safe))
                        (cons __tmp279698 __tmp279688))))
                 (declare (not safe))
                 (cons __tmp279700 __tmp279687))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp279702
                                                        __tmp279686))))
                                           (declare (not safe))
                                           (cons '%#call __tmp279685))))
                                    (declare (not safe))
                                    (cons __tmp279684 '()))))
                             (declare (not safe))
                             (cons __tmp279704 __tmp279683))))
                      (declare (not safe))
                      (cons __tmp279711 __tmp279682))))
               (declare (not safe))
               (cons '%#if __tmp279681))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp279680 '()))))
                                         (declare (not safe))
                                         (cons __tmp279713 __tmp279679))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp279678))))
                          (__tmp279673
                           (let ((__tmp279674
                                  (let ((__tmp279675
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj274500_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp279675))))
                             (declare (not safe))
                             (cons __tmp279674 '()))))
                      (declare (not safe))
                      (cons __tmp279676 __tmp279673))))
               (declare (not safe))
               (cons '%#begin __tmp279672))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp279671 '()))))
                                         (declare (not safe))
                                         (cons __tmp279737 __tmp279670))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp279669))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp279668 _stx274483_))))
                     _$e274495_)
                    (let ((_$e274505_
                           (##structure-ref
                            _klass274486_
                            '9
                            gxc#!class::t
                            '#f)))
                      (if _$e274505_
                          ((lambda (_metaclass274508_)
                             (let* ((_$obj274510_
                                     (let ((__tmp279629 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp279629)))
                                    (_metakons274512_
                                     (let ((__tmp279630
                                            (let ()
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               _stx274483_
                                               _metaclass274508_))))
                                       (declare (not safe))
                                       (gxc#!class-lookup-method
                                        __tmp279630
                                        'instance-init!))))
                               (let ((__tmp279631
                                      (let ((__tmp279632
                                             (let ((__tmp279663
                                                    (let ((__tmp279664
                                                           (let ((__tmp279666
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj274510_ '())))
                         (__tmp279665
                          (let ()
                            (declare (not safe))
                            (cons _inline-make-object274492_ '()))))
                     (declare (not safe))
                     (cons __tmp279666 __tmp279665))))
              (declare (not safe))
              (cons __tmp279664 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp279633
                                                    (let ((__tmp279634
                                                           (let ((__tmp279635
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp279639
                                 (if _metakons274512_
                                     (let ((__tmp279653
                                            (let ((__tmp279661
                                                   (let ((__tmp279662
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _metakons274512_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp279662)))
                                                  (__tmp279654
                                                   (let ((__tmp279658
                                                          (let ((__tmp279659
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp279660
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self274482_
                                   __id279043
                                   __t279042
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp279660 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp279659)))
                 (__tmp279655
                  (let ((__tmp279656
                         (let ((__tmp279657
                                (let ()
                                  (declare (not safe))
                                  (cons _$obj274510_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp279657))))
                    (declare (not safe))
                    (cons __tmp279656 _args274490_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp279658
                                                           __tmp279655))))
                                              (declare (not safe))
                                              (cons __tmp279661 __tmp279654))))
                                       (declare (not safe))
                                       (cons '%#call __tmp279653))
                                     (let ((__tmp279640
                                            (let ((__tmp279651
                                                   (let ((__tmp279652
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'call-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp279652)))
                                                  (__tmp279641
                                                   (let ((__tmp279648
                                                          (let ((__tmp279649
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp279650
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self274482_
                                   __id279043
                                   __t279042
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp279650 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp279649)))
                 (__tmp279642
                  (let ((__tmp279646
                         (let ((__tmp279647
                                (let ()
                                  (declare (not safe))
                                  (cons 'instance-init! '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp279647)))
                        (__tmp279643
                         (let ((__tmp279644
                                (let ((__tmp279645
                                       (let ()
                                         (declare (not safe))
                                         (cons _$obj274510_ '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp279645))))
                           (declare (not safe))
                           (cons __tmp279644 _args274490_))))
                    (declare (not safe))
                    (cons __tmp279646 __tmp279643))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp279648
                                                           __tmp279642))))
                                              (declare (not safe))
                                              (cons __tmp279651 __tmp279641))))
                                       (declare (not safe))
                                       (cons '%#call __tmp279640))))
                                (__tmp279636
                                 (let ((__tmp279637
                                        (let ((__tmp279638
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$obj274510_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp279638))))
                                   (declare (not safe))
                                   (cons __tmp279637 '()))))
                            (declare (not safe))
                            (cons __tmp279639 __tmp279636))))
                     (declare (not safe))
                     (cons '%#begin __tmp279635))))
              (declare (not safe))
              (cons __tmp279634 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp279663
                                                     __tmp279633))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp279632))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp279631
                                  _stx274483_))))
                           _$e274505_)
                          (if (##structure-ref
                               _klass274486_
                               '7
                               gxc#!class::t
                               '#f)
                              (if (fx= (length _args274490_) _fields274488_)
                                  (let ((__tmp279621
                                         (let ((__tmp279622
                                                (let ((__tmp279627
                                                       (let ((__tmp279628
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '##structure '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp279628)))
              (__tmp279623
               (let ((__tmp279624
                      (let ((__tmp279625
                             (let ((__tmp279626
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self274482_
                                       __id279043
                                       __t279042
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp279626 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp279625))))
                 (declare (not safe))
                 (cons __tmp279624 _args274490_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp279627
                                                        __tmp279623))))
                                           (declare (not safe))
                                           (cons '%#call __tmp279622))))
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp279621
                                     _stx274483_))
                                  (let ((__tmp279620
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _self274482_
                                            __id279043
                                            __t279042
                                            '#f)))
                                        (__tmp279619
                                         (length (##structure-ref
                                                  _klass274486_
                                                  '5
                                                  gxc#!class::t
                                                  '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _stx274483_
                                     __tmp279620
                                     __tmp279619)))
                              (let ((_$obj274515_
                                     (let ((__tmp279568 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp279568))))
                                (let _lp274517_ ((_rest274519_ _args274490_)
                                                 (_initializers274520_ '()))
                                  (let* ((___stx279158279159_ _rest274519_)
                                         (_g274524274545_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               ___stx279158279159_)))))
                                    (let ((___kont279160279161_
                                           (lambda (_L274599_
                                                    _L274600_
                                                    _L274601_)
                                             (let* ((_slot274632_
                                                     (keyword->symbol
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L274601_))))
                                                    (_off274634_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass274486_
                                                        _slot274632_))))
                                               (if _off274634_
                                                   (let ((__tmp279570
                                                          (let ((__tmp279571
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _off274634_ _L274600_))))
                    (declare (not safe))
                    (cons __tmp279571 _initializers274520_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp274517_
                                                      _L274599_
                                                      __tmp279570))
                                                   (let ((__tmp279569
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _self274482_
                                                             __id279043
                                                             __t279042
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"unknown slot"
                                                      _stx274483_
                                                      __tmp279569
                                                      _slot274632_))))))
                                          (___kont279162279163_
                                           (lambda ()
                                             (let ((__tmp279572
                                                    (let ((__tmp279573
                                                           (let ((__tmp279596
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp279597
                                 (let ((__tmp279599
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj274515_ '())))
                                       (__tmp279598
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object274492_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp279599 __tmp279598))))
                            (declare (not safe))
                            (cons __tmp279597 '())))
                         (__tmp279574
                          (let ((__tmp279575
                                 (let ((__tmp279576
                                        (let ((__tmp279593
                                               (let ((__tmp279594
                                                      (let ((__tmp279595
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj274515_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp279595))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp279594 '())))
                                              (__tmp279577
                                               (let ((__tmp279578
                                                      (lambda (_i274559_
                                                               _r274560_)
                                                        (let ((__tmp279579
                                                               (let ((__tmp279580
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp279590
                                     (let ((__tmp279591
                                            (let ((__tmp279592
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self274482_
                                                      __id279043
                                                      __t279042
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp279592 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp279591)))
                                    (__tmp279581
                                     (let ((__tmp279587
                                            (let ((__tmp279588
                                                   (let ((__tmp279589
                                                          (car _i274559_)))
                                                     (declare (not safe))
                                                     (cons __tmp279589 '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp279588)))
                                           (__tmp279582
                                            (let ((__tmp279585
                                                   (let ((__tmp279586
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj274515_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp279586)))
                                                  (__tmp279583
                                                   (let ((__tmp279584
                                                          (cdr _i274559_)))
                                                     (declare (not safe))
                                                     (cons __tmp279584 '()))))
                                              (declare (not safe))
                                              (cons __tmp279585 __tmp279583))))
                                       (declare (not safe))
                                       (cons __tmp279587 __tmp279582))))
                                (declare (not safe))
                                (cons __tmp279590 __tmp279581))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp279580))))
                  (declare (not safe))
                  (cons __tmp279579 _r274560_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl1 __tmp279578
                                                         '()
                                                         _initializers274520_))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp279593
                                                  __tmp279577))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp279576))))
                            (declare (not safe))
                            (cons __tmp279575 '()))))
                     (declare (not safe))
                     (cons __tmp279596 __tmp279574))))
              (declare (not safe))
              (cons '%#let-values __tmp279573))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp279572
                                                _stx274483_))))
                                          (___kont279164279165_
                                           (lambda ()
                                             (let ((__tmp279600
                                                    (let ((__tmp279601
                                                           (let ((__tmp279615
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp279616
                                 (let ((__tmp279618
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj274515_ '())))
                                       (__tmp279617
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object274492_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp279618 __tmp279617))))
                            (declare (not safe))
                            (cons __tmp279616 '())))
                         (__tmp279602
                          (let ((__tmp279603
                                 (let ((__tmp279604
                                        (let ((__tmp279608
                                               (let ((__tmp279609
                                                      (let ((__tmp279613
                                                             (let ((__tmp279614
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'class-instance-init! '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp279614)))
                    (__tmp279610
                     (let ((__tmp279611
                            (let ((__tmp279612
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj274515_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp279612))))
                       (declare (not safe))
                       (cons __tmp279611 _args274490_))))
                (declare (not safe))
                (cons __tmp279613 __tmp279610))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp279609)))
                                              (__tmp279605
                                               (let ((__tmp279606
                                                      (let ((__tmp279607
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj274515_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp279607))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp279606 '()))))
                                          (declare (not safe))
                                          (cons __tmp279608 __tmp279605))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp279604))))
                            (declare (not safe))
                            (cons __tmp279603 '()))))
                     (declare (not safe))
                     (cons __tmp279615 __tmp279602))))
              (declare (not safe))
              (cons '%#let-values __tmp279601))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp279600
                                                _stx274483_)))))
                                      (let* ((_g274522274562_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       ___stx279158279159_))
                                                    (___kont279162279163_)
                                                    (___kont279164279165_))))
                                             (___match279195279196_
                                              (lambda (_e274531274567_
                                                       _hd274530274570_
                                                       _tl274529274572_
                                                       _e274534274575_
                                                       _hd274533274578_
                                                       _tl274532274580_
                                                       _e274537274583_
                                                       _hd274536274586_
                                                       _tl274535274588_
                                                       _e274540274591_
                                                       _hd274539274594_
                                                       _tl274538274596_)
                                                (let ((_L274599_
                                                       _tl274538274596_)
                                                      (_L274600_
                                                       _hd274539274594_)
                                                      (_L274601_
                                                       _hd274536274586_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-keyword?
                                                         _L274601_))
                                                      (___kont279160279161_
                                                       _L274599_
                                                       _L274600_
                                                       _L274601_)
                                                      (___kont279164279165_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               ___stx279158279159_))
                                            (let ((_e274531274567_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      ___stx279158279159_))))
                                              (let ((_tl274529274572_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e274531274567_)))
                                                    (_hd274530274570_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e274531274567_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd274530274570_))
                                                    (let ((_e274534274575_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd274530274570_))))
                                                      (let ((_tl274532274580_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e274534274575_)))
                    (_hd274533274578_
                     (let () (declare (not safe)) (##car _e274534274575_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd274533274578_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd274533274578_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl274532274580_))
                            (let ((_e274537274583_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl274532274580_))))
                              (let ((_tl274535274588_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e274537274583_)))
                                    (_hd274536274586_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e274537274583_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl274535274588_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl274529274572_))
                                        (let ((_e274540274591_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl274529274572_))))
                                          (let ((_tl274538274596_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e274540274591_)))
                                                (_hd274539274594_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e274540274591_))))
                                            (___match279195279196_
                                             _e274531274567_
                                             _hd274530274570_
                                             _tl274529274572_
                                             _e274534274575_
                                             _hd274533274578_
                                             _tl274532274580_
                                             _e274537274583_
                                             _hd274536274586_
                                             _tl274535274588_
                                             _e274540274591_
                                             _hd274539274594_
                                             _tl274538274596_)))
                                        (___kont279164279165_))
                                    (___kont279164279165_))))
                            (___kont279164279165_))
                        (___kont279164279165_))
                    (___kont279164279165_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont279164279165_))))
                                            (let ()
                                              (declare (not safe))
                                              (_g274522274562_))))))))))))))))))
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
      (lambda (_self274305_ _stx274306_ _args274307_)
        (let* ((_g274309274319_
                (lambda (_g274310274316_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g274310274316_))))
               (_g274308274357_
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
                                         (let ((__tmp279741
                                                (##structure-ref
                                                 _self274305_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx274306_
                                            __tmp279741)))
                                        (_field274345_
                                         (let ((__tmp279742
                                                (##structure-ref
                                                 _self274305_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass274343_
                                            __tmp279742)))
                                        (_object274347_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L274332_))))
                                   (if (##structure-ref
                                        _klass274343_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp279819
                                              (let ((__tmp279828
                                                     (if (##structure-ref
                                                          _self274305_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp279820
                                                     (let ((__tmp279825
                                                            (let ((__tmp279826
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279827
                                  (##structure-ref
                                   _self274305_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp279827 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp279826)))
                   (__tmp279821
                    (let ((__tmp279823
                           (let ((__tmp279824
                                  (let ()
                                    (declare (not safe))
                                    (cons _field274345_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp279824)))
                          (__tmp279822
                           (let ()
                             (declare (not safe))
                             (cons _object274347_ '()))))
                      (declare (not safe))
                      (cons __tmp279823 __tmp279822))))
               (declare (not safe))
               (cons __tmp279825 __tmp279821))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp279828
                                                      __tmp279820))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp279819
                                          _stx274306_))
                                       (if (##structure-ref
                                            _klass274343_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp279809
                                                  (let ((__tmp279818
                                                         (if (##structure-ref
                                                              _self274305_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp279810
                                                         (let ((__tmp279815
                                                                (let ((__tmp279816
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp279817
                                      (##structure-ref
                                       _self274305_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp279817 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp279816)))
                       (__tmp279811
                        (let ((__tmp279813
                               (let ((__tmp279814
                                      (let ()
                                        (declare (not safe))
                                        (cons _field274345_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp279814)))
                              (__tmp279812
                               (let ()
                                 (declare (not safe))
                                 (cons _object274347_ '()))))
                          (declare (not safe))
                          (cons __tmp279813 __tmp279812))))
                   (declare (not safe))
                   (cons __tmp279815 __tmp279811))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp279818
                                                          __tmp279810))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp279809
                                              _stx274306_))
                                           (let ((_$e274350_
                                                  (let ((__tmp279743
                                                         (##structure-ref
                                                          _self274305_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass274343_
                                                     __tmp279743))))
                                             (if _$e274350_
                                                 ((lambda (_klass274353_)
                                                    (let ((__tmp279799
                                                           (let ((__tmp279808
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self274305_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp279800
                          (let ((__tmp279805
                                 (let ((__tmp279806
                                        (let ((__tmp279807
                                               (##structure-ref
                                                _self274305_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp279807 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp279806)))
                                (__tmp279801
                                 (let ((__tmp279803
                                        (let ((__tmp279804
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field274345_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp279804)))
                                       (__tmp279802
                                        (let ()
                                          (declare (not safe))
                                          (cons _object274347_ '()))))
                                   (declare (not safe))
                                   (cons __tmp279803 __tmp279802))))
                            (declare (not safe))
                            (cons __tmp279805 __tmp279801))))
                     (declare (not safe))
                     (cons __tmp279808 __tmp279800))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp279799 _stx274306_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e274350_)
                                                 (if (##structure-ref
                                                      _self274305_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp279753
                                                            (let* ((_$obj274355_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp279754 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp279754)))
                           (__tmp279755
                            (let ((__tmp279795
                                   (let ((__tmp279796
                                          (let ((__tmp279798
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj274355_ '())))
                                                (__tmp279797
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object274347_ '()))))
                                            (declare (not safe))
                                            (cons __tmp279798 __tmp279797))))
                                     (declare (not safe))
                                     (cons __tmp279796 '())))
                                  (__tmp279756
                                   (let ((__tmp279757
                                          (let ((__tmp279758
                                                 (let ((__tmp279787
                                                        (let ((__tmp279788
                                                               (let ((__tmp279792
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp279793
                                     (let ((__tmp279794
                                            (##structure-ref
                                             _klass274343_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp279794 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp279793)))
                             (__tmp279789
                              (let ((__tmp279790
                                     (let ((__tmp279791
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj274355_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp279791))))
                                (declare (not safe))
                                (cons __tmp279790 '()))))
                         (declare (not safe))
                         (cons __tmp279792 __tmp279789))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp279788)))
               (__tmp279759
                (let ((__tmp279776
                       (let ((__tmp279777
                              (let ((__tmp279784
                                     (let ((__tmp279785
                                            (let ((__tmp279786
                                                   (##structure-ref
                                                    _self274305_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp279786 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp279785)))
                                    (__tmp279778
                                     (let ((__tmp279782
                                            (let ((__tmp279783
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field274345_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp279783)))
                                           (__tmp279779
                                            (let ((__tmp279780
                                                   (let ((__tmp279781
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj274355_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp279781))))
                                              (declare (not safe))
                                              (cons __tmp279780 '()))))
                                       (declare (not safe))
                                       (cons __tmp279782 __tmp279779))))
                                (declare (not safe))
                                (cons __tmp279784 __tmp279778))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp279777)))
                      (__tmp279760
                       (let ((__tmp279761
                              (let ((__tmp279762
                                     (let ((__tmp279774
                                            (let ((__tmp279775
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp279775)))
                                           (__tmp279763
                                            (let ((__tmp279771
                                                   (let ((__tmp279772
                                                          (let ((__tmp279773
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self274305_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp279773 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp279772)))
                                                  (__tmp279764
                                                   (let ((__tmp279769
                                                          (let ((__tmp279770
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj274355_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp279770)))
                 (__tmp279765
                  (let ((__tmp279766
                         (let ((__tmp279767
                                (let ((__tmp279768
                                       (##structure-ref
                                        _self274305_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp279768 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp279767))))
                    (declare (not safe))
                    (cons __tmp279766 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp279769
                                                           __tmp279765))))
                                              (declare (not safe))
                                              (cons __tmp279771 __tmp279764))))
                                       (declare (not safe))
                                       (cons __tmp279774 __tmp279763))))
                                (declare (not safe))
                                (cons '%#call __tmp279762))))
                         (declare (not safe))
                         (cons __tmp279761 '()))))
                  (declare (not safe))
                  (cons __tmp279776 __tmp279760))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279787
                                                         __tmp279759))))
                                            (declare (not safe))
                                            (cons '%#if __tmp279758))))
                                     (declare (not safe))
                                     (cons __tmp279757 '()))))
                              (declare (not safe))
                              (cons __tmp279795 __tmp279756))))
                      (declare (not safe))
                      (cons '%#let-values __tmp279755))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp279753 _stx274306_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp279744
                                                            (let ((__tmp279745
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279751
                                  (let ((__tmp279752
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp279752)))
                                 (__tmp279746
                                  (let ((__tmp279747
                                         (let ((__tmp279748
                                                (let ((__tmp279749
                                                       (let ((__tmp279750
                                                              (##structure-ref
                                                               _self274305_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp279750
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp279749))))
                                           (declare (not safe))
                                           (cons __tmp279748 '()))))
                                    (declare (not safe))
                                    (cons _object274347_ __tmp279747))))
                             (declare (not safe))
                             (cons __tmp279751 __tmp279746))))
                      (declare (not safe))
                      (cons '%#call __tmp279745))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp279744 _stx274306_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd274313274327_)
                              (let ()
                                (declare (not safe))
                                (_g274309274319_ _g274310274322_)))))
                      (let ()
                        (declare (not safe))
                        (_g274309274319_ _g274310274322_))))))
          (declare (not safe))
          (_g274308274357_ _args274307_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__t279045)
        (let ((__id279046
               (let ((__tmp279049
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t279045 'id))))
                 (if __tmp279049 __tmp279049 (error '"Unknown slot" 'id))))
              (__checked?279047
               (let ((__tmp279050
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t279045 'checked?))))
                 (if __tmp279050
                     __tmp279050
                     (error '"Unknown slot" 'checked?))))
              (__slot279048
               (let ((__tmp279051
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t279045 'slot))))
                 (if __tmp279051 __tmp279051 (error '"Unknown slot" 'slot)))))
          (lambda (_self274305_ _stx274306_ _args274307_)
            (let* ((_g274309274319_
                    (lambda (_g274310274316_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g274310274316_))))
                   (_g274308274357_
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
                                             (let ((__tmp279829
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self274305_
                                                       __id279046
                                                       __t279045
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx274306_
                                                __tmp279829)))
                                            (_field274345_
                                             (let ((__tmp279830
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self274305_
                                                       __slot279048
                                                       __t279045
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass274343_
                                                __tmp279830)))
                                            (_object274347_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L274332_))))
                                       (if (##structure-ref
                                            _klass274343_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp279907
                                                  (let ((__tmp279916
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self274305_
                        __checked?279047
                        __t279045
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp279908
                 (let ((__tmp279913
                        (let ((__tmp279914
                               (let ((__tmp279915
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self274305_
                                         __id279046
                                         __t279045
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp279915 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp279914)))
                       (__tmp279909
                        (let ((__tmp279911
                               (let ((__tmp279912
                                      (let ()
                                        (declare (not safe))
                                        (cons _field274345_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp279912)))
                              (__tmp279910
                               (let ()
                                 (declare (not safe))
                                 (cons _object274347_ '()))))
                          (declare (not safe))
                          (cons __tmp279911 __tmp279910))))
                   (declare (not safe))
                   (cons __tmp279913 __tmp279909))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp279916
                                                          __tmp279908))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp279907
                                              _stx274306_))
                                           (if (##structure-ref
                                                _klass274343_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp279897
                                                      (let ((__tmp279906
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self274305_
                            __checked?279047
                            __t279045
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp279898
                     (let ((__tmp279903
                            (let ((__tmp279904
                                   (let ((__tmp279905
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self274305_
                                             __id279046
                                             __t279045
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp279905 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp279904)))
                           (__tmp279899
                            (let ((__tmp279901
                                   (let ((__tmp279902
                                          (let ()
                                            (declare (not safe))
                                            (cons _field274345_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp279902)))
                                  (__tmp279900
                                   (let ()
                                     (declare (not safe))
                                     (cons _object274347_ '()))))
                              (declare (not safe))
                              (cons __tmp279901 __tmp279900))))
                       (declare (not safe))
                       (cons __tmp279903 __tmp279899))))
                (declare (not safe))
                (cons __tmp279906 __tmp279898))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp279897
                                                  _stx274306_))
                                               (let ((_$e274350_
                                                      (let ((__tmp279831
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self274305_
                        __slot279048
                        __t279045
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass274343_ __tmp279831))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e274350_
                                                     ((lambda (_klass274353_)
                                                        (let ((__tmp279887
                                                               (let ((__tmp279896
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self274305_
                                     __checked?279047
                                     __t279045
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp279888
                              (let ((__tmp279893
                                     (let ((__tmp279894
                                            (let ((__tmp279895
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self274305_
                                                      __id279046
                                                      __t279045
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp279895 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp279894)))
                                    (__tmp279889
                                     (let ((__tmp279891
                                            (let ((__tmp279892
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field274345_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp279892)))
                                           (__tmp279890
                                            (let ()
                                              (declare (not safe))
                                              (cons _object274347_ '()))))
                                       (declare (not safe))
                                       (cons __tmp279891 __tmp279890))))
                                (declare (not safe))
                                (cons __tmp279893 __tmp279889))))
                         (declare (not safe))
                         (cons __tmp279896 __tmp279888))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp279887 _stx274306_)))
              _$e274350_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self274305_
                                                            __checked?279047
                                                            __t279045
                                                            '#f))
                                                         (let ((__tmp279841
                                                                (let* ((_$obj274355_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp279842 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp279842)))
                               (__tmp279843
                                (let ((__tmp279883
                                       (let ((__tmp279884
                                              (let ((__tmp279886
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj274355_
                                                             '())))
                                                    (__tmp279885
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object274347_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp279886
                                                      __tmp279885))))
                                         (declare (not safe))
                                         (cons __tmp279884 '())))
                                      (__tmp279844
                                       (let ((__tmp279845
                                              (let ((__tmp279846
                                                     (let ((__tmp279875
                                                            (let ((__tmp279876
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279880
                                  (let ((__tmp279881
                                         (let ((__tmp279882
                                                (##structure-ref
                                                 _klass274343_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp279882 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp279881)))
                                 (__tmp279877
                                  (let ((__tmp279878
                                         (let ((__tmp279879
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj274355_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp279879))))
                                    (declare (not safe))
                                    (cons __tmp279878 '()))))
                             (declare (not safe))
                             (cons __tmp279880 __tmp279877))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp279876)))
                   (__tmp279847
                    (let ((__tmp279864
                           (let ((__tmp279865
                                  (let ((__tmp279872
                                         (let ((__tmp279873
                                                (let ((__tmp279874
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self274305_
                                                          __id279046
                                                          __t279045
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp279874 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp279873)))
                                        (__tmp279866
                                         (let ((__tmp279870
                                                (let ((__tmp279871
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field274345_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp279871)))
                                               (__tmp279867
                                                (let ((__tmp279868
                                                       (let ((__tmp279869
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj274355_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp279869))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp279868 '()))))
                                           (declare (not safe))
                                           (cons __tmp279870 __tmp279867))))
                                    (declare (not safe))
                                    (cons __tmp279872 __tmp279866))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp279865)))
                          (__tmp279848
                           (let ((__tmp279849
                                  (let ((__tmp279850
                                         (let ((__tmp279862
                                                (let ((__tmp279863
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp279863)))
                                               (__tmp279851
                                                (let ((__tmp279859
                                                       (let ((__tmp279860
                                                              (let ((__tmp279861
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self274305_
                                __id279046
                                __t279045
                                '#f))))
                        (declare (not safe))
                        (cons __tmp279861 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp279860)))
              (__tmp279852
               (let ((__tmp279857
                      (let ((__tmp279858
                             (let ()
                               (declare (not safe))
                               (cons _$obj274355_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp279858)))
                     (__tmp279853
                      (let ((__tmp279854
                             (let ((__tmp279855
                                    (let ((__tmp279856
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self274305_
                                              __slot279048
                                              __t279045
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp279856 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp279855))))
                        (declare (not safe))
                        (cons __tmp279854 '()))))
                 (declare (not safe))
                 (cons __tmp279857 __tmp279853))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp279859
                                                        __tmp279852))))
                                           (declare (not safe))
                                           (cons __tmp279862 __tmp279851))))
                                    (declare (not safe))
                                    (cons '%#call __tmp279850))))
                             (declare (not safe))
                             (cons __tmp279849 '()))))
                      (declare (not safe))
                      (cons __tmp279864 __tmp279848))))
               (declare (not safe))
               (cons __tmp279875 __tmp279847))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp279846))))
                                         (declare (not safe))
                                         (cons __tmp279845 '()))))
                                  (declare (not safe))
                                  (cons __tmp279883 __tmp279844))))
                          (declare (not safe))
                          (cons '%#let-values __tmp279843))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp279841 _stx274306_))
                 (let ((__tmp279832
                        (let ((__tmp279833
                               (let ((__tmp279839
                                      (let ((__tmp279840
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp279840)))
                                     (__tmp279834
                                      (let ((__tmp279835
                                             (let ((__tmp279836
                                                    (let ((__tmp279837
                                                           (let ((__tmp279838
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self274305_
                             __slot279048
                             __t279045
                             '#f))))
                     (declare (not safe))
                     (cons __tmp279838 '()))))
              (declare (not safe))
              (cons '%#quote __tmp279837))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp279836 '()))))
                                        (declare (not safe))
                                        (cons _object274347_ __tmp279835))))
                                 (declare (not safe))
                                 (cons __tmp279839 __tmp279834))))
                          (declare (not safe))
                          (cons '%#call __tmp279833))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp279832 _stx274306_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd274313274327_)
                                  (let ()
                                    (declare (not safe))
                                    (_g274309274319_ _g274310274322_)))))
                          (let ()
                            (declare (not safe))
                            (_g274309274319_ _g274310274322_))))))
              (declare (not safe))
              (_g274308274357_ _args274307_))))))
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
      (lambda (_self274110_ _stx274111_ _args274112_)
        (let* ((_g274114274128_
                (lambda (_g274115274125_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g274115274125_))))
               (_g274113274180_
                (lambda (_g274115274131_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g274115274131_))
                      (let ((_e274120274133_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g274115274131_))))
                        (let ((_hd274119274136_
                               (let ()
                                 (declare (not safe))
                                 (##car _e274120274133_)))
                              (_tl274118274138_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e274120274133_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl274118274138_))
                              (let ((_e274123274141_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl274118274138_))))
                                (let ((_hd274122274144_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e274123274141_)))
                                      (_tl274121274146_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e274123274141_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl274121274146_))
                                      ((lambda (_L274149_ _L274150_)
                                         (let* ((_klass274164_
                                                 (let ((__tmp279917
                                                        (##structure-ref
                                                         _self274110_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx274111_
                                                    __tmp279917)))
                                                (_field274166_
                                                 (let ((__tmp279918
                                                        (##structure-ref
                                                         _self274110_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass274164_
                                                    __tmp279918)))
                                                (_object274168_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L274150_)))
                                                (_value274170_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L274149_))))
                                           (if (##structure-ref
                                                _klass274164_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp280000
                                                      (let ((__tmp280010
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self274110_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp280001
                     (let ((__tmp280007
                            (let ((__tmp280008
                                   (let ((__tmp280009
                                          (##structure-ref
                                           _self274110_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp280009 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp280008)))
                           (__tmp280002
                            (let ((__tmp280005
                                   (let ((__tmp280006
                                          (let ()
                                            (declare (not safe))
                                            (cons _field274166_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp280006)))
                                  (__tmp280003
                                   (let ((__tmp280004
                                          (let ()
                                            (declare (not safe))
                                            (cons _value274170_ '()))))
                                     (declare (not safe))
                                     (cons _object274168_ __tmp280004))))
                              (declare (not safe))
                              (cons __tmp280005 __tmp280003))))
                       (declare (not safe))
                       (cons __tmp280007 __tmp280002))))
                (declare (not safe))
                (cons __tmp280010 __tmp280001))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp280000
                                                  _stx274111_))
                                               (if (##structure-ref
                                                    _klass274164_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp279989
                                                          (let ((__tmp279999
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self274110_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp279990
                         (let ((__tmp279996
                                (let ((__tmp279997
                                       (let ((__tmp279998
                                              (##structure-ref
                                               _self274110_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp279998 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp279997)))
                               (__tmp279991
                                (let ((__tmp279994
                                       (let ((__tmp279995
                                              (let ()
                                                (declare (not safe))
                                                (cons _field274166_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp279995)))
                                      (__tmp279992
                                       (let ((__tmp279993
                                              (let ()
                                                (declare (not safe))
                                                (cons _value274170_ '()))))
                                         (declare (not safe))
                                         (cons _object274168_ __tmp279993))))
                                  (declare (not safe))
                                  (cons __tmp279994 __tmp279992))))
                           (declare (not safe))
                           (cons __tmp279996 __tmp279991))))
                    (declare (not safe))
                    (cons __tmp279999 __tmp279990))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp279989
                                                      _stx274111_))
                                                   (let ((_$e274173_
                                                          (let ((__tmp279919
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self274110_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass274164_ __tmp279919))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e274173_
                                                         ((lambda (_klass274176_)
                                                            (let ((__tmp279978
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279988
                                  (if (##structure-ref
                                       _self274110_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp279979
                                  (let ((__tmp279985
                                         (let ((__tmp279986
                                                (let ((__tmp279987
                                                       (##structure-ref
                                                        _self274110_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp279987 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp279986)))
                                        (__tmp279980
                                         (let ((__tmp279983
                                                (let ((__tmp279984
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field274166_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp279984)))
                                               (__tmp279981
                                                (let ((__tmp279982
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value274170_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object274168_
                                                        __tmp279982))))
                                           (declare (not safe))
                                           (cons __tmp279983 __tmp279981))))
                                    (declare (not safe))
                                    (cons __tmp279985 __tmp279980))))
                             (declare (not safe))
                             (cons __tmp279988 __tmp279979))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp279978 _stx274111_)))
                  _$e274173_)
                 (if (##structure-ref _self274110_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp279930
                            (let* ((_$obj274178_
                                    (let ((__tmp279931 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp279931)))
                                   (__tmp279932
                                    (let ((__tmp279974
                                           (let ((__tmp279975
                                                  (let ((__tmp279977
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj274178_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp279976
                 (let () (declare (not safe)) (cons _object274168_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp279977
                                                          __tmp279976))))
                                             (declare (not safe))
                                             (cons __tmp279975 '())))
                                          (__tmp279933
                                           (let ((__tmp279934
                                                  (let ((__tmp279935
                                                         (let ((__tmp279966
                                                                (let ((__tmp279967
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp279971
                                      (let ((__tmp279972
                                             (let ((__tmp279973
                                                    (##structure-ref
                                                     _klass274164_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp279973 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp279972)))
                                     (__tmp279968
                                      (let ((__tmp279969
                                             (let ((__tmp279970
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj274178_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp279970))))
                                        (declare (not safe))
                                        (cons __tmp279969 '()))))
                                 (declare (not safe))
                                 (cons __tmp279971 __tmp279968))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp279967)))
                       (__tmp279936
                        (let ((__tmp279954
                               (let ((__tmp279955
                                      (let ((__tmp279963
                                             (let ((__tmp279964
                                                    (let ((__tmp279965
                                                           (##structure-ref
                                                            _self274110_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp279965 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp279964)))
                                            (__tmp279956
                                             (let ((__tmp279961
                                                    (let ((__tmp279962
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field274166_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp279962)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp279957
                                                    (let ((__tmp279959
                                                           (let ((__tmp279960
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj274178_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp279960)))
                  (__tmp279958
                   (let () (declare (not safe)) (cons _value274170_ '()))))
              (declare (not safe))
              (cons __tmp279959 __tmp279958))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp279961
                                                     __tmp279957))))
                                        (declare (not safe))
                                        (cons __tmp279963 __tmp279956))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp279955)))
                              (__tmp279937
                               (let ((__tmp279938
                                      (let ((__tmp279939
                                             (let ((__tmp279952
                                                    (let ((__tmp279953
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp279953)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp279940
                                                    (let ((__tmp279949
                                                           (let ((__tmp279950
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp279951
                                 (##structure-ref
                                  _self274110_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp279951 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp279950)))
                  (__tmp279941
                   (let ((__tmp279947
                          (let ((__tmp279948
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj274178_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp279948)))
                         (__tmp279942
                          (let ((__tmp279944
                                 (let ((__tmp279945
                                        (let ((__tmp279946
                                               (##structure-ref
                                                _self274110_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp279946 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp279945)))
                                (__tmp279943
                                 (let ()
                                   (declare (not safe))
                                   (cons _value274170_ '()))))
                            (declare (not safe))
                            (cons __tmp279944 __tmp279943))))
                     (declare (not safe))
                     (cons __tmp279947 __tmp279942))))
              (declare (not safe))
              (cons __tmp279949 __tmp279941))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp279952
                                                     __tmp279940))))
                                        (declare (not safe))
                                        (cons '%#call __tmp279939))))
                                 (declare (not safe))
                                 (cons __tmp279938 '()))))
                          (declare (not safe))
                          (cons __tmp279954 __tmp279937))))
                   (declare (not safe))
                   (cons __tmp279966 __tmp279936))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp279935))))
                                             (declare (not safe))
                                             (cons __tmp279934 '()))))
                                      (declare (not safe))
                                      (cons __tmp279974 __tmp279933))))
                              (declare (not safe))
                              (cons '%#let-values __tmp279932))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp279930 _stx274111_))
                     (let ((__tmp279920
                            (let ((__tmp279921
                                   (let ((__tmp279928
                                          (let ((__tmp279929
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp279929)))
                                         (__tmp279922
                                          (let ((__tmp279923
                                                 (let ((__tmp279925
                                                        (let ((__tmp279926
                                                               (let ((__tmp279927
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self274110_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp279927 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp279926)))
               (__tmp279924
                (let () (declare (not safe)) (cons _value274170_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279925
                                                         __tmp279924))))
                                            (declare (not safe))
                                            (cons _object274168_
                                                  __tmp279923))))
                                     (declare (not safe))
                                     (cons __tmp279928 __tmp279922))))
                              (declare (not safe))
                              (cons '%#call __tmp279921))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp279920 _stx274111_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd274122274144_
                                       _hd274119274136_)
                                      (let ()
                                        (declare (not safe))
                                        (_g274114274128_ _g274115274131_)))))
                              (let ()
                                (declare (not safe))
                                (_g274114274128_ _g274115274131_)))))
                      (let ()
                        (declare (not safe))
                        (_g274114274128_ _g274115274131_))))))
          (declare (not safe))
          (_g274113274180_ _args274112_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__t279052)
        (let ((__id279053
               (let ((__tmp279056
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t279052 'id))))
                 (if __tmp279056 __tmp279056 (error '"Unknown slot" 'id))))
              (__checked?279054
               (let ((__tmp279057
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t279052 'checked?))))
                 (if __tmp279057
                     __tmp279057
                     (error '"Unknown slot" 'checked?))))
              (__slot279055
               (let ((__tmp279058
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t279052 'slot))))
                 (if __tmp279058 __tmp279058 (error '"Unknown slot" 'slot)))))
          (lambda (_self274110_ _stx274111_ _args274112_)
            (let* ((_g274114274128_
                    (lambda (_g274115274125_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g274115274125_))))
                   (_g274113274180_
                    (lambda (_g274115274131_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g274115274131_))
                          (let ((_e274120274133_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g274115274131_))))
                            (let ((_hd274119274136_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e274120274133_)))
                                  (_tl274118274138_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e274120274133_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl274118274138_))
                                  (let ((_e274123274141_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl274118274138_))))
                                    (let ((_hd274122274144_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e274123274141_)))
                                          (_tl274121274146_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e274123274141_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl274121274146_))
                                          ((lambda (_L274149_ _L274150_)
                                             (let* ((_klass274164_
                                                     (let ((__tmp280011
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self274110_
                                                               __id279053
                                                               __t279052
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx274111_
                                                        __tmp280011)))
                                                    (_field274166_
                                                     (let ((__tmp280012
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self274110_
                                                               __slot279055
                                                               __t279052
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass274164_
                                                        __tmp280012)))
                                                    (_object274168_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L274150_)))
                                                    (_value274170_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L274149_))))
                                               (if (##structure-ref
                                                    _klass274164_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp280094
                                                          (let ((__tmp280104
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self274110_
                                __checked?279054
                                __t279052
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp280095
                         (let ((__tmp280101
                                (let ((__tmp280102
                                       (let ((__tmp280103
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self274110_
                                                 __id279053
                                                 __t279052
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp280103 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp280102)))
                               (__tmp280096
                                (let ((__tmp280099
                                       (let ((__tmp280100
                                              (let ()
                                                (declare (not safe))
                                                (cons _field274166_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp280100)))
                                      (__tmp280097
                                       (let ((__tmp280098
                                              (let ()
                                                (declare (not safe))
                                                (cons _value274170_ '()))))
                                         (declare (not safe))
                                         (cons _object274168_ __tmp280098))))
                                  (declare (not safe))
                                  (cons __tmp280099 __tmp280097))))
                           (declare (not safe))
                           (cons __tmp280101 __tmp280096))))
                    (declare (not safe))
                    (cons __tmp280104 __tmp280095))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp280094
                                                      _stx274111_))
                                                   (if (##structure-ref
                                                        _klass274164_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp280083
                                                              (let ((__tmp280093
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self274110_
                                    __checked?279054
                                    __t279052
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp280084
                             (let ((__tmp280090
                                    (let ((__tmp280091
                                           (let ((__tmp280092
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self274110_
                                                     __id279053
                                                     __t279052
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp280092 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp280091)))
                                   (__tmp280085
                                    (let ((__tmp280088
                                           (let ((__tmp280089
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field274166_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp280089)))
                                          (__tmp280086
                                           (let ((__tmp280087
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value274170_ '()))))
                                             (declare (not safe))
                                             (cons _object274168_
                                                   __tmp280087))))
                                      (declare (not safe))
                                      (cons __tmp280088 __tmp280086))))
                               (declare (not safe))
                               (cons __tmp280090 __tmp280085))))
                        (declare (not safe))
                        (cons __tmp280093 __tmp280084))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp280083 _stx274111_))
               (let ((_$e274173_
                      (let ((__tmp280013
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self274110_
                                __slot279055
                                __t279052
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass274164_
                         __tmp280013))))
                 (if _$e274173_
                     ((lambda (_klass274176_)
                        (let ((__tmp280072
                               (let ((__tmp280082
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self274110_
                                             __checked?279054
                                             __t279052
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp280073
                                      (let ((__tmp280079
                                             (let ((__tmp280080
                                                    (let ((__tmp280081
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self274110_
                                                              __id279053
                                                              __t279052
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp280081 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp280080)))
                                            (__tmp280074
                                             (let ((__tmp280077
                                                    (let ((__tmp280078
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field274166_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp280078)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp280075
                                                    (let ((__tmp280076
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value274170_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object274168_ __tmp280076))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp280077
                                                     __tmp280075))))
                                        (declare (not safe))
                                        (cons __tmp280079 __tmp280074))))
                                 (declare (not safe))
                                 (cons __tmp280082 __tmp280073))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp280072 _stx274111_)))
                      _$e274173_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self274110_
                            __checked?279054
                            __t279052
                            '#f))
                         (let ((__tmp280024
                                (let* ((_$obj274178_
                                        (let ((__tmp280025 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp280025)))
                                       (__tmp280026
                                        (let ((__tmp280068
                                               (let ((__tmp280069
                                                      (let ((__tmp280071
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj274178_ '())))
                    (__tmp280070
                     (let () (declare (not safe)) (cons _object274168_ '()))))
                (declare (not safe))
                (cons __tmp280071 __tmp280070))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp280069 '())))
                                              (__tmp280027
                                               (let ((__tmp280028
                                                      (let ((__tmp280029
                                                             (let ((__tmp280060
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp280061
                                   (let ((__tmp280065
                                          (let ((__tmp280066
                                                 (let ((__tmp280067
                                                        (##structure-ref
                                                         _klass274164_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp280067 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp280066)))
                                         (__tmp280062
                                          (let ((__tmp280063
                                                 (let ((__tmp280064
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj274178_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp280064))))
                                            (declare (not safe))
                                            (cons __tmp280063 '()))))
                                     (declare (not safe))
                                     (cons __tmp280065 __tmp280062))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp280061)))
                           (__tmp280030
                            (let ((__tmp280048
                                   (let ((__tmp280049
                                          (let ((__tmp280057
                                                 (let ((__tmp280058
                                                        (let ((__tmp280059
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self274110_
                          __id279053
                          __t279052
                          '#f))))
                  (declare (not safe))
                  (cons __tmp280059 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp280058)))
                                                (__tmp280050
                                                 (let ((__tmp280055
                                                        (let ((__tmp280056
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field274166_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp280056)))
               (__tmp280051
                (let ((__tmp280053
                       (let ((__tmp280054
                              (let ()
                                (declare (not safe))
                                (cons _$obj274178_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp280054)))
                      (__tmp280052
                       (let () (declare (not safe)) (cons _value274170_ '()))))
                  (declare (not safe))
                  (cons __tmp280053 __tmp280052))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp280055
                                                         __tmp280051))))
                                            (declare (not safe))
                                            (cons __tmp280057 __tmp280050))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp280049)))
                                  (__tmp280031
                                   (let ((__tmp280032
                                          (let ((__tmp280033
                                                 (let ((__tmp280046
                                                        (let ((__tmp280047
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp280047)))
               (__tmp280034
                (let ((__tmp280043
                       (let ((__tmp280044
                              (let ((__tmp280045
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self274110_
                                        __id279053
                                        __t279052
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp280045 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp280044)))
                      (__tmp280035
                       (let ((__tmp280041
                              (let ((__tmp280042
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj274178_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp280042)))
                             (__tmp280036
                              (let ((__tmp280038
                                     (let ((__tmp280039
                                            (let ((__tmp280040
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self274110_
                                                      __slot279055
                                                      __t279052
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp280040 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp280039)))
                                    (__tmp280037
                                     (let ()
                                       (declare (not safe))
                                       (cons _value274170_ '()))))
                                (declare (not safe))
                                (cons __tmp280038 __tmp280037))))
                         (declare (not safe))
                         (cons __tmp280041 __tmp280036))))
                  (declare (not safe))
                  (cons __tmp280043 __tmp280035))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp280046
                                                         __tmp280034))))
                                            (declare (not safe))
                                            (cons '%#call __tmp280033))))
                                     (declare (not safe))
                                     (cons __tmp280032 '()))))
                              (declare (not safe))
                              (cons __tmp280048 __tmp280031))))
                       (declare (not safe))
                       (cons __tmp280060 __tmp280030))))
                (declare (not safe))
                (cons '%#if __tmp280029))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp280028 '()))))
                                          (declare (not safe))
                                          (cons __tmp280068 __tmp280027))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp280026))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp280024 _stx274111_))
                         (let ((__tmp280014
                                (let ((__tmp280015
                                       (let ((__tmp280022
                                              (let ((__tmp280023
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp280023)))
                                             (__tmp280016
                                              (let ((__tmp280017
                                                     (let ((__tmp280019
                                                            (let ((__tmp280020
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp280021
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self274110_
                                     __slot279055
                                     __t279052
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp280021 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp280020)))
                   (__tmp280018
                    (let () (declare (not safe)) (cons _value274170_ '()))))
               (declare (not safe))
               (cons __tmp280019 __tmp280018))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object274168_
                                                      __tmp280017))))
                                         (declare (not safe))
                                         (cons __tmp280022 __tmp280016))))
                                  (declare (not safe))
                                  (cons '%#call __tmp280015))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp280014
                            _stx274111_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd274122274144_
                                           _hd274119274136_)
                                          (let ()
                                            (declare (not safe))
                                            (_g274114274128_
                                             _g274115274131_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g274114274128_ _g274115274131_)))))
                          (let ()
                            (declare (not safe))
                            (_g274114274128_ _g274115274131_))))))
              (declare (not safe))
              (_g274113274180_ _args274112_))))))
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
      (lambda (_self273944_ _stx273945_ _args273946_)
        (let* ((_self273947273956_ _self273944_)
               (_E273949273960_
                (lambda () (error '"No clause matching" _self273947273956_)))
               (_K273950273967_
                (lambda (_inline273963_ _dispatch273964_ _arity273965_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self273944_ _args273946_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx273945_
                         _arity273965_)))
                  (if _inline273963_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp280110
                               (let ((__tmp280111
                                      (_inline273963_ _stx273945_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp280111
                                  _stx273945_))))
                          (declare (not safe))
                          (gxc#compile-e__0 __tmp280110)))
                      (if _dispatch273964_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch273964_))
                            (let ((__tmp280105
                                   (let ((__tmp280106
                                          (let ((__tmp280107
                                                 (let ((__tmp280108
                                                        (let ((__tmp280109
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch273964_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp280109))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp280108
                                                         _args273946_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp280107))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp280106
                                      _stx273945_))))
                              (declare (not safe))
                              (gxc#compile-e__0 __tmp280105)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _stx273945_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self273947273956_ 'gxc#!lambda::t))
              (let* ((_e273951273970_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273947273956_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e273952273973_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273947273956_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity273976_ _e273952273973_)
                     (_e273953273978_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273947273956_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch273981_ _e273953273978_)
                     (_e273954273983_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273947273956_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline273986_ _e273954273983_))
                (declare (not safe))
                (_K273950273967_
                 _inline273986_
                 _dispatch273981_
                 _arity273976_))
              (let () (declare (not safe)) (_E273949273960_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self273783_ _stx273784_ _args273785_)
        (let* ((_self273786273793_ _self273783_)
               (_E273788273797_
                (lambda () (error '"No clause matching" _self273786273793_)))
               (_K273789273811_
                (lambda (_clauses273800_)
                  (let ((_$e273806_
                         (let ((__tmp280112
                                (lambda (_g273801273803_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g273801273803_
                                     _args273785_)))))
                           (declare (not safe))
                           (find __tmp280112 _clauses273800_))))
                    (if _$e273806_
                        ((lambda (_clause273809_)
                           (let ((__method279327
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause273809_
                                     'optimize-call))))
                             (if __method279327
                                 (__method279327
                                  _clause273809_
                                  _stx273784_
                                  _args273785_)
                                 (error '"Missing method"
                                        _clause273809_
                                        'optimize-call))))
                         _$e273806_)
                        (let ((__tmp280113
                               (map gxc#!lambda-arity _clauses273800_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx273784_
                           __tmp280113)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self273786273793_
                 'gxc#!case-lambda::t))
              (let* ((_e273790273814_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273786273793_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e273791273817_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273786273793_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses273820_ _e273791273817_))
                (declare (not safe))
                (_K273789273811_ _clauses273820_))
              (let () (declare (not safe)) (_E273788273797_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self273597_ _args273598_)
        (let* ((_self273599273606_ _self273597_)
               (_E273601273610_
                (lambda () (error '"No clause matching" _self273599273606_)))
               (_K273602273650_
                (lambda (_arity273613_)
                  (let* ((_arity273614273623_ _arity273613_)
                         (_E273617273627_
                          (lambda ()
                            (error '"No clause matching"
                                   _arity273614273623_))))
                    (let ((_K273621273647_
                           (lambda ()
                             (fx= (length _args273598_) _arity273613_)))
                          (_K273618273633_
                           (lambda (_arity273631_)
                             (fx>= (length _args273598_) _arity273631_))))
                      (let ((_try-match273616273643_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity273614273623_))
                                   (let ((_tl273620273638_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity273614273623_)))
                                         (_hd273619273636_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity273614273623_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl273620273638_))
                                         (let ((_arity273641_
                                                _hd273619273636_))
                                           (declare (not safe))
                                           (_K273618273633_ _arity273641_))
                                         (let ()
                                           (declare (not safe))
                                           (_E273617273627_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E273617273627_))))))
                        (if (fixnum? _arity273614273623_)
                            (let () (declare (not safe)) (_K273621273647_))
                            (let ()
                              (declare (not safe))
                              (_try-match273616273643_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self273599273606_ 'gxc#!lambda::t))
              (let* ((_e273603273653_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273599273606_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e273604273656_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273599273606_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity273659_ _e273604273656_))
                (declare (not safe))
                (_K273602273650_ _arity273659_))
              (let () (declare (not safe)) (_E273601273610_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self273482_ _stx273483_ _args273484_)
        (let* ((_self273485273493_ _self273482_)
               (_E273487273497_
                (lambda () (error '"No clause matching" _self273485273493_)))
               (_K273488273581_
                (lambda (_dispatch273500_ _table273501_)
                  (let* ((_g273502273511_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch273500_)))
                         (_else273504273519_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch273500_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _stx273483_))))
                         (_K273506273565_
                          (lambda (_main273522_ _keys273523_)
                            (let ((_g280114_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx273483_
                                      _args273484_))))
                              (begin
                                (let ((_g280115_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g280114_)
                                             (##vector-length _g280114_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g280115_ 2)))
                                      (error "Context expects 2 values"
                                             _g280115_)))
                                (let ((_pargs273525_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g280114_ 0)))
                                      (_kwargs273526_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g280114_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main273522_))
                                    (if _table273501_
                                        (let ((_xargs273533_
                                               (map (lambda (_key273528_)
                                                      (let ((_$e273530_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _key273528_ _kwargs273526_))))
                (if _$e273530_ (values _$e273530_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys273523_)))
                                          (for-each
                                           (lambda (_kw273535_)
                                             (if (memq (car _kw273535_)
                                                       _keys273523_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx273483_
                                                    _keys273523_
                                                    _kw273535_))))
                                           _kwargs273526_)
                                          (let ((__tmp280167
                                                 (let ((__tmp280168
                                                        (let ((__tmp280169
                                                               (let ((__tmp280174
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp280175
                                     (let ()
                                       (declare (not safe))
                                       (cons _main273522_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp280175)))
                             (__tmp280170
                              (let ((__tmp280172
                                     (let ((__tmp280173
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp280173)))
                                    (__tmp280171
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs273525_
                                               _xargs273533_))))
                                (declare (not safe))
                                (cons __tmp280172 __tmp280171))))
                         (declare (not safe))
                         (cons __tmp280174 __tmp280170))))
                  (declare (not safe))
                  (cons '%#call __tmp280169))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp280168
                                                    _stx273483_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0 __tmp280167)))
                                        (let* ((_kwt273537_
                                                (let ((__tmp280116
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp280116)))
                                               (_kwvars273540_
                                                (map (lambda (_g280117_)
                                                       (let ((__tmp280118
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp280118)))
                                                     _kwargs273526_))
                                               (_kwbind273545_
                                                (map (lambda (_kw273542_
                                                              _kwvar273543_)
                                                       (let ((__tmp280121
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar273543_ '())))
                     (__tmp280119
                      (let ((__tmp280120 (cdr _kw273542_)))
                        (declare (not safe))
                        (cons __tmp280120 '()))))
                 (declare (not safe))
                 (cons __tmp280121 __tmp280119)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs273526_
                                                     _kwvars273540_))
                                               (_kwset273550_
                                                (map (lambda (_kw273547_
                                                              _kwvar273548_)
                                                       (let ((__tmp280122
                                                              (let ((__tmp280123
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp280131
                                    (let ((__tmp280132
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt273537_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp280132)))
                                   (__tmp280124
                                    (let ((__tmp280128
                                           (let ((__tmp280129
                                                  (let ((__tmp280130
                                                         (car _kw273547_)))
                                                    (declare (not safe))
                                                    (cons __tmp280130 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp280129)))
                                          (__tmp280125
                                           (let ((__tmp280126
                                                  (let ((__tmp280127
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar273548_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp280127))))
                                             (declare (not safe))
                                             (cons __tmp280126 '()))))
                                      (declare (not safe))
                                      (cons __tmp280128 __tmp280125))))
                               (declare (not safe))
                               (cons __tmp280131 __tmp280124))))
                        (declare (not safe))
                        (cons '(%#ref symoblic-table-set!) __tmp280123))))
                 (declare (not safe))
                 (cons '%#call __tmp280122)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs273526_
                                                     _kwvars273540_))
                                               (_xkwargs273555_
                                                (map (lambda (_kw273552_
                                                              _kwvar273553_)
                                                       (let ((__tmp280135
                                                              (car _kw273552_))
                                                             (__tmp280133
                                                              (let ((__tmp280134
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar273553_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp280134))))
                 (declare (not safe))
                 (cons __tmp280135 __tmp280133)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs273526_
                                                     _kwvars273540_))
                                               (_xargs273562_
                                                (map (lambda (_key273557_)
                                                       (let ((_$e273559_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq _key273557_ _xkwargs273555_))))
                 (if _$e273559_ (values _$e273559_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys273523_)))
                                          (let ((__tmp280136
                                                 (let ((__tmp280137
                                                        (let ((__tmp280138
                                                               (let ((__tmp280139
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp280140
                                     (let ((__tmp280141
                                            (let ((__tmp280155
                                                   (let ((__tmp280156
                                                          (let ((__tmp280166
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt273537_ '())))
                        (__tmp280157
                         (let ((__tmp280158
                                (let ((__tmp280159
                                       (let ((__tmp280160
                                              (let ((__tmp280161
                                                     (let ((__tmp280163
                                                            (let ((__tmp280164
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp280165 (length _kwargs273526_)))
                             (declare (not safe))
                             (cons __tmp280165 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp280164)))
                   (__tmp280162
                    (let () (declare (not safe)) (cons '(%#quote 0) '()))))
               (declare (not safe))
               (cons __tmp280163 __tmp280162))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-symbolic-table)
                                                      __tmp280161))))
                                         (declare (not safe))
                                         (cons '%#call __tmp280160))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp280159
                                   _stx273483_))))
                           (declare (not safe))
                           (cons __tmp280158 '()))))
                    (declare (not safe))
                    (cons __tmp280166 __tmp280157))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp280156 '())))
                                                  (__tmp280142
                                                   (let ((__tmp280143
                                                          (let ((__tmp280144
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp280145
                                (let ((__tmp280146
                                       (let ((__tmp280147
                                              (let ((__tmp280148
                                                     (let ((__tmp280153
                                                            (let ((__tmp280154
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main273522_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp280154)))
                   (__tmp280149
                    (let ((__tmp280151
                           (let ((__tmp280152
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt273537_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp280152)))
                          (__tmp280150
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs273525_ _xargs273562_))))
                      (declare (not safe))
                      (cons __tmp280151 __tmp280150))))
               (declare (not safe))
               (cons __tmp280153 __tmp280149))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp280148))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp280147
                                          _stx273483_))))
                                  (declare (not safe))
                                  (cons __tmp280146 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp280145 _kwset273550_))))
                    (declare (not safe))
                    (cons '%#begin __tmp280144))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp280143 '()))))
                                              (declare (not safe))
                                              (cons __tmp280155 __tmp280142))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp280141))))
                                (declare (not safe))
                                (cons __tmp280140 '()))))
                         (declare (not safe))
                         (cons _kwbind273545_ __tmp280139))))
                  (declare (not safe))
                  (cons '%#let-values __tmp280138))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp280137
                                                    _stx273483_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0
                                             __tmp280136)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g273502273511_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e273507273568_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g273502273511_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e273508273571_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g273502273511_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys273574_ _e273508273571_)
                               (_e273509273576_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g273502273511_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main273579_ _e273509273576_))
                          (declare (not safe))
                          (_K273506273565_ _main273579_ _keys273574_))
                        (let () (declare (not safe)) (_else273504273519_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self273485273493_
                 'gxc#!kw-lambda::t))
              (let* ((_e273489273584_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273485273493_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e273490273587_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273485273493_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table273590_ _e273490273587_)
                     (_e273491273592_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273485273493_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch273595_ _e273491273592_))
                (declare (not safe))
                (_K273488273581_ _dispatch273595_ _table273590_))
              (let () (declare (not safe)) (_E273487273497_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx273095_ _args273096_)
        (let _lp273098_ ((_rest273100_ _args273096_)
                         (_pargs273101_ '())
                         (_kwargs273102_ '()))
          (let* ((___stx279209279210_ _rest273100_)
                 (_g273108273160_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx279209279210_)))))
            (let ((___kont279211279212_
                   (lambda (_L273339_ _L273340_)
                     (let ((__tmp280176
                            (let ()
                              (declare (not safe))
                              (cons _L273340_ _pargs273101_))))
                       (declare (not safe))
                       (_lp273098_ _L273339_ __tmp280176 _kwargs273102_))))
                  (___kont279213279214_
                   (lambda (_L273285_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L273285_ _pargs273101_))
                             (reverse _kwargs273102_))))
                  (___kont279215279216_
                   (lambda (_L273232_ _L273233_ _L273234_)
                     (let ((_kw273251_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L273234_))))
                       (if (assq _kw273251_ _kwargs273102_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx273095_
                              _kw273251_))
                           (let ((__tmp280177
                                  (let ((__tmp280178
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw273251_ _L273233_))))
                                    (declare (not safe))
                                    (cons __tmp280178 _kwargs273102_))))
                             (declare (not safe))
                             (_lp273098_
                              _L273232_
                              _pargs273101_
                              __tmp280177))))))
                  (___kont279217279218_
                   (lambda (_L273180_ _L273181_)
                     (let ((__tmp280179
                            (let ()
                              (declare (not safe))
                              (cons _L273181_ _pargs273101_))))
                       (declare (not safe))
                       (_lp273098_ _L273180_ __tmp280179 _kwargs273102_))))
                  (___kont279219279220_
                   (lambda ()
                     (values (reverse _pargs273101_)
                             (reverse _kwargs273102_)))))
              (let* ((_g273107273167_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx279209279210_))
                            (___kont279219279220_)
                            (let () (declare (not safe)) (_g273108273160_)))))
                     (___match279316279317_
                      (lambda (_e273141273200_
                               _hd273140273203_
                               _tl273139273205_
                               _e273144273208_
                               _hd273143273211_
                               _tl273142273213_
                               _e273147273216_
                               _hd273146273219_
                               _tl273145273221_
                               _e273150273224_
                               _hd273149273227_
                               _tl273148273229_)
                        (let ((_L273232_ _tl273148273229_)
                              (_L273233_ _hd273149273227_)
                              (_L273234_ _hd273146273219_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L273234_))
                              (___kont279215279216_
                               _L273232_
                               _L273233_
                               _L273234_)
                              (___kont279217279218_
                               _tl273139273205_
                               _hd273140273203_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx279209279210_))
                    (let ((_e273114273304_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx279209279210_))))
                      (let ((_tl273112273309_
                             (let ()
                               (declare (not safe))
                               (##cdr _e273114273304_)))
                            (_hd273113273307_
                             (let ()
                               (declare (not safe))
                               (##car _e273114273304_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd273113273307_))
                            (let ((_e273117273312_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd273113273307_))))
                              (let ((_tl273115273317_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e273117273312_)))
                                    (_hd273116273315_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e273117273312_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd273116273315_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd273116273315_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl273115273317_))
                                            (let ((_e273120273320_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl273115273317_))))
                                              (let ((_tl273118273325_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e273120273320_)))
                                                    (_hd273119273323_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e273120273320_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd273119273323_))
                                                    (let ((_e273121273328_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd273119273323_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e273121273328_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl273118273325_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl273112273309_))
                          (let ((_e273124273331_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl273112273309_))))
                            (let ((_tl273122273336_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e273124273331_)))
                                  (_hd273123273334_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e273124273331_))))
                              (___kont279211279212_
                               _tl273122273336_
                               _hd273123273334_)))
                          (___kont279217279218_
                           _tl273112273309_
                           _hd273113273307_))
                      (___kont279217279218_ _tl273112273309_ _hd273113273307_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e273121273328_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl273118273325_))
                          (___kont279213279214_ _tl273112273309_)
                          (___kont279217279218_
                           _tl273112273309_
                           _hd273113273307_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl273118273325_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl273112273309_))
                              (let ((_e273150273224_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl273112273309_))))
                                (let ((_tl273148273229_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e273150273224_)))
                                      (_hd273149273227_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e273150273224_))))
                                  (___match279316279317_
                                   _e273114273304_
                                   _hd273113273307_
                                   _tl273112273309_
                                   _e273117273312_
                                   _hd273116273315_
                                   _tl273115273317_
                                   _e273120273320_
                                   _hd273119273323_
                                   _tl273118273325_
                                   _e273150273224_
                                   _hd273149273227_
                                   _tl273148273229_)))
                              (___kont279217279218_
                               _tl273112273309_
                               _hd273113273307_))
                          (___kont279217279218_
                           _tl273112273309_
                           _hd273113273307_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl273118273325_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl273112273309_))
                                                            (let ((_e273150273224_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl273112273309_))))
                      (let ((_tl273148273229_
                             (let ()
                               (declare (not safe))
                               (##cdr _e273150273224_)))
                            (_hd273149273227_
                             (let ()
                               (declare (not safe))
                               (##car _e273150273224_))))
                        (___match279316279317_
                         _e273114273304_
                         _hd273113273307_
                         _tl273112273309_
                         _e273117273312_
                         _hd273116273315_
                         _tl273115273317_
                         _e273120273320_
                         _hd273119273323_
                         _tl273118273325_
                         _e273150273224_
                         _hd273149273227_
                         _tl273148273229_)))
                    (___kont279217279218_ _tl273112273309_ _hd273113273307_))
                (___kont279217279218_ _tl273112273309_ _hd273113273307_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont279217279218_
                                             _tl273112273309_
                                             _hd273113273307_))
                                        (___kont279217279218_
                                         _tl273112273309_
                                         _hd273113273307_))
                                    (___kont279217279218_
                                     _tl273112273309_
                                     _hd273113273307_))))
                            (___kont279217279218_
                             _tl273112273309_
                             _hd273113273307_))))
                    (let () (declare (not safe)) (_g273107273167_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self273091_ _stx273092_ _args273093_)
        (let () (declare (not safe)) (gxc#xform-call% _stx273092_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
