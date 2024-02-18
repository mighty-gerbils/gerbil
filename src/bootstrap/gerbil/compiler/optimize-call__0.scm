(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1708280340)
  (begin
    (define gxc#&optimize-call
      (make-promise
       (lambda ()
         (let ((_tbl282077_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp286435 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-merge! _tbl282077_ __tmp286435))
           (let ()
             (declare (not safe))
             (hash-put! _tbl282077_ '%#call gxc#optimize-call%))
           _tbl282077_))))
    (define gxc#apply-optimize-call
      (lambda (_stx282060_ . _args282062_)
        (let ((__tmp286437
               (lambda ()
                 (declare (not safe))
                 (if (null? _args282062_)
                     (gxc#compile-e__0 _stx282060_)
                     (let ((_arg1282067_ (car _args282062_))
                           (_rest282069_ (cdr _args282062_)))
                       (if (null? _rest282069_)
                           (gxc#compile-e__1 _stx282060_ _arg1282067_)
                           (let ((_arg2282072_ (car _rest282069_))
                                 (_rest282074_ (cdr _rest282069_)))
                             (if (null? _rest282074_)
                                 (gxc#compile-e__2
                                  _stx282060_
                                  _arg1282067_
                                  _arg2282072_)
                                 (apply gxc#compile-e
                                        _stx282060_
                                        _arg1282067_
                                        _arg2282072_
                                        _rest282074_))))))))
              (__tmp286436 (force gxc#&optimize-call)))
          (declare (not safe))
          (call-with-parameters
           __tmp286437
           gxc#current-compile-methods
           __tmp286436))))
    (define gxc#optimize-call%
      (lambda (_stx281915_)
        (let* ((___stx286185286186_ _stx281915_)
               (_g281918281938_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx286185286186_)))))
          (let ((___kont286187286188_
                 (lambda (_L281982_ _L281983_)
                   (let* ((_rator-id282001_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L281983_)))
                          (_rator-type282003_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id282001_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type282003_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp286438
                                  (##structure-ref
                                   _rator-type282003_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id282001_
                              '" => "
                              _rator-type282003_
                              '" "
                              __tmp286438))
                           (let ((_optimized282006_
                                  (let ((__method286433
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type282003_
                                            'optimize-call))))
                                    (if __method286433
                                        (__method286433
                                         _rator-type282003_
                                         _stx281915_
                                         _L281982_)
                                        (error '"Missing method"
                                               _rator-type282003_
                                               'optimize-call)))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type282003_))
                                 _optimized282006_
                                 (let* ((___stx286167286168_ _optimized282006_)
                                        (_g282009282019_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx286167286168_)))))
                                   (let ((___kont286169286170_
                                          (lambda (_L282039_)
                                            (let ((__tmp286439
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L282039_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp286439
                                               _stx281915_))))
                                         (___kont286171286172_
                                          (lambda () _optimized282006_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx286167286168_))
                                         (let ((_e282014282031_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx286167286168_))))
                                           (let ((_tl282012282036_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e282014282031_)))
                                                 (_hd282013282034_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e282014282031_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd282013282034_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd282013282034_))
                                                     (___kont286169286170_
                                                      _tl282012282036_)
                                                     (___kont286171286172_))
                                                 (___kont286171286172_))))
                                         (___kont286171286172_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type282003_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx281915_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx281915_
                                _rator-type282003_)))))))
                (___kont286189286190_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _stx281915_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx286185286186_))
                (let ((_e281924281950_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx286185286186_))))
                  (let ((_tl281922281955_
                         (let () (declare (not safe)) (##cdr _e281924281950_)))
                        (_hd281923281953_
                         (let ()
                           (declare (not safe))
                           (##car _e281924281950_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl281922281955_))
                        (let ((_e281927281958_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl281922281955_))))
                          (let ((_tl281925281963_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e281927281958_)))
                                (_hd281926281961_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e281927281958_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd281926281961_))
                                (let ((_e281930281966_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd281926281961_))))
                                  (let ((_tl281928281971_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e281930281966_)))
                                        (_hd281929281969_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e281930281966_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd281929281969_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd281929281969_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl281928281971_))
                                                (let ((_e281933281974_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl281928281971_))))
                                                  (let ((_tl281931281979_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e281933281974_)))
                                                        (_hd281932281977_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e281933281974_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl281931281979_))
                                                        (___kont286187286188_
                                                         _tl281925281963_
                                                         _hd281932281977_)
                                                        (___kont286189286190_))))
                                                (___kont286189286190_))
                                            (___kont286189286190_))
                                        (___kont286189286190_))))
                                (___kont286189286190_))))
                        (___kont286189286190_))))
                (___kont286189286190_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self281869_ _stx281870_ _args281871_)
        (let* ((_g281873281883_
                (lambda (_g281874281880_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g281874281880_))))
               (_g281872281912_
                (lambda (_g281874281886_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g281874281886_))
                      (let ((_e281878281888_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g281874281886_))))
                        (let ((_hd281877281891_
                               (let ()
                                 (declare (not safe))
                                 (##car _e281878281888_)))
                              (_tl281876281893_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e281878281888_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl281876281893_))
                              ((lambda (_L281896_)
                                 (let* ((_klass281907_
                                         (let ((__tmp286440
                                                (##structure-ref
                                                 _self281869_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx281870_
                                            __tmp286440)))
                                        (_object281909_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L281896_))))
                                   (if (##structure-ref
                                        _klass281907_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp286456
                                              (let ((__tmp286457
                                                     (let ((__tmp286459
                                                            (let ((__tmp286460
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp286461
                                  (##structure-ref
                                   _klass281907_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp286461 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp286460)))
                   (__tmp286458
                    (let () (declare (not safe)) (cons _object281909_ '()))))
               (declare (not safe))
               (cons __tmp286459 __tmp286458))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp286457))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp286456
                                          _stx281870_))
                                       (if (##structure-ref
                                            _klass281907_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp286450
                                                  (let ((__tmp286451
                                                         (let ((__tmp286453
                                                                (let ((__tmp286454
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp286455
                                      (##structure-ref
                                       _klass281907_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp286455 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp286454)))
                       (__tmp286452
                        (let ()
                          (declare (not safe))
                          (cons _object281909_ '()))))
                   (declare (not safe))
                   (cons __tmp286453 __tmp286452))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp286451))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp286450
                                              _stx281870_))
                                           (let ((__tmp286441
                                                  (let ((__tmp286442
                                                         (let ((__tmp286448
                                                                (let ((__tmp286449
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp286449)))
                       (__tmp286443
                        (let ((__tmp286445
                               (let ((__tmp286446
                                      (let ((__tmp286447
                                             (##structure-ref
                                              _self281869_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp286447 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp286446)))
                              (__tmp286444
                               (let ()
                                 (declare (not safe))
                                 (cons _object281909_ '()))))
                          (declare (not safe))
                          (cons __tmp286445 __tmp286444))))
                   (declare (not safe))
                   (cons __tmp286448 __tmp286443))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp286442))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp286441
                                              _stx281870_))))))
                               _hd281877281891_)
                              (let ()
                                (declare (not safe))
                                (_g281873281883_ _g281874281886_)))))
                      (let ()
                        (declare (not safe))
                        (_g281873281883_ _g281874281886_))))))
          (declare (not safe))
          (_g281872281912_ _args281871_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__t286146)
        (let ((__id286147
               (let ((__tmp286148
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t286146 'id))))
                 (if __tmp286148 __tmp286148 (error '"Unknown slot" 'id)))))
          (lambda (_self281869_ _stx281870_ _args281871_)
            (let* ((_g281873281883_
                    (lambda (_g281874281880_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g281874281880_))))
                   (_g281872281912_
                    (lambda (_g281874281886_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g281874281886_))
                          (let ((_e281878281888_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g281874281886_))))
                            (let ((_hd281877281891_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e281878281888_)))
                                  (_tl281876281893_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e281878281888_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl281876281893_))
                                  ((lambda (_L281896_)
                                     (let* ((_klass281907_
                                             (let ((__tmp286462
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self281869_
                                                       __id286147
                                                       __t286146
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx281870_
                                                __tmp286462)))
                                            (_object281909_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L281896_))))
                                       (if (##structure-ref
                                            _klass281907_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp286478
                                                  (let ((__tmp286479
                                                         (let ((__tmp286481
                                                                (let ((__tmp286482
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp286483
                                      (##structure-ref
                                       _klass281907_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp286483 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp286482)))
                       (__tmp286480
                        (let ()
                          (declare (not safe))
                          (cons _object281909_ '()))))
                   (declare (not safe))
                   (cons __tmp286481 __tmp286480))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp286479))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp286478
                                              _stx281870_))
                                           (if (##structure-ref
                                                _klass281907_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp286472
                                                      (let ((__tmp286473
                                                             (let ((__tmp286475
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp286476
                                   (let ((__tmp286477
                                          (##structure-ref
                                           _klass281907_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp286477 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp286476)))
                           (__tmp286474
                            (let ()
                              (declare (not safe))
                              (cons _object281909_ '()))))
                       (declare (not safe))
                       (cons __tmp286475 __tmp286474))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp286473))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp286472
                                                  _stx281870_))
                                               (let ((__tmp286463
                                                      (let ((__tmp286464
                                                             (let ((__tmp286470
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp286471
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp286471)))
                           (__tmp286465
                            (let ((__tmp286467
                                   (let ((__tmp286468
                                          (let ((__tmp286469
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self281869_
                                                    __id286147
                                                    __t286146
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp286469 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp286468)))
                                  (__tmp286466
                                   (let ()
                                     (declare (not safe))
                                     (cons _object281909_ '()))))
                              (declare (not safe))
                              (cons __tmp286467 __tmp286466))))
                       (declare (not safe))
                       (cons __tmp286470 __tmp286465))))
                (declare (not safe))
                (cons '%#call __tmp286464))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp286463
                                                  _stx281870_))))))
                                   _hd281877281891_)
                                  (let ()
                                    (declare (not safe))
                                    (_g281873281883_ _g281874281886_)))))
                          (let ()
                            (declare (not safe))
                            (_g281873281883_ _g281874281886_))))))
              (declare (not safe))
              (_g281872281912_ _args281871_))))))
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
      (lambda (_self281589_ _stx281590_ _args281591_)
        (let* ((_klass281593_
                (let ((__tmp286484
                       (##structure-ref _self281589_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx281590_ __tmp286484)))
               (_fields281595_
                (length (##structure-ref _klass281593_ '5 gxc#!class::t '#f)))
               (_args281597_ (map gxc#compile-e _args281591_))
               (_inline-make-object281599_
                (let ((__tmp286485
                       (let ((__tmp286491
                              (let ((__tmp286492
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp286492)))
                             (__tmp286486
                              (let ((__tmp286488
                                     (let ((__tmp286489
                                            (let ((__tmp286490
                                                   (##structure-ref
                                                    _self281589_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp286490 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp286489)))
                                    (__tmp286487
                                     (make-list _fields281595_ '(%#quote #f))))
                                (declare (not safe))
                                (cons __tmp286488 __tmp286487))))
                         (declare (not safe))
                         (cons __tmp286491 __tmp286486))))
                  (declare (not safe))
                  (cons '%#call __tmp286485))))
          (let ((_$e281602_
                 (##structure-ref _klass281593_ '6 gxc#!class::t '#f)))
            (if _$e281602_
                ((lambda (_ctor281605_)
                   (let ((_$obj281607_
                          (let ((__tmp286592 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp286592)))
                         (_ctor-impl281608_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass281593_
                             _ctor281605_))))
                     (let ((__tmp286593
                            (let ((__tmp286594
                                   (let ((__tmp286662
                                          (let ((__tmp286663
                                                 (let ((__tmp286665
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj281607_
                                                                '())))
                                                       (__tmp286664
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object281599_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp286665
                                                         __tmp286664))))
                                            (declare (not safe))
                                            (cons __tmp286663 '())))
                                         (__tmp286595
                                          (let ((__tmp286596
                                                 (let ((__tmp286597
                                                        (let ((__tmp286601
                                                               (if _ctor-impl281608_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp286656
                                  (let ((__tmp286660
                                         (let ((__tmp286661
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl281608_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp286661)))
                                        (__tmp286657
                                         (let ((__tmp286658
                                                (let ((__tmp286659
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj281607_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp286659))))
                                           (declare (not safe))
                                           (cons __tmp286658 _args281597_))))
                                    (declare (not safe))
                                    (cons __tmp286660 __tmp286657))))
                             (declare (not safe))
                             (cons '%#call __tmp286656))
                           (let* ((_$ctor281610_
                                   (let ((__tmp286602 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp286602)))
                                  (__tmp286603
                                   (let ((__tmp286638
                                          (let ((__tmp286639
                                                 (let ((__tmp286655
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor281610_
                                                                '())))
                                                       (__tmp286640
                                                        (let ((__tmp286641
                                                               (let ((__tmp286642
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp286653
                                     (let ((__tmp286654
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp286654)))
                                    (__tmp286643
                                     (let ((__tmp286650
                                            (let ((__tmp286651
                                                   (let ((__tmp286652
                                                          (##structure-ref
                                                           _self281589_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp286652 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp286651)))
                                           (__tmp286644
                                            (let ((__tmp286648
                                                   (let ((__tmp286649
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj281607_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp286649)))
                                                  (__tmp286645
                                                   (let ((__tmp286646
                                                          (let ((__tmp286647
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _ctor281605_ '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp286647))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp286646 '()))))
                                              (declare (not safe))
                                              (cons __tmp286648 __tmp286645))))
                                       (declare (not safe))
                                       (cons __tmp286650 __tmp286644))))
                                (declare (not safe))
                                (cons __tmp286653 __tmp286643))))
                         (declare (not safe))
                         (cons '%#call __tmp286642))))
                  (declare (not safe))
                  (cons __tmp286641 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp286655
                                                         __tmp286640))))
                                            (declare (not safe))
                                            (cons __tmp286639 '())))
                                         (__tmp286604
                                          (let ((__tmp286605
                                                 (let ((__tmp286606
                                                        (let ((__tmp286636
                                                               (let ((__tmp286637
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor281610_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp286637)))
                      (__tmp286607
                       (let ((__tmp286629
                              (let ((__tmp286630
                                     (let ((__tmp286634
                                            (let ((__tmp286635
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor281610_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp286635)))
                                           (__tmp286631
                                            (let ((__tmp286632
                                                   (let ((__tmp286633
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj281607_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp286633))))
                                              (declare (not safe))
                                              (cons __tmp286632
                                                    _args281597_))))
                                       (declare (not safe))
                                       (cons __tmp286634 __tmp286631))))
                                (declare (not safe))
                                (cons '%#call __tmp286630)))
                             (__tmp286608
                              (let ((__tmp286609
                                     (let ((__tmp286610
                                            (let ((__tmp286627
                                                   (let ((__tmp286628
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp286628)))
                                                  (__tmp286611
                                                   (let ((__tmp286625
                                                          (let ((__tmp286626
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp286626)))
                 (__tmp286612
                  (let ((__tmp286623
                         (let ((__tmp286624
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp286624)))
                        (__tmp286613
                         (let ((__tmp286620
                                (let ((__tmp286621
                                       (let ((__tmp286622
                                              (##structure-ref
                                               _self281589_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp286622 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp286621)))
                               (__tmp286614
                                (let ((__tmp286618
                                       (let ((__tmp286619
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp286619)))
                                      (__tmp286615
                                       (let ((__tmp286616
                                              (let ((__tmp286617
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor281605_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp286617))))
                                         (declare (not safe))
                                         (cons __tmp286616 '()))))
                                  (declare (not safe))
                                  (cons __tmp286618 __tmp286615))))
                           (declare (not safe))
                           (cons __tmp286620 __tmp286614))))
                    (declare (not safe))
                    (cons __tmp286623 __tmp286613))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp286625
                                                           __tmp286612))))
                                              (declare (not safe))
                                              (cons __tmp286627 __tmp286611))))
                                       (declare (not safe))
                                       (cons '%#call __tmp286610))))
                                (declare (not safe))
                                (cons __tmp286609 '()))))
                         (declare (not safe))
                         (cons __tmp286629 __tmp286608))))
                  (declare (not safe))
                  (cons __tmp286636 __tmp286607))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp286606))))
                                            (declare (not safe))
                                            (cons __tmp286605 '()))))
                                     (declare (not safe))
                                     (cons __tmp286638 __tmp286604))))
                             (declare (not safe))
                             (cons '%#let-values __tmp286603))))
                      (__tmp286598
                       (let ((__tmp286599
                              (let ((__tmp286600
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj281607_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp286600))))
                         (declare (not safe))
                         (cons __tmp286599 '()))))
                  (declare (not safe))
                  (cons __tmp286601 __tmp286598))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp286597))))
                                            (declare (not safe))
                                            (cons __tmp286596 '()))))
                                     (declare (not safe))
                                     (cons __tmp286662 __tmp286595))))
                              (declare (not safe))
                              (cons '%#let-values __tmp286594))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp286593 _stx281590_))))
                 _$e281602_)
                (let ((_$e281612_
                       (##structure-ref _klass281593_ '9 gxc#!class::t '#f)))
                  (if _$e281612_
                      ((lambda (_metaclass281615_)
                         (let* ((_$obj281617_
                                 (let ((__tmp286554 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp286554)))
                                (_metakons281619_
                                 (let ((__tmp286555
                                        (let ()
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           _stx281590_
                                           _metaclass281615_))))
                                   (declare (not safe))
                                   (gxc#!class-lookup-method
                                    __tmp286555
                                    'instance-init!))))
                           (let ((__tmp286556
                                  (let ((__tmp286557
                                         (let ((__tmp286588
                                                (let ((__tmp286589
                                                       (let ((__tmp286591
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj281617_ '())))
                     (__tmp286590
                      (let ()
                        (declare (not safe))
                        (cons _inline-make-object281599_ '()))))
                 (declare (not safe))
                 (cons __tmp286591 __tmp286590))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp286589 '())))
                                               (__tmp286558
                                                (let ((__tmp286559
                                                       (let ((__tmp286560
                                                              (let ((__tmp286564
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if _metakons281619_
                                 (let ((__tmp286578
                                        (let ((__tmp286586
                                               (let ((__tmp286587
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metakons281619_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp286587)))
                                              (__tmp286579
                                               (let ((__tmp286583
                                                      (let ((__tmp286584
                                                             (let ((__tmp286585
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self281589_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp286585 '()))))
                (declare (not safe))
                (cons '%#ref __tmp286584)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp286580
                                                      (let ((__tmp286581
                                                             (let ((__tmp286582
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _$obj281617_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp286582))))
                (declare (not safe))
                (cons __tmp286581 _args281597_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp286583
                                                       __tmp286580))))
                                          (declare (not safe))
                                          (cons __tmp286586 __tmp286579))))
                                   (declare (not safe))
                                   (cons '%#call __tmp286578))
                                 (let ((__tmp286565
                                        (let ((__tmp286576
                                               (let ((__tmp286577
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'call-method
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp286577)))
                                              (__tmp286566
                                               (let ((__tmp286573
                                                      (let ((__tmp286574
                                                             (let ((__tmp286575
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self281589_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp286575 '()))))
                (declare (not safe))
                (cons '%#ref __tmp286574)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp286567
                                                      (let ((__tmp286571
                                                             (let ((__tmp286572
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'instance-init! '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp286572)))
                    (__tmp286568
                     (let ((__tmp286569
                            (let ((__tmp286570
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj281617_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp286570))))
                       (declare (not safe))
                       (cons __tmp286569 _args281597_))))
                (declare (not safe))
                (cons __tmp286571 __tmp286568))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp286573
                                                       __tmp286567))))
                                          (declare (not safe))
                                          (cons __tmp286576 __tmp286566))))
                                   (declare (not safe))
                                   (cons '%#call __tmp286565))))
                            (__tmp286561
                             (let ((__tmp286562
                                    (let ((__tmp286563
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj281617_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp286563))))
                               (declare (not safe))
                               (cons __tmp286562 '()))))
                        (declare (not safe))
                        (cons __tmp286564 __tmp286561))))
                 (declare (not safe))
                 (cons '%#begin __tmp286560))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp286559 '()))))
                                           (declare (not safe))
                                           (cons __tmp286588 __tmp286558))))
                                    (declare (not safe))
                                    (cons '%#let-values __tmp286557))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp286556 _stx281590_))))
                       _$e281612_)
                      (if (##structure-ref _klass281593_ '7 gxc#!class::t '#f)
                          (if (fx= (length _args281597_) _fields281595_)
                              (let ((__tmp286546
                                     (let ((__tmp286547
                                            (let ((__tmp286552
                                                   (let ((__tmp286553
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp286553)))
                                                  (__tmp286548
                                                   (let ((__tmp286549
                                                          (let ((__tmp286550
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp286551
                                (##structure-ref
                                 _self281589_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp286551 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp286550))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp286549
                                                           _args281597_))))
                                              (declare (not safe))
                                              (cons __tmp286552 __tmp286548))))
                                       (declare (not safe))
                                       (cons '%#call __tmp286547))))
                                (declare (not safe))
                                (gxc#xform-wrap-source
                                 __tmp286546
                                 _stx281590_))
                              (let ((__tmp286545
                                     (##structure-ref
                                      _self281589_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                    (__tmp286544
                                     (length (##structure-ref
                                              _klass281593_
                                              '5
                                              gxc#!class::t
                                              '#f))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"illegal struct constructor application; arity mismatch"
                                 _stx281590_
                                 __tmp286545
                                 __tmp286544)))
                          (let ((_$obj281622_
                                 (let ((__tmp286493 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp286493))))
                            (let _lp281624_ ((_rest281626_ _args281597_)
                                             (_initializers281627_ '()))
                              (let* ((___stx286223286224_ _rest281626_)
                                     (_g281631281652_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx286223286224_)))))
                                (let ((___kont286225286226_
                                       (lambda (_L281706_ _L281707_ _L281708_)
                                         (let* ((_slot281739_
                                                 (keyword->symbol
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e _L281708_))))
                                                (_off281741_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass281593_
                                                    _slot281739_))))
                                           (if _off281741_
                                               (let ((__tmp286495
                                                      (let ((__tmp286496
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off281741_ _L281707_))))
                (declare (not safe))
                (cons __tmp286496 _initializers281627_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp281624_
                                                  _L281706_
                                                  __tmp286495))
                                               (let ((__tmp286494
                                                      (##structure-ref
                                                       _self281589_
                                                       '1
                                                       gxc#!type::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"unknown slot"
                                                  _stx281590_
                                                  __tmp286494
                                                  _slot281739_))))))
                                      (___kont286227286228_
                                       (lambda ()
                                         (let ((__tmp286497
                                                (let ((__tmp286498
                                                       (let ((__tmp286521
                                                              (let ((__tmp286522
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp286524
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj281622_ '())))
                                   (__tmp286523
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object281599_ '()))))
                               (declare (not safe))
                               (cons __tmp286524 __tmp286523))))
                        (declare (not safe))
                        (cons __tmp286522 '())))
                     (__tmp286499
                      (let ((__tmp286500
                             (let ((__tmp286501
                                    (let ((__tmp286518
                                           (let ((__tmp286519
                                                  (let ((__tmp286520
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj281622_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp286520))))
                                             (declare (not safe))
                                             (cons __tmp286519 '())))
                                          (__tmp286502
                                           (let ((__tmp286503
                                                  (lambda (_i281666_ _r281667_)
                                                    (let ((__tmp286504
                                                           (let ((__tmp286505
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp286515
                                 (let ((__tmp286516
                                        (let ((__tmp286517
                                               (##structure-ref
                                                _self281589_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp286517 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp286516)))
                                (__tmp286506
                                 (let ((__tmp286512
                                        (let ((__tmp286513
                                               (let ((__tmp286514
                                                      (car _i281666_)))
                                                 (declare (not safe))
                                                 (cons __tmp286514 '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp286513)))
                                       (__tmp286507
                                        (let ((__tmp286510
                                               (let ((__tmp286511
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _$obj281622_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp286511)))
                                              (__tmp286508
                                               (let ((__tmp286509
                                                      (cdr _i281666_)))
                                                 (declare (not safe))
                                                 (cons __tmp286509 '()))))
                                          (declare (not safe))
                                          (cons __tmp286510 __tmp286508))))
                                   (declare (not safe))
                                   (cons __tmp286512 __tmp286507))))
                            (declare (not safe))
                            (cons __tmp286515 __tmp286506))))
                     (declare (not safe))
                     (cons '%#struct-unchecked-set! __tmp286505))))
              (declare (not safe))
              (cons __tmp286504 _r281667_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (foldl1 __tmp286503
                                                     '()
                                                     _initializers281627_))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp286518 __tmp286502))))
                               (declare (not safe))
                               (cons '%#begin __tmp286501))))
                        (declare (not safe))
                        (cons __tmp286500 '()))))
                 (declare (not safe))
                 (cons __tmp286521 __tmp286499))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp286498))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp286497
                                            _stx281590_))))
                                      (___kont286229286230_
                                       (lambda ()
                                         (let ((__tmp286525
                                                (let ((__tmp286526
                                                       (let ((__tmp286540
                                                              (let ((__tmp286541
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp286543
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj281622_ '())))
                                   (__tmp286542
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object281599_ '()))))
                               (declare (not safe))
                               (cons __tmp286543 __tmp286542))))
                        (declare (not safe))
                        (cons __tmp286541 '())))
                     (__tmp286527
                      (let ((__tmp286528
                             (let ((__tmp286529
                                    (let ((__tmp286533
                                           (let ((__tmp286534
                                                  (let ((__tmp286538
                                                         (let ((__tmp286539
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'class-instance-init! '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp286539)))
                (__tmp286535
                 (let ((__tmp286536
                        (let ((__tmp286537
                               (let ()
                                 (declare (not safe))
                                 (cons _$obj281622_ '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp286537))))
                   (declare (not safe))
                   (cons __tmp286536 _args281597_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp286538
                                                          __tmp286535))))
                                             (declare (not safe))
                                             (cons '%#call __tmp286534)))
                                          (__tmp286530
                                           (let ((__tmp286531
                                                  (let ((__tmp286532
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj281622_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp286532))))
                                             (declare (not safe))
                                             (cons __tmp286531 '()))))
                                      (declare (not safe))
                                      (cons __tmp286533 __tmp286530))))
                               (declare (not safe))
                               (cons '%#begin __tmp286529))))
                        (declare (not safe))
                        (cons __tmp286528 '()))))
                 (declare (not safe))
                 (cons __tmp286540 __tmp286527))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp286526))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp286525
                                            _stx281590_)))))
                                  (let* ((_g281629281669_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   ___stx286223286224_))
                                                (___kont286227286228_)
                                                (___kont286229286230_))))
                                         (___match286260286261_
                                          (lambda (_e281638281674_
                                                   _hd281637281677_
                                                   _tl281636281679_
                                                   _e281641281682_
                                                   _hd281640281685_
                                                   _tl281639281687_
                                                   _e281644281690_
                                                   _hd281643281693_
                                                   _tl281642281695_
                                                   _e281647281698_
                                                   _hd281646281701_
                                                   _tl281645281703_)
                                            (let ((_L281706_ _tl281645281703_)
                                                  (_L281707_ _hd281646281701_)
                                                  (_L281708_ _hd281643281693_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-keyword?
                                                     _L281708_))
                                                  (___kont286225286226_
                                                   _L281706_
                                                   _L281707_
                                                   _L281708_)
                                                  (___kont286229286230_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx286223286224_))
                                        (let ((_e281638281674_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx286223286224_))))
                                          (let ((_tl281636281679_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e281638281674_)))
                                                (_hd281637281677_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e281638281674_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd281637281677_))
                                                (let ((_e281641281682_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd281637281677_))))
                                                  (let ((_tl281639281687_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e281641281682_)))
                                                        (_hd281640281685_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e281641281682_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd281640281685_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#quote
                                                               _hd281640281685_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl281639281687_))
                        (let ((_e281644281690_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl281639281687_))))
                          (let ((_tl281642281695_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e281644281690_)))
                                (_hd281643281693_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e281644281690_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl281642281695_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl281636281679_))
                                    (let ((_e281647281698_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl281636281679_))))
                                      (let ((_tl281645281703_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e281647281698_)))
                                            (_hd281646281701_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e281647281698_))))
                                        (___match286260286261_
                                         _e281638281674_
                                         _hd281637281677_
                                         _tl281636281679_
                                         _e281641281682_
                                         _hd281640281685_
                                         _tl281639281687_
                                         _e281644281690_
                                         _hd281643281693_
                                         _tl281642281695_
                                         _e281647281698_
                                         _hd281646281701_
                                         _tl281645281703_)))
                                    (___kont286229286230_))
                                (___kont286229286230_))))
                        (___kont286229286230_))
                    (___kont286229286230_))
                (___kont286229286230_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont286229286230_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g281629281669_))))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__t286149)
        (let ((__id286150
               (let ((__tmp286151
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t286149 'id))))
                 (if __tmp286151 __tmp286151 (error '"Unknown slot" 'id)))))
          (lambda (_self281589_ _stx281590_ _args281591_)
            (let* ((_klass281593_
                    (let ((__tmp286666
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self281589_
                              __id286150
                              __t286149
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx281590_ __tmp286666)))
                   (_fields281595_
                    (length (##structure-ref
                             _klass281593_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args281597_ (map gxc#compile-e _args281591_))
                   (_inline-make-object281599_
                    (let ((__tmp286667
                           (let ((__tmp286673
                                  (let ((__tmp286674
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp286674)))
                                 (__tmp286668
                                  (let ((__tmp286670
                                         (let ((__tmp286671
                                                (let ((__tmp286672
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self281589_
                                                          __id286150
                                                          __t286149
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp286672 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp286671)))
                                        (__tmp286669
                                         (make-list
                                          _fields281595_
                                          '(%#quote #f))))
                                    (declare (not safe))
                                    (cons __tmp286670 __tmp286669))))
                             (declare (not safe))
                             (cons __tmp286673 __tmp286668))))
                      (declare (not safe))
                      (cons '%#call __tmp286667))))
              (let ((_$e281602_
                     (##structure-ref _klass281593_ '6 gxc#!class::t '#f)))
                (if _$e281602_
                    ((lambda (_ctor281605_)
                       (let ((_$obj281607_
                              (let ((__tmp286774 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp286774)))
                             (_ctor-impl281608_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass281593_
                                 _ctor281605_))))
                         (let ((__tmp286775
                                (let ((__tmp286776
                                       (let ((__tmp286844
                                              (let ((__tmp286845
                                                     (let ((__tmp286847
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj281607_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp286846
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object281599_ '()))))
               (declare (not safe))
               (cons __tmp286847 __tmp286846))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp286845 '())))
                                             (__tmp286777
                                              (let ((__tmp286778
                                                     (let ((__tmp286779
                                                            (let ((__tmp286783
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl281608_
                               (let ((__tmp286838
                                      (let ((__tmp286842
                                             (let ((__tmp286843
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl281608_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp286843)))
                                            (__tmp286839
                                             (let ((__tmp286840
                                                    (let ((__tmp286841
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj281607_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp286841))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp286840
                                                     _args281597_))))
                                        (declare (not safe))
                                        (cons __tmp286842 __tmp286839))))
                                 (declare (not safe))
                                 (cons '%#call __tmp286838))
                               (let* ((_$ctor281610_
                                       (let ((__tmp286784
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp286784)))
                                      (__tmp286785
                                       (let ((__tmp286820
                                              (let ((__tmp286821
                                                     (let ((__tmp286837
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor281610_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp286822
                    (let ((__tmp286823
                           (let ((__tmp286824
                                  (let ((__tmp286835
                                         (let ((__tmp286836
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp286836)))
                                        (__tmp286825
                                         (let ((__tmp286832
                                                (let ((__tmp286833
                                                       (let ((__tmp286834
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self281589_
                         __id286150
                         __t286149
                         '#f))))
                 (declare (not safe))
                 (cons __tmp286834 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp286833)))
                                               (__tmp286826
                                                (let ((__tmp286830
                                                       (let ((__tmp286831
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj281607_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp286831)))
              (__tmp286827
               (let ((__tmp286828
                      (let ((__tmp286829
                             (let ()
                               (declare (not safe))
                               (cons _ctor281605_ '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp286829))))
                 (declare (not safe))
                 (cons __tmp286828 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp286830
                                                        __tmp286827))))
                                           (declare (not safe))
                                           (cons __tmp286832 __tmp286826))))
                                    (declare (not safe))
                                    (cons __tmp286835 __tmp286825))))
                             (declare (not safe))
                             (cons '%#call __tmp286824))))
                      (declare (not safe))
                      (cons __tmp286823 '()))))
               (declare (not safe))
               (cons __tmp286837 __tmp286822))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp286821 '())))
                                             (__tmp286786
                                              (let ((__tmp286787
                                                     (let ((__tmp286788
                                                            (let ((__tmp286818
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp286819
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor281610_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp286819)))
                          (__tmp286789
                           (let ((__tmp286811
                                  (let ((__tmp286812
                                         (let ((__tmp286816
                                                (let ((__tmp286817
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor281610_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp286817)))
                                               (__tmp286813
                                                (let ((__tmp286814
                                                       (let ((__tmp286815
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj281607_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp286815))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp286814
                                                        _args281597_))))
                                           (declare (not safe))
                                           (cons __tmp286816 __tmp286813))))
                                    (declare (not safe))
                                    (cons '%#call __tmp286812)))
                                 (__tmp286790
                                  (let ((__tmp286791
                                         (let ((__tmp286792
                                                (let ((__tmp286809
                                                       (let ((__tmp286810
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp286810)))
              (__tmp286793
               (let ((__tmp286807
                      (let ((__tmp286808
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp286808)))
                     (__tmp286794
                      (let ((__tmp286805
                             (let ((__tmp286806
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp286806)))
                            (__tmp286795
                             (let ((__tmp286802
                                    (let ((__tmp286803
                                           (let ((__tmp286804
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self281589_
                                                     __id286150
                                                     __t286149
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp286804 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp286803)))
                                   (__tmp286796
                                    (let ((__tmp286800
                                           (let ((__tmp286801
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp286801)))
                                          (__tmp286797
                                           (let ((__tmp286798
                                                  (let ((__tmp286799
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor281605_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp286799))))
                                             (declare (not safe))
                                             (cons __tmp286798 '()))))
                                      (declare (not safe))
                                      (cons __tmp286800 __tmp286797))))
                               (declare (not safe))
                               (cons __tmp286802 __tmp286796))))
                        (declare (not safe))
                        (cons __tmp286805 __tmp286795))))
                 (declare (not safe))
                 (cons __tmp286807 __tmp286794))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp286809
                                                        __tmp286793))))
                                           (declare (not safe))
                                           (cons '%#call __tmp286792))))
                                    (declare (not safe))
                                    (cons __tmp286791 '()))))
                             (declare (not safe))
                             (cons __tmp286811 __tmp286790))))
                      (declare (not safe))
                      (cons __tmp286818 __tmp286789))))
               (declare (not safe))
               (cons '%#if __tmp286788))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp286787 '()))))
                                         (declare (not safe))
                                         (cons __tmp286820 __tmp286786))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp286785))))
                          (__tmp286780
                           (let ((__tmp286781
                                  (let ((__tmp286782
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj281607_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp286782))))
                             (declare (not safe))
                             (cons __tmp286781 '()))))
                      (declare (not safe))
                      (cons __tmp286783 __tmp286780))))
               (declare (not safe))
               (cons '%#begin __tmp286779))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp286778 '()))))
                                         (declare (not safe))
                                         (cons __tmp286844 __tmp286777))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp286776))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp286775 _stx281590_))))
                     _$e281602_)
                    (let ((_$e281612_
                           (##structure-ref
                            _klass281593_
                            '9
                            gxc#!class::t
                            '#f)))
                      (if _$e281612_
                          ((lambda (_metaclass281615_)
                             (let* ((_$obj281617_
                                     (let ((__tmp286736 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp286736)))
                                    (_metakons281619_
                                     (let ((__tmp286737
                                            (let ()
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               _stx281590_
                                               _metaclass281615_))))
                                       (declare (not safe))
                                       (gxc#!class-lookup-method
                                        __tmp286737
                                        'instance-init!))))
                               (let ((__tmp286738
                                      (let ((__tmp286739
                                             (let ((__tmp286770
                                                    (let ((__tmp286771
                                                           (let ((__tmp286773
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj281617_ '())))
                         (__tmp286772
                          (let ()
                            (declare (not safe))
                            (cons _inline-make-object281599_ '()))))
                     (declare (not safe))
                     (cons __tmp286773 __tmp286772))))
              (declare (not safe))
              (cons __tmp286771 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp286740
                                                    (let ((__tmp286741
                                                           (let ((__tmp286742
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp286746
                                 (if _metakons281619_
                                     (let ((__tmp286760
                                            (let ((__tmp286768
                                                   (let ((__tmp286769
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _metakons281619_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp286769)))
                                                  (__tmp286761
                                                   (let ((__tmp286765
                                                          (let ((__tmp286766
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp286767
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self281589_
                                   __id286150
                                   __t286149
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp286767 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp286766)))
                 (__tmp286762
                  (let ((__tmp286763
                         (let ((__tmp286764
                                (let ()
                                  (declare (not safe))
                                  (cons _$obj281617_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp286764))))
                    (declare (not safe))
                    (cons __tmp286763 _args281597_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp286765
                                                           __tmp286762))))
                                              (declare (not safe))
                                              (cons __tmp286768 __tmp286761))))
                                       (declare (not safe))
                                       (cons '%#call __tmp286760))
                                     (let ((__tmp286747
                                            (let ((__tmp286758
                                                   (let ((__tmp286759
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'call-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp286759)))
                                                  (__tmp286748
                                                   (let ((__tmp286755
                                                          (let ((__tmp286756
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp286757
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self281589_
                                   __id286150
                                   __t286149
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp286757 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp286756)))
                 (__tmp286749
                  (let ((__tmp286753
                         (let ((__tmp286754
                                (let ()
                                  (declare (not safe))
                                  (cons 'instance-init! '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp286754)))
                        (__tmp286750
                         (let ((__tmp286751
                                (let ((__tmp286752
                                       (let ()
                                         (declare (not safe))
                                         (cons _$obj281617_ '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp286752))))
                           (declare (not safe))
                           (cons __tmp286751 _args281597_))))
                    (declare (not safe))
                    (cons __tmp286753 __tmp286750))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp286755
                                                           __tmp286749))))
                                              (declare (not safe))
                                              (cons __tmp286758 __tmp286748))))
                                       (declare (not safe))
                                       (cons '%#call __tmp286747))))
                                (__tmp286743
                                 (let ((__tmp286744
                                        (let ((__tmp286745
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$obj281617_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp286745))))
                                   (declare (not safe))
                                   (cons __tmp286744 '()))))
                            (declare (not safe))
                            (cons __tmp286746 __tmp286743))))
                     (declare (not safe))
                     (cons '%#begin __tmp286742))))
              (declare (not safe))
              (cons __tmp286741 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp286770
                                                     __tmp286740))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp286739))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp286738
                                  _stx281590_))))
                           _$e281612_)
                          (if (##structure-ref
                               _klass281593_
                               '7
                               gxc#!class::t
                               '#f)
                              (if (fx= (length _args281597_) _fields281595_)
                                  (let ((__tmp286728
                                         (let ((__tmp286729
                                                (let ((__tmp286734
                                                       (let ((__tmp286735
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '##structure '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp286735)))
              (__tmp286730
               (let ((__tmp286731
                      (let ((__tmp286732
                             (let ((__tmp286733
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self281589_
                                       __id286150
                                       __t286149
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp286733 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp286732))))
                 (declare (not safe))
                 (cons __tmp286731 _args281597_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp286734
                                                        __tmp286730))))
                                           (declare (not safe))
                                           (cons '%#call __tmp286729))))
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp286728
                                     _stx281590_))
                                  (let ((__tmp286727
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _self281589_
                                            __id286150
                                            __t286149
                                            '#f)))
                                        (__tmp286726
                                         (length (##structure-ref
                                                  _klass281593_
                                                  '5
                                                  gxc#!class::t
                                                  '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _stx281590_
                                     __tmp286727
                                     __tmp286726)))
                              (let ((_$obj281622_
                                     (let ((__tmp286675 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp286675))))
                                (let _lp281624_ ((_rest281626_ _args281597_)
                                                 (_initializers281627_ '()))
                                  (let* ((___stx286265286266_ _rest281626_)
                                         (_g281631281652_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               ___stx286265286266_)))))
                                    (let ((___kont286267286268_
                                           (lambda (_L281706_
                                                    _L281707_
                                                    _L281708_)
                                             (let* ((_slot281739_
                                                     (keyword->symbol
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L281708_))))
                                                    (_off281741_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass281593_
                                                        _slot281739_))))
                                               (if _off281741_
                                                   (let ((__tmp286677
                                                          (let ((__tmp286678
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _off281741_ _L281707_))))
                    (declare (not safe))
                    (cons __tmp286678 _initializers281627_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp281624_
                                                      _L281706_
                                                      __tmp286677))
                                                   (let ((__tmp286676
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _self281589_
                                                             __id286150
                                                             __t286149
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"unknown slot"
                                                      _stx281590_
                                                      __tmp286676
                                                      _slot281739_))))))
                                          (___kont286269286270_
                                           (lambda ()
                                             (let ((__tmp286679
                                                    (let ((__tmp286680
                                                           (let ((__tmp286703
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp286704
                                 (let ((__tmp286706
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj281622_ '())))
                                       (__tmp286705
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object281599_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp286706 __tmp286705))))
                            (declare (not safe))
                            (cons __tmp286704 '())))
                         (__tmp286681
                          (let ((__tmp286682
                                 (let ((__tmp286683
                                        (let ((__tmp286700
                                               (let ((__tmp286701
                                                      (let ((__tmp286702
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj281622_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp286702))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp286701 '())))
                                              (__tmp286684
                                               (let ((__tmp286685
                                                      (lambda (_i281666_
                                                               _r281667_)
                                                        (let ((__tmp286686
                                                               (let ((__tmp286687
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp286697
                                     (let ((__tmp286698
                                            (let ((__tmp286699
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self281589_
                                                      __id286150
                                                      __t286149
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp286699 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp286698)))
                                    (__tmp286688
                                     (let ((__tmp286694
                                            (let ((__tmp286695
                                                   (let ((__tmp286696
                                                          (car _i281666_)))
                                                     (declare (not safe))
                                                     (cons __tmp286696 '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp286695)))
                                           (__tmp286689
                                            (let ((__tmp286692
                                                   (let ((__tmp286693
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj281622_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp286693)))
                                                  (__tmp286690
                                                   (let ((__tmp286691
                                                          (cdr _i281666_)))
                                                     (declare (not safe))
                                                     (cons __tmp286691 '()))))
                                              (declare (not safe))
                                              (cons __tmp286692 __tmp286690))))
                                       (declare (not safe))
                                       (cons __tmp286694 __tmp286689))))
                                (declare (not safe))
                                (cons __tmp286697 __tmp286688))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp286687))))
                  (declare (not safe))
                  (cons __tmp286686 _r281667_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl1 __tmp286685
                                                         '()
                                                         _initializers281627_))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp286700
                                                  __tmp286684))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp286683))))
                            (declare (not safe))
                            (cons __tmp286682 '()))))
                     (declare (not safe))
                     (cons __tmp286703 __tmp286681))))
              (declare (not safe))
              (cons '%#let-values __tmp286680))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp286679
                                                _stx281590_))))
                                          (___kont286271286272_
                                           (lambda ()
                                             (let ((__tmp286707
                                                    (let ((__tmp286708
                                                           (let ((__tmp286722
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp286723
                                 (let ((__tmp286725
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj281622_ '())))
                                       (__tmp286724
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object281599_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp286725 __tmp286724))))
                            (declare (not safe))
                            (cons __tmp286723 '())))
                         (__tmp286709
                          (let ((__tmp286710
                                 (let ((__tmp286711
                                        (let ((__tmp286715
                                               (let ((__tmp286716
                                                      (let ((__tmp286720
                                                             (let ((__tmp286721
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'class-instance-init! '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp286721)))
                    (__tmp286717
                     (let ((__tmp286718
                            (let ((__tmp286719
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj281622_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp286719))))
                       (declare (not safe))
                       (cons __tmp286718 _args281597_))))
                (declare (not safe))
                (cons __tmp286720 __tmp286717))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp286716)))
                                              (__tmp286712
                                               (let ((__tmp286713
                                                      (let ((__tmp286714
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj281622_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp286714))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp286713 '()))))
                                          (declare (not safe))
                                          (cons __tmp286715 __tmp286712))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp286711))))
                            (declare (not safe))
                            (cons __tmp286710 '()))))
                     (declare (not safe))
                     (cons __tmp286722 __tmp286709))))
              (declare (not safe))
              (cons '%#let-values __tmp286708))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp286707
                                                _stx281590_)))))
                                      (let* ((_g281629281669_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       ___stx286265286266_))
                                                    (___kont286269286270_)
                                                    (___kont286271286272_))))
                                             (___match286302286303_
                                              (lambda (_e281638281674_
                                                       _hd281637281677_
                                                       _tl281636281679_
                                                       _e281641281682_
                                                       _hd281640281685_
                                                       _tl281639281687_
                                                       _e281644281690_
                                                       _hd281643281693_
                                                       _tl281642281695_
                                                       _e281647281698_
                                                       _hd281646281701_
                                                       _tl281645281703_)
                                                (let ((_L281706_
                                                       _tl281645281703_)
                                                      (_L281707_
                                                       _hd281646281701_)
                                                      (_L281708_
                                                       _hd281643281693_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-keyword?
                                                         _L281708_))
                                                      (___kont286267286268_
                                                       _L281706_
                                                       _L281707_
                                                       _L281708_)
                                                      (___kont286271286272_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               ___stx286265286266_))
                                            (let ((_e281638281674_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      ___stx286265286266_))))
                                              (let ((_tl281636281679_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e281638281674_)))
                                                    (_hd281637281677_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e281638281674_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd281637281677_))
                                                    (let ((_e281641281682_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd281637281677_))))
                                                      (let ((_tl281639281687_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e281641281682_)))
                    (_hd281640281685_
                     (let () (declare (not safe)) (##car _e281641281682_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd281640281685_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd281640281685_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl281639281687_))
                            (let ((_e281644281690_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl281639281687_))))
                              (let ((_tl281642281695_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e281644281690_)))
                                    (_hd281643281693_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e281644281690_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl281642281695_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl281636281679_))
                                        (let ((_e281647281698_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl281636281679_))))
                                          (let ((_tl281645281703_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e281647281698_)))
                                                (_hd281646281701_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e281647281698_))))
                                            (___match286302286303_
                                             _e281638281674_
                                             _hd281637281677_
                                             _tl281636281679_
                                             _e281641281682_
                                             _hd281640281685_
                                             _tl281639281687_
                                             _e281644281690_
                                             _hd281643281693_
                                             _tl281642281695_
                                             _e281647281698_
                                             _hd281646281701_
                                             _tl281645281703_)))
                                        (___kont286271286272_))
                                    (___kont286271286272_))))
                            (___kont286271286272_))
                        (___kont286271286272_))
                    (___kont286271286272_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont286271286272_))))
                                            (let ()
                                              (declare (not safe))
                                              (_g281629281669_))))))))))))))))))
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
      (lambda (_self281412_ _stx281413_ _args281414_)
        (let* ((_g281416281426_
                (lambda (_g281417281423_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g281417281423_))))
               (_g281415281464_
                (lambda (_g281417281429_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g281417281429_))
                      (let ((_e281421281431_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g281417281429_))))
                        (let ((_hd281420281434_
                               (let ()
                                 (declare (not safe))
                                 (##car _e281421281431_)))
                              (_tl281419281436_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e281421281431_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl281419281436_))
                              ((lambda (_L281439_)
                                 (let* ((_klass281450_
                                         (let ((__tmp286848
                                                (##structure-ref
                                                 _self281412_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx281413_
                                            __tmp286848)))
                                        (_field281452_
                                         (let ((__tmp286849
                                                (##structure-ref
                                                 _self281412_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass281450_
                                            __tmp286849)))
                                        (_object281454_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L281439_))))
                                   (if (##structure-ref
                                        _klass281450_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp286926
                                              (let ((__tmp286935
                                                     (if (##structure-ref
                                                          _self281412_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp286927
                                                     (let ((__tmp286932
                                                            (let ((__tmp286933
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp286934
                                  (##structure-ref
                                   _self281412_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp286934 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp286933)))
                   (__tmp286928
                    (let ((__tmp286930
                           (let ((__tmp286931
                                  (let ()
                                    (declare (not safe))
                                    (cons _field281452_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp286931)))
                          (__tmp286929
                           (let ()
                             (declare (not safe))
                             (cons _object281454_ '()))))
                      (declare (not safe))
                      (cons __tmp286930 __tmp286929))))
               (declare (not safe))
               (cons __tmp286932 __tmp286928))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp286935
                                                      __tmp286927))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp286926
                                          _stx281413_))
                                       (if (##structure-ref
                                            _klass281450_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp286916
                                                  (let ((__tmp286925
                                                         (if (##structure-ref
                                                              _self281412_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp286917
                                                         (let ((__tmp286922
                                                                (let ((__tmp286923
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp286924
                                      (##structure-ref
                                       _self281412_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp286924 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp286923)))
                       (__tmp286918
                        (let ((__tmp286920
                               (let ((__tmp286921
                                      (let ()
                                        (declare (not safe))
                                        (cons _field281452_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp286921)))
                              (__tmp286919
                               (let ()
                                 (declare (not safe))
                                 (cons _object281454_ '()))))
                          (declare (not safe))
                          (cons __tmp286920 __tmp286919))))
                   (declare (not safe))
                   (cons __tmp286922 __tmp286918))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp286925
                                                          __tmp286917))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp286916
                                              _stx281413_))
                                           (let ((_$e281457_
                                                  (let ((__tmp286850
                                                         (##structure-ref
                                                          _self281412_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass281450_
                                                     __tmp286850))))
                                             (if _$e281457_
                                                 ((lambda (_klass281460_)
                                                    (let ((__tmp286906
                                                           (let ((__tmp286915
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self281412_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp286907
                          (let ((__tmp286912
                                 (let ((__tmp286913
                                        (let ((__tmp286914
                                               (##structure-ref
                                                _self281412_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp286914 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp286913)))
                                (__tmp286908
                                 (let ((__tmp286910
                                        (let ((__tmp286911
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field281452_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp286911)))
                                       (__tmp286909
                                        (let ()
                                          (declare (not safe))
                                          (cons _object281454_ '()))))
                                   (declare (not safe))
                                   (cons __tmp286910 __tmp286909))))
                            (declare (not safe))
                            (cons __tmp286912 __tmp286908))))
                     (declare (not safe))
                     (cons __tmp286915 __tmp286907))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp286906 _stx281413_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e281457_)
                                                 (if (##structure-ref
                                                      _self281412_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp286860
                                                            (let* ((_$obj281462_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp286861 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp286861)))
                           (__tmp286862
                            (let ((__tmp286902
                                   (let ((__tmp286903
                                          (let ((__tmp286905
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj281462_ '())))
                                                (__tmp286904
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object281454_ '()))))
                                            (declare (not safe))
                                            (cons __tmp286905 __tmp286904))))
                                     (declare (not safe))
                                     (cons __tmp286903 '())))
                                  (__tmp286863
                                   (let ((__tmp286864
                                          (let ((__tmp286865
                                                 (let ((__tmp286894
                                                        (let ((__tmp286895
                                                               (let ((__tmp286899
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp286900
                                     (let ((__tmp286901
                                            (##structure-ref
                                             _klass281450_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp286901 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp286900)))
                             (__tmp286896
                              (let ((__tmp286897
                                     (let ((__tmp286898
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj281462_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp286898))))
                                (declare (not safe))
                                (cons __tmp286897 '()))))
                         (declare (not safe))
                         (cons __tmp286899 __tmp286896))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp286895)))
               (__tmp286866
                (let ((__tmp286883
                       (let ((__tmp286884
                              (let ((__tmp286891
                                     (let ((__tmp286892
                                            (let ((__tmp286893
                                                   (##structure-ref
                                                    _self281412_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp286893 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp286892)))
                                    (__tmp286885
                                     (let ((__tmp286889
                                            (let ((__tmp286890
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field281452_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp286890)))
                                           (__tmp286886
                                            (let ((__tmp286887
                                                   (let ((__tmp286888
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj281462_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp286888))))
                                              (declare (not safe))
                                              (cons __tmp286887 '()))))
                                       (declare (not safe))
                                       (cons __tmp286889 __tmp286886))))
                                (declare (not safe))
                                (cons __tmp286891 __tmp286885))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp286884)))
                      (__tmp286867
                       (let ((__tmp286868
                              (let ((__tmp286869
                                     (let ((__tmp286881
                                            (let ((__tmp286882
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp286882)))
                                           (__tmp286870
                                            (let ((__tmp286878
                                                   (let ((__tmp286879
                                                          (let ((__tmp286880
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self281412_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp286880 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp286879)))
                                                  (__tmp286871
                                                   (let ((__tmp286876
                                                          (let ((__tmp286877
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj281462_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp286877)))
                 (__tmp286872
                  (let ((__tmp286873
                         (let ((__tmp286874
                                (let ((__tmp286875
                                       (##structure-ref
                                        _self281412_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp286875 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp286874))))
                    (declare (not safe))
                    (cons __tmp286873 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp286876
                                                           __tmp286872))))
                                              (declare (not safe))
                                              (cons __tmp286878 __tmp286871))))
                                       (declare (not safe))
                                       (cons __tmp286881 __tmp286870))))
                                (declare (not safe))
                                (cons '%#call __tmp286869))))
                         (declare (not safe))
                         (cons __tmp286868 '()))))
                  (declare (not safe))
                  (cons __tmp286883 __tmp286867))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp286894
                                                         __tmp286866))))
                                            (declare (not safe))
                                            (cons '%#if __tmp286865))))
                                     (declare (not safe))
                                     (cons __tmp286864 '()))))
                              (declare (not safe))
                              (cons __tmp286902 __tmp286863))))
                      (declare (not safe))
                      (cons '%#let-values __tmp286862))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp286860 _stx281413_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp286851
                                                            (let ((__tmp286852
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp286858
                                  (let ((__tmp286859
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp286859)))
                                 (__tmp286853
                                  (let ((__tmp286854
                                         (let ((__tmp286855
                                                (let ((__tmp286856
                                                       (let ((__tmp286857
                                                              (##structure-ref
                                                               _self281412_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp286857
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp286856))))
                                           (declare (not safe))
                                           (cons __tmp286855 '()))))
                                    (declare (not safe))
                                    (cons _object281454_ __tmp286854))))
                             (declare (not safe))
                             (cons __tmp286858 __tmp286853))))
                      (declare (not safe))
                      (cons '%#call __tmp286852))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp286851 _stx281413_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd281420281434_)
                              (let ()
                                (declare (not safe))
                                (_g281416281426_ _g281417281429_)))))
                      (let ()
                        (declare (not safe))
                        (_g281416281426_ _g281417281429_))))))
          (declare (not safe))
          (_g281415281464_ _args281414_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__t286152)
        (let ((__checked?286153
               (let ((__tmp286156
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t286152 'checked?))))
                 (if __tmp286156
                     __tmp286156
                     (error '"Unknown slot" 'checked?))))
              (__id286154
               (let ((__tmp286157
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t286152 'id))))
                 (if __tmp286157 __tmp286157 (error '"Unknown slot" 'id))))
              (__slot286155
               (let ((__tmp286158
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t286152 'slot))))
                 (if __tmp286158 __tmp286158 (error '"Unknown slot" 'slot)))))
          (lambda (_self281412_ _stx281413_ _args281414_)
            (let* ((_g281416281426_
                    (lambda (_g281417281423_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g281417281423_))))
                   (_g281415281464_
                    (lambda (_g281417281429_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g281417281429_))
                          (let ((_e281421281431_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g281417281429_))))
                            (let ((_hd281420281434_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e281421281431_)))
                                  (_tl281419281436_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e281421281431_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl281419281436_))
                                  ((lambda (_L281439_)
                                     (let* ((_klass281450_
                                             (let ((__tmp286936
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self281412_
                                                       __id286154
                                                       __t286152
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx281413_
                                                __tmp286936)))
                                            (_field281452_
                                             (let ((__tmp286937
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self281412_
                                                       __slot286155
                                                       __t286152
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass281450_
                                                __tmp286937)))
                                            (_object281454_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L281439_))))
                                       (if (##structure-ref
                                            _klass281450_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp287014
                                                  (let ((__tmp287023
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self281412_
                        __checked?286153
                        __t286152
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp287015
                 (let ((__tmp287020
                        (let ((__tmp287021
                               (let ((__tmp287022
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self281412_
                                         __id286154
                                         __t286152
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp287022 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp287021)))
                       (__tmp287016
                        (let ((__tmp287018
                               (let ((__tmp287019
                                      (let ()
                                        (declare (not safe))
                                        (cons _field281452_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp287019)))
                              (__tmp287017
                               (let ()
                                 (declare (not safe))
                                 (cons _object281454_ '()))))
                          (declare (not safe))
                          (cons __tmp287018 __tmp287017))))
                   (declare (not safe))
                   (cons __tmp287020 __tmp287016))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp287023
                                                          __tmp287015))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp287014
                                              _stx281413_))
                                           (if (##structure-ref
                                                _klass281450_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp287004
                                                      (let ((__tmp287013
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self281412_
                            __checked?286153
                            __t286152
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp287005
                     (let ((__tmp287010
                            (let ((__tmp287011
                                   (let ((__tmp287012
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self281412_
                                             __id286154
                                             __t286152
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp287012 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp287011)))
                           (__tmp287006
                            (let ((__tmp287008
                                   (let ((__tmp287009
                                          (let ()
                                            (declare (not safe))
                                            (cons _field281452_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp287009)))
                                  (__tmp287007
                                   (let ()
                                     (declare (not safe))
                                     (cons _object281454_ '()))))
                              (declare (not safe))
                              (cons __tmp287008 __tmp287007))))
                       (declare (not safe))
                       (cons __tmp287010 __tmp287006))))
                (declare (not safe))
                (cons __tmp287013 __tmp287005))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp287004
                                                  _stx281413_))
                                               (let ((_$e281457_
                                                      (let ((__tmp286938
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self281412_
                        __slot286155
                        __t286152
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass281450_ __tmp286938))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e281457_
                                                     ((lambda (_klass281460_)
                                                        (let ((__tmp286994
                                                               (let ((__tmp287003
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self281412_
                                     __checked?286153
                                     __t286152
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp286995
                              (let ((__tmp287000
                                     (let ((__tmp287001
                                            (let ((__tmp287002
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self281412_
                                                      __id286154
                                                      __t286152
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp287002 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp287001)))
                                    (__tmp286996
                                     (let ((__tmp286998
                                            (let ((__tmp286999
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field281452_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp286999)))
                                           (__tmp286997
                                            (let ()
                                              (declare (not safe))
                                              (cons _object281454_ '()))))
                                       (declare (not safe))
                                       (cons __tmp286998 __tmp286997))))
                                (declare (not safe))
                                (cons __tmp287000 __tmp286996))))
                         (declare (not safe))
                         (cons __tmp287003 __tmp286995))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp286994 _stx281413_)))
              _$e281457_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self281412_
                                                            __checked?286153
                                                            __t286152
                                                            '#f))
                                                         (let ((__tmp286948
                                                                (let* ((_$obj281462_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp286949 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp286949)))
                               (__tmp286950
                                (let ((__tmp286990
                                       (let ((__tmp286991
                                              (let ((__tmp286993
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj281462_
                                                             '())))
                                                    (__tmp286992
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object281454_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp286993
                                                      __tmp286992))))
                                         (declare (not safe))
                                         (cons __tmp286991 '())))
                                      (__tmp286951
                                       (let ((__tmp286952
                                              (let ((__tmp286953
                                                     (let ((__tmp286982
                                                            (let ((__tmp286983
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp286987
                                  (let ((__tmp286988
                                         (let ((__tmp286989
                                                (##structure-ref
                                                 _klass281450_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp286989 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp286988)))
                                 (__tmp286984
                                  (let ((__tmp286985
                                         (let ((__tmp286986
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj281462_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp286986))))
                                    (declare (not safe))
                                    (cons __tmp286985 '()))))
                             (declare (not safe))
                             (cons __tmp286987 __tmp286984))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp286983)))
                   (__tmp286954
                    (let ((__tmp286971
                           (let ((__tmp286972
                                  (let ((__tmp286979
                                         (let ((__tmp286980
                                                (let ((__tmp286981
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self281412_
                                                          __id286154
                                                          __t286152
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp286981 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp286980)))
                                        (__tmp286973
                                         (let ((__tmp286977
                                                (let ((__tmp286978
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field281452_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp286978)))
                                               (__tmp286974
                                                (let ((__tmp286975
                                                       (let ((__tmp286976
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj281462_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp286976))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp286975 '()))))
                                           (declare (not safe))
                                           (cons __tmp286977 __tmp286974))))
                                    (declare (not safe))
                                    (cons __tmp286979 __tmp286973))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp286972)))
                          (__tmp286955
                           (let ((__tmp286956
                                  (let ((__tmp286957
                                         (let ((__tmp286969
                                                (let ((__tmp286970
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp286970)))
                                               (__tmp286958
                                                (let ((__tmp286966
                                                       (let ((__tmp286967
                                                              (let ((__tmp286968
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self281412_
                                __id286154
                                __t286152
                                '#f))))
                        (declare (not safe))
                        (cons __tmp286968 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp286967)))
              (__tmp286959
               (let ((__tmp286964
                      (let ((__tmp286965
                             (let ()
                               (declare (not safe))
                               (cons _$obj281462_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp286965)))
                     (__tmp286960
                      (let ((__tmp286961
                             (let ((__tmp286962
                                    (let ((__tmp286963
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self281412_
                                              __slot286155
                                              __t286152
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp286963 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp286962))))
                        (declare (not safe))
                        (cons __tmp286961 '()))))
                 (declare (not safe))
                 (cons __tmp286964 __tmp286960))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp286966
                                                        __tmp286959))))
                                           (declare (not safe))
                                           (cons __tmp286969 __tmp286958))))
                                    (declare (not safe))
                                    (cons '%#call __tmp286957))))
                             (declare (not safe))
                             (cons __tmp286956 '()))))
                      (declare (not safe))
                      (cons __tmp286971 __tmp286955))))
               (declare (not safe))
               (cons __tmp286982 __tmp286954))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp286953))))
                                         (declare (not safe))
                                         (cons __tmp286952 '()))))
                                  (declare (not safe))
                                  (cons __tmp286990 __tmp286951))))
                          (declare (not safe))
                          (cons '%#let-values __tmp286950))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp286948 _stx281413_))
                 (let ((__tmp286939
                        (let ((__tmp286940
                               (let ((__tmp286946
                                      (let ((__tmp286947
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp286947)))
                                     (__tmp286941
                                      (let ((__tmp286942
                                             (let ((__tmp286943
                                                    (let ((__tmp286944
                                                           (let ((__tmp286945
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self281412_
                             __slot286155
                             __t286152
                             '#f))))
                     (declare (not safe))
                     (cons __tmp286945 '()))))
              (declare (not safe))
              (cons '%#quote __tmp286944))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp286943 '()))))
                                        (declare (not safe))
                                        (cons _object281454_ __tmp286942))))
                                 (declare (not safe))
                                 (cons __tmp286946 __tmp286941))))
                          (declare (not safe))
                          (cons '%#call __tmp286940))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp286939 _stx281413_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd281420281434_)
                                  (let ()
                                    (declare (not safe))
                                    (_g281416281426_ _g281417281429_)))))
                          (let ()
                            (declare (not safe))
                            (_g281416281426_ _g281417281429_))))))
              (declare (not safe))
              (_g281415281464_ _args281414_))))))
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
      (lambda (_self281217_ _stx281218_ _args281219_)
        (let* ((_g281221281235_
                (lambda (_g281222281232_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g281222281232_))))
               (_g281220281287_
                (lambda (_g281222281238_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g281222281238_))
                      (let ((_e281227281240_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g281222281238_))))
                        (let ((_hd281226281243_
                               (let ()
                                 (declare (not safe))
                                 (##car _e281227281240_)))
                              (_tl281225281245_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e281227281240_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl281225281245_))
                              (let ((_e281230281248_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl281225281245_))))
                                (let ((_hd281229281251_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e281230281248_)))
                                      (_tl281228281253_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e281230281248_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl281228281253_))
                                      ((lambda (_L281256_ _L281257_)
                                         (let* ((_klass281271_
                                                 (let ((__tmp287024
                                                        (##structure-ref
                                                         _self281217_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx281218_
                                                    __tmp287024)))
                                                (_field281273_
                                                 (let ((__tmp287025
                                                        (##structure-ref
                                                         _self281217_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass281271_
                                                    __tmp287025)))
                                                (_object281275_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L281257_)))
                                                (_value281277_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L281256_))))
                                           (if (##structure-ref
                                                _klass281271_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp287107
                                                      (let ((__tmp287117
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self281217_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp287108
                     (let ((__tmp287114
                            (let ((__tmp287115
                                   (let ((__tmp287116
                                          (##structure-ref
                                           _self281217_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp287116 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp287115)))
                           (__tmp287109
                            (let ((__tmp287112
                                   (let ((__tmp287113
                                          (let ()
                                            (declare (not safe))
                                            (cons _field281273_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp287113)))
                                  (__tmp287110
                                   (let ((__tmp287111
                                          (let ()
                                            (declare (not safe))
                                            (cons _value281277_ '()))))
                                     (declare (not safe))
                                     (cons _object281275_ __tmp287111))))
                              (declare (not safe))
                              (cons __tmp287112 __tmp287110))))
                       (declare (not safe))
                       (cons __tmp287114 __tmp287109))))
                (declare (not safe))
                (cons __tmp287117 __tmp287108))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp287107
                                                  _stx281218_))
                                               (if (##structure-ref
                                                    _klass281271_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp287096
                                                          (let ((__tmp287106
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self281217_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp287097
                         (let ((__tmp287103
                                (let ((__tmp287104
                                       (let ((__tmp287105
                                              (##structure-ref
                                               _self281217_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp287105 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp287104)))
                               (__tmp287098
                                (let ((__tmp287101
                                       (let ((__tmp287102
                                              (let ()
                                                (declare (not safe))
                                                (cons _field281273_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp287102)))
                                      (__tmp287099
                                       (let ((__tmp287100
                                              (let ()
                                                (declare (not safe))
                                                (cons _value281277_ '()))))
                                         (declare (not safe))
                                         (cons _object281275_ __tmp287100))))
                                  (declare (not safe))
                                  (cons __tmp287101 __tmp287099))))
                           (declare (not safe))
                           (cons __tmp287103 __tmp287098))))
                    (declare (not safe))
                    (cons __tmp287106 __tmp287097))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp287096
                                                      _stx281218_))
                                                   (let ((_$e281280_
                                                          (let ((__tmp287026
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self281217_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass281271_ __tmp287026))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e281280_
                                                         ((lambda (_klass281283_)
                                                            (let ((__tmp287085
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp287095
                                  (if (##structure-ref
                                       _self281217_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp287086
                                  (let ((__tmp287092
                                         (let ((__tmp287093
                                                (let ((__tmp287094
                                                       (##structure-ref
                                                        _self281217_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp287094 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp287093)))
                                        (__tmp287087
                                         (let ((__tmp287090
                                                (let ((__tmp287091
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field281273_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp287091)))
                                               (__tmp287088
                                                (let ((__tmp287089
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value281277_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object281275_
                                                        __tmp287089))))
                                           (declare (not safe))
                                           (cons __tmp287090 __tmp287088))))
                                    (declare (not safe))
                                    (cons __tmp287092 __tmp287087))))
                             (declare (not safe))
                             (cons __tmp287095 __tmp287086))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp287085 _stx281218_)))
                  _$e281280_)
                 (if (##structure-ref _self281217_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp287037
                            (let* ((_$obj281285_
                                    (let ((__tmp287038 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp287038)))
                                   (__tmp287039
                                    (let ((__tmp287081
                                           (let ((__tmp287082
                                                  (let ((__tmp287084
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj281285_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp287083
                 (let () (declare (not safe)) (cons _object281275_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp287084
                                                          __tmp287083))))
                                             (declare (not safe))
                                             (cons __tmp287082 '())))
                                          (__tmp287040
                                           (let ((__tmp287041
                                                  (let ((__tmp287042
                                                         (let ((__tmp287073
                                                                (let ((__tmp287074
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp287078
                                      (let ((__tmp287079
                                             (let ((__tmp287080
                                                    (##structure-ref
                                                     _klass281271_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp287080 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp287079)))
                                     (__tmp287075
                                      (let ((__tmp287076
                                             (let ((__tmp287077
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj281285_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp287077))))
                                        (declare (not safe))
                                        (cons __tmp287076 '()))))
                                 (declare (not safe))
                                 (cons __tmp287078 __tmp287075))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp287074)))
                       (__tmp287043
                        (let ((__tmp287061
                               (let ((__tmp287062
                                      (let ((__tmp287070
                                             (let ((__tmp287071
                                                    (let ((__tmp287072
                                                           (##structure-ref
                                                            _self281217_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp287072 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp287071)))
                                            (__tmp287063
                                             (let ((__tmp287068
                                                    (let ((__tmp287069
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field281273_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp287069)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp287064
                                                    (let ((__tmp287066
                                                           (let ((__tmp287067
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj281285_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp287067)))
                  (__tmp287065
                   (let () (declare (not safe)) (cons _value281277_ '()))))
              (declare (not safe))
              (cons __tmp287066 __tmp287065))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp287068
                                                     __tmp287064))))
                                        (declare (not safe))
                                        (cons __tmp287070 __tmp287063))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp287062)))
                              (__tmp287044
                               (let ((__tmp287045
                                      (let ((__tmp287046
                                             (let ((__tmp287059
                                                    (let ((__tmp287060
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp287060)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp287047
                                                    (let ((__tmp287056
                                                           (let ((__tmp287057
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp287058
                                 (##structure-ref
                                  _self281217_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp287058 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp287057)))
                  (__tmp287048
                   (let ((__tmp287054
                          (let ((__tmp287055
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj281285_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp287055)))
                         (__tmp287049
                          (let ((__tmp287051
                                 (let ((__tmp287052
                                        (let ((__tmp287053
                                               (##structure-ref
                                                _self281217_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp287053 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp287052)))
                                (__tmp287050
                                 (let ()
                                   (declare (not safe))
                                   (cons _value281277_ '()))))
                            (declare (not safe))
                            (cons __tmp287051 __tmp287050))))
                     (declare (not safe))
                     (cons __tmp287054 __tmp287049))))
              (declare (not safe))
              (cons __tmp287056 __tmp287048))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp287059
                                                     __tmp287047))))
                                        (declare (not safe))
                                        (cons '%#call __tmp287046))))
                                 (declare (not safe))
                                 (cons __tmp287045 '()))))
                          (declare (not safe))
                          (cons __tmp287061 __tmp287044))))
                   (declare (not safe))
                   (cons __tmp287073 __tmp287043))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp287042))))
                                             (declare (not safe))
                                             (cons __tmp287041 '()))))
                                      (declare (not safe))
                                      (cons __tmp287081 __tmp287040))))
                              (declare (not safe))
                              (cons '%#let-values __tmp287039))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp287037 _stx281218_))
                     (let ((__tmp287027
                            (let ((__tmp287028
                                   (let ((__tmp287035
                                          (let ((__tmp287036
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp287036)))
                                         (__tmp287029
                                          (let ((__tmp287030
                                                 (let ((__tmp287032
                                                        (let ((__tmp287033
                                                               (let ((__tmp287034
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self281217_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp287034 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp287033)))
               (__tmp287031
                (let () (declare (not safe)) (cons _value281277_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp287032
                                                         __tmp287031))))
                                            (declare (not safe))
                                            (cons _object281275_
                                                  __tmp287030))))
                                     (declare (not safe))
                                     (cons __tmp287035 __tmp287029))))
                              (declare (not safe))
                              (cons '%#call __tmp287028))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp287027 _stx281218_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd281229281251_
                                       _hd281226281243_)
                                      (let ()
                                        (declare (not safe))
                                        (_g281221281235_ _g281222281238_)))))
                              (let ()
                                (declare (not safe))
                                (_g281221281235_ _g281222281238_)))))
                      (let ()
                        (declare (not safe))
                        (_g281221281235_ _g281222281238_))))))
          (declare (not safe))
          (_g281220281287_ _args281219_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__t286159)
        (let ((__id286160
               (let ((__tmp286163
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t286159 'id))))
                 (if __tmp286163 __tmp286163 (error '"Unknown slot" 'id))))
              (__slot286161
               (let ((__tmp286164
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t286159 'slot))))
                 (if __tmp286164 __tmp286164 (error '"Unknown slot" 'slot))))
              (__checked?286162
               (let ((__tmp286165
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t286159 'checked?))))
                 (if __tmp286165
                     __tmp286165
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self281217_ _stx281218_ _args281219_)
            (let* ((_g281221281235_
                    (lambda (_g281222281232_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g281222281232_))))
                   (_g281220281287_
                    (lambda (_g281222281238_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g281222281238_))
                          (let ((_e281227281240_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g281222281238_))))
                            (let ((_hd281226281243_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e281227281240_)))
                                  (_tl281225281245_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e281227281240_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl281225281245_))
                                  (let ((_e281230281248_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl281225281245_))))
                                    (let ((_hd281229281251_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e281230281248_)))
                                          (_tl281228281253_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e281230281248_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl281228281253_))
                                          ((lambda (_L281256_ _L281257_)
                                             (let* ((_klass281271_
                                                     (let ((__tmp287118
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self281217_
                                                               __id286160
                                                               __t286159
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx281218_
                                                        __tmp287118)))
                                                    (_field281273_
                                                     (let ((__tmp287119
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self281217_
                                                               __slot286161
                                                               __t286159
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass281271_
                                                        __tmp287119)))
                                                    (_object281275_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L281257_)))
                                                    (_value281277_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L281256_))))
                                               (if (##structure-ref
                                                    _klass281271_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp287201
                                                          (let ((__tmp287211
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self281217_
                                __checked?286162
                                __t286159
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp287202
                         (let ((__tmp287208
                                (let ((__tmp287209
                                       (let ((__tmp287210
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self281217_
                                                 __id286160
                                                 __t286159
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp287210 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp287209)))
                               (__tmp287203
                                (let ((__tmp287206
                                       (let ((__tmp287207
                                              (let ()
                                                (declare (not safe))
                                                (cons _field281273_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp287207)))
                                      (__tmp287204
                                       (let ((__tmp287205
                                              (let ()
                                                (declare (not safe))
                                                (cons _value281277_ '()))))
                                         (declare (not safe))
                                         (cons _object281275_ __tmp287205))))
                                  (declare (not safe))
                                  (cons __tmp287206 __tmp287204))))
                           (declare (not safe))
                           (cons __tmp287208 __tmp287203))))
                    (declare (not safe))
                    (cons __tmp287211 __tmp287202))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp287201
                                                      _stx281218_))
                                                   (if (##structure-ref
                                                        _klass281271_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp287190
                                                              (let ((__tmp287200
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self281217_
                                    __checked?286162
                                    __t286159
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp287191
                             (let ((__tmp287197
                                    (let ((__tmp287198
                                           (let ((__tmp287199
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self281217_
                                                     __id286160
                                                     __t286159
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp287199 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp287198)))
                                   (__tmp287192
                                    (let ((__tmp287195
                                           (let ((__tmp287196
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field281273_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp287196)))
                                          (__tmp287193
                                           (let ((__tmp287194
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value281277_ '()))))
                                             (declare (not safe))
                                             (cons _object281275_
                                                   __tmp287194))))
                                      (declare (not safe))
                                      (cons __tmp287195 __tmp287193))))
                               (declare (not safe))
                               (cons __tmp287197 __tmp287192))))
                        (declare (not safe))
                        (cons __tmp287200 __tmp287191))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp287190 _stx281218_))
               (let ((_$e281280_
                      (let ((__tmp287120
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self281217_
                                __slot286161
                                __t286159
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass281271_
                         __tmp287120))))
                 (if _$e281280_
                     ((lambda (_klass281283_)
                        (let ((__tmp287179
                               (let ((__tmp287189
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self281217_
                                             __checked?286162
                                             __t286159
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp287180
                                      (let ((__tmp287186
                                             (let ((__tmp287187
                                                    (let ((__tmp287188
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self281217_
                                                              __id286160
                                                              __t286159
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp287188 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp287187)))
                                            (__tmp287181
                                             (let ((__tmp287184
                                                    (let ((__tmp287185
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field281273_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp287185)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp287182
                                                    (let ((__tmp287183
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value281277_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object281275_ __tmp287183))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp287184
                                                     __tmp287182))))
                                        (declare (not safe))
                                        (cons __tmp287186 __tmp287181))))
                                 (declare (not safe))
                                 (cons __tmp287189 __tmp287180))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp287179 _stx281218_)))
                      _$e281280_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self281217_
                            __checked?286162
                            __t286159
                            '#f))
                         (let ((__tmp287131
                                (let* ((_$obj281285_
                                        (let ((__tmp287132 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp287132)))
                                       (__tmp287133
                                        (let ((__tmp287175
                                               (let ((__tmp287176
                                                      (let ((__tmp287178
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj281285_ '())))
                    (__tmp287177
                     (let () (declare (not safe)) (cons _object281275_ '()))))
                (declare (not safe))
                (cons __tmp287178 __tmp287177))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp287176 '())))
                                              (__tmp287134
                                               (let ((__tmp287135
                                                      (let ((__tmp287136
                                                             (let ((__tmp287167
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp287168
                                   (let ((__tmp287172
                                          (let ((__tmp287173
                                                 (let ((__tmp287174
                                                        (##structure-ref
                                                         _klass281271_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp287174 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp287173)))
                                         (__tmp287169
                                          (let ((__tmp287170
                                                 (let ((__tmp287171
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj281285_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp287171))))
                                            (declare (not safe))
                                            (cons __tmp287170 '()))))
                                     (declare (not safe))
                                     (cons __tmp287172 __tmp287169))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp287168)))
                           (__tmp287137
                            (let ((__tmp287155
                                   (let ((__tmp287156
                                          (let ((__tmp287164
                                                 (let ((__tmp287165
                                                        (let ((__tmp287166
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self281217_
                          __id286160
                          __t286159
                          '#f))))
                  (declare (not safe))
                  (cons __tmp287166 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp287165)))
                                                (__tmp287157
                                                 (let ((__tmp287162
                                                        (let ((__tmp287163
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field281273_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp287163)))
               (__tmp287158
                (let ((__tmp287160
                       (let ((__tmp287161
                              (let ()
                                (declare (not safe))
                                (cons _$obj281285_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp287161)))
                      (__tmp287159
                       (let () (declare (not safe)) (cons _value281277_ '()))))
                  (declare (not safe))
                  (cons __tmp287160 __tmp287159))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp287162
                                                         __tmp287158))))
                                            (declare (not safe))
                                            (cons __tmp287164 __tmp287157))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp287156)))
                                  (__tmp287138
                                   (let ((__tmp287139
                                          (let ((__tmp287140
                                                 (let ((__tmp287153
                                                        (let ((__tmp287154
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp287154)))
               (__tmp287141
                (let ((__tmp287150
                       (let ((__tmp287151
                              (let ((__tmp287152
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self281217_
                                        __id286160
                                        __t286159
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp287152 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp287151)))
                      (__tmp287142
                       (let ((__tmp287148
                              (let ((__tmp287149
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj281285_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp287149)))
                             (__tmp287143
                              (let ((__tmp287145
                                     (let ((__tmp287146
                                            (let ((__tmp287147
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self281217_
                                                      __slot286161
                                                      __t286159
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp287147 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp287146)))
                                    (__tmp287144
                                     (let ()
                                       (declare (not safe))
                                       (cons _value281277_ '()))))
                                (declare (not safe))
                                (cons __tmp287145 __tmp287144))))
                         (declare (not safe))
                         (cons __tmp287148 __tmp287143))))
                  (declare (not safe))
                  (cons __tmp287150 __tmp287142))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp287153
                                                         __tmp287141))))
                                            (declare (not safe))
                                            (cons '%#call __tmp287140))))
                                     (declare (not safe))
                                     (cons __tmp287139 '()))))
                              (declare (not safe))
                              (cons __tmp287155 __tmp287138))))
                       (declare (not safe))
                       (cons __tmp287167 __tmp287137))))
                (declare (not safe))
                (cons '%#if __tmp287136))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp287135 '()))))
                                          (declare (not safe))
                                          (cons __tmp287175 __tmp287134))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp287133))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp287131 _stx281218_))
                         (let ((__tmp287121
                                (let ((__tmp287122
                                       (let ((__tmp287129
                                              (let ((__tmp287130
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp287130)))
                                             (__tmp287123
                                              (let ((__tmp287124
                                                     (let ((__tmp287126
                                                            (let ((__tmp287127
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp287128
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self281217_
                                     __slot286161
                                     __t286159
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp287128 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp287127)))
                   (__tmp287125
                    (let () (declare (not safe)) (cons _value281277_ '()))))
               (declare (not safe))
               (cons __tmp287126 __tmp287125))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object281275_
                                                      __tmp287124))))
                                         (declare (not safe))
                                         (cons __tmp287129 __tmp287123))))
                                  (declare (not safe))
                                  (cons '%#call __tmp287122))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp287121
                            _stx281218_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd281229281251_
                                           _hd281226281243_)
                                          (let ()
                                            (declare (not safe))
                                            (_g281221281235_
                                             _g281222281238_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g281221281235_ _g281222281238_)))))
                          (let ()
                            (declare (not safe))
                            (_g281221281235_ _g281222281238_))))))
              (declare (not safe))
              (_g281220281287_ _args281219_))))))
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
      (lambda (_self281051_ _stx281052_ _args281053_)
        (let* ((_self281054281063_ _self281051_)
               (_E281056281067_
                (lambda () (error '"No clause matching" _self281054281063_)))
               (_K281057281074_
                (lambda (_inline281070_ _dispatch281071_ _arity281072_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self281051_ _args281053_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx281052_
                         _arity281072_)))
                  (if _inline281070_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp287217
                               (let ((__tmp287218
                                      (_inline281070_ _stx281052_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp287218
                                  _stx281052_))))
                          (declare (not safe))
                          (gxc#compile-e__0 __tmp287217)))
                      (if _dispatch281071_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch281071_))
                            (let ((__tmp287212
                                   (let ((__tmp287213
                                          (let ((__tmp287214
                                                 (let ((__tmp287215
                                                        (let ((__tmp287216
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch281071_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp287216))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp287215
                                                         _args281053_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp287214))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp287213
                                      _stx281052_))))
                              (declare (not safe))
                              (gxc#compile-e__0 __tmp287212)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _stx281052_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self281054281063_ 'gxc#!lambda::t))
              (let* ((_e281058281077_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281054281063_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e281059281080_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281054281063_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity281083_ _e281059281080_)
                     (_e281060281085_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281054281063_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch281088_ _e281060281085_)
                     (_e281061281090_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281054281063_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline281093_ _e281061281090_))
                (declare (not safe))
                (_K281057281074_
                 _inline281093_
                 _dispatch281088_
                 _arity281083_))
              (let () (declare (not safe)) (_E281056281067_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self280890_ _stx280891_ _args280892_)
        (let* ((_self280893280900_ _self280890_)
               (_E280895280904_
                (lambda () (error '"No clause matching" _self280893280900_)))
               (_K280896280918_
                (lambda (_clauses280907_)
                  (let ((_$e280913_
                         (let ((__tmp287219
                                (lambda (_g280908280910_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g280908280910_
                                     _args280892_)))))
                           (declare (not safe))
                           (find __tmp287219 _clauses280907_))))
                    (if _$e280913_
                        ((lambda (_clause280916_)
                           (let ((__method286434
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause280916_
                                     'optimize-call))))
                             (if __method286434
                                 (__method286434
                                  _clause280916_
                                  _stx280891_
                                  _args280892_)
                                 (error '"Missing method"
                                        _clause280916_
                                        'optimize-call))))
                         _$e280913_)
                        (let ((__tmp287220
                               (map gxc#!lambda-arity _clauses280907_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx280891_
                           __tmp287220)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self280893280900_
                 'gxc#!case-lambda::t))
              (let* ((_e280897280921_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280893280900_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e280898280924_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280893280900_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses280927_ _e280898280924_))
                (declare (not safe))
                (_K280896280918_ _clauses280927_))
              (let () (declare (not safe)) (_E280895280904_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self280704_ _args280705_)
        (let* ((_self280706280713_ _self280704_)
               (_E280708280717_
                (lambda () (error '"No clause matching" _self280706280713_)))
               (_K280709280757_
                (lambda (_arity280720_)
                  (let* ((_arity280721280730_ _arity280720_)
                         (_E280724280734_
                          (lambda ()
                            (error '"No clause matching"
                                   _arity280721280730_))))
                    (let ((_K280728280754_
                           (lambda ()
                             (fx= (length _args280705_) _arity280720_)))
                          (_K280725280740_
                           (lambda (_arity280738_)
                             (fx>= (length _args280705_) _arity280738_))))
                      (let ((_try-match280723280750_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity280721280730_))
                                   (let ((_tl280727280745_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity280721280730_)))
                                         (_hd280726280743_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity280721280730_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl280727280745_))
                                         (let ((_arity280748_
                                                _hd280726280743_))
                                           (declare (not safe))
                                           (_K280725280740_ _arity280748_))
                                         (let ()
                                           (declare (not safe))
                                           (_E280724280734_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E280724280734_))))))
                        (if (fixnum? _arity280721280730_)
                            (let () (declare (not safe)) (_K280728280754_))
                            (let ()
                              (declare (not safe))
                              (_try-match280723280750_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self280706280713_ 'gxc#!lambda::t))
              (let* ((_e280710280760_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280706280713_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e280711280763_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280706280713_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity280766_ _e280711280763_))
                (declare (not safe))
                (_K280709280757_ _arity280766_))
              (let () (declare (not safe)) (_E280708280717_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self280589_ _stx280590_ _args280591_)
        (let* ((_self280592280600_ _self280589_)
               (_E280594280604_
                (lambda () (error '"No clause matching" _self280592280600_)))
               (_K280595280688_
                (lambda (_dispatch280607_ _table280608_)
                  (let* ((_g280609280618_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch280607_)))
                         (_else280611280626_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch280607_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _stx280590_))))
                         (_K280613280672_
                          (lambda (_main280629_ _keys280630_)
                            (let ((_g287221_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx280590_
                                      _args280591_))))
                              (begin
                                (let ((_g287222_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g287221_)
                                             (##vector-length _g287221_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g287222_ 2)))
                                      (error "Context expects 2 values"
                                             _g287222_)))
                                (let ((_pargs280632_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g287221_ 0)))
                                      (_kwargs280633_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g287221_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main280629_))
                                    (if _table280608_
                                        (let ((_xargs280640_
                                               (map (lambda (_key280635_)
                                                      (let ((_$e280637_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _key280635_ _kwargs280633_))))
                (if _$e280637_ (values _$e280637_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys280630_)))
                                          (for-each
                                           (lambda (_kw280642_)
                                             (if (memq (car _kw280642_)
                                                       _keys280630_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx280590_
                                                    _keys280630_
                                                    _kw280642_))))
                                           _kwargs280633_)
                                          (let ((__tmp287274
                                                 (let ((__tmp287275
                                                        (let ((__tmp287276
                                                               (let ((__tmp287281
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp287282
                                     (let ()
                                       (declare (not safe))
                                       (cons _main280629_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp287282)))
                             (__tmp287277
                              (let ((__tmp287279
                                     (let ((__tmp287280
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp287280)))
                                    (__tmp287278
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs280632_
                                               _xargs280640_))))
                                (declare (not safe))
                                (cons __tmp287279 __tmp287278))))
                         (declare (not safe))
                         (cons __tmp287281 __tmp287277))))
                  (declare (not safe))
                  (cons '%#call __tmp287276))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp287275
                                                    _stx280590_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0 __tmp287274)))
                                        (let* ((_kwt280644_
                                                (let ((__tmp287223
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp287223)))
                                               (_kwvars280647_
                                                (map (lambda (_g287224_)
                                                       (let ((__tmp287225
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp287225)))
                                                     _kwargs280633_))
                                               (_kwbind280652_
                                                (map (lambda (_kw280649_
                                                              _kwvar280650_)
                                                       (let ((__tmp287228
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar280650_ '())))
                     (__tmp287226
                      (let ((__tmp287227 (cdr _kw280649_)))
                        (declare (not safe))
                        (cons __tmp287227 '()))))
                 (declare (not safe))
                 (cons __tmp287228 __tmp287226)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs280633_
                                                     _kwvars280647_))
                                               (_kwset280657_
                                                (map (lambda (_kw280654_
                                                              _kwvar280655_)
                                                       (let ((__tmp287229
                                                              (let ((__tmp287230
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp287238
                                    (let ((__tmp287239
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt280644_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp287239)))
                                   (__tmp287231
                                    (let ((__tmp287235
                                           (let ((__tmp287236
                                                  (let ((__tmp287237
                                                         (car _kw280654_)))
                                                    (declare (not safe))
                                                    (cons __tmp287237 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp287236)))
                                          (__tmp287232
                                           (let ((__tmp287233
                                                  (let ((__tmp287234
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar280655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp287234))))
                                             (declare (not safe))
                                             (cons __tmp287233 '()))))
                                      (declare (not safe))
                                      (cons __tmp287235 __tmp287232))))
                               (declare (not safe))
                               (cons __tmp287238 __tmp287231))))
                        (declare (not safe))
                        (cons '(%#ref symoblic-table-set!) __tmp287230))))
                 (declare (not safe))
                 (cons '%#call __tmp287229)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs280633_
                                                     _kwvars280647_))
                                               (_xkwargs280662_
                                                (map (lambda (_kw280659_
                                                              _kwvar280660_)
                                                       (let ((__tmp287242
                                                              (car _kw280659_))
                                                             (__tmp287240
                                                              (let ((__tmp287241
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar280660_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp287241))))
                 (declare (not safe))
                 (cons __tmp287242 __tmp287240)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs280633_
                                                     _kwvars280647_))
                                               (_xargs280669_
                                                (map (lambda (_key280664_)
                                                       (let ((_$e280666_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq _key280664_ _xkwargs280662_))))
                 (if _$e280666_ (values _$e280666_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys280630_)))
                                          (let ((__tmp287243
                                                 (let ((__tmp287244
                                                        (let ((__tmp287245
                                                               (let ((__tmp287246
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp287247
                                     (let ((__tmp287248
                                            (let ((__tmp287262
                                                   (let ((__tmp287263
                                                          (let ((__tmp287273
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt280644_ '())))
                        (__tmp287264
                         (let ((__tmp287265
                                (let ((__tmp287266
                                       (let ((__tmp287267
                                              (let ((__tmp287268
                                                     (let ((__tmp287270
                                                            (let ((__tmp287271
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp287272 (length _kwargs280633_)))
                             (declare (not safe))
                             (cons __tmp287272 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp287271)))
                   (__tmp287269
                    (let () (declare (not safe)) (cons '(%#quote 0) '()))))
               (declare (not safe))
               (cons __tmp287270 __tmp287269))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-symbolic-table)
                                                      __tmp287268))))
                                         (declare (not safe))
                                         (cons '%#call __tmp287267))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp287266
                                   _stx280590_))))
                           (declare (not safe))
                           (cons __tmp287265 '()))))
                    (declare (not safe))
                    (cons __tmp287273 __tmp287264))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp287263 '())))
                                                  (__tmp287249
                                                   (let ((__tmp287250
                                                          (let ((__tmp287251
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp287252
                                (let ((__tmp287253
                                       (let ((__tmp287254
                                              (let ((__tmp287255
                                                     (let ((__tmp287260
                                                            (let ((__tmp287261
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main280629_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp287261)))
                   (__tmp287256
                    (let ((__tmp287258
                           (let ((__tmp287259
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt280644_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp287259)))
                          (__tmp287257
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs280632_ _xargs280669_))))
                      (declare (not safe))
                      (cons __tmp287258 __tmp287257))))
               (declare (not safe))
               (cons __tmp287260 __tmp287256))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp287255))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp287254
                                          _stx280590_))))
                                  (declare (not safe))
                                  (cons __tmp287253 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp287252 _kwset280657_))))
                    (declare (not safe))
                    (cons '%#begin __tmp287251))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp287250 '()))))
                                              (declare (not safe))
                                              (cons __tmp287262 __tmp287249))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp287248))))
                                (declare (not safe))
                                (cons __tmp287247 '()))))
                         (declare (not safe))
                         (cons _kwbind280652_ __tmp287246))))
                  (declare (not safe))
                  (cons '%#let-values __tmp287245))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp287244
                                                    _stx280590_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0
                                             __tmp287243)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g280609280618_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e280614280675_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g280609280618_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e280615280678_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g280609280618_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys280681_ _e280615280678_)
                               (_e280616280683_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g280609280618_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main280686_ _e280616280683_))
                          (declare (not safe))
                          (_K280613280672_ _main280686_ _keys280681_))
                        (let () (declare (not safe)) (_else280611280626_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self280592280600_
                 'gxc#!kw-lambda::t))
              (let* ((_e280596280691_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280592280600_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e280597280694_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280592280600_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table280697_ _e280597280694_)
                     (_e280598280699_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280592280600_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch280702_ _e280598280699_))
                (declare (not safe))
                (_K280595280688_ _dispatch280702_ _table280697_))
              (let () (declare (not safe)) (_E280594280604_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx280202_ _args280203_)
        (let _lp280205_ ((_rest280207_ _args280203_)
                         (_pargs280208_ '())
                         (_kwargs280209_ '()))
          (let* ((___stx286316286317_ _rest280207_)
                 (_g280215280267_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx286316286317_)))))
            (let ((___kont286318286319_
                   (lambda (_L280446_ _L280447_)
                     (let ((__tmp287283
                            (let ()
                              (declare (not safe))
                              (cons _L280447_ _pargs280208_))))
                       (declare (not safe))
                       (_lp280205_ _L280446_ __tmp287283 _kwargs280209_))))
                  (___kont286320286321_
                   (lambda (_L280392_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L280392_ _pargs280208_))
                             (reverse _kwargs280209_))))
                  (___kont286322286323_
                   (lambda (_L280339_ _L280340_ _L280341_)
                     (let ((_kw280358_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L280341_))))
                       (if (assq _kw280358_ _kwargs280209_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx280202_
                              _kw280358_))
                           (let ((__tmp287284
                                  (let ((__tmp287285
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw280358_ _L280340_))))
                                    (declare (not safe))
                                    (cons __tmp287285 _kwargs280209_))))
                             (declare (not safe))
                             (_lp280205_
                              _L280339_
                              _pargs280208_
                              __tmp287284))))))
                  (___kont286324286325_
                   (lambda (_L280287_ _L280288_)
                     (let ((__tmp287286
                            (let ()
                              (declare (not safe))
                              (cons _L280288_ _pargs280208_))))
                       (declare (not safe))
                       (_lp280205_ _L280287_ __tmp287286 _kwargs280209_))))
                  (___kont286326286327_
                   (lambda ()
                     (values (reverse _pargs280208_)
                             (reverse _kwargs280209_)))))
              (let* ((_g280214280274_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx286316286317_))
                            (___kont286326286327_)
                            (let () (declare (not safe)) (_g280215280267_)))))
                     (___match286423286424_
                      (lambda (_e280248280307_
                               _hd280247280310_
                               _tl280246280312_
                               _e280251280315_
                               _hd280250280318_
                               _tl280249280320_
                               _e280254280323_
                               _hd280253280326_
                               _tl280252280328_
                               _e280257280331_
                               _hd280256280334_
                               _tl280255280336_)
                        (let ((_L280339_ _tl280255280336_)
                              (_L280340_ _hd280256280334_)
                              (_L280341_ _hd280253280326_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L280341_))
                              (___kont286322286323_
                               _L280339_
                               _L280340_
                               _L280341_)
                              (___kont286324286325_
                               _tl280246280312_
                               _hd280247280310_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx286316286317_))
                    (let ((_e280221280411_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx286316286317_))))
                      (let ((_tl280219280416_
                             (let ()
                               (declare (not safe))
                               (##cdr _e280221280411_)))
                            (_hd280220280414_
                             (let ()
                               (declare (not safe))
                               (##car _e280221280411_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd280220280414_))
                            (let ((_e280224280419_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd280220280414_))))
                              (let ((_tl280222280424_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e280224280419_)))
                                    (_hd280223280422_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e280224280419_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd280223280422_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd280223280422_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl280222280424_))
                                            (let ((_e280227280427_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl280222280424_))))
                                              (let ((_tl280225280432_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e280227280427_)))
                                                    (_hd280226280430_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e280227280427_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd280226280430_))
                                                    (let ((_e280228280435_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd280226280430_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e280228280435_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl280225280432_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl280219280416_))
                          (let ((_e280231280438_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl280219280416_))))
                            (let ((_tl280229280443_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e280231280438_)))
                                  (_hd280230280441_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e280231280438_))))
                              (___kont286318286319_
                               _tl280229280443_
                               _hd280230280441_)))
                          (___kont286324286325_
                           _tl280219280416_
                           _hd280220280414_))
                      (___kont286324286325_ _tl280219280416_ _hd280220280414_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e280228280435_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl280225280432_))
                          (___kont286320286321_ _tl280219280416_)
                          (___kont286324286325_
                           _tl280219280416_
                           _hd280220280414_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl280225280432_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl280219280416_))
                              (let ((_e280257280331_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl280219280416_))))
                                (let ((_tl280255280336_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e280257280331_)))
                                      (_hd280256280334_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e280257280331_))))
                                  (___match286423286424_
                                   _e280221280411_
                                   _hd280220280414_
                                   _tl280219280416_
                                   _e280224280419_
                                   _hd280223280422_
                                   _tl280222280424_
                                   _e280227280427_
                                   _hd280226280430_
                                   _tl280225280432_
                                   _e280257280331_
                                   _hd280256280334_
                                   _tl280255280336_)))
                              (___kont286324286325_
                               _tl280219280416_
                               _hd280220280414_))
                          (___kont286324286325_
                           _tl280219280416_
                           _hd280220280414_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl280225280432_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl280219280416_))
                                                            (let ((_e280257280331_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl280219280416_))))
                      (let ((_tl280255280336_
                             (let ()
                               (declare (not safe))
                               (##cdr _e280257280331_)))
                            (_hd280256280334_
                             (let ()
                               (declare (not safe))
                               (##car _e280257280331_))))
                        (___match286423286424_
                         _e280221280411_
                         _hd280220280414_
                         _tl280219280416_
                         _e280224280419_
                         _hd280223280422_
                         _tl280222280424_
                         _e280227280427_
                         _hd280226280430_
                         _tl280225280432_
                         _e280257280331_
                         _hd280256280334_
                         _tl280255280336_)))
                    (___kont286324286325_ _tl280219280416_ _hd280220280414_))
                (___kont286324286325_ _tl280219280416_ _hd280220280414_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont286324286325_
                                             _tl280219280416_
                                             _hd280220280414_))
                                        (___kont286324286325_
                                         _tl280219280416_
                                         _hd280220280414_))
                                    (___kont286324286325_
                                     _tl280219280416_
                                     _hd280220280414_))))
                            (___kont286324286325_
                             _tl280219280416_
                             _hd280220280414_))))
                    (let () (declare (not safe)) (_g280214280274_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self280198_ _stx280199_ _args280200_)
        (let () (declare (not safe)) (gxc#xform-call% _stx280199_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
