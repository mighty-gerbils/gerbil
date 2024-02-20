(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1708452004)
  (begin
    (define gxc#&optimize-call
      (make-promise
       (lambda ()
         (let ((_tbl149159_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp149454 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-merge! _tbl149159_ __tmp149454))
           (let ()
             (declare (not safe))
             (hash-put! _tbl149159_ '%#call gxc#optimize-call%))
           _tbl149159_))))
    (define gxc#apply-optimize-call
      (lambda (_stx149142_ . _args149144_)
        (let ((__tmp149456
               (lambda ()
                 (declare (not safe))
                 (if (null? _args149144_)
                     (gxc#compile-e__0 _stx149142_)
                     (let ((_arg1149149_ (car _args149144_))
                           (_rest149151_ (cdr _args149144_)))
                       (if (null? _rest149151_)
                           (gxc#compile-e__1 _stx149142_ _arg1149149_)
                           (let ((_arg2149154_ (car _rest149151_))
                                 (_rest149156_ (cdr _rest149151_)))
                             (if (null? _rest149156_)
                                 (gxc#compile-e__2
                                  _stx149142_
                                  _arg1149149_
                                  _arg2149154_)
                                 (apply gxc#compile-e
                                        _stx149142_
                                        _arg1149149_
                                        _arg2149154_
                                        _rest149156_))))))))
              (__tmp149455 (force gxc#&optimize-call)))
          (declare (not safe))
          (call-with-parameters
           __tmp149456
           gxc#current-compile-methods
           __tmp149455))))
    (define gxc#optimize-call%
      (lambda (_stx148997_)
        (let* ((___stx149204149205_ _stx148997_)
               (_g149000149020_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx149204149205_)))))
          (let ((___kont149206149207_
                 (lambda (_L149064_ _L149065_)
                   (let* ((_rator-id149083_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L149065_)))
                          (_rator-type149085_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id149083_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type149085_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp149457
                                  (##structure-ref
                                   _rator-type149085_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id149083_
                              '" => "
                              _rator-type149085_
                              '" "
                              __tmp149457))
                           (let ((_optimized149088_
                                  (let ((__method149452
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type149085_
                                            'optimize-call))))
                                    (if __method149452
                                        (__method149452
                                         _rator-type149085_
                                         _stx148997_
                                         _L149064_)
                                        (let ()
                                          (declare (not safe))
                                          (error '"Missing method"
                                                 _rator-type149085_
                                                 'optimize-call))))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type149085_))
                                 _optimized149088_
                                 (let* ((___stx149186149187_ _optimized149088_)
                                        (_g149091149101_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx149186149187_)))))
                                   (let ((___kont149188149189_
                                          (lambda (_L149121_)
                                            (let ((__tmp149458
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L149121_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp149458
                                               _stx148997_))))
                                         (___kont149190149191_
                                          (lambda () _optimized149088_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx149186149187_))
                                         (let ((_e149094149113_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx149186149187_))))
                                           (let ((_tl149096149118_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e149094149113_)))
                                                 (_hd149095149116_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e149094149113_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd149095149116_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd149095149116_))
                                                     (___kont149188149189_
                                                      _tl149096149118_)
                                                     (___kont149190149191_))
                                                 (___kont149190149191_))))
                                         (___kont149190149191_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type149085_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx148997_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx148997_
                                _rator-type149085_)))))))
                (___kont149208149209_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _stx148997_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx149204149205_))
                (let ((_e149004149032_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx149204149205_))))
                  (let ((_tl149006149037_
                         (let () (declare (not safe)) (##cdr _e149004149032_)))
                        (_hd149005149035_
                         (let ()
                           (declare (not safe))
                           (##car _e149004149032_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl149006149037_))
                        (let ((_e149007149040_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl149006149037_))))
                          (let ((_tl149009149045_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e149007149040_)))
                                (_hd149008149043_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e149007149040_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd149008149043_))
                                (let ((_e149010149048_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd149008149043_))))
                                  (let ((_tl149012149053_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e149010149048_)))
                                        (_hd149011149051_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e149010149048_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd149011149051_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd149011149051_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl149012149053_))
                                                (let ((_e149013149056_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl149012149053_))))
                                                  (let ((_tl149015149061_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e149013149056_)))
                                                        (_hd149014149059_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e149013149056_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl149015149061_))
                                                        (___kont149206149207_
                                                         _tl149009149045_
                                                         _hd149014149059_)
                                                        (___kont149208149209_))))
                                                (___kont149208149209_))
                                            (___kont149208149209_))
                                        (___kont149208149209_))))
                                (___kont149208149209_))))
                        (___kont149208149209_))))
                (___kont149208149209_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self148951_ _stx148952_ _args148953_)
        (let* ((_g148955148965_
                (lambda (_g148956148962_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g148956148962_))))
               (_g148954148994_
                (lambda (_g148956148968_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g148956148968_))
                      (let ((_e148958148970_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g148956148968_))))
                        (let ((_hd148959148973_
                               (let ()
                                 (declare (not safe))
                                 (##car _e148958148970_)))
                              (_tl148960148975_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e148958148970_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl148960148975_))
                              ((lambda (_L148978_)
                                 (let* ((_klass148989_
                                         (let ((__tmp149459
                                                (##structure-ref
                                                 _self148951_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx148952_
                                            __tmp149459)))
                                        (_object148991_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L148978_))))
                                   (if (##structure-ref
                                        _klass148989_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp149460
                                              (let ((__tmp149461
                                                     (let ((__tmp149463
                                                            (let ((__tmp149464
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp149465
                                  (##structure-ref
                                   _klass148989_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp149465 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp149464)))
                   (__tmp149462
                    (let () (declare (not safe)) (cons _object148991_ '()))))
               (declare (not safe))
               (cons __tmp149463 __tmp149462))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp149461))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp149460
                                          _stx148952_))
                                       (if (##structure-ref
                                            _klass148989_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp149466
                                                  (let ((__tmp149467
                                                         (let ((__tmp149469
                                                                (let ((__tmp149470
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp149471
                                      (##structure-ref
                                       _klass148989_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp149471 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp149470)))
                       (__tmp149468
                        (let ()
                          (declare (not safe))
                          (cons _object148991_ '()))))
                   (declare (not safe))
                   (cons __tmp149469 __tmp149468))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp149467))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp149466
                                              _stx148952_))
                                           (let ((__tmp149472
                                                  (let ((__tmp149473
                                                         (let ((__tmp149479
                                                                (let ((__tmp149480
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp149480)))
                       (__tmp149474
                        (let ((__tmp149476
                               (let ((__tmp149477
                                      (let ((__tmp149478
                                             (##structure-ref
                                              _self148951_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp149478 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp149477)))
                              (__tmp149475
                               (let ()
                                 (declare (not safe))
                                 (cons _object148991_ '()))))
                          (declare (not safe))
                          (cons __tmp149476 __tmp149475))))
                   (declare (not safe))
                   (cons __tmp149479 __tmp149474))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp149473))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp149472
                                              _stx148952_))))))
                               _hd148959148973_)
                              (let ()
                                (declare (not safe))
                                (_g148955148965_ _g148956148968_)))))
                      (let ()
                        (declare (not safe))
                        (_g148955148965_ _g148956148968_))))))
          (declare (not safe))
          (_g148954148994_ _args148953_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__klass149161 __method-table149162)
        (let ((__id149163
               (let ((__slot149164
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass149161 'id))))
                 (if __slot149164
                     __slot149164
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self148951_ _stx148952_ _args148953_)
            (let* ((_g148955148965_
                    (lambda (_g148956148962_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g148956148962_))))
                   (_g148954148994_
                    (lambda (_g148956148968_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g148956148968_))
                          (let ((_e148958148970_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g148956148968_))))
                            (let ((_hd148959148973_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e148958148970_)))
                                  (_tl148960148975_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e148958148970_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl148960148975_))
                                  ((lambda (_L148978_)
                                     (let* ((_klass148989_
                                             (let ((__tmp149481
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self148951_
                                                       __id149163
                                                       __klass149161
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx148952_
                                                __tmp149481)))
                                            (_object148991_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L148978_))))
                                       (if (##structure-ref
                                            _klass148989_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp149482
                                                  (let ((__tmp149483
                                                         (let ((__tmp149485
                                                                (let ((__tmp149486
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp149487
                                      (##structure-ref
                                       _klass148989_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp149487 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp149486)))
                       (__tmp149484
                        (let ()
                          (declare (not safe))
                          (cons _object148991_ '()))))
                   (declare (not safe))
                   (cons __tmp149485 __tmp149484))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp149483))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp149482
                                              _stx148952_))
                                           (if (##structure-ref
                                                _klass148989_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp149488
                                                      (let ((__tmp149489
                                                             (let ((__tmp149491
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp149492
                                   (let ((__tmp149493
                                          (##structure-ref
                                           _klass148989_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp149493 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp149492)))
                           (__tmp149490
                            (let ()
                              (declare (not safe))
                              (cons _object148991_ '()))))
                       (declare (not safe))
                       (cons __tmp149491 __tmp149490))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp149489))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp149488
                                                  _stx148952_))
                                               (let ((__tmp149494
                                                      (let ((__tmp149495
                                                             (let ((__tmp149501
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp149502
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp149502)))
                           (__tmp149496
                            (let ((__tmp149498
                                   (let ((__tmp149499
                                          (let ((__tmp149500
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self148951_
                                                    __id149163
                                                    __klass149161
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp149500 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp149499)))
                                  (__tmp149497
                                   (let ()
                                     (declare (not safe))
                                     (cons _object148991_ '()))))
                              (declare (not safe))
                              (cons __tmp149498 __tmp149497))))
                       (declare (not safe))
                       (cons __tmp149501 __tmp149496))))
                (declare (not safe))
                (cons '%#call __tmp149495))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp149494
                                                  _stx148952_))))))
                                   _hd148959148973_)
                                  (let ()
                                    (declare (not safe))
                                    (_g148955148965_ _g148956148968_)))))
                          (let ()
                            (declare (not safe))
                            (_g148955148965_ _g148956148968_))))))
              (declare (not safe))
              (_g148954148994_ _args148953_))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!predicate::optimize-call
       gxc#!predicate::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#!constructor::optimize-call
      (lambda (_self148671_ _stx148672_ _args148673_)
        (let* ((_klass148675_
                (let ((__tmp149503
                       (##structure-ref _self148671_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx148672_ __tmp149503)))
               (_fields148677_
                (length (##structure-ref _klass148675_ '5 gxc#!class::t '#f)))
               (_args148679_ (map gxc#compile-e _args148673_))
               (_inline-make-object148681_
                (let ((__tmp149504
                       (let ((__tmp149510
                              (let ((__tmp149511
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp149511)))
                             (__tmp149505
                              (let ((__tmp149507
                                     (let ((__tmp149508
                                            (let ((__tmp149509
                                                   (##structure-ref
                                                    _self148671_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp149509 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp149508)))
                                    (__tmp149506
                                     (let ()
                                       (declare (not safe))
                                       (make-list__%
                                        _fields148677_
                                        '(%#quote #f)))))
                                (declare (not safe))
                                (cons __tmp149507 __tmp149506))))
                         (declare (not safe))
                         (cons __tmp149510 __tmp149505))))
                  (declare (not safe))
                  (cons '%#call __tmp149504))))
          (let ((_$e148684_
                 (##structure-ref _klass148675_ '6 gxc#!class::t '#f)))
            (if _$e148684_
                ((lambda (_ctor148687_)
                   (let ((_$obj148689_
                          (let ((__tmp149512 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp149512)))
                         (_ctor-impl148690_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass148675_
                             _ctor148687_))))
                     (let ((__tmp149513
                            (let ((__tmp149514
                                   (let ((__tmp149582
                                          (let ((__tmp149583
                                                 (let ((__tmp149585
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj148689_
                                                                '())))
                                                       (__tmp149584
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object148681_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp149585
                                                         __tmp149584))))
                                            (declare (not safe))
                                            (cons __tmp149583 '())))
                                         (__tmp149515
                                          (let ((__tmp149516
                                                 (let ((__tmp149517
                                                        (let ((__tmp149521
                                                               (if _ctor-impl148690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp149522
                                  (let ((__tmp149526
                                         (let ((__tmp149527
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl148690_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp149527)))
                                        (__tmp149523
                                         (let ((__tmp149524
                                                (let ((__tmp149525
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj148689_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp149525))))
                                           (declare (not safe))
                                           (cons __tmp149524 _args148679_))))
                                    (declare (not safe))
                                    (cons __tmp149526 __tmp149523))))
                             (declare (not safe))
                             (cons '%#call __tmp149522))
                           (let* ((_$ctor148692_
                                   (let ((__tmp149528 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp149528)))
                                  (__tmp149529
                                   (let ((__tmp149564
                                          (let ((__tmp149565
                                                 (let ((__tmp149581
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor148692_
                                                                '())))
                                                       (__tmp149566
                                                        (let ((__tmp149567
                                                               (let ((__tmp149568
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp149579
                                     (let ((__tmp149580
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp149580)))
                                    (__tmp149569
                                     (let ((__tmp149576
                                            (let ((__tmp149577
                                                   (let ((__tmp149578
                                                          (##structure-ref
                                                           _self148671_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp149578 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp149577)))
                                           (__tmp149570
                                            (let ((__tmp149574
                                                   (let ((__tmp149575
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj148689_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp149575)))
                                                  (__tmp149571
                                                   (let ((__tmp149572
                                                          (let ((__tmp149573
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _ctor148687_ '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp149573))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp149572 '()))))
                                              (declare (not safe))
                                              (cons __tmp149574 __tmp149571))))
                                       (declare (not safe))
                                       (cons __tmp149576 __tmp149570))))
                                (declare (not safe))
                                (cons __tmp149579 __tmp149569))))
                         (declare (not safe))
                         (cons '%#call __tmp149568))))
                  (declare (not safe))
                  (cons __tmp149567 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp149581
                                                         __tmp149566))))
                                            (declare (not safe))
                                            (cons __tmp149565 '())))
                                         (__tmp149530
                                          (let ((__tmp149531
                                                 (let ((__tmp149532
                                                        (let ((__tmp149562
                                                               (let ((__tmp149563
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor148692_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp149563)))
                      (__tmp149533
                       (let ((__tmp149555
                              (let ((__tmp149556
                                     (let ((__tmp149560
                                            (let ((__tmp149561
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor148692_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp149561)))
                                           (__tmp149557
                                            (let ((__tmp149558
                                                   (let ((__tmp149559
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj148689_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp149559))))
                                              (declare (not safe))
                                              (cons __tmp149558
                                                    _args148679_))))
                                       (declare (not safe))
                                       (cons __tmp149560 __tmp149557))))
                                (declare (not safe))
                                (cons '%#call __tmp149556)))
                             (__tmp149534
                              (let ((__tmp149535
                                     (let ((__tmp149536
                                            (let ((__tmp149553
                                                   (let ((__tmp149554
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp149554)))
                                                  (__tmp149537
                                                   (let ((__tmp149551
                                                          (let ((__tmp149552
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp149552)))
                 (__tmp149538
                  (let ((__tmp149549
                         (let ((__tmp149550
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp149550)))
                        (__tmp149539
                         (let ((__tmp149546
                                (let ((__tmp149547
                                       (let ((__tmp149548
                                              (##structure-ref
                                               _self148671_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp149548 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp149547)))
                               (__tmp149540
                                (let ((__tmp149544
                                       (let ((__tmp149545
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp149545)))
                                      (__tmp149541
                                       (let ((__tmp149542
                                              (let ((__tmp149543
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor148687_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp149543))))
                                         (declare (not safe))
                                         (cons __tmp149542 '()))))
                                  (declare (not safe))
                                  (cons __tmp149544 __tmp149541))))
                           (declare (not safe))
                           (cons __tmp149546 __tmp149540))))
                    (declare (not safe))
                    (cons __tmp149549 __tmp149539))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp149551
                                                           __tmp149538))))
                                              (declare (not safe))
                                              (cons __tmp149553 __tmp149537))))
                                       (declare (not safe))
                                       (cons '%#call __tmp149536))))
                                (declare (not safe))
                                (cons __tmp149535 '()))))
                         (declare (not safe))
                         (cons __tmp149555 __tmp149534))))
                  (declare (not safe))
                  (cons __tmp149562 __tmp149533))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp149532))))
                                            (declare (not safe))
                                            (cons __tmp149531 '()))))
                                     (declare (not safe))
                                     (cons __tmp149564 __tmp149530))))
                             (declare (not safe))
                             (cons '%#let-values __tmp149529))))
                      (__tmp149518
                       (let ((__tmp149519
                              (let ((__tmp149520
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj148689_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp149520))))
                         (declare (not safe))
                         (cons __tmp149519 '()))))
                  (declare (not safe))
                  (cons __tmp149521 __tmp149518))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp149517))))
                                            (declare (not safe))
                                            (cons __tmp149516 '()))))
                                     (declare (not safe))
                                     (cons __tmp149582 __tmp149515))))
                              (declare (not safe))
                              (cons '%#let-values __tmp149514))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp149513 _stx148672_))))
                 _$e148684_)
                (let ((_$e148694_
                       (##structure-ref _klass148675_ '9 gxc#!class::t '#f)))
                  (if _$e148694_
                      ((lambda (_metaclass148697_)
                         (let* ((_$obj148699_
                                 (let ((__tmp149586 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp149586)))
                                (_metakons148701_
                                 (let ((__tmp149587
                                        (let ()
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           _stx148672_
                                           _metaclass148697_))))
                                   (declare (not safe))
                                   (gxc#!class-lookup-method
                                    __tmp149587
                                    'instance-init!))))
                           (let ((__tmp149588
                                  (let ((__tmp149589
                                         (let ((__tmp149620
                                                (let ((__tmp149621
                                                       (let ((__tmp149623
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj148699_ '())))
                     (__tmp149622
                      (let ()
                        (declare (not safe))
                        (cons _inline-make-object148681_ '()))))
                 (declare (not safe))
                 (cons __tmp149623 __tmp149622))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp149621 '())))
                                               (__tmp149590
                                                (let ((__tmp149591
                                                       (let ((__tmp149592
                                                              (let ((__tmp149596
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if _metakons148701_
                                 (let ((__tmp149597
                                        (let ((__tmp149605
                                               (let ((__tmp149606
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metakons148701_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp149606)))
                                              (__tmp149598
                                               (let ((__tmp149602
                                                      (let ((__tmp149603
                                                             (let ((__tmp149604
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self148671_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp149604 '()))))
                (declare (not safe))
                (cons '%#ref __tmp149603)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp149599
                                                      (let ((__tmp149600
                                                             (let ((__tmp149601
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _$obj148699_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp149601))))
                (declare (not safe))
                (cons __tmp149600 _args148679_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp149602
                                                       __tmp149599))))
                                          (declare (not safe))
                                          (cons __tmp149605 __tmp149598))))
                                   (declare (not safe))
                                   (cons '%#call __tmp149597))
                                 (let ((__tmp149607
                                        (let ((__tmp149618
                                               (let ((__tmp149619
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'call-method
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp149619)))
                                              (__tmp149608
                                               (let ((__tmp149615
                                                      (let ((__tmp149616
                                                             (let ((__tmp149617
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self148671_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp149617 '()))))
                (declare (not safe))
                (cons '%#ref __tmp149616)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp149609
                                                      (let ((__tmp149613
                                                             (let ((__tmp149614
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'instance-init! '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp149614)))
                    (__tmp149610
                     (let ((__tmp149611
                            (let ((__tmp149612
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj148699_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp149612))))
                       (declare (not safe))
                       (cons __tmp149611 _args148679_))))
                (declare (not safe))
                (cons __tmp149613 __tmp149610))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp149615
                                                       __tmp149609))))
                                          (declare (not safe))
                                          (cons __tmp149618 __tmp149608))))
                                   (declare (not safe))
                                   (cons '%#call __tmp149607))))
                            (__tmp149593
                             (let ((__tmp149594
                                    (let ((__tmp149595
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj148699_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp149595))))
                               (declare (not safe))
                               (cons __tmp149594 '()))))
                        (declare (not safe))
                        (cons __tmp149596 __tmp149593))))
                 (declare (not safe))
                 (cons '%#begin __tmp149592))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp149591 '()))))
                                           (declare (not safe))
                                           (cons __tmp149620 __tmp149590))))
                                    (declare (not safe))
                                    (cons '%#let-values __tmp149589))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp149588 _stx148672_))))
                       _$e148694_)
                      (if (##structure-ref _klass148675_ '7 gxc#!class::t '#f)
                          (if (fx= (length _args148679_) _fields148677_)
                              (let ((__tmp149624
                                     (let ((__tmp149625
                                            (let ((__tmp149630
                                                   (let ((__tmp149631
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp149631)))
                                                  (__tmp149626
                                                   (let ((__tmp149627
                                                          (let ((__tmp149628
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp149629
                                (##structure-ref
                                 _self148671_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp149629 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp149628))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp149627
                                                           _args148679_))))
                                              (declare (not safe))
                                              (cons __tmp149630 __tmp149626))))
                                       (declare (not safe))
                                       (cons '%#call __tmp149625))))
                                (declare (not safe))
                                (gxc#xform-wrap-source
                                 __tmp149624
                                 _stx148672_))
                              (let ((__tmp149633
                                     (##structure-ref
                                      _self148671_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                    (__tmp149632
                                     (length (##structure-ref
                                              _klass148675_
                                              '5
                                              gxc#!class::t
                                              '#f))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"illegal struct constructor application; arity mismatch"
                                 _stx148672_
                                 __tmp149633
                                 __tmp149632)))
                          (let ((_$obj148704_
                                 (let ((__tmp149634 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp149634))))
                            (let _lp148706_ ((_rest148708_ _args148679_)
                                             (_initializers148709_ '()))
                              (let* ((___stx149242149243_ _rest148708_)
                                     (_g148713148734_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx149242149243_)))))
                                (let ((___kont149244149245_
                                       (lambda (_L148788_ _L148789_ _L148790_)
                                         (let* ((_slot148821_
                                                 (keyword->symbol
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e _L148790_))))
                                                (_off148823_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass148675_
                                                    _slot148821_))))
                                           (if _off148823_
                                               (let ((__tmp149635
                                                      (let ((__tmp149636
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off148823_ _L148789_))))
                (declare (not safe))
                (cons __tmp149636 _initializers148709_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp148706_
                                                  _L148788_
                                                  __tmp149635))
                                               (let ((__tmp149637
                                                      (##structure-ref
                                                       _self148671_
                                                       '1
                                                       gxc#!type::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"unknown slot"
                                                  _stx148672_
                                                  __tmp149637
                                                  _slot148821_))))))
                                      (___kont149246149247_
                                       (lambda ()
                                         (let ((__tmp149638
                                                (let ((__tmp149639
                                                       (let ((__tmp149662
                                                              (let ((__tmp149663
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp149665
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj148704_ '())))
                                   (__tmp149664
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object148681_ '()))))
                               (declare (not safe))
                               (cons __tmp149665 __tmp149664))))
                        (declare (not safe))
                        (cons __tmp149663 '())))
                     (__tmp149640
                      (let ((__tmp149641
                             (let ((__tmp149642
                                    (let ((__tmp149659
                                           (let ((__tmp149660
                                                  (let ((__tmp149661
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj148704_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp149661))))
                                             (declare (not safe))
                                             (cons __tmp149660 '())))
                                          (__tmp149643
                                           (let ((__tmp149644
                                                  (lambda (_i148748_ _r148749_)
                                                    (let ((__tmp149645
                                                           (let ((__tmp149646
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp149656
                                 (let ((__tmp149657
                                        (let ((__tmp149658
                                               (##structure-ref
                                                _self148671_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp149658 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp149657)))
                                (__tmp149647
                                 (let ((__tmp149653
                                        (let ((__tmp149654
                                               (let ((__tmp149655
                                                      (car _i148748_)))
                                                 (declare (not safe))
                                                 (cons __tmp149655 '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp149654)))
                                       (__tmp149648
                                        (let ((__tmp149651
                                               (let ((__tmp149652
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _$obj148704_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp149652)))
                                              (__tmp149649
                                               (let ((__tmp149650
                                                      (cdr _i148748_)))
                                                 (declare (not safe))
                                                 (cons __tmp149650 '()))))
                                          (declare (not safe))
                                          (cons __tmp149651 __tmp149649))))
                                   (declare (not safe))
                                   (cons __tmp149653 __tmp149648))))
                            (declare (not safe))
                            (cons __tmp149656 __tmp149647))))
                     (declare (not safe))
                     (cons '%#struct-unchecked-set! __tmp149646))))
              (declare (not safe))
              (cons __tmp149645 _r148749_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (foldl1 __tmp149644
                                                     '()
                                                     _initializers148709_))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp149659 __tmp149643))))
                               (declare (not safe))
                               (cons '%#begin __tmp149642))))
                        (declare (not safe))
                        (cons __tmp149641 '()))))
                 (declare (not safe))
                 (cons __tmp149662 __tmp149640))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp149639))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp149638
                                            _stx148672_))))
                                      (___kont149248149249_
                                       (lambda ()
                                         (let ((__tmp149666
                                                (let ((__tmp149667
                                                       (let ((__tmp149681
                                                              (let ((__tmp149682
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp149684
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj148704_ '())))
                                   (__tmp149683
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object148681_ '()))))
                               (declare (not safe))
                               (cons __tmp149684 __tmp149683))))
                        (declare (not safe))
                        (cons __tmp149682 '())))
                     (__tmp149668
                      (let ((__tmp149669
                             (let ((__tmp149670
                                    (let ((__tmp149674
                                           (let ((__tmp149675
                                                  (let ((__tmp149679
                                                         (let ((__tmp149680
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'class-instance-init! '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp149680)))
                (__tmp149676
                 (let ((__tmp149677
                        (let ((__tmp149678
                               (let ()
                                 (declare (not safe))
                                 (cons _$obj148704_ '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp149678))))
                   (declare (not safe))
                   (cons __tmp149677 _args148679_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp149679
                                                          __tmp149676))))
                                             (declare (not safe))
                                             (cons '%#call __tmp149675)))
                                          (__tmp149671
                                           (let ((__tmp149672
                                                  (let ((__tmp149673
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj148704_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp149673))))
                                             (declare (not safe))
                                             (cons __tmp149672 '()))))
                                      (declare (not safe))
                                      (cons __tmp149674 __tmp149671))))
                               (declare (not safe))
                               (cons '%#begin __tmp149670))))
                        (declare (not safe))
                        (cons __tmp149669 '()))))
                 (declare (not safe))
                 (cons __tmp149681 __tmp149668))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp149667))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp149666
                                            _stx148672_)))))
                                  (let* ((_g148711148751_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   ___stx149242149243_))
                                                (___kont149246149247_)
                                                (___kont149248149249_))))
                                         (___match149279149280_
                                          (lambda (_e148718148756_
                                                   _hd148719148759_
                                                   _tl148720148761_
                                                   _e148721148764_
                                                   _hd148722148767_
                                                   _tl148723148769_
                                                   _e148724148772_
                                                   _hd148725148775_
                                                   _tl148726148777_
                                                   _e148727148780_
                                                   _hd148728148783_
                                                   _tl148729148785_)
                                            (let ((_L148788_ _tl148729148785_)
                                                  (_L148789_ _hd148728148783_)
                                                  (_L148790_ _hd148725148775_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-keyword?
                                                     _L148790_))
                                                  (___kont149244149245_
                                                   _L148788_
                                                   _L148789_
                                                   _L148790_)
                                                  (___kont149248149249_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx149242149243_))
                                        (let ((_e148718148756_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx149242149243_))))
                                          (let ((_tl148720148761_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e148718148756_)))
                                                (_hd148719148759_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e148718148756_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd148719148759_))
                                                (let ((_e148721148764_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd148719148759_))))
                                                  (let ((_tl148723148769_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e148721148764_)))
                                                        (_hd148722148767_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e148721148764_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd148722148767_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#quote
                                                               _hd148722148767_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl148723148769_))
                        (let ((_e148724148772_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl148723148769_))))
                          (let ((_tl148726148777_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e148724148772_)))
                                (_hd148725148775_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e148724148772_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl148726148777_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl148720148761_))
                                    (let ((_e148727148780_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl148720148761_))))
                                      (let ((_tl148729148785_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e148727148780_)))
                                            (_hd148728148783_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e148727148780_))))
                                        (___match149279149280_
                                         _e148718148756_
                                         _hd148719148759_
                                         _tl148720148761_
                                         _e148721148764_
                                         _hd148722148767_
                                         _tl148723148769_
                                         _e148724148772_
                                         _hd148725148775_
                                         _tl148726148777_
                                         _e148727148780_
                                         _hd148728148783_
                                         _tl148729148785_)))
                                    (___kont149248149249_))
                                (___kont149248149249_))))
                        (___kont149248149249_))
                    (___kont149248149249_))
                (___kont149248149249_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont149248149249_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g148711148751_))))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__klass149165 __method-table149166)
        (let ((__id149167
               (let ((__slot149168
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass149165 'id))))
                 (if __slot149168
                     __slot149168
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self148671_ _stx148672_ _args148673_)
            (let* ((_klass148675_
                    (let ((__tmp149685
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self148671_
                              __id149167
                              __klass149165
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx148672_ __tmp149685)))
                   (_fields148677_
                    (length (##structure-ref
                             _klass148675_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args148679_ (map gxc#compile-e _args148673_))
                   (_inline-make-object148681_
                    (let ((__tmp149686
                           (let ((__tmp149692
                                  (let ((__tmp149693
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp149693)))
                                 (__tmp149687
                                  (let ((__tmp149689
                                         (let ((__tmp149690
                                                (let ((__tmp149691
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self148671_
                                                          __id149167
                                                          __klass149165
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp149691 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp149690)))
                                        (__tmp149688
                                         (let ()
                                           (declare (not safe))
                                           (make-list__%
                                            _fields148677_
                                            '(%#quote #f)))))
                                    (declare (not safe))
                                    (cons __tmp149689 __tmp149688))))
                             (declare (not safe))
                             (cons __tmp149692 __tmp149687))))
                      (declare (not safe))
                      (cons '%#call __tmp149686))))
              (let ((_$e148684_
                     (##structure-ref _klass148675_ '6 gxc#!class::t '#f)))
                (if _$e148684_
                    ((lambda (_ctor148687_)
                       (let ((_$obj148689_
                              (let ((__tmp149694 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp149694)))
                             (_ctor-impl148690_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass148675_
                                 _ctor148687_))))
                         (let ((__tmp149695
                                (let ((__tmp149696
                                       (let ((__tmp149764
                                              (let ((__tmp149765
                                                     (let ((__tmp149767
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj148689_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp149766
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object148681_ '()))))
               (declare (not safe))
               (cons __tmp149767 __tmp149766))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp149765 '())))
                                             (__tmp149697
                                              (let ((__tmp149698
                                                     (let ((__tmp149699
                                                            (let ((__tmp149703
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl148690_
                               (let ((__tmp149704
                                      (let ((__tmp149708
                                             (let ((__tmp149709
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl148690_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp149709)))
                                            (__tmp149705
                                             (let ((__tmp149706
                                                    (let ((__tmp149707
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj148689_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp149707))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp149706
                                                     _args148679_))))
                                        (declare (not safe))
                                        (cons __tmp149708 __tmp149705))))
                                 (declare (not safe))
                                 (cons '%#call __tmp149704))
                               (let* ((_$ctor148692_
                                       (let ((__tmp149710
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp149710)))
                                      (__tmp149711
                                       (let ((__tmp149746
                                              (let ((__tmp149747
                                                     (let ((__tmp149763
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor148692_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp149748
                    (let ((__tmp149749
                           (let ((__tmp149750
                                  (let ((__tmp149761
                                         (let ((__tmp149762
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp149762)))
                                        (__tmp149751
                                         (let ((__tmp149758
                                                (let ((__tmp149759
                                                       (let ((__tmp149760
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self148671_
                         __id149167
                         __klass149165
                         '#f))))
                 (declare (not safe))
                 (cons __tmp149760 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp149759)))
                                               (__tmp149752
                                                (let ((__tmp149756
                                                       (let ((__tmp149757
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj148689_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp149757)))
              (__tmp149753
               (let ((__tmp149754
                      (let ((__tmp149755
                             (let ()
                               (declare (not safe))
                               (cons _ctor148687_ '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp149755))))
                 (declare (not safe))
                 (cons __tmp149754 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp149756
                                                        __tmp149753))))
                                           (declare (not safe))
                                           (cons __tmp149758 __tmp149752))))
                                    (declare (not safe))
                                    (cons __tmp149761 __tmp149751))))
                             (declare (not safe))
                             (cons '%#call __tmp149750))))
                      (declare (not safe))
                      (cons __tmp149749 '()))))
               (declare (not safe))
               (cons __tmp149763 __tmp149748))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp149747 '())))
                                             (__tmp149712
                                              (let ((__tmp149713
                                                     (let ((__tmp149714
                                                            (let ((__tmp149744
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp149745
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor148692_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp149745)))
                          (__tmp149715
                           (let ((__tmp149737
                                  (let ((__tmp149738
                                         (let ((__tmp149742
                                                (let ((__tmp149743
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor148692_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp149743)))
                                               (__tmp149739
                                                (let ((__tmp149740
                                                       (let ((__tmp149741
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj148689_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp149741))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp149740
                                                        _args148679_))))
                                           (declare (not safe))
                                           (cons __tmp149742 __tmp149739))))
                                    (declare (not safe))
                                    (cons '%#call __tmp149738)))
                                 (__tmp149716
                                  (let ((__tmp149717
                                         (let ((__tmp149718
                                                (let ((__tmp149735
                                                       (let ((__tmp149736
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp149736)))
              (__tmp149719
               (let ((__tmp149733
                      (let ((__tmp149734
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp149734)))
                     (__tmp149720
                      (let ((__tmp149731
                             (let ((__tmp149732
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp149732)))
                            (__tmp149721
                             (let ((__tmp149728
                                    (let ((__tmp149729
                                           (let ((__tmp149730
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self148671_
                                                     __id149167
                                                     __klass149165
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp149730 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp149729)))
                                   (__tmp149722
                                    (let ((__tmp149726
                                           (let ((__tmp149727
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp149727)))
                                          (__tmp149723
                                           (let ((__tmp149724
                                                  (let ((__tmp149725
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor148687_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp149725))))
                                             (declare (not safe))
                                             (cons __tmp149724 '()))))
                                      (declare (not safe))
                                      (cons __tmp149726 __tmp149723))))
                               (declare (not safe))
                               (cons __tmp149728 __tmp149722))))
                        (declare (not safe))
                        (cons __tmp149731 __tmp149721))))
                 (declare (not safe))
                 (cons __tmp149733 __tmp149720))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp149735
                                                        __tmp149719))))
                                           (declare (not safe))
                                           (cons '%#call __tmp149718))))
                                    (declare (not safe))
                                    (cons __tmp149717 '()))))
                             (declare (not safe))
                             (cons __tmp149737 __tmp149716))))
                      (declare (not safe))
                      (cons __tmp149744 __tmp149715))))
               (declare (not safe))
               (cons '%#if __tmp149714))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp149713 '()))))
                                         (declare (not safe))
                                         (cons __tmp149746 __tmp149712))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp149711))))
                          (__tmp149700
                           (let ((__tmp149701
                                  (let ((__tmp149702
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj148689_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp149702))))
                             (declare (not safe))
                             (cons __tmp149701 '()))))
                      (declare (not safe))
                      (cons __tmp149703 __tmp149700))))
               (declare (not safe))
               (cons '%#begin __tmp149699))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp149698 '()))))
                                         (declare (not safe))
                                         (cons __tmp149764 __tmp149697))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp149696))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp149695 _stx148672_))))
                     _$e148684_)
                    (let ((_$e148694_
                           (##structure-ref
                            _klass148675_
                            '9
                            gxc#!class::t
                            '#f)))
                      (if _$e148694_
                          ((lambda (_metaclass148697_)
                             (let* ((_$obj148699_
                                     (let ((__tmp149768 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp149768)))
                                    (_metakons148701_
                                     (let ((__tmp149769
                                            (let ()
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               _stx148672_
                                               _metaclass148697_))))
                                       (declare (not safe))
                                       (gxc#!class-lookup-method
                                        __tmp149769
                                        'instance-init!))))
                               (let ((__tmp149770
                                      (let ((__tmp149771
                                             (let ((__tmp149802
                                                    (let ((__tmp149803
                                                           (let ((__tmp149805
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj148699_ '())))
                         (__tmp149804
                          (let ()
                            (declare (not safe))
                            (cons _inline-make-object148681_ '()))))
                     (declare (not safe))
                     (cons __tmp149805 __tmp149804))))
              (declare (not safe))
              (cons __tmp149803 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp149772
                                                    (let ((__tmp149773
                                                           (let ((__tmp149774
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp149778
                                 (if _metakons148701_
                                     (let ((__tmp149779
                                            (let ((__tmp149787
                                                   (let ((__tmp149788
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _metakons148701_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp149788)))
                                                  (__tmp149780
                                                   (let ((__tmp149784
                                                          (let ((__tmp149785
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp149786
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self148671_
                                   __id149167
                                   __klass149165
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp149786 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp149785)))
                 (__tmp149781
                  (let ((__tmp149782
                         (let ((__tmp149783
                                (let ()
                                  (declare (not safe))
                                  (cons _$obj148699_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp149783))))
                    (declare (not safe))
                    (cons __tmp149782 _args148679_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp149784
                                                           __tmp149781))))
                                              (declare (not safe))
                                              (cons __tmp149787 __tmp149780))))
                                       (declare (not safe))
                                       (cons '%#call __tmp149779))
                                     (let ((__tmp149789
                                            (let ((__tmp149800
                                                   (let ((__tmp149801
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'call-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp149801)))
                                                  (__tmp149790
                                                   (let ((__tmp149797
                                                          (let ((__tmp149798
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp149799
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self148671_
                                   __id149167
                                   __klass149165
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp149799 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp149798)))
                 (__tmp149791
                  (let ((__tmp149795
                         (let ((__tmp149796
                                (let ()
                                  (declare (not safe))
                                  (cons 'instance-init! '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp149796)))
                        (__tmp149792
                         (let ((__tmp149793
                                (let ((__tmp149794
                                       (let ()
                                         (declare (not safe))
                                         (cons _$obj148699_ '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp149794))))
                           (declare (not safe))
                           (cons __tmp149793 _args148679_))))
                    (declare (not safe))
                    (cons __tmp149795 __tmp149792))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp149797
                                                           __tmp149791))))
                                              (declare (not safe))
                                              (cons __tmp149800 __tmp149790))))
                                       (declare (not safe))
                                       (cons '%#call __tmp149789))))
                                (__tmp149775
                                 (let ((__tmp149776
                                        (let ((__tmp149777
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$obj148699_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp149777))))
                                   (declare (not safe))
                                   (cons __tmp149776 '()))))
                            (declare (not safe))
                            (cons __tmp149778 __tmp149775))))
                     (declare (not safe))
                     (cons '%#begin __tmp149774))))
              (declare (not safe))
              (cons __tmp149773 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp149802
                                                     __tmp149772))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp149771))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp149770
                                  _stx148672_))))
                           _$e148694_)
                          (if (##structure-ref
                               _klass148675_
                               '7
                               gxc#!class::t
                               '#f)
                              (if (fx= (length _args148679_) _fields148677_)
                                  (let ((__tmp149806
                                         (let ((__tmp149807
                                                (let ((__tmp149812
                                                       (let ((__tmp149813
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '##structure '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp149813)))
              (__tmp149808
               (let ((__tmp149809
                      (let ((__tmp149810
                             (let ((__tmp149811
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self148671_
                                       __id149167
                                       __klass149165
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp149811 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp149810))))
                 (declare (not safe))
                 (cons __tmp149809 _args148679_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp149812
                                                        __tmp149808))))
                                           (declare (not safe))
                                           (cons '%#call __tmp149807))))
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp149806
                                     _stx148672_))
                                  (let ((__tmp149815
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _self148671_
                                            __id149167
                                            __klass149165
                                            '#f)))
                                        (__tmp149814
                                         (length (##structure-ref
                                                  _klass148675_
                                                  '5
                                                  gxc#!class::t
                                                  '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _stx148672_
                                     __tmp149815
                                     __tmp149814)))
                              (let ((_$obj148704_
                                     (let ((__tmp149816 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp149816))))
                                (let _lp148706_ ((_rest148708_ _args148679_)
                                                 (_initializers148709_ '()))
                                  (let* ((___stx149284149285_ _rest148708_)
                                         (_g148713148734_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               ___stx149284149285_)))))
                                    (let ((___kont149286149287_
                                           (lambda (_L148788_
                                                    _L148789_
                                                    _L148790_)
                                             (let* ((_slot148821_
                                                     (keyword->symbol
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L148790_))))
                                                    (_off148823_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass148675_
                                                        _slot148821_))))
                                               (if _off148823_
                                                   (let ((__tmp149817
                                                          (let ((__tmp149818
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _off148823_ _L148789_))))
                    (declare (not safe))
                    (cons __tmp149818 _initializers148709_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp148706_
                                                      _L148788_
                                                      __tmp149817))
                                                   (let ((__tmp149819
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _self148671_
                                                             __id149167
                                                             __klass149165
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"unknown slot"
                                                      _stx148672_
                                                      __tmp149819
                                                      _slot148821_))))))
                                          (___kont149288149289_
                                           (lambda ()
                                             (let ((__tmp149820
                                                    (let ((__tmp149821
                                                           (let ((__tmp149844
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp149845
                                 (let ((__tmp149847
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj148704_ '())))
                                       (__tmp149846
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object148681_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp149847 __tmp149846))))
                            (declare (not safe))
                            (cons __tmp149845 '())))
                         (__tmp149822
                          (let ((__tmp149823
                                 (let ((__tmp149824
                                        (let ((__tmp149841
                                               (let ((__tmp149842
                                                      (let ((__tmp149843
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj148704_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp149843))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp149842 '())))
                                              (__tmp149825
                                               (let ((__tmp149826
                                                      (lambda (_i148748_
                                                               _r148749_)
                                                        (let ((__tmp149827
                                                               (let ((__tmp149828
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp149838
                                     (let ((__tmp149839
                                            (let ((__tmp149840
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self148671_
                                                      __id149167
                                                      __klass149165
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp149840 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp149839)))
                                    (__tmp149829
                                     (let ((__tmp149835
                                            (let ((__tmp149836
                                                   (let ((__tmp149837
                                                          (car _i148748_)))
                                                     (declare (not safe))
                                                     (cons __tmp149837 '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp149836)))
                                           (__tmp149830
                                            (let ((__tmp149833
                                                   (let ((__tmp149834
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj148704_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp149834)))
                                                  (__tmp149831
                                                   (let ((__tmp149832
                                                          (cdr _i148748_)))
                                                     (declare (not safe))
                                                     (cons __tmp149832 '()))))
                                              (declare (not safe))
                                              (cons __tmp149833 __tmp149831))))
                                       (declare (not safe))
                                       (cons __tmp149835 __tmp149830))))
                                (declare (not safe))
                                (cons __tmp149838 __tmp149829))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp149828))))
                  (declare (not safe))
                  (cons __tmp149827 _r148749_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl1 __tmp149826
                                                         '()
                                                         _initializers148709_))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp149841
                                                  __tmp149825))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp149824))))
                            (declare (not safe))
                            (cons __tmp149823 '()))))
                     (declare (not safe))
                     (cons __tmp149844 __tmp149822))))
              (declare (not safe))
              (cons '%#let-values __tmp149821))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp149820
                                                _stx148672_))))
                                          (___kont149290149291_
                                           (lambda ()
                                             (let ((__tmp149848
                                                    (let ((__tmp149849
                                                           (let ((__tmp149863
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp149864
                                 (let ((__tmp149866
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj148704_ '())))
                                       (__tmp149865
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object148681_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp149866 __tmp149865))))
                            (declare (not safe))
                            (cons __tmp149864 '())))
                         (__tmp149850
                          (let ((__tmp149851
                                 (let ((__tmp149852
                                        (let ((__tmp149856
                                               (let ((__tmp149857
                                                      (let ((__tmp149861
                                                             (let ((__tmp149862
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'class-instance-init! '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp149862)))
                    (__tmp149858
                     (let ((__tmp149859
                            (let ((__tmp149860
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj148704_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp149860))))
                       (declare (not safe))
                       (cons __tmp149859 _args148679_))))
                (declare (not safe))
                (cons __tmp149861 __tmp149858))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp149857)))
                                              (__tmp149853
                                               (let ((__tmp149854
                                                      (let ((__tmp149855
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj148704_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp149855))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp149854 '()))))
                                          (declare (not safe))
                                          (cons __tmp149856 __tmp149853))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp149852))))
                            (declare (not safe))
                            (cons __tmp149851 '()))))
                     (declare (not safe))
                     (cons __tmp149863 __tmp149850))))
              (declare (not safe))
              (cons '%#let-values __tmp149849))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp149848
                                                _stx148672_)))))
                                      (let* ((_g148711148751_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       ___stx149284149285_))
                                                    (___kont149288149289_)
                                                    (___kont149290149291_))))
                                             (___match149321149322_
                                              (lambda (_e148718148756_
                                                       _hd148719148759_
                                                       _tl148720148761_
                                                       _e148721148764_
                                                       _hd148722148767_
                                                       _tl148723148769_
                                                       _e148724148772_
                                                       _hd148725148775_
                                                       _tl148726148777_
                                                       _e148727148780_
                                                       _hd148728148783_
                                                       _tl148729148785_)
                                                (let ((_L148788_
                                                       _tl148729148785_)
                                                      (_L148789_
                                                       _hd148728148783_)
                                                      (_L148790_
                                                       _hd148725148775_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-keyword?
                                                         _L148790_))
                                                      (___kont149286149287_
                                                       _L148788_
                                                       _L148789_
                                                       _L148790_)
                                                      (___kont149290149291_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               ___stx149284149285_))
                                            (let ((_e148718148756_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      ___stx149284149285_))))
                                              (let ((_tl148720148761_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e148718148756_)))
                                                    (_hd148719148759_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e148718148756_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd148719148759_))
                                                    (let ((_e148721148764_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd148719148759_))))
                                                      (let ((_tl148723148769_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e148721148764_)))
                    (_hd148722148767_
                     (let () (declare (not safe)) (##car _e148721148764_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd148722148767_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd148722148767_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl148723148769_))
                            (let ((_e148724148772_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl148723148769_))))
                              (let ((_tl148726148777_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e148724148772_)))
                                    (_hd148725148775_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e148724148772_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl148726148777_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl148720148761_))
                                        (let ((_e148727148780_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl148720148761_))))
                                          (let ((_tl148729148785_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e148727148780_)))
                                                (_hd148728148783_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e148727148780_))))
                                            (___match149321149322_
                                             _e148718148756_
                                             _hd148719148759_
                                             _tl148720148761_
                                             _e148721148764_
                                             _hd148722148767_
                                             _tl148723148769_
                                             _e148724148772_
                                             _hd148725148775_
                                             _tl148726148777_
                                             _e148727148780_
                                             _hd148728148783_
                                             _tl148729148785_)))
                                        (___kont149290149291_))
                                    (___kont149290149291_))))
                            (___kont149290149291_))
                        (___kont149290149291_))
                    (___kont149290149291_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont149290149291_))))
                                            (let ()
                                              (declare (not safe))
                                              (_g148711148751_))))))))))))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!constructor::optimize-call
       gxc#!constructor::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_self148494_ _stx148495_ _args148496_)
        (let* ((_g148498148508_
                (lambda (_g148499148505_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g148499148505_))))
               (_g148497148546_
                (lambda (_g148499148511_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g148499148511_))
                      (let ((_e148501148513_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g148499148511_))))
                        (let ((_hd148502148516_
                               (let ()
                                 (declare (not safe))
                                 (##car _e148501148513_)))
                              (_tl148503148518_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e148501148513_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl148503148518_))
                              ((lambda (_L148521_)
                                 (let* ((_klass148532_
                                         (let ((__tmp149867
                                                (##structure-ref
                                                 _self148494_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx148495_
                                            __tmp149867)))
                                        (_field148534_
                                         (let ((__tmp149868
                                                (##structure-ref
                                                 _self148494_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass148532_
                                            __tmp149868)))
                                        (_object148536_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L148521_))))
                                   (if (##structure-ref
                                        _klass148532_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp149869
                                              (let ((__tmp149878
                                                     (if (##structure-ref
                                                          _self148494_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp149870
                                                     (let ((__tmp149875
                                                            (let ((__tmp149876
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp149877
                                  (##structure-ref
                                   _self148494_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp149877 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp149876)))
                   (__tmp149871
                    (let ((__tmp149873
                           (let ((__tmp149874
                                  (let ()
                                    (declare (not safe))
                                    (cons _field148534_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp149874)))
                          (__tmp149872
                           (let ()
                             (declare (not safe))
                             (cons _object148536_ '()))))
                      (declare (not safe))
                      (cons __tmp149873 __tmp149872))))
               (declare (not safe))
               (cons __tmp149875 __tmp149871))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp149878
                                                      __tmp149870))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp149869
                                          _stx148495_))
                                       (if (##structure-ref
                                            _klass148532_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp149879
                                                  (let ((__tmp149888
                                                         (if (##structure-ref
                                                              _self148494_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp149880
                                                         (let ((__tmp149885
                                                                (let ((__tmp149886
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp149887
                                      (##structure-ref
                                       _self148494_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp149887 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp149886)))
                       (__tmp149881
                        (let ((__tmp149883
                               (let ((__tmp149884
                                      (let ()
                                        (declare (not safe))
                                        (cons _field148534_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp149884)))
                              (__tmp149882
                               (let ()
                                 (declare (not safe))
                                 (cons _object148536_ '()))))
                          (declare (not safe))
                          (cons __tmp149883 __tmp149882))))
                   (declare (not safe))
                   (cons __tmp149885 __tmp149881))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp149888
                                                          __tmp149880))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp149879
                                              _stx148495_))
                                           (let ((_$e148539_
                                                  (let ((__tmp149889
                                                         (##structure-ref
                                                          _self148494_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass148532_
                                                     __tmp149889))))
                                             (if _$e148539_
                                                 ((lambda (_klass148542_)
                                                    (let ((__tmp149890
                                                           (let ((__tmp149899
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self148494_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp149891
                          (let ((__tmp149896
                                 (let ((__tmp149897
                                        (let ((__tmp149898
                                               (##structure-ref
                                                _self148494_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp149898 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp149897)))
                                (__tmp149892
                                 (let ((__tmp149894
                                        (let ((__tmp149895
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field148534_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp149895)))
                                       (__tmp149893
                                        (let ()
                                          (declare (not safe))
                                          (cons _object148536_ '()))))
                                   (declare (not safe))
                                   (cons __tmp149894 __tmp149893))))
                            (declare (not safe))
                            (cons __tmp149896 __tmp149892))))
                     (declare (not safe))
                     (cons __tmp149899 __tmp149891))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp149890 _stx148495_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e148539_)
                                                 (if (##structure-ref
                                                      _self148494_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp149900
                                                            (let* ((_$obj148544_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp149901 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp149901)))
                           (__tmp149902
                            (let ((__tmp149942
                                   (let ((__tmp149943
                                          (let ((__tmp149945
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj148544_ '())))
                                                (__tmp149944
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object148536_ '()))))
                                            (declare (not safe))
                                            (cons __tmp149945 __tmp149944))))
                                     (declare (not safe))
                                     (cons __tmp149943 '())))
                                  (__tmp149903
                                   (let ((__tmp149904
                                          (let ((__tmp149905
                                                 (let ((__tmp149934
                                                        (let ((__tmp149935
                                                               (let ((__tmp149939
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp149940
                                     (let ((__tmp149941
                                            (##structure-ref
                                             _klass148532_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp149941 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp149940)))
                             (__tmp149936
                              (let ((__tmp149937
                                     (let ((__tmp149938
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj148544_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp149938))))
                                (declare (not safe))
                                (cons __tmp149937 '()))))
                         (declare (not safe))
                         (cons __tmp149939 __tmp149936))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp149935)))
               (__tmp149906
                (let ((__tmp149923
                       (let ((__tmp149924
                              (let ((__tmp149931
                                     (let ((__tmp149932
                                            (let ((__tmp149933
                                                   (##structure-ref
                                                    _self148494_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp149933 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp149932)))
                                    (__tmp149925
                                     (let ((__tmp149929
                                            (let ((__tmp149930
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field148534_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp149930)))
                                           (__tmp149926
                                            (let ((__tmp149927
                                                   (let ((__tmp149928
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj148544_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp149928))))
                                              (declare (not safe))
                                              (cons __tmp149927 '()))))
                                       (declare (not safe))
                                       (cons __tmp149929 __tmp149926))))
                                (declare (not safe))
                                (cons __tmp149931 __tmp149925))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp149924)))
                      (__tmp149907
                       (let ((__tmp149908
                              (let ((__tmp149909
                                     (let ((__tmp149921
                                            (let ((__tmp149922
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp149922)))
                                           (__tmp149910
                                            (let ((__tmp149918
                                                   (let ((__tmp149919
                                                          (let ((__tmp149920
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self148494_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp149920 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp149919)))
                                                  (__tmp149911
                                                   (let ((__tmp149916
                                                          (let ((__tmp149917
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj148544_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp149917)))
                 (__tmp149912
                  (let ((__tmp149913
                         (let ((__tmp149914
                                (let ((__tmp149915
                                       (##structure-ref
                                        _self148494_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp149915 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp149914))))
                    (declare (not safe))
                    (cons __tmp149913 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp149916
                                                           __tmp149912))))
                                              (declare (not safe))
                                              (cons __tmp149918 __tmp149911))))
                                       (declare (not safe))
                                       (cons __tmp149921 __tmp149910))))
                                (declare (not safe))
                                (cons '%#call __tmp149909))))
                         (declare (not safe))
                         (cons __tmp149908 '()))))
                  (declare (not safe))
                  (cons __tmp149923 __tmp149907))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp149934
                                                         __tmp149906))))
                                            (declare (not safe))
                                            (cons '%#if __tmp149905))))
                                     (declare (not safe))
                                     (cons __tmp149904 '()))))
                              (declare (not safe))
                              (cons __tmp149942 __tmp149903))))
                      (declare (not safe))
                      (cons '%#let-values __tmp149902))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp149900 _stx148495_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp149946
                                                            (let ((__tmp149947
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp149953
                                  (let ((__tmp149954
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp149954)))
                                 (__tmp149948
                                  (let ((__tmp149949
                                         (let ((__tmp149950
                                                (let ((__tmp149951
                                                       (let ((__tmp149952
                                                              (##structure-ref
                                                               _self148494_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp149952
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp149951))))
                                           (declare (not safe))
                                           (cons __tmp149950 '()))))
                                    (declare (not safe))
                                    (cons _object148536_ __tmp149949))))
                             (declare (not safe))
                             (cons __tmp149953 __tmp149948))))
                      (declare (not safe))
                      (cons '%#call __tmp149947))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp149946 _stx148495_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd148502148516_)
                              (let ()
                                (declare (not safe))
                                (_g148498148508_ _g148499148511_)))))
                      (let ()
                        (declare (not safe))
                        (_g148498148508_ _g148499148511_))))))
          (declare (not safe))
          (_g148497148546_ _args148496_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass149169 __method-table149170)
        (let ((__id149171
               (let ((__slot149174
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass149169 'id))))
                 (if __slot149174
                     __slot149174
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__slot149172
               (let ((__slot149175
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass149169 'slot))))
                 (if __slot149175
                     __slot149175
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__checked?149173
               (let ((__slot149176
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass149169 'checked?))))
                 (if __slot149176
                     __slot149176
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self148494_ _stx148495_ _args148496_)
            (let* ((_g148498148508_
                    (lambda (_g148499148505_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g148499148505_))))
                   (_g148497148546_
                    (lambda (_g148499148511_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g148499148511_))
                          (let ((_e148501148513_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g148499148511_))))
                            (let ((_hd148502148516_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e148501148513_)))
                                  (_tl148503148518_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e148501148513_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl148503148518_))
                                  ((lambda (_L148521_)
                                     (let* ((_klass148532_
                                             (let ((__tmp149955
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self148494_
                                                       __id149171
                                                       __klass149169
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx148495_
                                                __tmp149955)))
                                            (_field148534_
                                             (let ((__tmp149956
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self148494_
                                                       __slot149172
                                                       __klass149169
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass148532_
                                                __tmp149956)))
                                            (_object148536_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L148521_))))
                                       (if (##structure-ref
                                            _klass148532_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp149957
                                                  (let ((__tmp149966
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self148494_
                        __checked?149173
                        __klass149169
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp149958
                 (let ((__tmp149963
                        (let ((__tmp149964
                               (let ((__tmp149965
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self148494_
                                         __id149171
                                         __klass149169
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp149965 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp149964)))
                       (__tmp149959
                        (let ((__tmp149961
                               (let ((__tmp149962
                                      (let ()
                                        (declare (not safe))
                                        (cons _field148534_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp149962)))
                              (__tmp149960
                               (let ()
                                 (declare (not safe))
                                 (cons _object148536_ '()))))
                          (declare (not safe))
                          (cons __tmp149961 __tmp149960))))
                   (declare (not safe))
                   (cons __tmp149963 __tmp149959))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp149966
                                                          __tmp149958))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp149957
                                              _stx148495_))
                                           (if (##structure-ref
                                                _klass148532_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp149967
                                                      (let ((__tmp149976
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self148494_
                            __checked?149173
                            __klass149169
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp149968
                     (let ((__tmp149973
                            (let ((__tmp149974
                                   (let ((__tmp149975
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self148494_
                                             __id149171
                                             __klass149169
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp149975 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp149974)))
                           (__tmp149969
                            (let ((__tmp149971
                                   (let ((__tmp149972
                                          (let ()
                                            (declare (not safe))
                                            (cons _field148534_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp149972)))
                                  (__tmp149970
                                   (let ()
                                     (declare (not safe))
                                     (cons _object148536_ '()))))
                              (declare (not safe))
                              (cons __tmp149971 __tmp149970))))
                       (declare (not safe))
                       (cons __tmp149973 __tmp149969))))
                (declare (not safe))
                (cons __tmp149976 __tmp149968))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp149967
                                                  _stx148495_))
                                               (let ((_$e148539_
                                                      (let ((__tmp149977
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self148494_
                        __slot149172
                        __klass149169
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass148532_ __tmp149977))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e148539_
                                                     ((lambda (_klass148542_)
                                                        (let ((__tmp149978
                                                               (let ((__tmp149987
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self148494_
                                     __checked?149173
                                     __klass149169
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp149979
                              (let ((__tmp149984
                                     (let ((__tmp149985
                                            (let ((__tmp149986
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self148494_
                                                      __id149171
                                                      __klass149169
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp149986 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp149985)))
                                    (__tmp149980
                                     (let ((__tmp149982
                                            (let ((__tmp149983
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field148534_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp149983)))
                                           (__tmp149981
                                            (let ()
                                              (declare (not safe))
                                              (cons _object148536_ '()))))
                                       (declare (not safe))
                                       (cons __tmp149982 __tmp149981))))
                                (declare (not safe))
                                (cons __tmp149984 __tmp149980))))
                         (declare (not safe))
                         (cons __tmp149987 __tmp149979))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp149978 _stx148495_)))
              _$e148539_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self148494_
                                                            __checked?149173
                                                            __klass149169
                                                            '#f))
                                                         (let ((__tmp149988
                                                                (let* ((_$obj148544_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp149989 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp149989)))
                               (__tmp149990
                                (let ((__tmp150030
                                       (let ((__tmp150031
                                              (let ((__tmp150033
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj148544_
                                                             '())))
                                                    (__tmp150032
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object148536_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp150033
                                                      __tmp150032))))
                                         (declare (not safe))
                                         (cons __tmp150031 '())))
                                      (__tmp149991
                                       (let ((__tmp149992
                                              (let ((__tmp149993
                                                     (let ((__tmp150022
                                                            (let ((__tmp150023
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp150027
                                  (let ((__tmp150028
                                         (let ((__tmp150029
                                                (##structure-ref
                                                 _klass148532_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp150029 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp150028)))
                                 (__tmp150024
                                  (let ((__tmp150025
                                         (let ((__tmp150026
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj148544_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp150026))))
                                    (declare (not safe))
                                    (cons __tmp150025 '()))))
                             (declare (not safe))
                             (cons __tmp150027 __tmp150024))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp150023)))
                   (__tmp149994
                    (let ((__tmp150011
                           (let ((__tmp150012
                                  (let ((__tmp150019
                                         (let ((__tmp150020
                                                (let ((__tmp150021
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self148494_
                                                          __id149171
                                                          __klass149169
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp150021 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp150020)))
                                        (__tmp150013
                                         (let ((__tmp150017
                                                (let ((__tmp150018
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field148534_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp150018)))
                                               (__tmp150014
                                                (let ((__tmp150015
                                                       (let ((__tmp150016
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj148544_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp150016))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp150015 '()))))
                                           (declare (not safe))
                                           (cons __tmp150017 __tmp150014))))
                                    (declare (not safe))
                                    (cons __tmp150019 __tmp150013))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp150012)))
                          (__tmp149995
                           (let ((__tmp149996
                                  (let ((__tmp149997
                                         (let ((__tmp150009
                                                (let ((__tmp150010
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp150010)))
                                               (__tmp149998
                                                (let ((__tmp150006
                                                       (let ((__tmp150007
                                                              (let ((__tmp150008
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self148494_
                                __id149171
                                __klass149169
                                '#f))))
                        (declare (not safe))
                        (cons __tmp150008 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp150007)))
              (__tmp149999
               (let ((__tmp150004
                      (let ((__tmp150005
                             (let ()
                               (declare (not safe))
                               (cons _$obj148544_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp150005)))
                     (__tmp150000
                      (let ((__tmp150001
                             (let ((__tmp150002
                                    (let ((__tmp150003
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self148494_
                                              __slot149172
                                              __klass149169
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp150003 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp150002))))
                        (declare (not safe))
                        (cons __tmp150001 '()))))
                 (declare (not safe))
                 (cons __tmp150004 __tmp150000))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp150006
                                                        __tmp149999))))
                                           (declare (not safe))
                                           (cons __tmp150009 __tmp149998))))
                                    (declare (not safe))
                                    (cons '%#call __tmp149997))))
                             (declare (not safe))
                             (cons __tmp149996 '()))))
                      (declare (not safe))
                      (cons __tmp150011 __tmp149995))))
               (declare (not safe))
               (cons __tmp150022 __tmp149994))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp149993))))
                                         (declare (not safe))
                                         (cons __tmp149992 '()))))
                                  (declare (not safe))
                                  (cons __tmp150030 __tmp149991))))
                          (declare (not safe))
                          (cons '%#let-values __tmp149990))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp149988 _stx148495_))
                 (let ((__tmp150034
                        (let ((__tmp150035
                               (let ((__tmp150041
                                      (let ((__tmp150042
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp150042)))
                                     (__tmp150036
                                      (let ((__tmp150037
                                             (let ((__tmp150038
                                                    (let ((__tmp150039
                                                           (let ((__tmp150040
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self148494_
                             __slot149172
                             __klass149169
                             '#f))))
                     (declare (not safe))
                     (cons __tmp150040 '()))))
              (declare (not safe))
              (cons '%#quote __tmp150039))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp150038 '()))))
                                        (declare (not safe))
                                        (cons _object148536_ __tmp150037))))
                                 (declare (not safe))
                                 (cons __tmp150041 __tmp150036))))
                          (declare (not safe))
                          (cons '%#call __tmp150035))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp150034 _stx148495_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd148502148516_)
                                  (let ()
                                    (declare (not safe))
                                    (_g148498148508_ _g148499148511_)))))
                          (let ()
                            (declare (not safe))
                            (_g148498148508_ _g148499148511_))))))
              (declare (not safe))
              (_g148497148546_ _args148496_))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!accessor::optimize-call
       gxc#!accessor::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!accessor::t
       'optimize-call
       gxc#!accessor::optimize-call
       '#f))
    (define gxc#!mutator::optimize-call
      (lambda (_self148299_ _stx148300_ _args148301_)
        (let* ((_g148303148317_
                (lambda (_g148304148314_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g148304148314_))))
               (_g148302148369_
                (lambda (_g148304148320_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g148304148320_))
                      (let ((_e148307148322_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g148304148320_))))
                        (let ((_hd148308148325_
                               (let ()
                                 (declare (not safe))
                                 (##car _e148307148322_)))
                              (_tl148309148327_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e148307148322_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl148309148327_))
                              (let ((_e148310148330_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl148309148327_))))
                                (let ((_hd148311148333_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e148310148330_)))
                                      (_tl148312148335_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e148310148330_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl148312148335_))
                                      ((lambda (_L148338_ _L148339_)
                                         (let* ((_klass148353_
                                                 (let ((__tmp150043
                                                        (##structure-ref
                                                         _self148299_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx148300_
                                                    __tmp150043)))
                                                (_field148355_
                                                 (let ((__tmp150044
                                                        (##structure-ref
                                                         _self148299_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass148353_
                                                    __tmp150044)))
                                                (_object148357_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L148339_)))
                                                (_value148359_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L148338_))))
                                           (if (##structure-ref
                                                _klass148353_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp150045
                                                      (let ((__tmp150055
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self148299_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp150046
                     (let ((__tmp150052
                            (let ((__tmp150053
                                   (let ((__tmp150054
                                          (##structure-ref
                                           _self148299_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp150054 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp150053)))
                           (__tmp150047
                            (let ((__tmp150050
                                   (let ((__tmp150051
                                          (let ()
                                            (declare (not safe))
                                            (cons _field148355_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp150051)))
                                  (__tmp150048
                                   (let ((__tmp150049
                                          (let ()
                                            (declare (not safe))
                                            (cons _value148359_ '()))))
                                     (declare (not safe))
                                     (cons _object148357_ __tmp150049))))
                              (declare (not safe))
                              (cons __tmp150050 __tmp150048))))
                       (declare (not safe))
                       (cons __tmp150052 __tmp150047))))
                (declare (not safe))
                (cons __tmp150055 __tmp150046))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp150045
                                                  _stx148300_))
                                               (if (##structure-ref
                                                    _klass148353_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp150056
                                                          (let ((__tmp150066
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self148299_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp150057
                         (let ((__tmp150063
                                (let ((__tmp150064
                                       (let ((__tmp150065
                                              (##structure-ref
                                               _self148299_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp150065 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp150064)))
                               (__tmp150058
                                (let ((__tmp150061
                                       (let ((__tmp150062
                                              (let ()
                                                (declare (not safe))
                                                (cons _field148355_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp150062)))
                                      (__tmp150059
                                       (let ((__tmp150060
                                              (let ()
                                                (declare (not safe))
                                                (cons _value148359_ '()))))
                                         (declare (not safe))
                                         (cons _object148357_ __tmp150060))))
                                  (declare (not safe))
                                  (cons __tmp150061 __tmp150059))))
                           (declare (not safe))
                           (cons __tmp150063 __tmp150058))))
                    (declare (not safe))
                    (cons __tmp150066 __tmp150057))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp150056
                                                      _stx148300_))
                                                   (let ((_$e148362_
                                                          (let ((__tmp150067
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self148299_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass148353_ __tmp150067))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e148362_
                                                         ((lambda (_klass148365_)
                                                            (let ((__tmp150068
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp150078
                                  (if (##structure-ref
                                       _self148299_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp150069
                                  (let ((__tmp150075
                                         (let ((__tmp150076
                                                (let ((__tmp150077
                                                       (##structure-ref
                                                        _self148299_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp150077 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp150076)))
                                        (__tmp150070
                                         (let ((__tmp150073
                                                (let ((__tmp150074
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field148355_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp150074)))
                                               (__tmp150071
                                                (let ((__tmp150072
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value148359_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object148357_
                                                        __tmp150072))))
                                           (declare (not safe))
                                           (cons __tmp150073 __tmp150071))))
                                    (declare (not safe))
                                    (cons __tmp150075 __tmp150070))))
                             (declare (not safe))
                             (cons __tmp150078 __tmp150069))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp150068 _stx148300_)))
                  _$e148362_)
                 (if (##structure-ref _self148299_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp150079
                            (let* ((_$obj148367_
                                    (let ((__tmp150080 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp150080)))
                                   (__tmp150081
                                    (let ((__tmp150123
                                           (let ((__tmp150124
                                                  (let ((__tmp150126
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj148367_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp150125
                 (let () (declare (not safe)) (cons _object148357_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp150126
                                                          __tmp150125))))
                                             (declare (not safe))
                                             (cons __tmp150124 '())))
                                          (__tmp150082
                                           (let ((__tmp150083
                                                  (let ((__tmp150084
                                                         (let ((__tmp150115
                                                                (let ((__tmp150116
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp150120
                                      (let ((__tmp150121
                                             (let ((__tmp150122
                                                    (##structure-ref
                                                     _klass148353_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp150122 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp150121)))
                                     (__tmp150117
                                      (let ((__tmp150118
                                             (let ((__tmp150119
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj148367_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp150119))))
                                        (declare (not safe))
                                        (cons __tmp150118 '()))))
                                 (declare (not safe))
                                 (cons __tmp150120 __tmp150117))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp150116)))
                       (__tmp150085
                        (let ((__tmp150103
                               (let ((__tmp150104
                                      (let ((__tmp150112
                                             (let ((__tmp150113
                                                    (let ((__tmp150114
                                                           (##structure-ref
                                                            _self148299_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp150114 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp150113)))
                                            (__tmp150105
                                             (let ((__tmp150110
                                                    (let ((__tmp150111
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field148355_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp150111)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp150106
                                                    (let ((__tmp150108
                                                           (let ((__tmp150109
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj148367_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp150109)))
                  (__tmp150107
                   (let () (declare (not safe)) (cons _value148359_ '()))))
              (declare (not safe))
              (cons __tmp150108 __tmp150107))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp150110
                                                     __tmp150106))))
                                        (declare (not safe))
                                        (cons __tmp150112 __tmp150105))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp150104)))
                              (__tmp150086
                               (let ((__tmp150087
                                      (let ((__tmp150088
                                             (let ((__tmp150101
                                                    (let ((__tmp150102
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp150102)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp150089
                                                    (let ((__tmp150098
                                                           (let ((__tmp150099
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp150100
                                 (##structure-ref
                                  _self148299_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp150100 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp150099)))
                  (__tmp150090
                   (let ((__tmp150096
                          (let ((__tmp150097
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj148367_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp150097)))
                         (__tmp150091
                          (let ((__tmp150093
                                 (let ((__tmp150094
                                        (let ((__tmp150095
                                               (##structure-ref
                                                _self148299_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp150095 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp150094)))
                                (__tmp150092
                                 (let ()
                                   (declare (not safe))
                                   (cons _value148359_ '()))))
                            (declare (not safe))
                            (cons __tmp150093 __tmp150092))))
                     (declare (not safe))
                     (cons __tmp150096 __tmp150091))))
              (declare (not safe))
              (cons __tmp150098 __tmp150090))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp150101
                                                     __tmp150089))))
                                        (declare (not safe))
                                        (cons '%#call __tmp150088))))
                                 (declare (not safe))
                                 (cons __tmp150087 '()))))
                          (declare (not safe))
                          (cons __tmp150103 __tmp150086))))
                   (declare (not safe))
                   (cons __tmp150115 __tmp150085))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp150084))))
                                             (declare (not safe))
                                             (cons __tmp150083 '()))))
                                      (declare (not safe))
                                      (cons __tmp150123 __tmp150082))))
                              (declare (not safe))
                              (cons '%#let-values __tmp150081))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp150079 _stx148300_))
                     (let ((__tmp150127
                            (let ((__tmp150128
                                   (let ((__tmp150135
                                          (let ((__tmp150136
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp150136)))
                                         (__tmp150129
                                          (let ((__tmp150130
                                                 (let ((__tmp150132
                                                        (let ((__tmp150133
                                                               (let ((__tmp150134
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self148299_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp150134 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp150133)))
               (__tmp150131
                (let () (declare (not safe)) (cons _value148359_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp150132
                                                         __tmp150131))))
                                            (declare (not safe))
                                            (cons _object148357_
                                                  __tmp150130))))
                                     (declare (not safe))
                                     (cons __tmp150135 __tmp150129))))
                              (declare (not safe))
                              (cons '%#call __tmp150128))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp150127 _stx148300_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd148311148333_
                                       _hd148308148325_)
                                      (let ()
                                        (declare (not safe))
                                        (_g148303148317_ _g148304148320_)))))
                              (let ()
                                (declare (not safe))
                                (_g148303148317_ _g148304148320_)))))
                      (let ()
                        (declare (not safe))
                        (_g148303148317_ _g148304148320_))))))
          (declare (not safe))
          (_g148302148369_ _args148301_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass149177 __method-table149178)
        (let ((__slot149179
               (let ((__slot149182
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass149177 'slot))))
                 (if __slot149182
                     __slot149182
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id149180
               (let ((__slot149183
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass149177 'id))))
                 (if __slot149183
                     __slot149183
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?149181
               (let ((__slot149184
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass149177 'checked?))))
                 (if __slot149184
                     __slot149184
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self148299_ _stx148300_ _args148301_)
            (let* ((_g148303148317_
                    (lambda (_g148304148314_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g148304148314_))))
                   (_g148302148369_
                    (lambda (_g148304148320_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g148304148320_))
                          (let ((_e148307148322_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g148304148320_))))
                            (let ((_hd148308148325_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e148307148322_)))
                                  (_tl148309148327_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e148307148322_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl148309148327_))
                                  (let ((_e148310148330_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl148309148327_))))
                                    (let ((_hd148311148333_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e148310148330_)))
                                          (_tl148312148335_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e148310148330_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl148312148335_))
                                          ((lambda (_L148338_ _L148339_)
                                             (let* ((_klass148353_
                                                     (let ((__tmp150137
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self148299_
                                                               __id149180
                                                               __klass149177
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx148300_
                                                        __tmp150137)))
                                                    (_field148355_
                                                     (let ((__tmp150138
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self148299_
                                                               __slot149179
                                                               __klass149177
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass148353_
                                                        __tmp150138)))
                                                    (_object148357_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L148339_)))
                                                    (_value148359_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L148338_))))
                                               (if (##structure-ref
                                                    _klass148353_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp150139
                                                          (let ((__tmp150149
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self148299_
                                __checked?149181
                                __klass149177
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp150140
                         (let ((__tmp150146
                                (let ((__tmp150147
                                       (let ((__tmp150148
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self148299_
                                                 __id149180
                                                 __klass149177
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp150148 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp150147)))
                               (__tmp150141
                                (let ((__tmp150144
                                       (let ((__tmp150145
                                              (let ()
                                                (declare (not safe))
                                                (cons _field148355_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp150145)))
                                      (__tmp150142
                                       (let ((__tmp150143
                                              (let ()
                                                (declare (not safe))
                                                (cons _value148359_ '()))))
                                         (declare (not safe))
                                         (cons _object148357_ __tmp150143))))
                                  (declare (not safe))
                                  (cons __tmp150144 __tmp150142))))
                           (declare (not safe))
                           (cons __tmp150146 __tmp150141))))
                    (declare (not safe))
                    (cons __tmp150149 __tmp150140))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp150139
                                                      _stx148300_))
                                                   (if (##structure-ref
                                                        _klass148353_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp150150
                                                              (let ((__tmp150160
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self148299_
                                    __checked?149181
                                    __klass149177
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp150151
                             (let ((__tmp150157
                                    (let ((__tmp150158
                                           (let ((__tmp150159
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self148299_
                                                     __id149180
                                                     __klass149177
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp150159 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp150158)))
                                   (__tmp150152
                                    (let ((__tmp150155
                                           (let ((__tmp150156
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field148355_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp150156)))
                                          (__tmp150153
                                           (let ((__tmp150154
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value148359_ '()))))
                                             (declare (not safe))
                                             (cons _object148357_
                                                   __tmp150154))))
                                      (declare (not safe))
                                      (cons __tmp150155 __tmp150153))))
                               (declare (not safe))
                               (cons __tmp150157 __tmp150152))))
                        (declare (not safe))
                        (cons __tmp150160 __tmp150151))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp150150 _stx148300_))
               (let ((_$e148362_
                      (let ((__tmp150161
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self148299_
                                __slot149179
                                __klass149177
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass148353_
                         __tmp150161))))
                 (if _$e148362_
                     ((lambda (_klass148365_)
                        (let ((__tmp150162
                               (let ((__tmp150172
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self148299_
                                             __checked?149181
                                             __klass149177
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp150163
                                      (let ((__tmp150169
                                             (let ((__tmp150170
                                                    (let ((__tmp150171
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self148299_
                                                              __id149180
                                                              __klass149177
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp150171 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp150170)))
                                            (__tmp150164
                                             (let ((__tmp150167
                                                    (let ((__tmp150168
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field148355_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp150168)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp150165
                                                    (let ((__tmp150166
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value148359_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object148357_ __tmp150166))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp150167
                                                     __tmp150165))))
                                        (declare (not safe))
                                        (cons __tmp150169 __tmp150164))))
                                 (declare (not safe))
                                 (cons __tmp150172 __tmp150163))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp150162 _stx148300_)))
                      _$e148362_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self148299_
                            __checked?149181
                            __klass149177
                            '#f))
                         (let ((__tmp150173
                                (let* ((_$obj148367_
                                        (let ((__tmp150174 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp150174)))
                                       (__tmp150175
                                        (let ((__tmp150217
                                               (let ((__tmp150218
                                                      (let ((__tmp150220
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj148367_ '())))
                    (__tmp150219
                     (let () (declare (not safe)) (cons _object148357_ '()))))
                (declare (not safe))
                (cons __tmp150220 __tmp150219))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp150218 '())))
                                              (__tmp150176
                                               (let ((__tmp150177
                                                      (let ((__tmp150178
                                                             (let ((__tmp150209
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp150210
                                   (let ((__tmp150214
                                          (let ((__tmp150215
                                                 (let ((__tmp150216
                                                        (##structure-ref
                                                         _klass148353_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp150216 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp150215)))
                                         (__tmp150211
                                          (let ((__tmp150212
                                                 (let ((__tmp150213
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj148367_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp150213))))
                                            (declare (not safe))
                                            (cons __tmp150212 '()))))
                                     (declare (not safe))
                                     (cons __tmp150214 __tmp150211))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp150210)))
                           (__tmp150179
                            (let ((__tmp150197
                                   (let ((__tmp150198
                                          (let ((__tmp150206
                                                 (let ((__tmp150207
                                                        (let ((__tmp150208
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self148299_
                          __id149180
                          __klass149177
                          '#f))))
                  (declare (not safe))
                  (cons __tmp150208 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp150207)))
                                                (__tmp150199
                                                 (let ((__tmp150204
                                                        (let ((__tmp150205
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field148355_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp150205)))
               (__tmp150200
                (let ((__tmp150202
                       (let ((__tmp150203
                              (let ()
                                (declare (not safe))
                                (cons _$obj148367_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp150203)))
                      (__tmp150201
                       (let () (declare (not safe)) (cons _value148359_ '()))))
                  (declare (not safe))
                  (cons __tmp150202 __tmp150201))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp150204
                                                         __tmp150200))))
                                            (declare (not safe))
                                            (cons __tmp150206 __tmp150199))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp150198)))
                                  (__tmp150180
                                   (let ((__tmp150181
                                          (let ((__tmp150182
                                                 (let ((__tmp150195
                                                        (let ((__tmp150196
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp150196)))
               (__tmp150183
                (let ((__tmp150192
                       (let ((__tmp150193
                              (let ((__tmp150194
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self148299_
                                        __id149180
                                        __klass149177
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp150194 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp150193)))
                      (__tmp150184
                       (let ((__tmp150190
                              (let ((__tmp150191
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj148367_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp150191)))
                             (__tmp150185
                              (let ((__tmp150187
                                     (let ((__tmp150188
                                            (let ((__tmp150189
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self148299_
                                                      __slot149179
                                                      __klass149177
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp150189 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp150188)))
                                    (__tmp150186
                                     (let ()
                                       (declare (not safe))
                                       (cons _value148359_ '()))))
                                (declare (not safe))
                                (cons __tmp150187 __tmp150186))))
                         (declare (not safe))
                         (cons __tmp150190 __tmp150185))))
                  (declare (not safe))
                  (cons __tmp150192 __tmp150184))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp150195
                                                         __tmp150183))))
                                            (declare (not safe))
                                            (cons '%#call __tmp150182))))
                                     (declare (not safe))
                                     (cons __tmp150181 '()))))
                              (declare (not safe))
                              (cons __tmp150197 __tmp150180))))
                       (declare (not safe))
                       (cons __tmp150209 __tmp150179))))
                (declare (not safe))
                (cons '%#if __tmp150178))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp150177 '()))))
                                          (declare (not safe))
                                          (cons __tmp150217 __tmp150176))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp150175))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp150173 _stx148300_))
                         (let ((__tmp150221
                                (let ((__tmp150222
                                       (let ((__tmp150229
                                              (let ((__tmp150230
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp150230)))
                                             (__tmp150223
                                              (let ((__tmp150224
                                                     (let ((__tmp150226
                                                            (let ((__tmp150227
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp150228
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self148299_
                                     __slot149179
                                     __klass149177
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp150228 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp150227)))
                   (__tmp150225
                    (let () (declare (not safe)) (cons _value148359_ '()))))
               (declare (not safe))
               (cons __tmp150226 __tmp150225))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object148357_
                                                      __tmp150224))))
                                         (declare (not safe))
                                         (cons __tmp150229 __tmp150223))))
                                  (declare (not safe))
                                  (cons '%#call __tmp150222))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp150221
                            _stx148300_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd148311148333_
                                           _hd148308148325_)
                                          (let ()
                                            (declare (not safe))
                                            (_g148303148317_
                                             _g148304148320_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g148303148317_ _g148304148320_)))))
                          (let ()
                            (declare (not safe))
                            (_g148303148317_ _g148304148320_))))))
              (declare (not safe))
              (_g148302148369_ _args148301_))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!mutator::optimize-call
       gxc#!mutator::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!mutator::t
       'optimize-call
       gxc#!mutator::optimize-call
       '#f))
    (define gxc#!lambda::optimize-call
      (lambda (_self148133_ _stx148134_ _args148135_)
        (let* ((_self148136148145_ _self148133_)
               (_E148138148149_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self148136148145_))))
               (_K148139148156_
                (lambda (_inline148152_ _dispatch148153_ _arity148154_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self148133_ _args148135_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx148134_
                         _arity148154_)))
                  (if _inline148152_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp150231
                               (let ((__tmp150232
                                      (_inline148152_ _stx148134_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp150232
                                  _stx148134_))))
                          (declare (not safe))
                          (gxc#compile-e__0 __tmp150231)))
                      (if _dispatch148153_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch148153_))
                            (let ((__tmp150233
                                   (let ((__tmp150234
                                          (let ((__tmp150235
                                                 (let ((__tmp150236
                                                        (let ((__tmp150237
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch148153_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp150237))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp150236
                                                         _args148135_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp150235))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp150234
                                      _stx148134_))))
                              (declare (not safe))
                              (gxc#compile-e__0 __tmp150233)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _stx148134_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self148136148145_ 'gxc#!lambda::t))
              (let* ((_e148140148159_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self148136148145_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e148141148162_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self148136148145_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity148165_ _e148141148162_)
                     (_e148142148167_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self148136148145_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch148170_ _e148142148167_)
                     (_e148143148172_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self148136148145_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline148175_ _e148143148172_))
                (declare (not safe))
                (_K148139148156_
                 _inline148175_
                 _dispatch148170_
                 _arity148165_))
              (let () (declare (not safe)) (_E148138148149_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self147972_ _stx147973_ _args147974_)
        (let* ((_self147975147982_ _self147972_)
               (_E147977147986_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self147975147982_))))
               (_K147978148000_
                (lambda (_clauses147989_)
                  (let ((_$e147995_
                         (let ((__tmp150238
                                (lambda (_g147990147992_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g147990147992_
                                     _args147974_)))))
                           (declare (not safe))
                           (find __tmp150238 _clauses147989_))))
                    (if _$e147995_
                        ((lambda (_clause147998_)
                           (let ((__method149453
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause147998_
                                     'optimize-call))))
                             (if __method149453
                                 (__method149453
                                  _clause147998_
                                  _stx147973_
                                  _args147974_)
                                 (let ()
                                   (declare (not safe))
                                   (error '"Missing method"
                                          _clause147998_
                                          'optimize-call)))))
                         _$e147995_)
                        (let ((__tmp150239
                               (map gxc#!lambda-arity _clauses147989_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx147973_
                           __tmp150239)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self147975147982_
                 'gxc#!case-lambda::t))
              (let* ((_e147979148003_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self147975147982_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e147980148006_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self147975147982_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses148009_ _e147980148006_))
                (declare (not safe))
                (_K147978148000_ _clauses148009_))
              (let () (declare (not safe)) (_E147977147986_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self147786_ _args147787_)
        (let* ((_self147788147795_ _self147786_)
               (_E147790147799_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self147788147795_))))
               (_K147791147839_
                (lambda (_arity147802_)
                  (let* ((_arity147803147812_ _arity147802_)
                         (_E147806147816_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (error '"No clause matching"
                                     _arity147803147812_)))))
                    (let ((_K147810147836_
                           (lambda ()
                             (fx= (length _args147787_) _arity147802_)))
                          (_K147807147822_
                           (lambda (_arity147820_)
                             (fx>= (length _args147787_) _arity147820_))))
                      (let ((_try-match147805147832_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity147803147812_))
                                   (let ((_tl147809147827_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity147803147812_)))
                                         (_hd147808147825_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity147803147812_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl147809147827_))
                                         (let ((_arity147830_
                                                _hd147808147825_))
                                           (declare (not safe))
                                           (_K147807147822_ _arity147830_))
                                         (let ()
                                           (declare (not safe))
                                           (_E147806147816_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E147806147816_))))))
                        (if (let ()
                              (declare (not safe))
                              (fixnum? _arity147803147812_))
                            (let () (declare (not safe)) (_K147810147836_))
                            (let ()
                              (declare (not safe))
                              (_try-match147805147832_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self147788147795_ 'gxc#!lambda::t))
              (let* ((_e147792147842_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self147788147795_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e147793147845_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self147788147795_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity147848_ _e147793147845_))
                (declare (not safe))
                (_K147791147839_ _arity147848_))
              (let () (declare (not safe)) (_E147790147799_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self147671_ _stx147672_ _args147673_)
        (let* ((_self147674147682_ _self147671_)
               (_E147676147686_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self147674147682_))))
               (_K147677147770_
                (lambda (_dispatch147689_ _table147690_)
                  (let* ((_g147691147700_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch147689_)))
                         (_else147693147708_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch147689_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _stx147672_))))
                         (_K147695147754_
                          (lambda (_main147711_ _keys147712_)
                            (let ((_g150240_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx147672_
                                      _args147673_))))
                              (begin
                                (let ((_g150241_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g150240_)
                                             (##vector-length _g150240_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g150241_ 2)))
                                      (error "Context expects 2 values"
                                             _g150241_)))
                                (let ((_pargs147714_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g150240_ 0)))
                                      (_kwargs147715_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g150240_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main147711_))
                                    (if _table147690_
                                        (let ((_xargs147722_
                                               (map (lambda (_key147717_)
                                                      (let ((_$e147719_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__0 _key147717_ _kwargs147715_))))
                (if _$e147719_ (values _$e147719_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys147712_)))
                                          (for-each
                                           (lambda (_kw147724_)
                                             (if (memq (car _kw147724_)
                                                       _keys147712_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx147672_
                                                    _keys147712_
                                                    _kw147724_))))
                                           _kwargs147715_)
                                          (let ((__tmp150242
                                                 (let ((__tmp150243
                                                        (let ((__tmp150244
                                                               (let ((__tmp150249
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp150250
                                     (let ()
                                       (declare (not safe))
                                       (cons _main147711_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp150250)))
                             (__tmp150245
                              (let ((__tmp150247
                                     (let ((__tmp150248
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp150248)))
                                    (__tmp150246
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs147714_
                                               _xargs147722_))))
                                (declare (not safe))
                                (cons __tmp150247 __tmp150246))))
                         (declare (not safe))
                         (cons __tmp150249 __tmp150245))))
                  (declare (not safe))
                  (cons '%#call __tmp150244))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp150243
                                                    _stx147672_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0 __tmp150242)))
                                        (let* ((_kwt147726_
                                                (let ((__tmp150251
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp150251)))
                                               (_kwvars147729_
                                                (map (lambda (_g150252_)
                                                       (let ((__tmp150253
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp150253)))
                                                     _kwargs147715_))
                                               (_kwbind147734_
                                                (map (lambda (_kw147731_
                                                              _kwvar147732_)
                                                       (let ((__tmp150256
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar147732_ '())))
                     (__tmp150254
                      (let ((__tmp150255 (cdr _kw147731_)))
                        (declare (not safe))
                        (cons __tmp150255 '()))))
                 (declare (not safe))
                 (cons __tmp150256 __tmp150254)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs147715_
                                                     _kwvars147729_))
                                               (_kwset147739_
                                                (map (lambda (_kw147736_
                                                              _kwvar147737_)
                                                       (let ((__tmp150257
                                                              (let ((__tmp150258
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp150266
                                    (let ((__tmp150267
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt147726_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp150267)))
                                   (__tmp150259
                                    (let ((__tmp150263
                                           (let ((__tmp150264
                                                  (let ((__tmp150265
                                                         (car _kw147736_)))
                                                    (declare (not safe))
                                                    (cons __tmp150265 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp150264)))
                                          (__tmp150260
                                           (let ((__tmp150261
                                                  (let ((__tmp150262
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar147737_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp150262))))
                                             (declare (not safe))
                                             (cons __tmp150261 '()))))
                                      (declare (not safe))
                                      (cons __tmp150263 __tmp150260))))
                               (declare (not safe))
                               (cons __tmp150266 __tmp150259))))
                        (declare (not safe))
                        (cons '(%#ref symbolic-table-set!) __tmp150258))))
                 (declare (not safe))
                 (cons '%#call __tmp150257)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs147715_
                                                     _kwvars147729_))
                                               (_xkwargs147744_
                                                (map (lambda (_kw147741_
                                                              _kwvar147742_)
                                                       (let ((__tmp150270
                                                              (car _kw147741_))
                                                             (__tmp150268
                                                              (let ((__tmp150269
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar147742_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp150269))))
                 (declare (not safe))
                 (cons __tmp150270 __tmp150268)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs147715_
                                                     _kwvars147729_))
                                               (_xargs147751_
                                                (map (lambda (_key147746_)
                                                       (let ((_$e147748_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq__0 _key147746_ _xkwargs147744_))))
                 (if _$e147748_ (values _$e147748_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys147712_)))
                                          (let ((__tmp150271
                                                 (let ((__tmp150272
                                                        (let ((__tmp150273
                                                               (let ((__tmp150274
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp150275
                                     (let ((__tmp150276
                                            (let ((__tmp150290
                                                   (let ((__tmp150291
                                                          (let ((__tmp150301
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt147726_ '())))
                        (__tmp150292
                         (let ((__tmp150293
                                (let ((__tmp150294
                                       (let ((__tmp150295
                                              (let ((__tmp150296
                                                     (let ((__tmp150298
                                                            (let ((__tmp150299
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp150300 (length _kwargs147715_)))
                             (declare (not safe))
                             (cons __tmp150300 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp150299)))
                   (__tmp150297
                    (let () (declare (not safe)) (cons '(%#quote 0) '()))))
               (declare (not safe))
               (cons __tmp150298 __tmp150297))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-symbolic-table)
                                                      __tmp150296))))
                                         (declare (not safe))
                                         (cons '%#call __tmp150295))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp150294
                                   _stx147672_))))
                           (declare (not safe))
                           (cons __tmp150293 '()))))
                    (declare (not safe))
                    (cons __tmp150301 __tmp150292))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp150291 '())))
                                                  (__tmp150277
                                                   (let ((__tmp150278
                                                          (let ((__tmp150279
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp150280
                                (let ((__tmp150281
                                       (let ((__tmp150282
                                              (let ((__tmp150283
                                                     (let ((__tmp150288
                                                            (let ((__tmp150289
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main147711_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp150289)))
                   (__tmp150284
                    (let ((__tmp150286
                           (let ((__tmp150287
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt147726_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp150287)))
                          (__tmp150285
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs147714_ _xargs147751_))))
                      (declare (not safe))
                      (cons __tmp150286 __tmp150285))))
               (declare (not safe))
               (cons __tmp150288 __tmp150284))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp150283))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp150282
                                          _stx147672_))))
                                  (declare (not safe))
                                  (cons __tmp150281 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp150280 _kwset147739_))))
                    (declare (not safe))
                    (cons '%#begin __tmp150279))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp150278 '()))))
                                              (declare (not safe))
                                              (cons __tmp150290 __tmp150277))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp150276))))
                                (declare (not safe))
                                (cons __tmp150275 '()))))
                         (declare (not safe))
                         (cons _kwbind147734_ __tmp150274))))
                  (declare (not safe))
                  (cons '%#let-values __tmp150273))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp150272
                                                    _stx147672_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0
                                             __tmp150271)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g147691147700_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e147696147757_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g147691147700_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e147697147760_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g147691147700_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys147763_ _e147697147760_)
                               (_e147698147765_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g147691147700_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main147768_ _e147698147765_))
                          (declare (not safe))
                          (_K147695147754_ _main147768_ _keys147763_))
                        (let () (declare (not safe)) (_else147693147708_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self147674147682_
                 'gxc#!kw-lambda::t))
              (let* ((_e147678147773_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self147674147682_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e147679147776_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self147674147682_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table147779_ _e147679147776_)
                     (_e147680147781_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self147674147682_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch147784_ _e147680147781_))
                (declare (not safe))
                (_K147677147770_ _dispatch147784_ _table147779_))
              (let () (declare (not safe)) (_E147676147686_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx147284_ _args147285_)
        (let _lp147287_ ((_rest147289_ _args147285_)
                         (_pargs147290_ '())
                         (_kwargs147291_ '()))
          (let* ((___stx149335149336_ _rest147289_)
                 (_g147297147349_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx149335149336_)))))
            (let ((___kont149337149338_
                   (lambda (_L147528_ _L147529_)
                     (let ((__tmp150302
                            (let ()
                              (declare (not safe))
                              (cons _L147529_ _pargs147290_))))
                       (declare (not safe))
                       (_lp147287_ _L147528_ __tmp150302 _kwargs147291_))))
                  (___kont149339149340_
                   (lambda (_L147474_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L147474_ _pargs147290_))
                             (reverse _kwargs147291_))))
                  (___kont149341149342_
                   (lambda (_L147421_ _L147422_ _L147423_)
                     (let ((_kw147440_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L147423_))))
                       (if (assq _kw147440_ _kwargs147291_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx147284_
                              _kw147440_))
                           (let ((__tmp150303
                                  (let ((__tmp150304
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw147440_ _L147422_))))
                                    (declare (not safe))
                                    (cons __tmp150304 _kwargs147291_))))
                             (declare (not safe))
                             (_lp147287_
                              _L147421_
                              _pargs147290_
                              __tmp150303))))))
                  (___kont149343149344_
                   (lambda (_L147369_ _L147370_)
                     (let ((__tmp150305
                            (let ()
                              (declare (not safe))
                              (cons _L147370_ _pargs147290_))))
                       (declare (not safe))
                       (_lp147287_ _L147369_ __tmp150305 _kwargs147291_))))
                  (___kont149345149346_
                   (lambda ()
                     (values (reverse _pargs147290_)
                             (reverse _kwargs147291_)))))
              (let* ((_g147296147356_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx149335149336_))
                            (___kont149345149346_)
                            (let () (declare (not safe)) (_g147297147349_)))))
                     (___match149442149443_
                      (lambda (_e147328147389_
                               _hd147329147392_
                               _tl147330147394_
                               _e147331147397_
                               _hd147332147400_
                               _tl147333147402_
                               _e147334147405_
                               _hd147335147408_
                               _tl147336147410_
                               _e147337147413_
                               _hd147338147416_
                               _tl147339147418_)
                        (let ((_L147421_ _tl147339147418_)
                              (_L147422_ _hd147338147416_)
                              (_L147423_ _hd147335147408_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L147423_))
                              (___kont149341149342_
                               _L147421_
                               _L147422_
                               _L147423_)
                              (___kont149343149344_
                               _tl147330147394_
                               _hd147329147392_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx149335149336_))
                    (let ((_e147301147493_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx149335149336_))))
                      (let ((_tl147303147498_
                             (let ()
                               (declare (not safe))
                               (##cdr _e147301147493_)))
                            (_hd147302147496_
                             (let ()
                               (declare (not safe))
                               (##car _e147301147493_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd147302147496_))
                            (let ((_e147304147501_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd147302147496_))))
                              (let ((_tl147306147506_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e147304147501_)))
                                    (_hd147305147504_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e147304147501_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd147305147504_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd147305147504_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl147306147506_))
                                            (let ((_e147307147509_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl147306147506_))))
                                              (let ((_tl147309147514_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e147307147509_)))
                                                    (_hd147308147512_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e147307147509_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd147308147512_))
                                                    (let ((_e147310147517_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd147308147512_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e147310147517_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl147309147514_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl147303147498_))
                          (let ((_e147311147520_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl147303147498_))))
                            (let ((_tl147313147525_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e147311147520_)))
                                  (_hd147312147523_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e147311147520_))))
                              (___kont149337149338_
                               _tl147313147525_
                               _hd147312147523_)))
                          (___kont149343149344_
                           _tl147303147498_
                           _hd147302147496_))
                      (___kont149343149344_ _tl147303147498_ _hd147302147496_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e147310147517_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl147309147514_))
                          (___kont149339149340_ _tl147303147498_)
                          (___kont149343149344_
                           _tl147303147498_
                           _hd147302147496_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl147309147514_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl147303147498_))
                              (let ((_e147337147413_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl147303147498_))))
                                (let ((_tl147339147418_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e147337147413_)))
                                      (_hd147338147416_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e147337147413_))))
                                  (___match149442149443_
                                   _e147301147493_
                                   _hd147302147496_
                                   _tl147303147498_
                                   _e147304147501_
                                   _hd147305147504_
                                   _tl147306147506_
                                   _e147307147509_
                                   _hd147308147512_
                                   _tl147309147514_
                                   _e147337147413_
                                   _hd147338147416_
                                   _tl147339147418_)))
                              (___kont149343149344_
                               _tl147303147498_
                               _hd147302147496_))
                          (___kont149343149344_
                           _tl147303147498_
                           _hd147302147496_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl147309147514_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl147303147498_))
                                                            (let ((_e147337147413_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl147303147498_))))
                      (let ((_tl147339147418_
                             (let ()
                               (declare (not safe))
                               (##cdr _e147337147413_)))
                            (_hd147338147416_
                             (let ()
                               (declare (not safe))
                               (##car _e147337147413_))))
                        (___match149442149443_
                         _e147301147493_
                         _hd147302147496_
                         _tl147303147498_
                         _e147304147501_
                         _hd147305147504_
                         _tl147306147506_
                         _e147307147509_
                         _hd147308147512_
                         _tl147309147514_
                         _e147337147413_
                         _hd147338147416_
                         _tl147339147418_)))
                    (___kont149343149344_ _tl147303147498_ _hd147302147496_))
                (___kont149343149344_ _tl147303147498_ _hd147302147496_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont149343149344_
                                             _tl147303147498_
                                             _hd147302147496_))
                                        (___kont149343149344_
                                         _tl147303147498_
                                         _hd147302147496_))
                                    (___kont149343149344_
                                     _tl147303147498_
                                     _hd147302147496_))))
                            (___kont149343149344_
                             _tl147303147498_
                             _hd147302147496_))))
                    (let () (declare (not safe)) (_g147296147356_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self147280_ _stx147281_ _args147282_)
        (let () (declare (not safe)) (gxc#xform-call% _stx147281_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
