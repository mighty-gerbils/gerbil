(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1708387692)
  (begin
    (define gxc#&optimize-call
      (make-promise
       (lambda ()
         (let ((_tbl152115_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp152406 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-merge! _tbl152115_ __tmp152406))
           (let ()
             (declare (not safe))
             (hash-put! _tbl152115_ '%#call gxc#optimize-call%))
           _tbl152115_))))
    (define gxc#apply-optimize-call
      (lambda (_stx152098_ . _args152100_)
        (let ((__tmp152408
               (lambda ()
                 (declare (not safe))
                 (if (null? _args152100_)
                     (gxc#compile-e__0 _stx152098_)
                     (let ((_arg1152105_ (car _args152100_))
                           (_rest152107_ (cdr _args152100_)))
                       (if (null? _rest152107_)
                           (gxc#compile-e__1 _stx152098_ _arg1152105_)
                           (let ((_arg2152110_ (car _rest152107_))
                                 (_rest152112_ (cdr _rest152107_)))
                             (if (null? _rest152112_)
                                 (gxc#compile-e__2
                                  _stx152098_
                                  _arg1152105_
                                  _arg2152110_)
                                 (apply gxc#compile-e
                                        _stx152098_
                                        _arg1152105_
                                        _arg2152110_
                                        _rest152112_))))))))
              (__tmp152407 (force gxc#&optimize-call)))
          (declare (not safe))
          (call-with-parameters
           __tmp152408
           gxc#current-compile-methods
           __tmp152407))))
    (define gxc#optimize-call%
      (lambda (_stx151953_)
        (let* ((___stx152156152157_ _stx151953_)
               (_g151956151976_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx152156152157_)))))
          (let ((___kont152158152159_
                 (lambda (_L152020_ _L152021_)
                   (let* ((_rator-id152039_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L152021_)))
                          (_rator-type152041_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id152039_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type152041_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp152409
                                  (##structure-ref
                                   _rator-type152041_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id152039_
                              '" => "
                              _rator-type152041_
                              '" "
                              __tmp152409))
                           (let ((_optimized152044_
                                  (let ((__method152404
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type152041_
                                            'optimize-call))))
                                    (if __method152404
                                        (__method152404
                                         _rator-type152041_
                                         _stx151953_
                                         _L152020_)
                                        (let ()
                                          (declare (not safe))
                                          (error '"Missing method"
                                                 _rator-type152041_
                                                 'optimize-call))))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type152041_))
                                 _optimized152044_
                                 (let* ((___stx152138152139_ _optimized152044_)
                                        (_g152047152057_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx152138152139_)))))
                                   (let ((___kont152140152141_
                                          (lambda (_L152077_)
                                            (let ((__tmp152410
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L152077_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp152410
                                               _stx151953_))))
                                         (___kont152142152143_
                                          (lambda () _optimized152044_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx152138152139_))
                                         (let ((_e152052152069_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx152138152139_))))
                                           (let ((_tl152050152074_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e152052152069_)))
                                                 (_hd152051152072_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e152052152069_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd152051152072_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd152051152072_))
                                                     (___kont152140152141_
                                                      _tl152050152074_)
                                                     (___kont152142152143_))
                                                 (___kont152142152143_))))
                                         (___kont152142152143_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type152041_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx151953_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx151953_
                                _rator-type152041_)))))))
                (___kont152160152161_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _stx151953_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx152156152157_))
                (let ((_e151962151988_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx152156152157_))))
                  (let ((_tl151960151993_
                         (let () (declare (not safe)) (##cdr _e151962151988_)))
                        (_hd151961151991_
                         (let ()
                           (declare (not safe))
                           (##car _e151962151988_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl151960151993_))
                        (let ((_e151965151996_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl151960151993_))))
                          (let ((_tl151963152001_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e151965151996_)))
                                (_hd151964151999_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e151965151996_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd151964151999_))
                                (let ((_e151968152004_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd151964151999_))))
                                  (let ((_tl151966152009_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e151968152004_)))
                                        (_hd151967152007_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e151968152004_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd151967152007_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd151967152007_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl151966152009_))
                                                (let ((_e151971152012_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl151966152009_))))
                                                  (let ((_tl151969152017_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e151971152012_)))
                                                        (_hd151970152015_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e151971152012_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl151969152017_))
                                                        (___kont152158152159_
                                                         _tl151963152001_
                                                         _hd151970152015_)
                                                        (___kont152160152161_))))
                                                (___kont152160152161_))
                                            (___kont152160152161_))
                                        (___kont152160152161_))))
                                (___kont152160152161_))))
                        (___kont152160152161_))))
                (___kont152160152161_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self151907_ _stx151908_ _args151909_)
        (let* ((_g151911151921_
                (lambda (_g151912151918_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g151912151918_))))
               (_g151910151950_
                (lambda (_g151912151924_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g151912151924_))
                      (let ((_e151916151926_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g151912151924_))))
                        (let ((_hd151915151929_
                               (let ()
                                 (declare (not safe))
                                 (##car _e151916151926_)))
                              (_tl151914151931_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e151916151926_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl151914151931_))
                              ((lambda (_L151934_)
                                 (let* ((_klass151945_
                                         (let ((__tmp152411
                                                (##structure-ref
                                                 _self151907_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx151908_
                                            __tmp152411)))
                                        (_object151947_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L151934_))))
                                   (if (##structure-ref
                                        _klass151945_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp152427
                                              (let ((__tmp152428
                                                     (let ((__tmp152430
                                                            (let ((__tmp152431
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152432
                                  (##structure-ref
                                   _klass151945_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp152432 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp152431)))
                   (__tmp152429
                    (let () (declare (not safe)) (cons _object151947_ '()))))
               (declare (not safe))
               (cons __tmp152430 __tmp152429))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp152428))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp152427
                                          _stx151908_))
                                       (if (##structure-ref
                                            _klass151945_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp152421
                                                  (let ((__tmp152422
                                                         (let ((__tmp152424
                                                                (let ((__tmp152425
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp152426
                                      (##structure-ref
                                       _klass151945_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp152426 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp152425)))
                       (__tmp152423
                        (let ()
                          (declare (not safe))
                          (cons _object151947_ '()))))
                   (declare (not safe))
                   (cons __tmp152424 __tmp152423))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp152422))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152421
                                              _stx151908_))
                                           (let ((__tmp152412
                                                  (let ((__tmp152413
                                                         (let ((__tmp152419
                                                                (let ((__tmp152420
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp152420)))
                       (__tmp152414
                        (let ((__tmp152416
                               (let ((__tmp152417
                                      (let ((__tmp152418
                                             (##structure-ref
                                              _self151907_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp152418 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp152417)))
                              (__tmp152415
                               (let ()
                                 (declare (not safe))
                                 (cons _object151947_ '()))))
                          (declare (not safe))
                          (cons __tmp152416 __tmp152415))))
                   (declare (not safe))
                   (cons __tmp152419 __tmp152414))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp152413))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152412
                                              _stx151908_))))))
                               _hd151915151929_)
                              (let ()
                                (declare (not safe))
                                (_g151911151921_ _g151912151924_)))))
                      (let ()
                        (declare (not safe))
                        (_g151911151921_ _g151912151924_))))))
          (declare (not safe))
          (_g151910151950_ _args151909_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__t152117)
        (let ((__id152118
               (let ((__tmp152119
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t152117 'id))))
                 (if __tmp152119
                     __tmp152119
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self151907_ _stx151908_ _args151909_)
            (let* ((_g151911151921_
                    (lambda (_g151912151918_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g151912151918_))))
                   (_g151910151950_
                    (lambda (_g151912151924_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g151912151924_))
                          (let ((_e151916151926_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g151912151924_))))
                            (let ((_hd151915151929_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e151916151926_)))
                                  (_tl151914151931_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e151916151926_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl151914151931_))
                                  ((lambda (_L151934_)
                                     (let* ((_klass151945_
                                             (let ((__tmp152433
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self151907_
                                                       __id152118
                                                       __t152117
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx151908_
                                                __tmp152433)))
                                            (_object151947_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L151934_))))
                                       (if (##structure-ref
                                            _klass151945_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp152449
                                                  (let ((__tmp152450
                                                         (let ((__tmp152452
                                                                (let ((__tmp152453
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp152454
                                      (##structure-ref
                                       _klass151945_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp152454 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp152453)))
                       (__tmp152451
                        (let ()
                          (declare (not safe))
                          (cons _object151947_ '()))))
                   (declare (not safe))
                   (cons __tmp152452 __tmp152451))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp152450))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152449
                                              _stx151908_))
                                           (if (##structure-ref
                                                _klass151945_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp152443
                                                      (let ((__tmp152444
                                                             (let ((__tmp152446
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp152447
                                   (let ((__tmp152448
                                          (##structure-ref
                                           _klass151945_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp152448 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp152447)))
                           (__tmp152445
                            (let ()
                              (declare (not safe))
                              (cons _object151947_ '()))))
                       (declare (not safe))
                       (cons __tmp152446 __tmp152445))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp152444))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp152443
                                                  _stx151908_))
                                               (let ((__tmp152434
                                                      (let ((__tmp152435
                                                             (let ((__tmp152441
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp152442
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp152442)))
                           (__tmp152436
                            (let ((__tmp152438
                                   (let ((__tmp152439
                                          (let ((__tmp152440
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self151907_
                                                    __id152118
                                                    __t152117
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp152440 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp152439)))
                                  (__tmp152437
                                   (let ()
                                     (declare (not safe))
                                     (cons _object151947_ '()))))
                              (declare (not safe))
                              (cons __tmp152438 __tmp152437))))
                       (declare (not safe))
                       (cons __tmp152441 __tmp152436))))
                (declare (not safe))
                (cons '%#call __tmp152435))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp152434
                                                  _stx151908_))))))
                                   _hd151915151929_)
                                  (let ()
                                    (declare (not safe))
                                    (_g151911151921_ _g151912151924_)))))
                          (let ()
                            (declare (not safe))
                            (_g151911151921_ _g151912151924_))))))
              (declare (not safe))
              (_g151910151950_ _args151909_))))))
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
      (lambda (_self151627_ _stx151628_ _args151629_)
        (let* ((_klass151631_
                (let ((__tmp152455
                       (##structure-ref _self151627_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx151628_ __tmp152455)))
               (_fields151633_
                (length (##structure-ref _klass151631_ '5 gxc#!class::t '#f)))
               (_args151635_ (map gxc#compile-e _args151629_))
               (_inline-make-object151637_
                (let ((__tmp152456
                       (let ((__tmp152462
                              (let ((__tmp152463
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp152463)))
                             (__tmp152457
                              (let ((__tmp152459
                                     (let ((__tmp152460
                                            (let ((__tmp152461
                                                   (##structure-ref
                                                    _self151627_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp152461 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152460)))
                                    (__tmp152458
                                     (let ()
                                       (declare (not safe))
                                       (make-list__%
                                        _fields151633_
                                        '(%#quote #f)))))
                                (declare (not safe))
                                (cons __tmp152459 __tmp152458))))
                         (declare (not safe))
                         (cons __tmp152462 __tmp152457))))
                  (declare (not safe))
                  (cons '%#call __tmp152456))))
          (let ((_$e151640_
                 (##structure-ref _klass151631_ '6 gxc#!class::t '#f)))
            (if _$e151640_
                ((lambda (_ctor151643_)
                   (let ((_$obj151645_
                          (let ((__tmp152563 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp152563)))
                         (_ctor-impl151646_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass151631_
                             _ctor151643_))))
                     (let ((__tmp152564
                            (let ((__tmp152565
                                   (let ((__tmp152633
                                          (let ((__tmp152634
                                                 (let ((__tmp152636
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj151645_
                                                                '())))
                                                       (__tmp152635
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object151637_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp152636
                                                         __tmp152635))))
                                            (declare (not safe))
                                            (cons __tmp152634 '())))
                                         (__tmp152566
                                          (let ((__tmp152567
                                                 (let ((__tmp152568
                                                        (let ((__tmp152572
                                                               (if _ctor-impl151646_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152627
                                  (let ((__tmp152631
                                         (let ((__tmp152632
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl151646_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp152632)))
                                        (__tmp152628
                                         (let ((__tmp152629
                                                (let ((__tmp152630
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj151645_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp152630))))
                                           (declare (not safe))
                                           (cons __tmp152629 _args151635_))))
                                    (declare (not safe))
                                    (cons __tmp152631 __tmp152628))))
                             (declare (not safe))
                             (cons '%#call __tmp152627))
                           (let* ((_$ctor151648_
                                   (let ((__tmp152573 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp152573)))
                                  (__tmp152574
                                   (let ((__tmp152609
                                          (let ((__tmp152610
                                                 (let ((__tmp152626
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor151648_
                                                                '())))
                                                       (__tmp152611
                                                        (let ((__tmp152612
                                                               (let ((__tmp152613
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp152624
                                     (let ((__tmp152625
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152625)))
                                    (__tmp152614
                                     (let ((__tmp152621
                                            (let ((__tmp152622
                                                   (let ((__tmp152623
                                                          (##structure-ref
                                                           _self151627_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp152623 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp152622)))
                                           (__tmp152615
                                            (let ((__tmp152619
                                                   (let ((__tmp152620
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj151645_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152620)))
                                                  (__tmp152616
                                                   (let ((__tmp152617
                                                          (let ((__tmp152618
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _ctor151643_ '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp152618))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152617 '()))))
                                              (declare (not safe))
                                              (cons __tmp152619 __tmp152616))))
                                       (declare (not safe))
                                       (cons __tmp152621 __tmp152615))))
                                (declare (not safe))
                                (cons __tmp152624 __tmp152614))))
                         (declare (not safe))
                         (cons '%#call __tmp152613))))
                  (declare (not safe))
                  (cons __tmp152612 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp152626
                                                         __tmp152611))))
                                            (declare (not safe))
                                            (cons __tmp152610 '())))
                                         (__tmp152575
                                          (let ((__tmp152576
                                                 (let ((__tmp152577
                                                        (let ((__tmp152607
                                                               (let ((__tmp152608
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor151648_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp152608)))
                      (__tmp152578
                       (let ((__tmp152600
                              (let ((__tmp152601
                                     (let ((__tmp152605
                                            (let ((__tmp152606
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor151648_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp152606)))
                                           (__tmp152602
                                            (let ((__tmp152603
                                                   (let ((__tmp152604
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj151645_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152604))))
                                              (declare (not safe))
                                              (cons __tmp152603
                                                    _args151635_))))
                                       (declare (not safe))
                                       (cons __tmp152605 __tmp152602))))
                                (declare (not safe))
                                (cons '%#call __tmp152601)))
                             (__tmp152579
                              (let ((__tmp152580
                                     (let ((__tmp152581
                                            (let ((__tmp152598
                                                   (let ((__tmp152599
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152599)))
                                                  (__tmp152582
                                                   (let ((__tmp152596
                                                          (let ((__tmp152597
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp152597)))
                 (__tmp152583
                  (let ((__tmp152594
                         (let ((__tmp152595
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp152595)))
                        (__tmp152584
                         (let ((__tmp152591
                                (let ((__tmp152592
                                       (let ((__tmp152593
                                              (##structure-ref
                                               _self151627_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp152593 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp152592)))
                               (__tmp152585
                                (let ((__tmp152589
                                       (let ((__tmp152590
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp152590)))
                                      (__tmp152586
                                       (let ((__tmp152587
                                              (let ((__tmp152588
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor151643_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp152588))))
                                         (declare (not safe))
                                         (cons __tmp152587 '()))))
                                  (declare (not safe))
                                  (cons __tmp152589 __tmp152586))))
                           (declare (not safe))
                           (cons __tmp152591 __tmp152585))))
                    (declare (not safe))
                    (cons __tmp152594 __tmp152584))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152596
                                                           __tmp152583))))
                                              (declare (not safe))
                                              (cons __tmp152598 __tmp152582))))
                                       (declare (not safe))
                                       (cons '%#call __tmp152581))))
                                (declare (not safe))
                                (cons __tmp152580 '()))))
                         (declare (not safe))
                         (cons __tmp152600 __tmp152579))))
                  (declare (not safe))
                  (cons __tmp152607 __tmp152578))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp152577))))
                                            (declare (not safe))
                                            (cons __tmp152576 '()))))
                                     (declare (not safe))
                                     (cons __tmp152609 __tmp152575))))
                             (declare (not safe))
                             (cons '%#let-values __tmp152574))))
                      (__tmp152569
                       (let ((__tmp152570
                              (let ((__tmp152571
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj151645_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp152571))))
                         (declare (not safe))
                         (cons __tmp152570 '()))))
                  (declare (not safe))
                  (cons __tmp152572 __tmp152569))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp152568))))
                                            (declare (not safe))
                                            (cons __tmp152567 '()))))
                                     (declare (not safe))
                                     (cons __tmp152633 __tmp152566))))
                              (declare (not safe))
                              (cons '%#let-values __tmp152565))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp152564 _stx151628_))))
                 _$e151640_)
                (let ((_$e151650_
                       (##structure-ref _klass151631_ '9 gxc#!class::t '#f)))
                  (if _$e151650_
                      ((lambda (_metaclass151653_)
                         (let* ((_$obj151655_
                                 (let ((__tmp152525 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp152525)))
                                (_metakons151657_
                                 (let ((__tmp152526
                                        (let ()
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           _stx151628_
                                           _metaclass151653_))))
                                   (declare (not safe))
                                   (gxc#!class-lookup-method
                                    __tmp152526
                                    'instance-init!))))
                           (let ((__tmp152527
                                  (let ((__tmp152528
                                         (let ((__tmp152559
                                                (let ((__tmp152560
                                                       (let ((__tmp152562
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj151655_ '())))
                     (__tmp152561
                      (let ()
                        (declare (not safe))
                        (cons _inline-make-object151637_ '()))))
                 (declare (not safe))
                 (cons __tmp152562 __tmp152561))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152560 '())))
                                               (__tmp152529
                                                (let ((__tmp152530
                                                       (let ((__tmp152531
                                                              (let ((__tmp152535
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if _metakons151657_
                                 (let ((__tmp152549
                                        (let ((__tmp152557
                                               (let ((__tmp152558
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metakons151657_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp152558)))
                                              (__tmp152550
                                               (let ((__tmp152554
                                                      (let ((__tmp152555
                                                             (let ((__tmp152556
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self151627_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp152556 '()))))
                (declare (not safe))
                (cons '%#ref __tmp152555)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp152551
                                                      (let ((__tmp152552
                                                             (let ((__tmp152553
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _$obj151655_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp152553))))
                (declare (not safe))
                (cons __tmp152552 _args151635_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp152554
                                                       __tmp152551))))
                                          (declare (not safe))
                                          (cons __tmp152557 __tmp152550))))
                                   (declare (not safe))
                                   (cons '%#call __tmp152549))
                                 (let ((__tmp152536
                                        (let ((__tmp152547
                                               (let ((__tmp152548
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'call-method
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp152548)))
                                              (__tmp152537
                                               (let ((__tmp152544
                                                      (let ((__tmp152545
                                                             (let ((__tmp152546
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self151627_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp152546 '()))))
                (declare (not safe))
                (cons '%#ref __tmp152545)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp152538
                                                      (let ((__tmp152542
                                                             (let ((__tmp152543
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'instance-init! '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp152543)))
                    (__tmp152539
                     (let ((__tmp152540
                            (let ((__tmp152541
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj151655_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp152541))))
                       (declare (not safe))
                       (cons __tmp152540 _args151635_))))
                (declare (not safe))
                (cons __tmp152542 __tmp152539))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp152544
                                                       __tmp152538))))
                                          (declare (not safe))
                                          (cons __tmp152547 __tmp152537))))
                                   (declare (not safe))
                                   (cons '%#call __tmp152536))))
                            (__tmp152532
                             (let ((__tmp152533
                                    (let ((__tmp152534
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj151655_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp152534))))
                               (declare (not safe))
                               (cons __tmp152533 '()))))
                        (declare (not safe))
                        (cons __tmp152535 __tmp152532))))
                 (declare (not safe))
                 (cons '%#begin __tmp152531))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152530 '()))))
                                           (declare (not safe))
                                           (cons __tmp152559 __tmp152529))))
                                    (declare (not safe))
                                    (cons '%#let-values __tmp152528))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp152527 _stx151628_))))
                       _$e151650_)
                      (if (##structure-ref _klass151631_ '7 gxc#!class::t '#f)
                          (if (fx= (length _args151635_) _fields151633_)
                              (let ((__tmp152517
                                     (let ((__tmp152518
                                            (let ((__tmp152523
                                                   (let ((__tmp152524
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152524)))
                                                  (__tmp152519
                                                   (let ((__tmp152520
                                                          (let ((__tmp152521
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp152522
                                (##structure-ref
                                 _self151627_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp152522 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp152521))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152520
                                                           _args151635_))))
                                              (declare (not safe))
                                              (cons __tmp152523 __tmp152519))))
                                       (declare (not safe))
                                       (cons '%#call __tmp152518))))
                                (declare (not safe))
                                (gxc#xform-wrap-source
                                 __tmp152517
                                 _stx151628_))
                              (let ((__tmp152516
                                     (##structure-ref
                                      _self151627_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                    (__tmp152515
                                     (length (##structure-ref
                                              _klass151631_
                                              '5
                                              gxc#!class::t
                                              '#f))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"illegal struct constructor application; arity mismatch"
                                 _stx151628_
                                 __tmp152516
                                 __tmp152515)))
                          (let ((_$obj151660_
                                 (let ((__tmp152464 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp152464))))
                            (let _lp151662_ ((_rest151664_ _args151635_)
                                             (_initializers151665_ '()))
                              (let* ((___stx152194152195_ _rest151664_)
                                     (_g151669151690_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx152194152195_)))))
                                (let ((___kont152196152197_
                                       (lambda (_L151744_ _L151745_ _L151746_)
                                         (let* ((_slot151777_
                                                 (keyword->symbol
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e _L151746_))))
                                                (_off151779_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass151631_
                                                    _slot151777_))))
                                           (if _off151779_
                                               (let ((__tmp152466
                                                      (let ((__tmp152467
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off151779_ _L151745_))))
                (declare (not safe))
                (cons __tmp152467 _initializers151665_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp151662_
                                                  _L151744_
                                                  __tmp152466))
                                               (let ((__tmp152465
                                                      (##structure-ref
                                                       _self151627_
                                                       '1
                                                       gxc#!type::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"unknown slot"
                                                  _stx151628_
                                                  __tmp152465
                                                  _slot151777_))))))
                                      (___kont152198152199_
                                       (lambda ()
                                         (let ((__tmp152468
                                                (let ((__tmp152469
                                                       (let ((__tmp152492
                                                              (let ((__tmp152493
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp152495
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj151660_ '())))
                                   (__tmp152494
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object151637_ '()))))
                               (declare (not safe))
                               (cons __tmp152495 __tmp152494))))
                        (declare (not safe))
                        (cons __tmp152493 '())))
                     (__tmp152470
                      (let ((__tmp152471
                             (let ((__tmp152472
                                    (let ((__tmp152489
                                           (let ((__tmp152490
                                                  (let ((__tmp152491
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj151660_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp152491))))
                                             (declare (not safe))
                                             (cons __tmp152490 '())))
                                          (__tmp152473
                                           (let ((__tmp152474
                                                  (lambda (_i151704_ _r151705_)
                                                    (let ((__tmp152475
                                                           (let ((__tmp152476
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp152486
                                 (let ((__tmp152487
                                        (let ((__tmp152488
                                               (##structure-ref
                                                _self151627_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp152488 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp152487)))
                                (__tmp152477
                                 (let ((__tmp152483
                                        (let ((__tmp152484
                                               (let ((__tmp152485
                                                      (car _i151704_)))
                                                 (declare (not safe))
                                                 (cons __tmp152485 '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp152484)))
                                       (__tmp152478
                                        (let ((__tmp152481
                                               (let ((__tmp152482
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _$obj151660_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp152482)))
                                              (__tmp152479
                                               (let ((__tmp152480
                                                      (cdr _i151704_)))
                                                 (declare (not safe))
                                                 (cons __tmp152480 '()))))
                                          (declare (not safe))
                                          (cons __tmp152481 __tmp152479))))
                                   (declare (not safe))
                                   (cons __tmp152483 __tmp152478))))
                            (declare (not safe))
                            (cons __tmp152486 __tmp152477))))
                     (declare (not safe))
                     (cons '%#struct-unchecked-set! __tmp152476))))
              (declare (not safe))
              (cons __tmp152475 _r151705_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (foldl1 __tmp152474
                                                     '()
                                                     _initializers151665_))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp152489 __tmp152473))))
                               (declare (not safe))
                               (cons '%#begin __tmp152472))))
                        (declare (not safe))
                        (cons __tmp152471 '()))))
                 (declare (not safe))
                 (cons __tmp152492 __tmp152470))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp152469))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp152468
                                            _stx151628_))))
                                      (___kont152200152201_
                                       (lambda ()
                                         (let ((__tmp152496
                                                (let ((__tmp152497
                                                       (let ((__tmp152511
                                                              (let ((__tmp152512
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp152514
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj151660_ '())))
                                   (__tmp152513
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object151637_ '()))))
                               (declare (not safe))
                               (cons __tmp152514 __tmp152513))))
                        (declare (not safe))
                        (cons __tmp152512 '())))
                     (__tmp152498
                      (let ((__tmp152499
                             (let ((__tmp152500
                                    (let ((__tmp152504
                                           (let ((__tmp152505
                                                  (let ((__tmp152509
                                                         (let ((__tmp152510
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'class-instance-init! '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp152510)))
                (__tmp152506
                 (let ((__tmp152507
                        (let ((__tmp152508
                               (let ()
                                 (declare (not safe))
                                 (cons _$obj151660_ '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp152508))))
                   (declare (not safe))
                   (cons __tmp152507 _args151635_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp152509
                                                          __tmp152506))))
                                             (declare (not safe))
                                             (cons '%#call __tmp152505)))
                                          (__tmp152501
                                           (let ((__tmp152502
                                                  (let ((__tmp152503
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj151660_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp152503))))
                                             (declare (not safe))
                                             (cons __tmp152502 '()))))
                                      (declare (not safe))
                                      (cons __tmp152504 __tmp152501))))
                               (declare (not safe))
                               (cons '%#begin __tmp152500))))
                        (declare (not safe))
                        (cons __tmp152499 '()))))
                 (declare (not safe))
                 (cons __tmp152511 __tmp152498))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp152497))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp152496
                                            _stx151628_)))))
                                  (let* ((_g151667151707_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   ___stx152194152195_))
                                                (___kont152198152199_)
                                                (___kont152200152201_))))
                                         (___match152231152232_
                                          (lambda (_e151676151712_
                                                   _hd151675151715_
                                                   _tl151674151717_
                                                   _e151679151720_
                                                   _hd151678151723_
                                                   _tl151677151725_
                                                   _e151682151728_
                                                   _hd151681151731_
                                                   _tl151680151733_
                                                   _e151685151736_
                                                   _hd151684151739_
                                                   _tl151683151741_)
                                            (let ((_L151744_ _tl151683151741_)
                                                  (_L151745_ _hd151684151739_)
                                                  (_L151746_ _hd151681151731_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-keyword?
                                                     _L151746_))
                                                  (___kont152196152197_
                                                   _L151744_
                                                   _L151745_
                                                   _L151746_)
                                                  (___kont152200152201_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx152194152195_))
                                        (let ((_e151676151712_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx152194152195_))))
                                          (let ((_tl151674151717_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e151676151712_)))
                                                (_hd151675151715_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e151676151712_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd151675151715_))
                                                (let ((_e151679151720_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd151675151715_))))
                                                  (let ((_tl151677151725_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e151679151720_)))
                                                        (_hd151678151723_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e151679151720_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd151678151723_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#quote
                                                               _hd151678151723_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl151677151725_))
                        (let ((_e151682151728_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl151677151725_))))
                          (let ((_tl151680151733_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e151682151728_)))
                                (_hd151681151731_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e151682151728_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl151680151733_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl151674151717_))
                                    (let ((_e151685151736_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl151674151717_))))
                                      (let ((_tl151683151741_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e151685151736_)))
                                            (_hd151684151739_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e151685151736_))))
                                        (___match152231152232_
                                         _e151676151712_
                                         _hd151675151715_
                                         _tl151674151717_
                                         _e151679151720_
                                         _hd151678151723_
                                         _tl151677151725_
                                         _e151682151728_
                                         _hd151681151731_
                                         _tl151680151733_
                                         _e151685151736_
                                         _hd151684151739_
                                         _tl151683151741_)))
                                    (___kont152200152201_))
                                (___kont152200152201_))))
                        (___kont152200152201_))
                    (___kont152200152201_))
                (___kont152200152201_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont152200152201_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g151667151707_))))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__t152120)
        (let ((__id152121
               (let ((__tmp152122
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t152120 'id))))
                 (if __tmp152122
                     __tmp152122
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self151627_ _stx151628_ _args151629_)
            (let* ((_klass151631_
                    (let ((__tmp152637
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self151627_
                              __id152121
                              __t152120
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx151628_ __tmp152637)))
                   (_fields151633_
                    (length (##structure-ref
                             _klass151631_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args151635_ (map gxc#compile-e _args151629_))
                   (_inline-make-object151637_
                    (let ((__tmp152638
                           (let ((__tmp152644
                                  (let ((__tmp152645
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp152645)))
                                 (__tmp152639
                                  (let ((__tmp152641
                                         (let ((__tmp152642
                                                (let ((__tmp152643
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self151627_
                                                          __id152121
                                                          __t152120
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp152643 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp152642)))
                                        (__tmp152640
                                         (let ()
                                           (declare (not safe))
                                           (make-list__%
                                            _fields151633_
                                            '(%#quote #f)))))
                                    (declare (not safe))
                                    (cons __tmp152641 __tmp152640))))
                             (declare (not safe))
                             (cons __tmp152644 __tmp152639))))
                      (declare (not safe))
                      (cons '%#call __tmp152638))))
              (let ((_$e151640_
                     (##structure-ref _klass151631_ '6 gxc#!class::t '#f)))
                (if _$e151640_
                    ((lambda (_ctor151643_)
                       (let ((_$obj151645_
                              (let ((__tmp152745 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp152745)))
                             (_ctor-impl151646_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass151631_
                                 _ctor151643_))))
                         (let ((__tmp152746
                                (let ((__tmp152747
                                       (let ((__tmp152815
                                              (let ((__tmp152816
                                                     (let ((__tmp152818
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj151645_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp152817
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object151637_ '()))))
               (declare (not safe))
               (cons __tmp152818 __tmp152817))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp152816 '())))
                                             (__tmp152748
                                              (let ((__tmp152749
                                                     (let ((__tmp152750
                                                            (let ((__tmp152754
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl151646_
                               (let ((__tmp152809
                                      (let ((__tmp152813
                                             (let ((__tmp152814
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl151646_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp152814)))
                                            (__tmp152810
                                             (let ((__tmp152811
                                                    (let ((__tmp152812
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj151645_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp152812))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp152811
                                                     _args151635_))))
                                        (declare (not safe))
                                        (cons __tmp152813 __tmp152810))))
                                 (declare (not safe))
                                 (cons '%#call __tmp152809))
                               (let* ((_$ctor151648_
                                       (let ((__tmp152755
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp152755)))
                                      (__tmp152756
                                       (let ((__tmp152791
                                              (let ((__tmp152792
                                                     (let ((__tmp152808
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor151648_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp152793
                    (let ((__tmp152794
                           (let ((__tmp152795
                                  (let ((__tmp152806
                                         (let ((__tmp152807
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp152807)))
                                        (__tmp152796
                                         (let ((__tmp152803
                                                (let ((__tmp152804
                                                       (let ((__tmp152805
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self151627_
                         __id152121
                         __t152120
                         '#f))))
                 (declare (not safe))
                 (cons __tmp152805 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp152804)))
                                               (__tmp152797
                                                (let ((__tmp152801
                                                       (let ((__tmp152802
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj151645_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152802)))
              (__tmp152798
               (let ((__tmp152799
                      (let ((__tmp152800
                             (let ()
                               (declare (not safe))
                               (cons _ctor151643_ '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp152800))))
                 (declare (not safe))
                 (cons __tmp152799 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152801
                                                        __tmp152798))))
                                           (declare (not safe))
                                           (cons __tmp152803 __tmp152797))))
                                    (declare (not safe))
                                    (cons __tmp152806 __tmp152796))))
                             (declare (not safe))
                             (cons '%#call __tmp152795))))
                      (declare (not safe))
                      (cons __tmp152794 '()))))
               (declare (not safe))
               (cons __tmp152808 __tmp152793))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp152792 '())))
                                             (__tmp152757
                                              (let ((__tmp152758
                                                     (let ((__tmp152759
                                                            (let ((__tmp152789
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152790
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor151648_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp152790)))
                          (__tmp152760
                           (let ((__tmp152782
                                  (let ((__tmp152783
                                         (let ((__tmp152787
                                                (let ((__tmp152788
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor151648_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp152788)))
                                               (__tmp152784
                                                (let ((__tmp152785
                                                       (let ((__tmp152786
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj151645_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152786))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152785
                                                        _args151635_))))
                                           (declare (not safe))
                                           (cons __tmp152787 __tmp152784))))
                                    (declare (not safe))
                                    (cons '%#call __tmp152783)))
                                 (__tmp152761
                                  (let ((__tmp152762
                                         (let ((__tmp152763
                                                (let ((__tmp152780
                                                       (let ((__tmp152781
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152781)))
              (__tmp152764
               (let ((__tmp152778
                      (let ((__tmp152779
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp152779)))
                     (__tmp152765
                      (let ((__tmp152776
                             (let ((__tmp152777
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp152777)))
                            (__tmp152766
                             (let ((__tmp152773
                                    (let ((__tmp152774
                                           (let ((__tmp152775
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self151627_
                                                     __id152121
                                                     __t152120
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp152775 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp152774)))
                                   (__tmp152767
                                    (let ((__tmp152771
                                           (let ((__tmp152772
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp152772)))
                                          (__tmp152768
                                           (let ((__tmp152769
                                                  (let ((__tmp152770
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor151643_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp152770))))
                                             (declare (not safe))
                                             (cons __tmp152769 '()))))
                                      (declare (not safe))
                                      (cons __tmp152771 __tmp152768))))
                               (declare (not safe))
                               (cons __tmp152773 __tmp152767))))
                        (declare (not safe))
                        (cons __tmp152776 __tmp152766))))
                 (declare (not safe))
                 (cons __tmp152778 __tmp152765))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152780
                                                        __tmp152764))))
                                           (declare (not safe))
                                           (cons '%#call __tmp152763))))
                                    (declare (not safe))
                                    (cons __tmp152762 '()))))
                             (declare (not safe))
                             (cons __tmp152782 __tmp152761))))
                      (declare (not safe))
                      (cons __tmp152789 __tmp152760))))
               (declare (not safe))
               (cons '%#if __tmp152759))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp152758 '()))))
                                         (declare (not safe))
                                         (cons __tmp152791 __tmp152757))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp152756))))
                          (__tmp152751
                           (let ((__tmp152752
                                  (let ((__tmp152753
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj151645_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp152753))))
                             (declare (not safe))
                             (cons __tmp152752 '()))))
                      (declare (not safe))
                      (cons __tmp152754 __tmp152751))))
               (declare (not safe))
               (cons '%#begin __tmp152750))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp152749 '()))))
                                         (declare (not safe))
                                         (cons __tmp152815 __tmp152748))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp152747))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp152746 _stx151628_))))
                     _$e151640_)
                    (let ((_$e151650_
                           (##structure-ref
                            _klass151631_
                            '9
                            gxc#!class::t
                            '#f)))
                      (if _$e151650_
                          ((lambda (_metaclass151653_)
                             (let* ((_$obj151655_
                                     (let ((__tmp152707 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp152707)))
                                    (_metakons151657_
                                     (let ((__tmp152708
                                            (let ()
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               _stx151628_
                                               _metaclass151653_))))
                                       (declare (not safe))
                                       (gxc#!class-lookup-method
                                        __tmp152708
                                        'instance-init!))))
                               (let ((__tmp152709
                                      (let ((__tmp152710
                                             (let ((__tmp152741
                                                    (let ((__tmp152742
                                                           (let ((__tmp152744
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj151655_ '())))
                         (__tmp152743
                          (let ()
                            (declare (not safe))
                            (cons _inline-make-object151637_ '()))))
                     (declare (not safe))
                     (cons __tmp152744 __tmp152743))))
              (declare (not safe))
              (cons __tmp152742 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp152711
                                                    (let ((__tmp152712
                                                           (let ((__tmp152713
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp152717
                                 (if _metakons151657_
                                     (let ((__tmp152731
                                            (let ((__tmp152739
                                                   (let ((__tmp152740
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _metakons151657_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152740)))
                                                  (__tmp152732
                                                   (let ((__tmp152736
                                                          (let ((__tmp152737
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp152738
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self151627_
                                   __id152121
                                   __t152120
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp152738 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp152737)))
                 (__tmp152733
                  (let ((__tmp152734
                         (let ((__tmp152735
                                (let ()
                                  (declare (not safe))
                                  (cons _$obj151655_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp152735))))
                    (declare (not safe))
                    (cons __tmp152734 _args151635_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152736
                                                           __tmp152733))))
                                              (declare (not safe))
                                              (cons __tmp152739 __tmp152732))))
                                       (declare (not safe))
                                       (cons '%#call __tmp152731))
                                     (let ((__tmp152718
                                            (let ((__tmp152729
                                                   (let ((__tmp152730
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'call-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152730)))
                                                  (__tmp152719
                                                   (let ((__tmp152726
                                                          (let ((__tmp152727
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp152728
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self151627_
                                   __id152121
                                   __t152120
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp152728 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp152727)))
                 (__tmp152720
                  (let ((__tmp152724
                         (let ((__tmp152725
                                (let ()
                                  (declare (not safe))
                                  (cons 'instance-init! '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp152725)))
                        (__tmp152721
                         (let ((__tmp152722
                                (let ((__tmp152723
                                       (let ()
                                         (declare (not safe))
                                         (cons _$obj151655_ '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp152723))))
                           (declare (not safe))
                           (cons __tmp152722 _args151635_))))
                    (declare (not safe))
                    (cons __tmp152724 __tmp152721))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152726
                                                           __tmp152720))))
                                              (declare (not safe))
                                              (cons __tmp152729 __tmp152719))))
                                       (declare (not safe))
                                       (cons '%#call __tmp152718))))
                                (__tmp152714
                                 (let ((__tmp152715
                                        (let ((__tmp152716
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$obj151655_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp152716))))
                                   (declare (not safe))
                                   (cons __tmp152715 '()))))
                            (declare (not safe))
                            (cons __tmp152717 __tmp152714))))
                     (declare (not safe))
                     (cons '%#begin __tmp152713))))
              (declare (not safe))
              (cons __tmp152712 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp152741
                                                     __tmp152711))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp152710))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp152709
                                  _stx151628_))))
                           _$e151650_)
                          (if (##structure-ref
                               _klass151631_
                               '7
                               gxc#!class::t
                               '#f)
                              (if (fx= (length _args151635_) _fields151633_)
                                  (let ((__tmp152699
                                         (let ((__tmp152700
                                                (let ((__tmp152705
                                                       (let ((__tmp152706
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '##structure '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152706)))
              (__tmp152701
               (let ((__tmp152702
                      (let ((__tmp152703
                             (let ((__tmp152704
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self151627_
                                       __id152121
                                       __t152120
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp152704 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp152703))))
                 (declare (not safe))
                 (cons __tmp152702 _args151635_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152705
                                                        __tmp152701))))
                                           (declare (not safe))
                                           (cons '%#call __tmp152700))))
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp152699
                                     _stx151628_))
                                  (let ((__tmp152698
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _self151627_
                                            __id152121
                                            __t152120
                                            '#f)))
                                        (__tmp152697
                                         (length (##structure-ref
                                                  _klass151631_
                                                  '5
                                                  gxc#!class::t
                                                  '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _stx151628_
                                     __tmp152698
                                     __tmp152697)))
                              (let ((_$obj151660_
                                     (let ((__tmp152646 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp152646))))
                                (let _lp151662_ ((_rest151664_ _args151635_)
                                                 (_initializers151665_ '()))
                                  (let* ((___stx152236152237_ _rest151664_)
                                         (_g151669151690_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               ___stx152236152237_)))))
                                    (let ((___kont152238152239_
                                           (lambda (_L151744_
                                                    _L151745_
                                                    _L151746_)
                                             (let* ((_slot151777_
                                                     (keyword->symbol
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L151746_))))
                                                    (_off151779_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass151631_
                                                        _slot151777_))))
                                               (if _off151779_
                                                   (let ((__tmp152648
                                                          (let ((__tmp152649
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _off151779_ _L151745_))))
                    (declare (not safe))
                    (cons __tmp152649 _initializers151665_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp151662_
                                                      _L151744_
                                                      __tmp152648))
                                                   (let ((__tmp152647
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _self151627_
                                                             __id152121
                                                             __t152120
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"unknown slot"
                                                      _stx151628_
                                                      __tmp152647
                                                      _slot151777_))))))
                                          (___kont152240152241_
                                           (lambda ()
                                             (let ((__tmp152650
                                                    (let ((__tmp152651
                                                           (let ((__tmp152674
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp152675
                                 (let ((__tmp152677
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj151660_ '())))
                                       (__tmp152676
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object151637_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp152677 __tmp152676))))
                            (declare (not safe))
                            (cons __tmp152675 '())))
                         (__tmp152652
                          (let ((__tmp152653
                                 (let ((__tmp152654
                                        (let ((__tmp152671
                                               (let ((__tmp152672
                                                      (let ((__tmp152673
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj151660_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp152673))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp152672 '())))
                                              (__tmp152655
                                               (let ((__tmp152656
                                                      (lambda (_i151704_
                                                               _r151705_)
                                                        (let ((__tmp152657
                                                               (let ((__tmp152658
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp152668
                                     (let ((__tmp152669
                                            (let ((__tmp152670
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self151627_
                                                      __id152121
                                                      __t152120
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp152670 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152669)))
                                    (__tmp152659
                                     (let ((__tmp152665
                                            (let ((__tmp152666
                                                   (let ((__tmp152667
                                                          (car _i151704_)))
                                                     (declare (not safe))
                                                     (cons __tmp152667 '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp152666)))
                                           (__tmp152660
                                            (let ((__tmp152663
                                                   (let ((__tmp152664
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj151660_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152664)))
                                                  (__tmp152661
                                                   (let ((__tmp152662
                                                          (cdr _i151704_)))
                                                     (declare (not safe))
                                                     (cons __tmp152662 '()))))
                                              (declare (not safe))
                                              (cons __tmp152663 __tmp152661))))
                                       (declare (not safe))
                                       (cons __tmp152665 __tmp152660))))
                                (declare (not safe))
                                (cons __tmp152668 __tmp152659))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp152658))))
                  (declare (not safe))
                  (cons __tmp152657 _r151705_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl1 __tmp152656
                                                         '()
                                                         _initializers151665_))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp152671
                                                  __tmp152655))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp152654))))
                            (declare (not safe))
                            (cons __tmp152653 '()))))
                     (declare (not safe))
                     (cons __tmp152674 __tmp152652))))
              (declare (not safe))
              (cons '%#let-values __tmp152651))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp152650
                                                _stx151628_))))
                                          (___kont152242152243_
                                           (lambda ()
                                             (let ((__tmp152678
                                                    (let ((__tmp152679
                                                           (let ((__tmp152693
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp152694
                                 (let ((__tmp152696
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj151660_ '())))
                                       (__tmp152695
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object151637_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp152696 __tmp152695))))
                            (declare (not safe))
                            (cons __tmp152694 '())))
                         (__tmp152680
                          (let ((__tmp152681
                                 (let ((__tmp152682
                                        (let ((__tmp152686
                                               (let ((__tmp152687
                                                      (let ((__tmp152691
                                                             (let ((__tmp152692
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'class-instance-init! '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp152692)))
                    (__tmp152688
                     (let ((__tmp152689
                            (let ((__tmp152690
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj151660_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp152690))))
                       (declare (not safe))
                       (cons __tmp152689 _args151635_))))
                (declare (not safe))
                (cons __tmp152691 __tmp152688))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp152687)))
                                              (__tmp152683
                                               (let ((__tmp152684
                                                      (let ((__tmp152685
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj151660_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp152685))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp152684 '()))))
                                          (declare (not safe))
                                          (cons __tmp152686 __tmp152683))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp152682))))
                            (declare (not safe))
                            (cons __tmp152681 '()))))
                     (declare (not safe))
                     (cons __tmp152693 __tmp152680))))
              (declare (not safe))
              (cons '%#let-values __tmp152679))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp152678
                                                _stx151628_)))))
                                      (let* ((_g151667151707_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       ___stx152236152237_))
                                                    (___kont152240152241_)
                                                    (___kont152242152243_))))
                                             (___match152273152274_
                                              (lambda (_e151676151712_
                                                       _hd151675151715_
                                                       _tl151674151717_
                                                       _e151679151720_
                                                       _hd151678151723_
                                                       _tl151677151725_
                                                       _e151682151728_
                                                       _hd151681151731_
                                                       _tl151680151733_
                                                       _e151685151736_
                                                       _hd151684151739_
                                                       _tl151683151741_)
                                                (let ((_L151744_
                                                       _tl151683151741_)
                                                      (_L151745_
                                                       _hd151684151739_)
                                                      (_L151746_
                                                       _hd151681151731_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-keyword?
                                                         _L151746_))
                                                      (___kont152238152239_
                                                       _L151744_
                                                       _L151745_
                                                       _L151746_)
                                                      (___kont152242152243_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               ___stx152236152237_))
                                            (let ((_e151676151712_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      ___stx152236152237_))))
                                              (let ((_tl151674151717_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e151676151712_)))
                                                    (_hd151675151715_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e151676151712_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd151675151715_))
                                                    (let ((_e151679151720_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd151675151715_))))
                                                      (let ((_tl151677151725_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e151679151720_)))
                    (_hd151678151723_
                     (let () (declare (not safe)) (##car _e151679151720_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd151678151723_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd151678151723_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl151677151725_))
                            (let ((_e151682151728_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl151677151725_))))
                              (let ((_tl151680151733_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e151682151728_)))
                                    (_hd151681151731_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e151682151728_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl151680151733_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl151674151717_))
                                        (let ((_e151685151736_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl151674151717_))))
                                          (let ((_tl151683151741_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e151685151736_)))
                                                (_hd151684151739_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e151685151736_))))
                                            (___match152273152274_
                                             _e151676151712_
                                             _hd151675151715_
                                             _tl151674151717_
                                             _e151679151720_
                                             _hd151678151723_
                                             _tl151677151725_
                                             _e151682151728_
                                             _hd151681151731_
                                             _tl151680151733_
                                             _e151685151736_
                                             _hd151684151739_
                                             _tl151683151741_)))
                                        (___kont152242152243_))
                                    (___kont152242152243_))))
                            (___kont152242152243_))
                        (___kont152242152243_))
                    (___kont152242152243_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont152242152243_))))
                                            (let ()
                                              (declare (not safe))
                                              (_g151667151707_))))))))))))))))))
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
      (lambda (_self151450_ _stx151451_ _args151452_)
        (let* ((_g151454151464_
                (lambda (_g151455151461_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g151455151461_))))
               (_g151453151502_
                (lambda (_g151455151467_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g151455151467_))
                      (let ((_e151459151469_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g151455151467_))))
                        (let ((_hd151458151472_
                               (let ()
                                 (declare (not safe))
                                 (##car _e151459151469_)))
                              (_tl151457151474_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e151459151469_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl151457151474_))
                              ((lambda (_L151477_)
                                 (let* ((_klass151488_
                                         (let ((__tmp152819
                                                (##structure-ref
                                                 _self151450_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx151451_
                                            __tmp152819)))
                                        (_field151490_
                                         (let ((__tmp152820
                                                (##structure-ref
                                                 _self151450_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass151488_
                                            __tmp152820)))
                                        (_object151492_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L151477_))))
                                   (if (##structure-ref
                                        _klass151488_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp152897
                                              (let ((__tmp152906
                                                     (if (##structure-ref
                                                          _self151450_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp152898
                                                     (let ((__tmp152903
                                                            (let ((__tmp152904
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152905
                                  (##structure-ref
                                   _self151450_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp152905 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp152904)))
                   (__tmp152899
                    (let ((__tmp152901
                           (let ((__tmp152902
                                  (let ()
                                    (declare (not safe))
                                    (cons _field151490_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp152902)))
                          (__tmp152900
                           (let ()
                             (declare (not safe))
                             (cons _object151492_ '()))))
                      (declare (not safe))
                      (cons __tmp152901 __tmp152900))))
               (declare (not safe))
               (cons __tmp152903 __tmp152899))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp152906
                                                      __tmp152898))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp152897
                                          _stx151451_))
                                       (if (##structure-ref
                                            _klass151488_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp152887
                                                  (let ((__tmp152896
                                                         (if (##structure-ref
                                                              _self151450_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp152888
                                                         (let ((__tmp152893
                                                                (let ((__tmp152894
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp152895
                                      (##structure-ref
                                       _self151450_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp152895 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp152894)))
                       (__tmp152889
                        (let ((__tmp152891
                               (let ((__tmp152892
                                      (let ()
                                        (declare (not safe))
                                        (cons _field151490_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp152892)))
                              (__tmp152890
                               (let ()
                                 (declare (not safe))
                                 (cons _object151492_ '()))))
                          (declare (not safe))
                          (cons __tmp152891 __tmp152890))))
                   (declare (not safe))
                   (cons __tmp152893 __tmp152889))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp152896
                                                          __tmp152888))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152887
                                              _stx151451_))
                                           (let ((_$e151495_
                                                  (let ((__tmp152821
                                                         (##structure-ref
                                                          _self151450_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass151488_
                                                     __tmp152821))))
                                             (if _$e151495_
                                                 ((lambda (_klass151498_)
                                                    (let ((__tmp152877
                                                           (let ((__tmp152886
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self151450_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp152878
                          (let ((__tmp152883
                                 (let ((__tmp152884
                                        (let ((__tmp152885
                                               (##structure-ref
                                                _self151450_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp152885 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp152884)))
                                (__tmp152879
                                 (let ((__tmp152881
                                        (let ((__tmp152882
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field151490_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp152882)))
                                       (__tmp152880
                                        (let ()
                                          (declare (not safe))
                                          (cons _object151492_ '()))))
                                   (declare (not safe))
                                   (cons __tmp152881 __tmp152880))))
                            (declare (not safe))
                            (cons __tmp152883 __tmp152879))))
                     (declare (not safe))
                     (cons __tmp152886 __tmp152878))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp152877 _stx151451_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e151495_)
                                                 (if (##structure-ref
                                                      _self151450_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp152831
                                                            (let* ((_$obj151500_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp152832 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp152832)))
                           (__tmp152833
                            (let ((__tmp152873
                                   (let ((__tmp152874
                                          (let ((__tmp152876
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj151500_ '())))
                                                (__tmp152875
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object151492_ '()))))
                                            (declare (not safe))
                                            (cons __tmp152876 __tmp152875))))
                                     (declare (not safe))
                                     (cons __tmp152874 '())))
                                  (__tmp152834
                                   (let ((__tmp152835
                                          (let ((__tmp152836
                                                 (let ((__tmp152865
                                                        (let ((__tmp152866
                                                               (let ((__tmp152870
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp152871
                                     (let ((__tmp152872
                                            (##structure-ref
                                             _klass151488_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp152872 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp152871)))
                             (__tmp152867
                              (let ((__tmp152868
                                     (let ((__tmp152869
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj151500_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152869))))
                                (declare (not safe))
                                (cons __tmp152868 '()))))
                         (declare (not safe))
                         (cons __tmp152870 __tmp152867))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp152866)))
               (__tmp152837
                (let ((__tmp152854
                       (let ((__tmp152855
                              (let ((__tmp152862
                                     (let ((__tmp152863
                                            (let ((__tmp152864
                                                   (##structure-ref
                                                    _self151450_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp152864 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152863)))
                                    (__tmp152856
                                     (let ((__tmp152860
                                            (let ((__tmp152861
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field151490_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp152861)))
                                           (__tmp152857
                                            (let ((__tmp152858
                                                   (let ((__tmp152859
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj151500_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152859))))
                                              (declare (not safe))
                                              (cons __tmp152858 '()))))
                                       (declare (not safe))
                                       (cons __tmp152860 __tmp152857))))
                                (declare (not safe))
                                (cons __tmp152862 __tmp152856))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp152855)))
                      (__tmp152838
                       (let ((__tmp152839
                              (let ((__tmp152840
                                     (let ((__tmp152852
                                            (let ((__tmp152853
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp152853)))
                                           (__tmp152841
                                            (let ((__tmp152849
                                                   (let ((__tmp152850
                                                          (let ((__tmp152851
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self151450_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp152851 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152850)))
                                                  (__tmp152842
                                                   (let ((__tmp152847
                                                          (let ((__tmp152848
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj151500_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp152848)))
                 (__tmp152843
                  (let ((__tmp152844
                         (let ((__tmp152845
                                (let ((__tmp152846
                                       (##structure-ref
                                        _self151450_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp152846 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp152845))))
                    (declare (not safe))
                    (cons __tmp152844 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152847
                                                           __tmp152843))))
                                              (declare (not safe))
                                              (cons __tmp152849 __tmp152842))))
                                       (declare (not safe))
                                       (cons __tmp152852 __tmp152841))))
                                (declare (not safe))
                                (cons '%#call __tmp152840))))
                         (declare (not safe))
                         (cons __tmp152839 '()))))
                  (declare (not safe))
                  (cons __tmp152854 __tmp152838))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp152865
                                                         __tmp152837))))
                                            (declare (not safe))
                                            (cons '%#if __tmp152836))))
                                     (declare (not safe))
                                     (cons __tmp152835 '()))))
                              (declare (not safe))
                              (cons __tmp152873 __tmp152834))))
                      (declare (not safe))
                      (cons '%#let-values __tmp152833))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp152831 _stx151451_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp152822
                                                            (let ((__tmp152823
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152829
                                  (let ((__tmp152830
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp152830)))
                                 (__tmp152824
                                  (let ((__tmp152825
                                         (let ((__tmp152826
                                                (let ((__tmp152827
                                                       (let ((__tmp152828
                                                              (##structure-ref
                                                               _self151450_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp152828
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp152827))))
                                           (declare (not safe))
                                           (cons __tmp152826 '()))))
                                    (declare (not safe))
                                    (cons _object151492_ __tmp152825))))
                             (declare (not safe))
                             (cons __tmp152829 __tmp152824))))
                      (declare (not safe))
                      (cons '%#call __tmp152823))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp152822 _stx151451_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd151458151472_)
                              (let ()
                                (declare (not safe))
                                (_g151454151464_ _g151455151467_)))))
                      (let ()
                        (declare (not safe))
                        (_g151454151464_ _g151455151467_))))))
          (declare (not safe))
          (_g151453151502_ _args151452_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__t152123)
        (let ((__slot152124
               (let ((__tmp152127
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t152123 'slot))))
                 (if __tmp152127
                     __tmp152127
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id152125
               (let ((__tmp152128
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t152123 'id))))
                 (if __tmp152128
                     __tmp152128
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?152126
               (let ((__tmp152129
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t152123 'checked?))))
                 (if __tmp152129
                     __tmp152129
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self151450_ _stx151451_ _args151452_)
            (let* ((_g151454151464_
                    (lambda (_g151455151461_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g151455151461_))))
                   (_g151453151502_
                    (lambda (_g151455151467_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g151455151467_))
                          (let ((_e151459151469_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g151455151467_))))
                            (let ((_hd151458151472_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e151459151469_)))
                                  (_tl151457151474_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e151459151469_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl151457151474_))
                                  ((lambda (_L151477_)
                                     (let* ((_klass151488_
                                             (let ((__tmp152907
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self151450_
                                                       __id152125
                                                       __t152123
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx151451_
                                                __tmp152907)))
                                            (_field151490_
                                             (let ((__tmp152908
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self151450_
                                                       __slot152124
                                                       __t152123
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass151488_
                                                __tmp152908)))
                                            (_object151492_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L151477_))))
                                       (if (##structure-ref
                                            _klass151488_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp152985
                                                  (let ((__tmp152994
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self151450_
                        __checked?152126
                        __t152123
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp152986
                 (let ((__tmp152991
                        (let ((__tmp152992
                               (let ((__tmp152993
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self151450_
                                         __id152125
                                         __t152123
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp152993 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp152992)))
                       (__tmp152987
                        (let ((__tmp152989
                               (let ((__tmp152990
                                      (let ()
                                        (declare (not safe))
                                        (cons _field151490_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp152990)))
                              (__tmp152988
                               (let ()
                                 (declare (not safe))
                                 (cons _object151492_ '()))))
                          (declare (not safe))
                          (cons __tmp152989 __tmp152988))))
                   (declare (not safe))
                   (cons __tmp152991 __tmp152987))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp152994
                                                          __tmp152986))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152985
                                              _stx151451_))
                                           (if (##structure-ref
                                                _klass151488_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp152975
                                                      (let ((__tmp152984
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self151450_
                            __checked?152126
                            __t152123
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp152976
                     (let ((__tmp152981
                            (let ((__tmp152982
                                   (let ((__tmp152983
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self151450_
                                             __id152125
                                             __t152123
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp152983 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp152982)))
                           (__tmp152977
                            (let ((__tmp152979
                                   (let ((__tmp152980
                                          (let ()
                                            (declare (not safe))
                                            (cons _field151490_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp152980)))
                                  (__tmp152978
                                   (let ()
                                     (declare (not safe))
                                     (cons _object151492_ '()))))
                              (declare (not safe))
                              (cons __tmp152979 __tmp152978))))
                       (declare (not safe))
                       (cons __tmp152981 __tmp152977))))
                (declare (not safe))
                (cons __tmp152984 __tmp152976))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp152975
                                                  _stx151451_))
                                               (let ((_$e151495_
                                                      (let ((__tmp152909
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self151450_
                        __slot152124
                        __t152123
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass151488_ __tmp152909))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e151495_
                                                     ((lambda (_klass151498_)
                                                        (let ((__tmp152965
                                                               (let ((__tmp152974
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self151450_
                                     __checked?152126
                                     __t152123
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp152966
                              (let ((__tmp152971
                                     (let ((__tmp152972
                                            (let ((__tmp152973
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self151450_
                                                      __id152125
                                                      __t152123
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp152973 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152972)))
                                    (__tmp152967
                                     (let ((__tmp152969
                                            (let ((__tmp152970
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field151490_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp152970)))
                                           (__tmp152968
                                            (let ()
                                              (declare (not safe))
                                              (cons _object151492_ '()))))
                                       (declare (not safe))
                                       (cons __tmp152969 __tmp152968))))
                                (declare (not safe))
                                (cons __tmp152971 __tmp152967))))
                         (declare (not safe))
                         (cons __tmp152974 __tmp152966))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp152965 _stx151451_)))
              _$e151495_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self151450_
                                                            __checked?152126
                                                            __t152123
                                                            '#f))
                                                         (let ((__tmp152919
                                                                (let* ((_$obj151500_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp152920 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp152920)))
                               (__tmp152921
                                (let ((__tmp152961
                                       (let ((__tmp152962
                                              (let ((__tmp152964
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj151500_
                                                             '())))
                                                    (__tmp152963
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object151492_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp152964
                                                      __tmp152963))))
                                         (declare (not safe))
                                         (cons __tmp152962 '())))
                                      (__tmp152922
                                       (let ((__tmp152923
                                              (let ((__tmp152924
                                                     (let ((__tmp152953
                                                            (let ((__tmp152954
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152958
                                  (let ((__tmp152959
                                         (let ((__tmp152960
                                                (##structure-ref
                                                 _klass151488_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp152960 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp152959)))
                                 (__tmp152955
                                  (let ((__tmp152956
                                         (let ((__tmp152957
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj151500_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp152957))))
                                    (declare (not safe))
                                    (cons __tmp152956 '()))))
                             (declare (not safe))
                             (cons __tmp152958 __tmp152955))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp152954)))
                   (__tmp152925
                    (let ((__tmp152942
                           (let ((__tmp152943
                                  (let ((__tmp152950
                                         (let ((__tmp152951
                                                (let ((__tmp152952
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self151450_
                                                          __id152125
                                                          __t152123
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp152952 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp152951)))
                                        (__tmp152944
                                         (let ((__tmp152948
                                                (let ((__tmp152949
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field151490_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp152949)))
                                               (__tmp152945
                                                (let ((__tmp152946
                                                       (let ((__tmp152947
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj151500_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152947))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152946 '()))))
                                           (declare (not safe))
                                           (cons __tmp152948 __tmp152945))))
                                    (declare (not safe))
                                    (cons __tmp152950 __tmp152944))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp152943)))
                          (__tmp152926
                           (let ((__tmp152927
                                  (let ((__tmp152928
                                         (let ((__tmp152940
                                                (let ((__tmp152941
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp152941)))
                                               (__tmp152929
                                                (let ((__tmp152937
                                                       (let ((__tmp152938
                                                              (let ((__tmp152939
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self151450_
                                __id152125
                                __t152123
                                '#f))))
                        (declare (not safe))
                        (cons __tmp152939 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152938)))
              (__tmp152930
               (let ((__tmp152935
                      (let ((__tmp152936
                             (let ()
                               (declare (not safe))
                               (cons _$obj151500_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp152936)))
                     (__tmp152931
                      (let ((__tmp152932
                             (let ((__tmp152933
                                    (let ((__tmp152934
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self151450_
                                              __slot152124
                                              __t152123
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp152934 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp152933))))
                        (declare (not safe))
                        (cons __tmp152932 '()))))
                 (declare (not safe))
                 (cons __tmp152935 __tmp152931))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152937
                                                        __tmp152930))))
                                           (declare (not safe))
                                           (cons __tmp152940 __tmp152929))))
                                    (declare (not safe))
                                    (cons '%#call __tmp152928))))
                             (declare (not safe))
                             (cons __tmp152927 '()))))
                      (declare (not safe))
                      (cons __tmp152942 __tmp152926))))
               (declare (not safe))
               (cons __tmp152953 __tmp152925))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp152924))))
                                         (declare (not safe))
                                         (cons __tmp152923 '()))))
                                  (declare (not safe))
                                  (cons __tmp152961 __tmp152922))))
                          (declare (not safe))
                          (cons '%#let-values __tmp152921))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp152919 _stx151451_))
                 (let ((__tmp152910
                        (let ((__tmp152911
                               (let ((__tmp152917
                                      (let ((__tmp152918
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp152918)))
                                     (__tmp152912
                                      (let ((__tmp152913
                                             (let ((__tmp152914
                                                    (let ((__tmp152915
                                                           (let ((__tmp152916
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self151450_
                             __slot152124
                             __t152123
                             '#f))))
                     (declare (not safe))
                     (cons __tmp152916 '()))))
              (declare (not safe))
              (cons '%#quote __tmp152915))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp152914 '()))))
                                        (declare (not safe))
                                        (cons _object151492_ __tmp152913))))
                                 (declare (not safe))
                                 (cons __tmp152917 __tmp152912))))
                          (declare (not safe))
                          (cons '%#call __tmp152911))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp152910 _stx151451_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd151458151472_)
                                  (let ()
                                    (declare (not safe))
                                    (_g151454151464_ _g151455151467_)))))
                          (let ()
                            (declare (not safe))
                            (_g151454151464_ _g151455151467_))))))
              (declare (not safe))
              (_g151453151502_ _args151452_))))))
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
      (lambda (_self151255_ _stx151256_ _args151257_)
        (let* ((_g151259151273_
                (lambda (_g151260151270_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g151260151270_))))
               (_g151258151325_
                (lambda (_g151260151276_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g151260151276_))
                      (let ((_e151265151278_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g151260151276_))))
                        (let ((_hd151264151281_
                               (let ()
                                 (declare (not safe))
                                 (##car _e151265151278_)))
                              (_tl151263151283_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e151265151278_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl151263151283_))
                              (let ((_e151268151286_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl151263151283_))))
                                (let ((_hd151267151289_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e151268151286_)))
                                      (_tl151266151291_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e151268151286_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl151266151291_))
                                      ((lambda (_L151294_ _L151295_)
                                         (let* ((_klass151309_
                                                 (let ((__tmp152995
                                                        (##structure-ref
                                                         _self151255_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx151256_
                                                    __tmp152995)))
                                                (_field151311_
                                                 (let ((__tmp152996
                                                        (##structure-ref
                                                         _self151255_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass151309_
                                                    __tmp152996)))
                                                (_object151313_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L151295_)))
                                                (_value151315_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L151294_))))
                                           (if (##structure-ref
                                                _klass151309_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp153078
                                                      (let ((__tmp153088
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self151255_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp153079
                     (let ((__tmp153085
                            (let ((__tmp153086
                                   (let ((__tmp153087
                                          (##structure-ref
                                           _self151255_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp153087 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp153086)))
                           (__tmp153080
                            (let ((__tmp153083
                                   (let ((__tmp153084
                                          (let ()
                                            (declare (not safe))
                                            (cons _field151311_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp153084)))
                                  (__tmp153081
                                   (let ((__tmp153082
                                          (let ()
                                            (declare (not safe))
                                            (cons _value151315_ '()))))
                                     (declare (not safe))
                                     (cons _object151313_ __tmp153082))))
                              (declare (not safe))
                              (cons __tmp153083 __tmp153081))))
                       (declare (not safe))
                       (cons __tmp153085 __tmp153080))))
                (declare (not safe))
                (cons __tmp153088 __tmp153079))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp153078
                                                  _stx151256_))
                                               (if (##structure-ref
                                                    _klass151309_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp153067
                                                          (let ((__tmp153077
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self151255_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp153068
                         (let ((__tmp153074
                                (let ((__tmp153075
                                       (let ((__tmp153076
                                              (##structure-ref
                                               _self151255_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp153076 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp153075)))
                               (__tmp153069
                                (let ((__tmp153072
                                       (let ((__tmp153073
                                              (let ()
                                                (declare (not safe))
                                                (cons _field151311_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp153073)))
                                      (__tmp153070
                                       (let ((__tmp153071
                                              (let ()
                                                (declare (not safe))
                                                (cons _value151315_ '()))))
                                         (declare (not safe))
                                         (cons _object151313_ __tmp153071))))
                                  (declare (not safe))
                                  (cons __tmp153072 __tmp153070))))
                           (declare (not safe))
                           (cons __tmp153074 __tmp153069))))
                    (declare (not safe))
                    (cons __tmp153077 __tmp153068))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp153067
                                                      _stx151256_))
                                                   (let ((_$e151318_
                                                          (let ((__tmp152997
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self151255_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass151309_ __tmp152997))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e151318_
                                                         ((lambda (_klass151321_)
                                                            (let ((__tmp153056
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153066
                                  (if (##structure-ref
                                       _self151255_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp153057
                                  (let ((__tmp153063
                                         (let ((__tmp153064
                                                (let ((__tmp153065
                                                       (##structure-ref
                                                        _self151255_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp153065 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153064)))
                                        (__tmp153058
                                         (let ((__tmp153061
                                                (let ((__tmp153062
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field151311_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp153062)))
                                               (__tmp153059
                                                (let ((__tmp153060
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value151315_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object151313_
                                                        __tmp153060))))
                                           (declare (not safe))
                                           (cons __tmp153061 __tmp153059))))
                                    (declare (not safe))
                                    (cons __tmp153063 __tmp153058))))
                             (declare (not safe))
                             (cons __tmp153066 __tmp153057))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp153056 _stx151256_)))
                  _$e151318_)
                 (if (##structure-ref _self151255_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp153008
                            (let* ((_$obj151323_
                                    (let ((__tmp153009 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp153009)))
                                   (__tmp153010
                                    (let ((__tmp153052
                                           (let ((__tmp153053
                                                  (let ((__tmp153055
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj151323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp153054
                 (let () (declare (not safe)) (cons _object151313_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp153055
                                                          __tmp153054))))
                                             (declare (not safe))
                                             (cons __tmp153053 '())))
                                          (__tmp153011
                                           (let ((__tmp153012
                                                  (let ((__tmp153013
                                                         (let ((__tmp153044
                                                                (let ((__tmp153045
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp153049
                                      (let ((__tmp153050
                                             (let ((__tmp153051
                                                    (##structure-ref
                                                     _klass151309_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp153051 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp153050)))
                                     (__tmp153046
                                      (let ((__tmp153047
                                             (let ((__tmp153048
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj151323_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp153048))))
                                        (declare (not safe))
                                        (cons __tmp153047 '()))))
                                 (declare (not safe))
                                 (cons __tmp153049 __tmp153046))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp153045)))
                       (__tmp153014
                        (let ((__tmp153032
                               (let ((__tmp153033
                                      (let ((__tmp153041
                                             (let ((__tmp153042
                                                    (let ((__tmp153043
                                                           (##structure-ref
                                                            _self151255_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp153043 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp153042)))
                                            (__tmp153034
                                             (let ((__tmp153039
                                                    (let ((__tmp153040
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field151311_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp153040)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp153035
                                                    (let ((__tmp153037
                                                           (let ((__tmp153038
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj151323_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp153038)))
                  (__tmp153036
                   (let () (declare (not safe)) (cons _value151315_ '()))))
              (declare (not safe))
              (cons __tmp153037 __tmp153036))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153039
                                                     __tmp153035))))
                                        (declare (not safe))
                                        (cons __tmp153041 __tmp153034))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp153033)))
                              (__tmp153015
                               (let ((__tmp153016
                                      (let ((__tmp153017
                                             (let ((__tmp153030
                                                    (let ((__tmp153031
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp153031)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp153018
                                                    (let ((__tmp153027
                                                           (let ((__tmp153028
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp153029
                                 (##structure-ref
                                  _self151255_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp153029 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp153028)))
                  (__tmp153019
                   (let ((__tmp153025
                          (let ((__tmp153026
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj151323_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp153026)))
                         (__tmp153020
                          (let ((__tmp153022
                                 (let ((__tmp153023
                                        (let ((__tmp153024
                                               (##structure-ref
                                                _self151255_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp153024 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp153023)))
                                (__tmp153021
                                 (let ()
                                   (declare (not safe))
                                   (cons _value151315_ '()))))
                            (declare (not safe))
                            (cons __tmp153022 __tmp153021))))
                     (declare (not safe))
                     (cons __tmp153025 __tmp153020))))
              (declare (not safe))
              (cons __tmp153027 __tmp153019))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153030
                                                     __tmp153018))))
                                        (declare (not safe))
                                        (cons '%#call __tmp153017))))
                                 (declare (not safe))
                                 (cons __tmp153016 '()))))
                          (declare (not safe))
                          (cons __tmp153032 __tmp153015))))
                   (declare (not safe))
                   (cons __tmp153044 __tmp153014))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp153013))))
                                             (declare (not safe))
                                             (cons __tmp153012 '()))))
                                      (declare (not safe))
                                      (cons __tmp153052 __tmp153011))))
                              (declare (not safe))
                              (cons '%#let-values __tmp153010))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp153008 _stx151256_))
                     (let ((__tmp152998
                            (let ((__tmp152999
                                   (let ((__tmp153006
                                          (let ((__tmp153007
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp153007)))
                                         (__tmp153000
                                          (let ((__tmp153001
                                                 (let ((__tmp153003
                                                        (let ((__tmp153004
                                                               (let ((__tmp153005
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self151255_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp153005 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp153004)))
               (__tmp153002
                (let () (declare (not safe)) (cons _value151315_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153003
                                                         __tmp153002))))
                                            (declare (not safe))
                                            (cons _object151313_
                                                  __tmp153001))))
                                     (declare (not safe))
                                     (cons __tmp153006 __tmp153000))))
                              (declare (not safe))
                              (cons '%#call __tmp152999))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp152998 _stx151256_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd151267151289_
                                       _hd151264151281_)
                                      (let ()
                                        (declare (not safe))
                                        (_g151259151273_ _g151260151276_)))))
                              (let ()
                                (declare (not safe))
                                (_g151259151273_ _g151260151276_)))))
                      (let ()
                        (declare (not safe))
                        (_g151259151273_ _g151260151276_))))))
          (declare (not safe))
          (_g151258151325_ _args151257_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__t152130)
        (let ((__slot152131
               (let ((__tmp152134
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t152130 'slot))))
                 (if __tmp152134
                     __tmp152134
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id152132
               (let ((__tmp152135
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t152130 'id))))
                 (if __tmp152135
                     __tmp152135
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?152133
               (let ((__tmp152136
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t152130 'checked?))))
                 (if __tmp152136
                     __tmp152136
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self151255_ _stx151256_ _args151257_)
            (let* ((_g151259151273_
                    (lambda (_g151260151270_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g151260151270_))))
                   (_g151258151325_
                    (lambda (_g151260151276_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g151260151276_))
                          (let ((_e151265151278_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g151260151276_))))
                            (let ((_hd151264151281_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e151265151278_)))
                                  (_tl151263151283_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e151265151278_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl151263151283_))
                                  (let ((_e151268151286_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl151263151283_))))
                                    (let ((_hd151267151289_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e151268151286_)))
                                          (_tl151266151291_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e151268151286_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl151266151291_))
                                          ((lambda (_L151294_ _L151295_)
                                             (let* ((_klass151309_
                                                     (let ((__tmp153089
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self151255_
                                                               __id152132
                                                               __t152130
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx151256_
                                                        __tmp153089)))
                                                    (_field151311_
                                                     (let ((__tmp153090
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self151255_
                                                               __slot152131
                                                               __t152130
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass151309_
                                                        __tmp153090)))
                                                    (_object151313_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L151295_)))
                                                    (_value151315_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L151294_))))
                                               (if (##structure-ref
                                                    _klass151309_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp153172
                                                          (let ((__tmp153182
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self151255_
                                __checked?152133
                                __t152130
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp153173
                         (let ((__tmp153179
                                (let ((__tmp153180
                                       (let ((__tmp153181
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self151255_
                                                 __id152132
                                                 __t152130
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp153181 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp153180)))
                               (__tmp153174
                                (let ((__tmp153177
                                       (let ((__tmp153178
                                              (let ()
                                                (declare (not safe))
                                                (cons _field151311_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp153178)))
                                      (__tmp153175
                                       (let ((__tmp153176
                                              (let ()
                                                (declare (not safe))
                                                (cons _value151315_ '()))))
                                         (declare (not safe))
                                         (cons _object151313_ __tmp153176))))
                                  (declare (not safe))
                                  (cons __tmp153177 __tmp153175))))
                           (declare (not safe))
                           (cons __tmp153179 __tmp153174))))
                    (declare (not safe))
                    (cons __tmp153182 __tmp153173))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp153172
                                                      _stx151256_))
                                                   (if (##structure-ref
                                                        _klass151309_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp153161
                                                              (let ((__tmp153171
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self151255_
                                    __checked?152133
                                    __t152130
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp153162
                             (let ((__tmp153168
                                    (let ((__tmp153169
                                           (let ((__tmp153170
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self151255_
                                                     __id152132
                                                     __t152130
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp153170 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp153169)))
                                   (__tmp153163
                                    (let ((__tmp153166
                                           (let ((__tmp153167
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field151311_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp153167)))
                                          (__tmp153164
                                           (let ((__tmp153165
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value151315_ '()))))
                                             (declare (not safe))
                                             (cons _object151313_
                                                   __tmp153165))))
                                      (declare (not safe))
                                      (cons __tmp153166 __tmp153164))))
                               (declare (not safe))
                               (cons __tmp153168 __tmp153163))))
                        (declare (not safe))
                        (cons __tmp153171 __tmp153162))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp153161 _stx151256_))
               (let ((_$e151318_
                      (let ((__tmp153091
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self151255_
                                __slot152131
                                __t152130
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass151309_
                         __tmp153091))))
                 (if _$e151318_
                     ((lambda (_klass151321_)
                        (let ((__tmp153150
                               (let ((__tmp153160
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self151255_
                                             __checked?152133
                                             __t152130
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp153151
                                      (let ((__tmp153157
                                             (let ((__tmp153158
                                                    (let ((__tmp153159
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self151255_
                                                              __id152132
                                                              __t152130
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp153159 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp153158)))
                                            (__tmp153152
                                             (let ((__tmp153155
                                                    (let ((__tmp153156
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field151311_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp153156)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp153153
                                                    (let ((__tmp153154
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value151315_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object151313_ __tmp153154))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153155
                                                     __tmp153153))))
                                        (declare (not safe))
                                        (cons __tmp153157 __tmp153152))))
                                 (declare (not safe))
                                 (cons __tmp153160 __tmp153151))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp153150 _stx151256_)))
                      _$e151318_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self151255_
                            __checked?152133
                            __t152130
                            '#f))
                         (let ((__tmp153102
                                (let* ((_$obj151323_
                                        (let ((__tmp153103 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp153103)))
                                       (__tmp153104
                                        (let ((__tmp153146
                                               (let ((__tmp153147
                                                      (let ((__tmp153149
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj151323_ '())))
                    (__tmp153148
                     (let () (declare (not safe)) (cons _object151313_ '()))))
                (declare (not safe))
                (cons __tmp153149 __tmp153148))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153147 '())))
                                              (__tmp153105
                                               (let ((__tmp153106
                                                      (let ((__tmp153107
                                                             (let ((__tmp153138
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp153139
                                   (let ((__tmp153143
                                          (let ((__tmp153144
                                                 (let ((__tmp153145
                                                        (##structure-ref
                                                         _klass151309_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp153145 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp153144)))
                                         (__tmp153140
                                          (let ((__tmp153141
                                                 (let ((__tmp153142
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj151323_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp153142))))
                                            (declare (not safe))
                                            (cons __tmp153141 '()))))
                                     (declare (not safe))
                                     (cons __tmp153143 __tmp153140))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp153139)))
                           (__tmp153108
                            (let ((__tmp153126
                                   (let ((__tmp153127
                                          (let ((__tmp153135
                                                 (let ((__tmp153136
                                                        (let ((__tmp153137
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self151255_
                          __id152132
                          __t152130
                          '#f))))
                  (declare (not safe))
                  (cons __tmp153137 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp153136)))
                                                (__tmp153128
                                                 (let ((__tmp153133
                                                        (let ((__tmp153134
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field151311_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp153134)))
               (__tmp153129
                (let ((__tmp153131
                       (let ((__tmp153132
                              (let ()
                                (declare (not safe))
                                (cons _$obj151323_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp153132)))
                      (__tmp153130
                       (let () (declare (not safe)) (cons _value151315_ '()))))
                  (declare (not safe))
                  (cons __tmp153131 __tmp153130))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153133
                                                         __tmp153129))))
                                            (declare (not safe))
                                            (cons __tmp153135 __tmp153128))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp153127)))
                                  (__tmp153109
                                   (let ((__tmp153110
                                          (let ((__tmp153111
                                                 (let ((__tmp153124
                                                        (let ((__tmp153125
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp153125)))
               (__tmp153112
                (let ((__tmp153121
                       (let ((__tmp153122
                              (let ((__tmp153123
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self151255_
                                        __id152132
                                        __t152130
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp153123 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp153122)))
                      (__tmp153113
                       (let ((__tmp153119
                              (let ((__tmp153120
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj151323_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp153120)))
                             (__tmp153114
                              (let ((__tmp153116
                                     (let ((__tmp153117
                                            (let ((__tmp153118
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self151255_
                                                      __slot152131
                                                      __t152130
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp153118 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp153117)))
                                    (__tmp153115
                                     (let ()
                                       (declare (not safe))
                                       (cons _value151315_ '()))))
                                (declare (not safe))
                                (cons __tmp153116 __tmp153115))))
                         (declare (not safe))
                         (cons __tmp153119 __tmp153114))))
                  (declare (not safe))
                  (cons __tmp153121 __tmp153113))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153124
                                                         __tmp153112))))
                                            (declare (not safe))
                                            (cons '%#call __tmp153111))))
                                     (declare (not safe))
                                     (cons __tmp153110 '()))))
                              (declare (not safe))
                              (cons __tmp153126 __tmp153109))))
                       (declare (not safe))
                       (cons __tmp153138 __tmp153108))))
                (declare (not safe))
                (cons '%#if __tmp153107))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153106 '()))))
                                          (declare (not safe))
                                          (cons __tmp153146 __tmp153105))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp153104))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp153102 _stx151256_))
                         (let ((__tmp153092
                                (let ((__tmp153093
                                       (let ((__tmp153100
                                              (let ((__tmp153101
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp153101)))
                                             (__tmp153094
                                              (let ((__tmp153095
                                                     (let ((__tmp153097
                                                            (let ((__tmp153098
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153099
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self151255_
                                     __slot152131
                                     __t152130
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp153099 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp153098)))
                   (__tmp153096
                    (let () (declare (not safe)) (cons _value151315_ '()))))
               (declare (not safe))
               (cons __tmp153097 __tmp153096))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object151313_
                                                      __tmp153095))))
                                         (declare (not safe))
                                         (cons __tmp153100 __tmp153094))))
                                  (declare (not safe))
                                  (cons '%#call __tmp153093))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp153092
                            _stx151256_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd151267151289_
                                           _hd151264151281_)
                                          (let ()
                                            (declare (not safe))
                                            (_g151259151273_
                                             _g151260151276_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g151259151273_ _g151260151276_)))))
                          (let ()
                            (declare (not safe))
                            (_g151259151273_ _g151260151276_))))))
              (declare (not safe))
              (_g151258151325_ _args151257_))))))
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
      (lambda (_self151089_ _stx151090_ _args151091_)
        (let* ((_self151092151101_ _self151089_)
               (_E151094151105_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self151092151101_))))
               (_K151095151112_
                (lambda (_inline151108_ _dispatch151109_ _arity151110_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self151089_ _args151091_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx151090_
                         _arity151110_)))
                  (if _inline151108_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp153188
                               (let ((__tmp153189
                                      (_inline151108_ _stx151090_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp153189
                                  _stx151090_))))
                          (declare (not safe))
                          (gxc#compile-e__0 __tmp153188)))
                      (if _dispatch151109_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch151109_))
                            (let ((__tmp153183
                                   (let ((__tmp153184
                                          (let ((__tmp153185
                                                 (let ((__tmp153186
                                                        (let ((__tmp153187
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch151109_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp153187))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153186
                                                         _args151091_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp153185))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp153184
                                      _stx151090_))))
                              (declare (not safe))
                              (gxc#compile-e__0 __tmp153183)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _stx151090_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self151092151101_ 'gxc#!lambda::t))
              (let* ((_e151096151115_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151092151101_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e151097151118_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151092151101_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity151121_ _e151097151118_)
                     (_e151098151123_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151092151101_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch151126_ _e151098151123_)
                     (_e151099151128_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151092151101_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline151131_ _e151099151128_))
                (declare (not safe))
                (_K151095151112_
                 _inline151131_
                 _dispatch151126_
                 _arity151121_))
              (let () (declare (not safe)) (_E151094151105_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self150928_ _stx150929_ _args150930_)
        (let* ((_self150931150938_ _self150928_)
               (_E150933150942_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self150931150938_))))
               (_K150934150956_
                (lambda (_clauses150945_)
                  (let ((_$e150951_
                         (let ((__tmp153190
                                (lambda (_g150946150948_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g150946150948_
                                     _args150930_)))))
                           (declare (not safe))
                           (find __tmp153190 _clauses150945_))))
                    (if _$e150951_
                        ((lambda (_clause150954_)
                           (let ((__method152405
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause150954_
                                     'optimize-call))))
                             (if __method152405
                                 (__method152405
                                  _clause150954_
                                  _stx150929_
                                  _args150930_)
                                 (let ()
                                   (declare (not safe))
                                   (error '"Missing method"
                                          _clause150954_
                                          'optimize-call)))))
                         _$e150951_)
                        (let ((__tmp153191
                               (map gxc#!lambda-arity _clauses150945_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx150929_
                           __tmp153191)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self150931150938_
                 'gxc#!case-lambda::t))
              (let* ((_e150935150959_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150931150938_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e150936150962_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150931150938_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses150965_ _e150936150962_))
                (declare (not safe))
                (_K150934150956_ _clauses150965_))
              (let () (declare (not safe)) (_E150933150942_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self150742_ _args150743_)
        (let* ((_self150744150751_ _self150742_)
               (_E150746150755_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self150744150751_))))
               (_K150747150795_
                (lambda (_arity150758_)
                  (let* ((_arity150759150768_ _arity150758_)
                         (_E150762150772_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (error '"No clause matching"
                                     _arity150759150768_)))))
                    (let ((_K150766150792_
                           (lambda ()
                             (fx= (length _args150743_) _arity150758_)))
                          (_K150763150778_
                           (lambda (_arity150776_)
                             (fx>= (length _args150743_) _arity150776_))))
                      (let ((_try-match150761150788_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity150759150768_))
                                   (let ((_tl150765150783_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity150759150768_)))
                                         (_hd150764150781_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity150759150768_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl150765150783_))
                                         (let ((_arity150786_
                                                _hd150764150781_))
                                           (declare (not safe))
                                           (_K150763150778_ _arity150786_))
                                         (let ()
                                           (declare (not safe))
                                           (_E150762150772_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E150762150772_))))))
                        (if (let ()
                              (declare (not safe))
                              (fixnum? _arity150759150768_))
                            (let () (declare (not safe)) (_K150766150792_))
                            (let ()
                              (declare (not safe))
                              (_try-match150761150788_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self150744150751_ 'gxc#!lambda::t))
              (let* ((_e150748150798_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150744150751_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e150749150801_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150744150751_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity150804_ _e150749150801_))
                (declare (not safe))
                (_K150747150795_ _arity150804_))
              (let () (declare (not safe)) (_E150746150755_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self150627_ _stx150628_ _args150629_)
        (let* ((_self150630150638_ _self150627_)
               (_E150632150642_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self150630150638_))))
               (_K150633150726_
                (lambda (_dispatch150645_ _table150646_)
                  (let* ((_g150647150656_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch150645_)))
                         (_else150649150664_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch150645_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _stx150628_))))
                         (_K150651150710_
                          (lambda (_main150667_ _keys150668_)
                            (let ((_g153192_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx150628_
                                      _args150629_))))
                              (begin
                                (let ((_g153193_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g153192_)
                                             (##vector-length _g153192_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g153193_ 2)))
                                      (error "Context expects 2 values"
                                             _g153193_)))
                                (let ((_pargs150670_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g153192_ 0)))
                                      (_kwargs150671_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g153192_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main150667_))
                                    (if _table150646_
                                        (let ((_xargs150678_
                                               (map (lambda (_key150673_)
                                                      (let ((_$e150675_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__0 _key150673_ _kwargs150671_))))
                (if _$e150675_ (values _$e150675_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys150668_)))
                                          (for-each
                                           (lambda (_kw150680_)
                                             (if (memq (car _kw150680_)
                                                       _keys150668_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx150628_
                                                    _keys150668_
                                                    _kw150680_))))
                                           _kwargs150671_)
                                          (let ((__tmp153245
                                                 (let ((__tmp153246
                                                        (let ((__tmp153247
                                                               (let ((__tmp153252
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153253
                                     (let ()
                                       (declare (not safe))
                                       (cons _main150667_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp153253)))
                             (__tmp153248
                              (let ((__tmp153250
                                     (let ((__tmp153251
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp153251)))
                                    (__tmp153249
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs150670_
                                               _xargs150678_))))
                                (declare (not safe))
                                (cons __tmp153250 __tmp153249))))
                         (declare (not safe))
                         (cons __tmp153252 __tmp153248))))
                  (declare (not safe))
                  (cons '%#call __tmp153247))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp153246
                                                    _stx150628_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0 __tmp153245)))
                                        (let* ((_kwt150682_
                                                (let ((__tmp153194
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp153194)))
                                               (_kwvars150685_
                                                (map (lambda (_g153195_)
                                                       (let ((__tmp153196
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp153196)))
                                                     _kwargs150671_))
                                               (_kwbind150690_
                                                (map (lambda (_kw150687_
                                                              _kwvar150688_)
                                                       (let ((__tmp153199
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar150688_ '())))
                     (__tmp153197
                      (let ((__tmp153198 (cdr _kw150687_)))
                        (declare (not safe))
                        (cons __tmp153198 '()))))
                 (declare (not safe))
                 (cons __tmp153199 __tmp153197)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs150671_
                                                     _kwvars150685_))
                                               (_kwset150695_
                                                (map (lambda (_kw150692_
                                                              _kwvar150693_)
                                                       (let ((__tmp153200
                                                              (let ((__tmp153201
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp153209
                                    (let ((__tmp153210
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt150682_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp153210)))
                                   (__tmp153202
                                    (let ((__tmp153206
                                           (let ((__tmp153207
                                                  (let ((__tmp153208
                                                         (car _kw150692_)))
                                                    (declare (not safe))
                                                    (cons __tmp153208 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp153207)))
                                          (__tmp153203
                                           (let ((__tmp153204
                                                  (let ((__tmp153205
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar150693_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp153205))))
                                             (declare (not safe))
                                             (cons __tmp153204 '()))))
                                      (declare (not safe))
                                      (cons __tmp153206 __tmp153203))))
                               (declare (not safe))
                               (cons __tmp153209 __tmp153202))))
                        (declare (not safe))
                        (cons '(%#ref symbolic-table-set!) __tmp153201))))
                 (declare (not safe))
                 (cons '%#call __tmp153200)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs150671_
                                                     _kwvars150685_))
                                               (_xkwargs150700_
                                                (map (lambda (_kw150697_
                                                              _kwvar150698_)
                                                       (let ((__tmp153213
                                                              (car _kw150697_))
                                                             (__tmp153211
                                                              (let ((__tmp153212
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar150698_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp153212))))
                 (declare (not safe))
                 (cons __tmp153213 __tmp153211)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs150671_
                                                     _kwvars150685_))
                                               (_xargs150707_
                                                (map (lambda (_key150702_)
                                                       (let ((_$e150704_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq__0 _key150702_ _xkwargs150700_))))
                 (if _$e150704_ (values _$e150704_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys150668_)))
                                          (let ((__tmp153214
                                                 (let ((__tmp153215
                                                        (let ((__tmp153216
                                                               (let ((__tmp153217
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153218
                                     (let ((__tmp153219
                                            (let ((__tmp153233
                                                   (let ((__tmp153234
                                                          (let ((__tmp153244
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt150682_ '())))
                        (__tmp153235
                         (let ((__tmp153236
                                (let ((__tmp153237
                                       (let ((__tmp153238
                                              (let ((__tmp153239
                                                     (let ((__tmp153241
                                                            (let ((__tmp153242
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153243 (length _kwargs150671_)))
                             (declare (not safe))
                             (cons __tmp153243 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp153242)))
                   (__tmp153240
                    (let () (declare (not safe)) (cons '(%#quote 0) '()))))
               (declare (not safe))
               (cons __tmp153241 __tmp153240))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-symbolic-table)
                                                      __tmp153239))))
                                         (declare (not safe))
                                         (cons '%#call __tmp153238))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp153237
                                   _stx150628_))))
                           (declare (not safe))
                           (cons __tmp153236 '()))))
                    (declare (not safe))
                    (cons __tmp153244 __tmp153235))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153234 '())))
                                                  (__tmp153220
                                                   (let ((__tmp153221
                                                          (let ((__tmp153222
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp153223
                                (let ((__tmp153224
                                       (let ((__tmp153225
                                              (let ((__tmp153226
                                                     (let ((__tmp153231
                                                            (let ((__tmp153232
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main150667_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp153232)))
                   (__tmp153227
                    (let ((__tmp153229
                           (let ((__tmp153230
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt150682_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp153230)))
                          (__tmp153228
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs150670_ _xargs150707_))))
                      (declare (not safe))
                      (cons __tmp153229 __tmp153228))))
               (declare (not safe))
               (cons __tmp153231 __tmp153227))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp153226))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp153225
                                          _stx150628_))))
                                  (declare (not safe))
                                  (cons __tmp153224 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp153223 _kwset150695_))))
                    (declare (not safe))
                    (cons '%#begin __tmp153222))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153221 '()))))
                                              (declare (not safe))
                                              (cons __tmp153233 __tmp153220))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp153219))))
                                (declare (not safe))
                                (cons __tmp153218 '()))))
                         (declare (not safe))
                         (cons _kwbind150690_ __tmp153217))))
                  (declare (not safe))
                  (cons '%#let-values __tmp153216))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp153215
                                                    _stx150628_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0
                                             __tmp153214)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g150647150656_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e150652150713_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g150647150656_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e150653150716_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g150647150656_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys150719_ _e150653150716_)
                               (_e150654150721_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g150647150656_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main150724_ _e150654150721_))
                          (declare (not safe))
                          (_K150651150710_ _main150724_ _keys150719_))
                        (let () (declare (not safe)) (_else150649150664_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self150630150638_
                 'gxc#!kw-lambda::t))
              (let* ((_e150634150729_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150630150638_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e150635150732_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150630150638_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table150735_ _e150635150732_)
                     (_e150636150737_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150630150638_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch150740_ _e150636150737_))
                (declare (not safe))
                (_K150633150726_ _dispatch150740_ _table150735_))
              (let () (declare (not safe)) (_E150632150642_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx150240_ _args150241_)
        (let _lp150243_ ((_rest150245_ _args150241_)
                         (_pargs150246_ '())
                         (_kwargs150247_ '()))
          (let* ((___stx152287152288_ _rest150245_)
                 (_g150253150305_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx152287152288_)))))
            (let ((___kont152289152290_
                   (lambda (_L150484_ _L150485_)
                     (let ((__tmp153254
                            (let ()
                              (declare (not safe))
                              (cons _L150485_ _pargs150246_))))
                       (declare (not safe))
                       (_lp150243_ _L150484_ __tmp153254 _kwargs150247_))))
                  (___kont152291152292_
                   (lambda (_L150430_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L150430_ _pargs150246_))
                             (reverse _kwargs150247_))))
                  (___kont152293152294_
                   (lambda (_L150377_ _L150378_ _L150379_)
                     (let ((_kw150396_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L150379_))))
                       (if (assq _kw150396_ _kwargs150247_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx150240_
                              _kw150396_))
                           (let ((__tmp153255
                                  (let ((__tmp153256
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw150396_ _L150378_))))
                                    (declare (not safe))
                                    (cons __tmp153256 _kwargs150247_))))
                             (declare (not safe))
                             (_lp150243_
                              _L150377_
                              _pargs150246_
                              __tmp153255))))))
                  (___kont152295152296_
                   (lambda (_L150325_ _L150326_)
                     (let ((__tmp153257
                            (let ()
                              (declare (not safe))
                              (cons _L150326_ _pargs150246_))))
                       (declare (not safe))
                       (_lp150243_ _L150325_ __tmp153257 _kwargs150247_))))
                  (___kont152297152298_
                   (lambda ()
                     (values (reverse _pargs150246_)
                             (reverse _kwargs150247_)))))
              (let* ((_g150252150312_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx152287152288_))
                            (___kont152297152298_)
                            (let () (declare (not safe)) (_g150253150305_)))))
                     (___match152394152395_
                      (lambda (_e150286150345_
                               _hd150285150348_
                               _tl150284150350_
                               _e150289150353_
                               _hd150288150356_
                               _tl150287150358_
                               _e150292150361_
                               _hd150291150364_
                               _tl150290150366_
                               _e150295150369_
                               _hd150294150372_
                               _tl150293150374_)
                        (let ((_L150377_ _tl150293150374_)
                              (_L150378_ _hd150294150372_)
                              (_L150379_ _hd150291150364_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L150379_))
                              (___kont152293152294_
                               _L150377_
                               _L150378_
                               _L150379_)
                              (___kont152295152296_
                               _tl150284150350_
                               _hd150285150348_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx152287152288_))
                    (let ((_e150259150449_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx152287152288_))))
                      (let ((_tl150257150454_
                             (let ()
                               (declare (not safe))
                               (##cdr _e150259150449_)))
                            (_hd150258150452_
                             (let ()
                               (declare (not safe))
                               (##car _e150259150449_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd150258150452_))
                            (let ((_e150262150457_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd150258150452_))))
                              (let ((_tl150260150462_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e150262150457_)))
                                    (_hd150261150460_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e150262150457_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd150261150460_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd150261150460_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl150260150462_))
                                            (let ((_e150265150465_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl150260150462_))))
                                              (let ((_tl150263150470_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e150265150465_)))
                                                    (_hd150264150468_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e150265150465_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd150264150468_))
                                                    (let ((_e150266150473_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd150264150468_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e150266150473_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl150263150470_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl150257150454_))
                          (let ((_e150269150476_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl150257150454_))))
                            (let ((_tl150267150481_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e150269150476_)))
                                  (_hd150268150479_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e150269150476_))))
                              (___kont152289152290_
                               _tl150267150481_
                               _hd150268150479_)))
                          (___kont152295152296_
                           _tl150257150454_
                           _hd150258150452_))
                      (___kont152295152296_ _tl150257150454_ _hd150258150452_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e150266150473_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl150263150470_))
                          (___kont152291152292_ _tl150257150454_)
                          (___kont152295152296_
                           _tl150257150454_
                           _hd150258150452_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl150263150470_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl150257150454_))
                              (let ((_e150295150369_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl150257150454_))))
                                (let ((_tl150293150374_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e150295150369_)))
                                      (_hd150294150372_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e150295150369_))))
                                  (___match152394152395_
                                   _e150259150449_
                                   _hd150258150452_
                                   _tl150257150454_
                                   _e150262150457_
                                   _hd150261150460_
                                   _tl150260150462_
                                   _e150265150465_
                                   _hd150264150468_
                                   _tl150263150470_
                                   _e150295150369_
                                   _hd150294150372_
                                   _tl150293150374_)))
                              (___kont152295152296_
                               _tl150257150454_
                               _hd150258150452_))
                          (___kont152295152296_
                           _tl150257150454_
                           _hd150258150452_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl150263150470_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl150257150454_))
                                                            (let ((_e150295150369_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl150257150454_))))
                      (let ((_tl150293150374_
                             (let ()
                               (declare (not safe))
                               (##cdr _e150295150369_)))
                            (_hd150294150372_
                             (let ()
                               (declare (not safe))
                               (##car _e150295150369_))))
                        (___match152394152395_
                         _e150259150449_
                         _hd150258150452_
                         _tl150257150454_
                         _e150262150457_
                         _hd150261150460_
                         _tl150260150462_
                         _e150265150465_
                         _hd150264150468_
                         _tl150263150470_
                         _e150295150369_
                         _hd150294150372_
                         _tl150293150374_)))
                    (___kont152295152296_ _tl150257150454_ _hd150258150452_))
                (___kont152295152296_ _tl150257150454_ _hd150258150452_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont152295152296_
                                             _tl150257150454_
                                             _hd150258150452_))
                                        (___kont152295152296_
                                         _tl150257150454_
                                         _hd150258150452_))
                                    (___kont152295152296_
                                     _tl150257150454_
                                     _hd150258150452_))))
                            (___kont152295152296_
                             _tl150257150454_
                             _hd150258150452_))))
                    (let () (declare (not safe)) (_g150252150312_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self150236_ _stx150237_ _args150238_)
        (let () (declare (not safe)) (gxc#xform-call% _stx150237_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
