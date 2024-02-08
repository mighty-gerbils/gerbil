(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1707384302)
  (begin
    (define gxc#&optimize-call
      (make-promise
       (lambda ()
         (let ((_tbl265868_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp270353 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl265868_ __tmp270353))
           (let ()
             (declare (not safe))
             (table-set! _tbl265868_ '%#call gxc#optimize-call%))
           _tbl265868_))))
    (define gxc#apply-optimize-call
      (lambda (_stx265851_ . _args265853_)
        (let ((__tmp270355
               (lambda ()
                 (declare (not safe))
                 (if (null? _args265853_)
                     (gxc#compile-e__0 _stx265851_)
                     (let ((_arg1265858_ (car _args265853_))
                           (_rest265860_ (cdr _args265853_)))
                       (if (null? _rest265860_)
                           (gxc#compile-e__1 _stx265851_ _arg1265858_)
                           (let ((_arg2265863_ (car _rest265860_))
                                 (_rest265865_ (cdr _rest265860_)))
                             (if (null? _rest265865_)
                                 (gxc#compile-e__2
                                  _stx265851_
                                  _arg1265858_
                                  _arg2265863_)
                                 (apply gxc#compile-e
                                        _stx265851_
                                        _arg1265858_
                                        _arg2265863_
                                        _rest265865_))))))))
              (__tmp270354 (force gxc#&optimize-call)))
          (declare (not safe))
          (call-with-parameters
           __tmp270355
           gxc#current-compile-methods
           __tmp270354))))
    (define gxc#optimize-call%
      (lambda (_stx265706_)
        (let* ((___stx270103270104_ _stx265706_)
               (_g265709265729_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx270103270104_)))))
          (let ((___kont270105270106_
                 (lambda (_L265773_ _L265774_)
                   (let* ((_rator-id265792_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L265774_)))
                          (_rator-type265794_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id265792_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type265794_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp270356
                                  (##structure-ref
                                   _rator-type265794_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id265792_
                              '" => "
                              _rator-type265794_
                              '" "
                              __tmp270356))
                           (let ((_optimized265797_
                                  (let ((__method270351
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type265794_
                                            'optimize-call))))
                                    (if __method270351
                                        (__method270351
                                         _rator-type265794_
                                         _stx265706_
                                         _L265773_)
                                        (error '"Missing method"
                                               _rator-type265794_
                                               'optimize-call)))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type265794_))
                                 _optimized265797_
                                 (let* ((___stx270085270086_ _optimized265797_)
                                        (_g265800265810_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx270085270086_)))))
                                   (let ((___kont270087270088_
                                          (lambda (_L265830_)
                                            (let ((__tmp270357
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L265830_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp270357
                                               _stx265706_))))
                                         (___kont270089270090_
                                          (lambda () _optimized265797_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx270085270086_))
                                         (let ((_e265805265822_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx270085270086_))))
                                           (let ((_tl265803265827_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e265805265822_)))
                                                 (_hd265804265825_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e265805265822_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd265804265825_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd265804265825_))
                                                     (___kont270087270088_
                                                      _tl265803265827_)
                                                     (___kont270089270090_))
                                                 (___kont270089270090_))))
                                         (___kont270089270090_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type265794_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx265706_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx265706_
                                _rator-type265794_)))))))
                (___kont270107270108_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _stx265706_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx270103270104_))
                (let ((_e265715265741_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx270103270104_))))
                  (let ((_tl265713265746_
                         (let () (declare (not safe)) (##cdr _e265715265741_)))
                        (_hd265714265744_
                         (let ()
                           (declare (not safe))
                           (##car _e265715265741_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl265713265746_))
                        (let ((_e265718265749_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl265713265746_))))
                          (let ((_tl265716265754_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e265718265749_)))
                                (_hd265717265752_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e265718265749_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd265717265752_))
                                (let ((_e265721265757_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd265717265752_))))
                                  (let ((_tl265719265762_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e265721265757_)))
                                        (_hd265720265760_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e265721265757_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd265720265760_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd265720265760_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl265719265762_))
                                                (let ((_e265724265765_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl265719265762_))))
                                                  (let ((_tl265722265770_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e265724265765_)))
                                                        (_hd265723265768_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e265724265765_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl265722265770_))
                                                        (___kont270105270106_
                                                         _tl265716265754_
                                                         _hd265723265768_)
                                                        (___kont270107270108_))))
                                                (___kont270107270108_))
                                            (___kont270107270108_))
                                        (___kont270107270108_))))
                                (___kont270107270108_))))
                        (___kont270107270108_))))
                (___kont270107270108_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self265660_ _stx265661_ _args265662_)
        (let* ((_g265664265674_
                (lambda (_g265665265671_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g265665265671_))))
               (_g265663265703_
                (lambda (_g265665265677_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g265665265677_))
                      (let ((_e265669265679_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g265665265677_))))
                        (let ((_hd265668265682_
                               (let ()
                                 (declare (not safe))
                                 (##car _e265669265679_)))
                              (_tl265667265684_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e265669265679_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl265667265684_))
                              ((lambda (_L265687_)
                                 (let* ((_klass265698_
                                         (let ((__tmp270358
                                                (##structure-ref
                                                 _self265660_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx265661_
                                            __tmp270358)))
                                        (_object265700_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L265687_))))
                                   (if (##structure-ref
                                        _klass265698_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp270374
                                              (let ((__tmp270375
                                                     (let ((__tmp270377
                                                            (let ((__tmp270378
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp270379
                                  (##structure-ref
                                   _klass265698_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp270379 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp270378)))
                   (__tmp270376
                    (let () (declare (not safe)) (cons _object265700_ '()))))
               (declare (not safe))
               (cons __tmp270377 __tmp270376))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp270375))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp270374
                                          _stx265661_))
                                       (if (##structure-ref
                                            _klass265698_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp270368
                                                  (let ((__tmp270369
                                                         (let ((__tmp270371
                                                                (let ((__tmp270372
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp270373
                                      (##structure-ref
                                       _klass265698_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp270373 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp270372)))
                       (__tmp270370
                        (let ()
                          (declare (not safe))
                          (cons _object265700_ '()))))
                   (declare (not safe))
                   (cons __tmp270371 __tmp270370))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp270369))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp270368
                                              _stx265661_))
                                           (let ((__tmp270359
                                                  (let ((__tmp270360
                                                         (let ((__tmp270366
                                                                (let ((__tmp270367
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp270367)))
                       (__tmp270361
                        (let ((__tmp270363
                               (let ((__tmp270364
                                      (let ((__tmp270365
                                             (##structure-ref
                                              _self265660_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp270365 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp270364)))
                              (__tmp270362
                               (let ()
                                 (declare (not safe))
                                 (cons _object265700_ '()))))
                          (declare (not safe))
                          (cons __tmp270363 __tmp270362))))
                   (declare (not safe))
                   (cons __tmp270366 __tmp270361))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp270360))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp270359
                                              _stx265661_))))))
                               _hd265668265682_)
                              (let ()
                                (declare (not safe))
                                (_g265664265674_ _g265665265677_)))))
                      (let ()
                        (declare (not safe))
                        (_g265664265674_ _g265665265677_))))))
          (declare (not safe))
          (_g265663265703_ _args265662_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__t270064)
        (let ((__id270065
               (let ((__tmp270066
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t270064 'id))))
                 (if __tmp270066 __tmp270066 (error '"Unknown slot" 'id)))))
          (lambda (_self265660_ _stx265661_ _args265662_)
            (let* ((_g265664265674_
                    (lambda (_g265665265671_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g265665265671_))))
                   (_g265663265703_
                    (lambda (_g265665265677_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g265665265677_))
                          (let ((_e265669265679_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g265665265677_))))
                            (let ((_hd265668265682_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e265669265679_)))
                                  (_tl265667265684_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e265669265679_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl265667265684_))
                                  ((lambda (_L265687_)
                                     (let* ((_klass265698_
                                             (let ((__tmp270380
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self265660_
                                                       __id270065
                                                       __t270064
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx265661_
                                                __tmp270380)))
                                            (_object265700_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L265687_))))
                                       (if (##structure-ref
                                            _klass265698_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp270396
                                                  (let ((__tmp270397
                                                         (let ((__tmp270399
                                                                (let ((__tmp270400
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp270401
                                      (##structure-ref
                                       _klass265698_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp270401 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp270400)))
                       (__tmp270398
                        (let ()
                          (declare (not safe))
                          (cons _object265700_ '()))))
                   (declare (not safe))
                   (cons __tmp270399 __tmp270398))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp270397))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp270396
                                              _stx265661_))
                                           (if (##structure-ref
                                                _klass265698_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp270390
                                                      (let ((__tmp270391
                                                             (let ((__tmp270393
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp270394
                                   (let ((__tmp270395
                                          (##structure-ref
                                           _klass265698_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp270395 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp270394)))
                           (__tmp270392
                            (let ()
                              (declare (not safe))
                              (cons _object265700_ '()))))
                       (declare (not safe))
                       (cons __tmp270393 __tmp270392))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp270391))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp270390
                                                  _stx265661_))
                                               (let ((__tmp270381
                                                      (let ((__tmp270382
                                                             (let ((__tmp270388
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp270389
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp270389)))
                           (__tmp270383
                            (let ((__tmp270385
                                   (let ((__tmp270386
                                          (let ((__tmp270387
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self265660_
                                                    __id270065
                                                    __t270064
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp270387 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp270386)))
                                  (__tmp270384
                                   (let ()
                                     (declare (not safe))
                                     (cons _object265700_ '()))))
                              (declare (not safe))
                              (cons __tmp270385 __tmp270384))))
                       (declare (not safe))
                       (cons __tmp270388 __tmp270383))))
                (declare (not safe))
                (cons '%#call __tmp270382))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp270381
                                                  _stx265661_))))))
                                   _hd265668265682_)
                                  (let ()
                                    (declare (not safe))
                                    (_g265664265674_ _g265665265677_)))))
                          (let ()
                            (declare (not safe))
                            (_g265664265674_ _g265665265677_))))))
              (declare (not safe))
              (_g265663265703_ _args265662_))))))
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
      (lambda (_self265394_ _stx265395_ _args265396_)
        (let* ((_klass265398_
                (let ((__tmp270402
                       (##structure-ref _self265394_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx265395_ __tmp270402)))
               (_fields265400_
                (let ((__tmp270403
                       (length (##structure-ref
                                _klass265398_
                                '5
                                gxc#!class::t
                                '#f))))
                  (declare (not safe))
                  (fx+ __tmp270403 '1)))
               (_args265402_ (map gxc#compile-e _args265396_)))
          (let ((_$e265405_
                 (##structure-ref _klass265398_ '6 gxc#!class::t '#f)))
            (if _$e265405_
                ((lambda (_ctor265408_)
                   (let ((_$obj265410_
                          (let ((__tmp270487 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp270487)))
                         (_ctor-impl265411_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass265398_
                             _ctor265408_))))
                     (let ((__tmp270488
                            (let ((__tmp270489
                                   (let ((__tmp270554
                                          (let ((__tmp270555
                                                 (let ((__tmp270568
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj265410_
                                                                '())))
                                                       (__tmp270556
                                                        (let ((__tmp270557
                                                               (let ((__tmp270558
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp270566
                                     (let ((__tmp270567
                                            (let ()
                                              (declare (not safe))
                                              (cons 'make-object* '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp270567)))
                                    (__tmp270559
                                     (let ((__tmp270563
                                            (let ((__tmp270564
                                                   (let ((__tmp270565
                                                          (##structure-ref
                                                           _self265394_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp270565 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp270564)))
                                           (__tmp270560
                                            (let ((__tmp270561
                                                   (let ((__tmp270562
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _fields265400_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#quote
                                                           __tmp270562))))
                                              (declare (not safe))
                                              (cons __tmp270561 '()))))
                                       (declare (not safe))
                                       (cons __tmp270563 __tmp270560))))
                                (declare (not safe))
                                (cons __tmp270566 __tmp270559))))
                         (declare (not safe))
                         (cons '%#call __tmp270558))))
                  (declare (not safe))
                  (cons __tmp270557 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp270568
                                                         __tmp270556))))
                                            (declare (not safe))
                                            (cons __tmp270555 '())))
                                         (__tmp270490
                                          (let ((__tmp270491
                                                 (let ((__tmp270492
                                                        (let ((__tmp270496
                                                               (if _ctor-impl265411_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp270548
                                  (let ((__tmp270552
                                         (let ((__tmp270553
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl265411_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp270553)))
                                        (__tmp270549
                                         (let ((__tmp270550
                                                (let ((__tmp270551
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj265410_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp270551))))
                                           (declare (not safe))
                                           (cons __tmp270550 _args265402_))))
                                    (declare (not safe))
                                    (cons __tmp270552 __tmp270549))))
                             (declare (not safe))
                             (cons '%#call __tmp270548))
                           (let* ((_$ctor265413_
                                   (let ((__tmp270497 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp270497)))
                                  (__tmp270498
                                   (let ((__tmp270533
                                          (let ((__tmp270534
                                                 (let ((__tmp270547
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor265413_
                                                                '())))
                                                       (__tmp270535
                                                        (let ((__tmp270536
                                                               (let ((__tmp270537
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp270545
                                     (let ((__tmp270546
                                            (let ()
                                              (declare (not safe))
                                              (cons 'find-method '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp270546)))
                                    (__tmp270538
                                     (let ((__tmp270542
                                            (let ((__tmp270543
                                                   (let ((__tmp270544
                                                          (##structure-ref
                                                           _self265394_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp270544 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp270543)))
                                           (__tmp270539
                                            (let ((__tmp270540
                                                   (let ((__tmp270541
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _ctor265408_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#quote
                                                           __tmp270541))))
                                              (declare (not safe))
                                              (cons __tmp270540 '()))))
                                       (declare (not safe))
                                       (cons __tmp270542 __tmp270539))))
                                (declare (not safe))
                                (cons __tmp270545 __tmp270538))))
                         (declare (not safe))
                         (cons '%#call __tmp270537))))
                  (declare (not safe))
                  (cons __tmp270536 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp270547
                                                         __tmp270535))))
                                            (declare (not safe))
                                            (cons __tmp270534 '())))
                                         (__tmp270499
                                          (let ((__tmp270500
                                                 (let ((__tmp270501
                                                        (let ((__tmp270531
                                                               (let ((__tmp270532
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor265413_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp270532)))
                      (__tmp270502
                       (let ((__tmp270524
                              (let ((__tmp270525
                                     (let ((__tmp270529
                                            (let ((__tmp270530
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor265413_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp270530)))
                                           (__tmp270526
                                            (let ((__tmp270527
                                                   (let ((__tmp270528
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj265410_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp270528))))
                                              (declare (not safe))
                                              (cons __tmp270527
                                                    _args265402_))))
                                       (declare (not safe))
                                       (cons __tmp270529 __tmp270526))))
                                (declare (not safe))
                                (cons '%#call __tmp270525)))
                             (__tmp270503
                              (let ((__tmp270504
                                     (let ((__tmp270505
                                            (let ((__tmp270522
                                                   (let ((__tmp270523
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp270523)))
                                                  (__tmp270506
                                                   (let ((__tmp270520
                                                          (let ((__tmp270521
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp270521)))
                 (__tmp270507
                  (let ((__tmp270518
                         (let ((__tmp270519
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp270519)))
                        (__tmp270508
                         (let ((__tmp270515
                                (let ((__tmp270516
                                       (let ((__tmp270517
                                              (##structure-ref
                                               _self265394_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp270517 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp270516)))
                               (__tmp270509
                                (let ((__tmp270513
                                       (let ((__tmp270514
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp270514)))
                                      (__tmp270510
                                       (let ((__tmp270511
                                              (let ((__tmp270512
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor265408_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp270512))))
                                         (declare (not safe))
                                         (cons __tmp270511 '()))))
                                  (declare (not safe))
                                  (cons __tmp270513 __tmp270510))))
                           (declare (not safe))
                           (cons __tmp270515 __tmp270509))))
                    (declare (not safe))
                    (cons __tmp270518 __tmp270508))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp270520
                                                           __tmp270507))))
                                              (declare (not safe))
                                              (cons __tmp270522 __tmp270506))))
                                       (declare (not safe))
                                       (cons '%#call __tmp270505))))
                                (declare (not safe))
                                (cons __tmp270504 '()))))
                         (declare (not safe))
                         (cons __tmp270524 __tmp270503))))
                  (declare (not safe))
                  (cons __tmp270531 __tmp270502))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp270501))))
                                            (declare (not safe))
                                            (cons __tmp270500 '()))))
                                     (declare (not safe))
                                     (cons __tmp270533 __tmp270499))))
                             (declare (not safe))
                             (cons '%#let-values __tmp270498))))
                      (__tmp270493
                       (let ((__tmp270494
                              (let ((__tmp270495
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj265410_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp270495))))
                         (declare (not safe))
                         (cons __tmp270494 '()))))
                  (declare (not safe))
                  (cons __tmp270496 __tmp270493))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp270492))))
                                            (declare (not safe))
                                            (cons __tmp270491 '()))))
                                     (declare (not safe))
                                     (cons __tmp270554 __tmp270490))))
                              (declare (not safe))
                              (cons '%#let-values __tmp270489))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp270488 _stx265395_))))
                 _$e265405_)
                (if (##structure-ref _klass265398_ '7 gxc#!class::t '#f)
                    (if (fx= (length _args265402_)
                             (let ()
                               (declare (not safe))
                               (fx- _fields265400_ '1)))
                        (let ((__tmp270479
                               (let ((__tmp270480
                                      (let ((__tmp270485
                                             (let ((__tmp270486
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '##structure
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp270486)))
                                            (__tmp270481
                                             (let ((__tmp270482
                                                    (let ((__tmp270483
                                                           (let ((__tmp270484
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##structure-ref _self265394_ '1 gxc#!type::t '#f)))
                     (declare (not safe))
                     (cons __tmp270484 '()))))
              (declare (not safe))
              (cons '%#ref __tmp270483))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp270482
                                                     _args265402_))))
                                        (declare (not safe))
                                        (cons __tmp270485 __tmp270481))))
                                 (declare (not safe))
                                 (cons '%#call __tmp270480))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp270479 _stx265395_))
                        (let ((__tmp270478
                               (##structure-ref
                                _self265394_
                                '1
                                gxc#!type::t
                                '#f))
                              (__tmp270477
                               (length (##structure-ref
                                        _klass265398_
                                        '5
                                        gxc#!class::t
                                        '#f))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"illegal struct constructor application; arity mismatch"
                           _stx265395_
                           __tmp270478
                           __tmp270477)))
                    (let ((_$obj265415_
                           (let ((__tmp270404 (gensym '__obj)))
                             (declare (not safe))
                             (make-symbol__0 __tmp270404))))
                      (let _lp265417_ ((_rest265419_ _args265402_)
                                       (_initializers265420_ '()))
                        (let* ((___stx270141270142_ _rest265419_)
                               (_g265424265445_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     ___stx270141270142_)))))
                          (let ((___kont270143270144_
                                 (lambda (_L265499_ _L265500_ _L265501_)
                                   (let* ((_slot265530_
                                           (keyword->symbol
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _L265501_))))
                                          (_off265532_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!class-slot->field-offset
                                              _klass265398_
                                              _slot265530_))))
                                     (if _off265532_
                                         (let ((__tmp270406
                                                (let ((__tmp270407
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _off265532_
                                                               _L265500_))))
                                                  (declare (not safe))
                                                  (cons __tmp270407
                                                        _initializers265420_))))
                                           (declare (not safe))
                                           (_lp265417_ _L265499_ __tmp270406))
                                         (let ((__tmp270405
                                                (##structure-ref
                                                 _self265394_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#raise-compile-error
                                            '"unknown slot"
                                            _stx265395_
                                            __tmp270405
                                            _slot265530_))))))
                                (___kont270145270146_
                                 (lambda ()
                                   (let ((__tmp270408
                                          (let ((__tmp270409
                                                 (let ((__tmp270432
                                                        (let ((__tmp270433
                                                               (let ((__tmp270446
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$obj265415_ '())))
                             (__tmp270434
                              (let ((__tmp270435
                                     (let ((__tmp270436
                                            (let ((__tmp270444
                                                   (let ((__tmp270445
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'make-object*
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp270445)))
                                                  (__tmp270437
                                                   (let ((__tmp270441
                                                          (let ((__tmp270442
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp270443
                                (##structure-ref
                                 _self265394_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp270443 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp270442)))
                 (__tmp270438
                  (let ((__tmp270439
                         (let ((__tmp270440
                                (let ()
                                  (declare (not safe))
                                  (cons _fields265400_ '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp270440))))
                    (declare (not safe))
                    (cons __tmp270439 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp270441
                                                           __tmp270438))))
                                              (declare (not safe))
                                              (cons __tmp270444 __tmp270437))))
                                       (declare (not safe))
                                       (cons '%#call __tmp270436))))
                                (declare (not safe))
                                (cons __tmp270435 '()))))
                         (declare (not safe))
                         (cons __tmp270446 __tmp270434))))
                  (declare (not safe))
                  (cons __tmp270433 '())))
               (__tmp270410
                (let ((__tmp270411
                       (let ((__tmp270412
                              (let ((__tmp270429
                                     (let ((__tmp270430
                                            (let ((__tmp270431
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$obj265415_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp270431))))
                                       (declare (not safe))
                                       (cons __tmp270430 '())))
                                    (__tmp270413
                                     (let ((__tmp270414
                                            (lambda (_i265459_ _r265460_)
                                              (let ((__tmp270415
                                                     (let ((__tmp270416
                                                            (let ((__tmp270426
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp270427
                                  (let ((__tmp270428
                                         (##structure-ref
                                          _self265394_
                                          '1
                                          gxc#!type::t
                                          '#f)))
                                    (declare (not safe))
                                    (cons __tmp270428 '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp270427)))
                          (__tmp270417
                           (let ((__tmp270423
                                  (let ((__tmp270424
                                         (let ((__tmp270425 (car _i265459_)))
                                           (declare (not safe))
                                           (cons __tmp270425 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp270424)))
                                 (__tmp270418
                                  (let ((__tmp270421
                                         (let ((__tmp270422
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj265415_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp270422)))
                                        (__tmp270419
                                         (let ((__tmp270420 (cdr _i265459_)))
                                           (declare (not safe))
                                           (cons __tmp270420 '()))))
                                    (declare (not safe))
                                    (cons __tmp270421 __tmp270419))))
                             (declare (not safe))
                             (cons __tmp270423 __tmp270418))))
                      (declare (not safe))
                      (cons __tmp270426 __tmp270417))))
               (declare (not safe))
               (cons '%#struct-unchecked-set! __tmp270416))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp270415
                                                      _r265460_)))))
                                       (declare (not safe))
                                       (foldl1 __tmp270414
                                               '()
                                               _initializers265420_))))
                                (declare (not safe))
                                (foldr1 cons __tmp270429 __tmp270413))))
                         (declare (not safe))
                         (cons '%#begin __tmp270412))))
                  (declare (not safe))
                  (cons __tmp270411 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp270432
                                                         __tmp270410))))
                                            (declare (not safe))
                                            (cons '%#let-values __tmp270409))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp270408
                                      _stx265395_))))
                                (___kont270147270148_
                                 (lambda ()
                                   (let ((__tmp270447
                                          (let ((__tmp270448
                                                 (let ((__tmp270462
                                                        (let ((__tmp270463
                                                               (let ((__tmp270476
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$obj265415_ '())))
                             (__tmp270464
                              (let ((__tmp270465
                                     (let ((__tmp270466
                                            (let ((__tmp270474
                                                   (let ((__tmp270475
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'make-object*
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp270475)))
                                                  (__tmp270467
                                                   (let ((__tmp270471
                                                          (let ((__tmp270472
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp270473
                                (##structure-ref
                                 _self265394_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp270473 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp270472)))
                 (__tmp270468
                  (let ((__tmp270469
                         (let ((__tmp270470
                                (let ()
                                  (declare (not safe))
                                  (cons _fields265400_ '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp270470))))
                    (declare (not safe))
                    (cons __tmp270469 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp270471
                                                           __tmp270468))))
                                              (declare (not safe))
                                              (cons __tmp270474 __tmp270467))))
                                       (declare (not safe))
                                       (cons '%#call __tmp270466))))
                                (declare (not safe))
                                (cons __tmp270465 '()))))
                         (declare (not safe))
                         (cons __tmp270476 __tmp270464))))
                  (declare (not safe))
                  (cons __tmp270463 '())))
               (__tmp270449
                (let ((__tmp270450
                       (let ((__tmp270451
                              (let ((__tmp270455
                                     (let ((__tmp270456
                                            (let ((__tmp270460
                                                   (let ((__tmp270461
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'class-instance-init!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp270461)))
                                                  (__tmp270457
                                                   (let ((__tmp270458
                                                          (let ((__tmp270459
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj265415_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp270459))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp270458
                                                           _args265402_))))
                                              (declare (not safe))
                                              (cons __tmp270460 __tmp270457))))
                                       (declare (not safe))
                                       (cons '%#call __tmp270456)))
                                    (__tmp270452
                                     (let ((__tmp270453
                                            (let ((__tmp270454
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$obj265415_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp270454))))
                                       (declare (not safe))
                                       (cons __tmp270453 '()))))
                                (declare (not safe))
                                (cons __tmp270455 __tmp270452))))
                         (declare (not safe))
                         (cons '%#begin __tmp270451))))
                  (declare (not safe))
                  (cons __tmp270450 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp270462
                                                         __tmp270449))))
                                            (declare (not safe))
                                            (cons '%#let-values __tmp270448))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp270447
                                      _stx265395_)))))
                            (let* ((_g265422265462_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? ___stx270141270142_))
                                          (___kont270145270146_)
                                          (___kont270147270148_))))
                                   (___match270178270179_
                                    (lambda (_e265431265467_
                                             _hd265430265470_
                                             _tl265429265472_
                                             _e265434265475_
                                             _hd265433265478_
                                             _tl265432265480_
                                             _e265437265483_
                                             _hd265436265486_
                                             _tl265435265488_
                                             _e265440265491_
                                             _hd265439265494_
                                             _tl265438265496_)
                                      (let ((_L265499_ _tl265438265496_)
                                            (_L265500_ _hd265439265494_)
                                            (_L265501_ _hd265436265486_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-keyword? _L265501_))
                                            (___kont270143270144_
                                             _L265499_
                                             _L265500_
                                             _L265501_)
                                            (___kont270147270148_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? ___stx270141270142_))
                                  (let ((_e265431265467_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e ___stx270141270142_))))
                                    (let ((_tl265429265472_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e265431265467_)))
                                          (_hd265430265470_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e265431265467_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd265430265470_))
                                          (let ((_e265434265475_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd265430265470_))))
                                            (let ((_tl265432265480_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e265434265475_)))
                                                  (_hd265433265478_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e265434265475_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd265433265478_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#quote
                                                         _hd265433265478_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl265432265480_))
                                                          (let ((_e265437265483_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl265432265480_))))
                    (let ((_tl265435265488_
                           (let ()
                             (declare (not safe))
                             (##cdr _e265437265483_)))
                          (_hd265436265486_
                           (let ()
                             (declare (not safe))
                             (##car _e265437265483_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl265435265488_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl265429265472_))
                              (let ((_e265440265491_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl265429265472_))))
                                (let ((_tl265438265496_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e265440265491_)))
                                      (_hd265439265494_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e265440265491_))))
                                  (___match270178270179_
                                   _e265431265467_
                                   _hd265430265470_
                                   _tl265429265472_
                                   _e265434265475_
                                   _hd265433265478_
                                   _tl265432265480_
                                   _e265437265483_
                                   _hd265436265486_
                                   _tl265435265488_
                                   _e265440265491_
                                   _hd265439265494_
                                   _tl265438265496_)))
                              (___kont270147270148_))
                          (___kont270147270148_))))
                  (___kont270147270148_))
              (___kont270147270148_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont270147270148_))))
                                          (___kont270147270148_))))
                                  (let ()
                                    (declare (not safe))
                                    (_g265422265462_))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__t270067)
        (let ((__id270068
               (let ((__tmp270069
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t270067 'id))))
                 (if __tmp270069 __tmp270069 (error '"Unknown slot" 'id)))))
          (lambda (_self265394_ _stx265395_ _args265396_)
            (let* ((_klass265398_
                    (let ((__tmp270569
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self265394_
                              __id270068
                              __t270067
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx265395_ __tmp270569)))
                   (_fields265400_
                    (let ((__tmp270570
                           (length (##structure-ref
                                    _klass265398_
                                    '5
                                    gxc#!class::t
                                    '#f))))
                      (declare (not safe))
                      (fx+ __tmp270570 '1)))
                   (_args265402_ (map gxc#compile-e _args265396_)))
              (let ((_$e265405_
                     (##structure-ref _klass265398_ '6 gxc#!class::t '#f)))
                (if _$e265405_
                    ((lambda (_ctor265408_)
                       (let ((_$obj265410_
                              (let ((__tmp270654 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp270654)))
                             (_ctor-impl265411_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass265398_
                                 _ctor265408_))))
                         (let ((__tmp270655
                                (let ((__tmp270656
                                       (let ((__tmp270721
                                              (let ((__tmp270722
                                                     (let ((__tmp270735
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj265410_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp270723
                    (let ((__tmp270724
                           (let ((__tmp270725
                                  (let ((__tmp270733
                                         (let ((__tmp270734
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'make-object* '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp270734)))
                                        (__tmp270726
                                         (let ((__tmp270730
                                                (let ((__tmp270731
                                                       (let ((__tmp270732
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self265394_
                         __id270068
                         __t270067
                         '#f))))
                 (declare (not safe))
                 (cons __tmp270732 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp270731)))
                                               (__tmp270727
                                                (let ((__tmp270728
                                                       (let ((__tmp270729
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _fields265400_ '()))))
                 (declare (not safe))
                 (cons '%#quote __tmp270729))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp270728 '()))))
                                           (declare (not safe))
                                           (cons __tmp270730 __tmp270727))))
                                    (declare (not safe))
                                    (cons __tmp270733 __tmp270726))))
                             (declare (not safe))
                             (cons '%#call __tmp270725))))
                      (declare (not safe))
                      (cons __tmp270724 '()))))
               (declare (not safe))
               (cons __tmp270735 __tmp270723))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp270722 '())))
                                             (__tmp270657
                                              (let ((__tmp270658
                                                     (let ((__tmp270659
                                                            (let ((__tmp270663
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl265411_
                               (let ((__tmp270715
                                      (let ((__tmp270719
                                             (let ((__tmp270720
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl265411_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp270720)))
                                            (__tmp270716
                                             (let ((__tmp270717
                                                    (let ((__tmp270718
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj265410_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp270718))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp270717
                                                     _args265402_))))
                                        (declare (not safe))
                                        (cons __tmp270719 __tmp270716))))
                                 (declare (not safe))
                                 (cons '%#call __tmp270715))
                               (let* ((_$ctor265413_
                                       (let ((__tmp270664
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp270664)))
                                      (__tmp270665
                                       (let ((__tmp270700
                                              (let ((__tmp270701
                                                     (let ((__tmp270714
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor265413_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp270702
                    (let ((__tmp270703
                           (let ((__tmp270704
                                  (let ((__tmp270712
                                         (let ((__tmp270713
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'find-method '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp270713)))
                                        (__tmp270705
                                         (let ((__tmp270709
                                                (let ((__tmp270710
                                                       (let ((__tmp270711
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self265394_
                         __id270068
                         __t270067
                         '#f))))
                 (declare (not safe))
                 (cons __tmp270711 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp270710)))
                                               (__tmp270706
                                                (let ((__tmp270707
                                                       (let ((__tmp270708
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _ctor265408_ '()))))
                 (declare (not safe))
                 (cons '%#quote __tmp270708))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp270707 '()))))
                                           (declare (not safe))
                                           (cons __tmp270709 __tmp270706))))
                                    (declare (not safe))
                                    (cons __tmp270712 __tmp270705))))
                             (declare (not safe))
                             (cons '%#call __tmp270704))))
                      (declare (not safe))
                      (cons __tmp270703 '()))))
               (declare (not safe))
               (cons __tmp270714 __tmp270702))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp270701 '())))
                                             (__tmp270666
                                              (let ((__tmp270667
                                                     (let ((__tmp270668
                                                            (let ((__tmp270698
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp270699
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor265413_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp270699)))
                          (__tmp270669
                           (let ((__tmp270691
                                  (let ((__tmp270692
                                         (let ((__tmp270696
                                                (let ((__tmp270697
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor265413_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp270697)))
                                               (__tmp270693
                                                (let ((__tmp270694
                                                       (let ((__tmp270695
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj265410_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp270695))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp270694
                                                        _args265402_))))
                                           (declare (not safe))
                                           (cons __tmp270696 __tmp270693))))
                                    (declare (not safe))
                                    (cons '%#call __tmp270692)))
                                 (__tmp270670
                                  (let ((__tmp270671
                                         (let ((__tmp270672
                                                (let ((__tmp270689
                                                       (let ((__tmp270690
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp270690)))
              (__tmp270673
               (let ((__tmp270687
                      (let ((__tmp270688
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp270688)))
                     (__tmp270674
                      (let ((__tmp270685
                             (let ((__tmp270686
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp270686)))
                            (__tmp270675
                             (let ((__tmp270682
                                    (let ((__tmp270683
                                           (let ((__tmp270684
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self265394_
                                                     __id270068
                                                     __t270067
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp270684 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp270683)))
                                   (__tmp270676
                                    (let ((__tmp270680
                                           (let ((__tmp270681
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp270681)))
                                          (__tmp270677
                                           (let ((__tmp270678
                                                  (let ((__tmp270679
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor265408_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp270679))))
                                             (declare (not safe))
                                             (cons __tmp270678 '()))))
                                      (declare (not safe))
                                      (cons __tmp270680 __tmp270677))))
                               (declare (not safe))
                               (cons __tmp270682 __tmp270676))))
                        (declare (not safe))
                        (cons __tmp270685 __tmp270675))))
                 (declare (not safe))
                 (cons __tmp270687 __tmp270674))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp270689
                                                        __tmp270673))))
                                           (declare (not safe))
                                           (cons '%#call __tmp270672))))
                                    (declare (not safe))
                                    (cons __tmp270671 '()))))
                             (declare (not safe))
                             (cons __tmp270691 __tmp270670))))
                      (declare (not safe))
                      (cons __tmp270698 __tmp270669))))
               (declare (not safe))
               (cons '%#if __tmp270668))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp270667 '()))))
                                         (declare (not safe))
                                         (cons __tmp270700 __tmp270666))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp270665))))
                          (__tmp270660
                           (let ((__tmp270661
                                  (let ((__tmp270662
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj265410_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp270662))))
                             (declare (not safe))
                             (cons __tmp270661 '()))))
                      (declare (not safe))
                      (cons __tmp270663 __tmp270660))))
               (declare (not safe))
               (cons '%#begin __tmp270659))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp270658 '()))))
                                         (declare (not safe))
                                         (cons __tmp270721 __tmp270657))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp270656))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp270655 _stx265395_))))
                     _$e265405_)
                    (if (##structure-ref _klass265398_ '7 gxc#!class::t '#f)
                        (if (fx= (length _args265402_)
                                 (let ()
                                   (declare (not safe))
                                   (fx- _fields265400_ '1)))
                            (let ((__tmp270646
                                   (let ((__tmp270647
                                          (let ((__tmp270652
                                                 (let ((__tmp270653
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons '##structure
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp270653)))
                                                (__tmp270648
                                                 (let ((__tmp270649
                                                        (let ((__tmp270650
                                                               (let ((__tmp270651
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self265394_
                                 __id270068
                                 __t270067
                                 '#f))))
                         (declare (not safe))
                         (cons __tmp270651 '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp270650))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp270649
                                                         _args265402_))))
                                            (declare (not safe))
                                            (cons __tmp270652 __tmp270648))))
                                     (declare (not safe))
                                     (cons '%#call __tmp270647))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp270646 _stx265395_))
                            (let ((__tmp270645
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _self265394_
                                      __id270068
                                      __t270067
                                      '#f)))
                                  (__tmp270644
                                   (length (##structure-ref
                                            _klass265398_
                                            '5
                                            gxc#!class::t
                                            '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _stx265395_
                               __tmp270645
                               __tmp270644)))
                        (let ((_$obj265415_
                               (let ((__tmp270571 (gensym '__obj)))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp270571))))
                          (let _lp265417_ ((_rest265419_ _args265402_)
                                           (_initializers265420_ '()))
                            (let* ((___stx270183270184_ _rest265419_)
                                   (_g265424265445_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         ___stx270183270184_)))))
                              (let ((___kont270185270186_
                                     (lambda (_L265499_ _L265500_ _L265501_)
                                       (let* ((_slot265530_
                                               (keyword->symbol
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L265501_))))
                                              (_off265532_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _klass265398_
                                                  _slot265530_))))
                                         (if _off265532_
                                             (let ((__tmp270573
                                                    (let ((__tmp270574
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _off265532_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L265500_))))
              (declare (not safe))
              (cons __tmp270574 _initializers265420_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_lp265417_
                                                _L265499_
                                                __tmp270573))
                                             (let ((__tmp270572
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self265394_
                                                       __id270068
                                                       __t270067
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _stx265395_
                                                __tmp270572
                                                _slot265530_))))))
                                    (___kont270187270188_
                                     (lambda ()
                                       (let ((__tmp270575
                                              (let ((__tmp270576
                                                     (let ((__tmp270599
                                                            (let ((__tmp270600
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp270613
                                  (let ()
                                    (declare (not safe))
                                    (cons _$obj265415_ '())))
                                 (__tmp270601
                                  (let ((__tmp270602
                                         (let ((__tmp270603
                                                (let ((__tmp270611
                                                       (let ((__tmp270612
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'make-object* '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp270612)))
              (__tmp270604
               (let ((__tmp270608
                      (let ((__tmp270609
                             (let ((__tmp270610
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self265394_
                                       __id270068
                                       __t270067
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp270610 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp270609)))
                     (__tmp270605
                      (let ((__tmp270606
                             (let ((__tmp270607
                                    (let ()
                                      (declare (not safe))
                                      (cons _fields265400_ '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp270607))))
                        (declare (not safe))
                        (cons __tmp270606 '()))))
                 (declare (not safe))
                 (cons __tmp270608 __tmp270605))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp270611
                                                        __tmp270604))))
                                           (declare (not safe))
                                           (cons '%#call __tmp270603))))
                                    (declare (not safe))
                                    (cons __tmp270602 '()))))
                             (declare (not safe))
                             (cons __tmp270613 __tmp270601))))
                      (declare (not safe))
                      (cons __tmp270600 '())))
                   (__tmp270577
                    (let ((__tmp270578
                           (let ((__tmp270579
                                  (let ((__tmp270596
                                         (let ((__tmp270597
                                                (let ((__tmp270598
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj265415_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp270598))))
                                           (declare (not safe))
                                           (cons __tmp270597 '())))
                                        (__tmp270580
                                         (let ((__tmp270581
                                                (lambda (_i265459_ _r265460_)
                                                  (let ((__tmp270582
                                                         (let ((__tmp270583
                                                                (let ((__tmp270593
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp270594
                                      (let ((__tmp270595
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _self265394_
                                                __id270068
                                                __t270067
                                                '#f))))
                                        (declare (not safe))
                                        (cons __tmp270595 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp270594)))
                              (__tmp270584
                               (let ((__tmp270590
                                      (let ((__tmp270591
                                             (let ((__tmp270592
                                                    (car _i265459_)))
                                               (declare (not safe))
                                               (cons __tmp270592 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp270591)))
                                     (__tmp270585
                                      (let ((__tmp270588
                                             (let ((__tmp270589
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj265415_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp270589)))
                                            (__tmp270586
                                             (let ((__tmp270587
                                                    (cdr _i265459_)))
                                               (declare (not safe))
                                               (cons __tmp270587 '()))))
                                        (declare (not safe))
                                        (cons __tmp270588 __tmp270586))))
                                 (declare (not safe))
                                 (cons __tmp270590 __tmp270585))))
                          (declare (not safe))
                          (cons __tmp270593 __tmp270584))))
                   (declare (not safe))
                   (cons '%#struct-unchecked-set! __tmp270583))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp270582
                                                          _r265460_)))))
                                           (declare (not safe))
                                           (foldl1 __tmp270581
                                                   '()
                                                   _initializers265420_))))
                                    (declare (not safe))
                                    (foldr1 cons __tmp270596 __tmp270580))))
                             (declare (not safe))
                             (cons '%#begin __tmp270579))))
                      (declare (not safe))
                      (cons __tmp270578 '()))))
               (declare (not safe))
               (cons __tmp270599 __tmp270577))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#let-values
                                                      __tmp270576))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp270575
                                          _stx265395_))))
                                    (___kont270189270190_
                                     (lambda ()
                                       (let ((__tmp270614
                                              (let ((__tmp270615
                                                     (let ((__tmp270629
                                                            (let ((__tmp270630
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp270643
                                  (let ()
                                    (declare (not safe))
                                    (cons _$obj265415_ '())))
                                 (__tmp270631
                                  (let ((__tmp270632
                                         (let ((__tmp270633
                                                (let ((__tmp270641
                                                       (let ((__tmp270642
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'make-object* '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp270642)))
              (__tmp270634
               (let ((__tmp270638
                      (let ((__tmp270639
                             (let ((__tmp270640
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self265394_
                                       __id270068
                                       __t270067
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp270640 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp270639)))
                     (__tmp270635
                      (let ((__tmp270636
                             (let ((__tmp270637
                                    (let ()
                                      (declare (not safe))
                                      (cons _fields265400_ '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp270637))))
                        (declare (not safe))
                        (cons __tmp270636 '()))))
                 (declare (not safe))
                 (cons __tmp270638 __tmp270635))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp270641
                                                        __tmp270634))))
                                           (declare (not safe))
                                           (cons '%#call __tmp270633))))
                                    (declare (not safe))
                                    (cons __tmp270632 '()))))
                             (declare (not safe))
                             (cons __tmp270643 __tmp270631))))
                      (declare (not safe))
                      (cons __tmp270630 '())))
                   (__tmp270616
                    (let ((__tmp270617
                           (let ((__tmp270618
                                  (let ((__tmp270622
                                         (let ((__tmp270623
                                                (let ((__tmp270627
                                                       (let ((__tmp270628
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'class-instance-init! '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp270628)))
              (__tmp270624
               (let ((__tmp270625
                      (let ((__tmp270626
                             (let ()
                               (declare (not safe))
                               (cons _$obj265415_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp270626))))
                 (declare (not safe))
                 (cons __tmp270625 _args265402_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp270627
                                                        __tmp270624))))
                                           (declare (not safe))
                                           (cons '%#call __tmp270623)))
                                        (__tmp270619
                                         (let ((__tmp270620
                                                (let ((__tmp270621
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj265415_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp270621))))
                                           (declare (not safe))
                                           (cons __tmp270620 '()))))
                                    (declare (not safe))
                                    (cons __tmp270622 __tmp270619))))
                             (declare (not safe))
                             (cons '%#begin __tmp270618))))
                      (declare (not safe))
                      (cons __tmp270617 '()))))
               (declare (not safe))
               (cons __tmp270629 __tmp270616))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#let-values
                                                      __tmp270615))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp270614
                                          _stx265395_)))))
                                (let* ((_g265422265462_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 ___stx270183270184_))
                                              (___kont270187270188_)
                                              (___kont270189270190_))))
                                       (___match270220270221_
                                        (lambda (_e265431265467_
                                                 _hd265430265470_
                                                 _tl265429265472_
                                                 _e265434265475_
                                                 _hd265433265478_
                                                 _tl265432265480_
                                                 _e265437265483_
                                                 _hd265436265486_
                                                 _tl265435265488_
                                                 _e265440265491_
                                                 _hd265439265494_
                                                 _tl265438265496_)
                                          (let ((_L265499_ _tl265438265496_)
                                                (_L265500_ _hd265439265494_)
                                                (_L265501_ _hd265436265486_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword? _L265501_))
                                                (___kont270185270186_
                                                 _L265499_
                                                 _L265500_
                                                 _L265501_)
                                                (___kont270189270190_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? ___stx270183270184_))
                                      (let ((_e265431265467_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                ___stx270183270184_))))
                                        (let ((_tl265429265472_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e265431265467_)))
                                              (_hd265430265470_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e265431265467_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd265430265470_))
                                              (let ((_e265434265475_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd265430265470_))))
                                                (let ((_tl265432265480_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e265434265475_)))
                                                      (_hd265433265478_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e265434265475_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd265433265478_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _hd265433265478_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl265432265480_))
                      (let ((_e265437265483_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl265432265480_))))
                        (let ((_tl265435265488_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e265437265483_)))
                              (_hd265436265486_
                               (let ()
                                 (declare (not safe))
                                 (##car _e265437265483_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl265435265488_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl265429265472_))
                                  (let ((_e265440265491_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl265429265472_))))
                                    (let ((_tl265438265496_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e265440265491_)))
                                          (_hd265439265494_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e265440265491_))))
                                      (___match270220270221_
                                       _e265431265467_
                                       _hd265430265470_
                                       _tl265429265472_
                                       _e265434265475_
                                       _hd265433265478_
                                       _tl265432265480_
                                       _e265437265483_
                                       _hd265436265486_
                                       _tl265435265488_
                                       _e265440265491_
                                       _hd265439265494_
                                       _tl265438265496_)))
                                  (___kont270189270190_))
                              (___kont270189270190_))))
                      (___kont270189270190_))
                  (___kont270189270190_))
              (___kont270189270190_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont270189270190_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g265422265462_))))))))))))))))
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
      (lambda (_self265217_ _stx265218_ _args265219_)
        (let* ((_g265221265231_
                (lambda (_g265222265228_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g265222265228_))))
               (_g265220265269_
                (lambda (_g265222265234_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g265222265234_))
                      (let ((_e265226265236_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g265222265234_))))
                        (let ((_hd265225265239_
                               (let ()
                                 (declare (not safe))
                                 (##car _e265226265236_)))
                              (_tl265224265241_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e265226265236_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl265224265241_))
                              ((lambda (_L265244_)
                                 (let* ((_klass265255_
                                         (let ((__tmp270736
                                                (##structure-ref
                                                 _self265217_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx265218_
                                            __tmp270736)))
                                        (_field265257_
                                         (let ((__tmp270737
                                                (##structure-ref
                                                 _self265217_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass265255_
                                            __tmp270737)))
                                        (_object265259_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L265244_))))
                                   (if (##structure-ref
                                        _klass265255_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp270814
                                              (let ((__tmp270823
                                                     (if (##structure-ref
                                                          _self265217_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp270815
                                                     (let ((__tmp270820
                                                            (let ((__tmp270821
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp270822
                                  (##structure-ref
                                   _self265217_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp270822 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp270821)))
                   (__tmp270816
                    (let ((__tmp270818
                           (let ((__tmp270819
                                  (let ()
                                    (declare (not safe))
                                    (cons _field265257_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp270819)))
                          (__tmp270817
                           (let ()
                             (declare (not safe))
                             (cons _object265259_ '()))))
                      (declare (not safe))
                      (cons __tmp270818 __tmp270817))))
               (declare (not safe))
               (cons __tmp270820 __tmp270816))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp270823
                                                      __tmp270815))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp270814
                                          _stx265218_))
                                       (if (##structure-ref
                                            _klass265255_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp270804
                                                  (let ((__tmp270813
                                                         (if (##structure-ref
                                                              _self265217_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp270805
                                                         (let ((__tmp270810
                                                                (let ((__tmp270811
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp270812
                                      (##structure-ref
                                       _self265217_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp270812 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp270811)))
                       (__tmp270806
                        (let ((__tmp270808
                               (let ((__tmp270809
                                      (let ()
                                        (declare (not safe))
                                        (cons _field265257_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp270809)))
                              (__tmp270807
                               (let ()
                                 (declare (not safe))
                                 (cons _object265259_ '()))))
                          (declare (not safe))
                          (cons __tmp270808 __tmp270807))))
                   (declare (not safe))
                   (cons __tmp270810 __tmp270806))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp270813
                                                          __tmp270805))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp270804
                                              _stx265218_))
                                           (let ((_$e265262_
                                                  (let ((__tmp270738
                                                         (##structure-ref
                                                          _self265217_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass265255_
                                                     __tmp270738))))
                                             (if _$e265262_
                                                 ((lambda (_klass265265_)
                                                    (let ((__tmp270794
                                                           (let ((__tmp270803
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self265217_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp270795
                          (let ((__tmp270800
                                 (let ((__tmp270801
                                        (let ((__tmp270802
                                               (##structure-ref
                                                _self265217_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp270802 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp270801)))
                                (__tmp270796
                                 (let ((__tmp270798
                                        (let ((__tmp270799
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field265257_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp270799)))
                                       (__tmp270797
                                        (let ()
                                          (declare (not safe))
                                          (cons _object265259_ '()))))
                                   (declare (not safe))
                                   (cons __tmp270798 __tmp270797))))
                            (declare (not safe))
                            (cons __tmp270800 __tmp270796))))
                     (declare (not safe))
                     (cons __tmp270803 __tmp270795))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp270794 _stx265218_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e265262_)
                                                 (if (##structure-ref
                                                      _self265217_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp270748
                                                            (let* ((_$obj265267_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp270749 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp270749)))
                           (__tmp270750
                            (let ((__tmp270790
                                   (let ((__tmp270791
                                          (let ((__tmp270793
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj265267_ '())))
                                                (__tmp270792
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object265259_ '()))))
                                            (declare (not safe))
                                            (cons __tmp270793 __tmp270792))))
                                     (declare (not safe))
                                     (cons __tmp270791 '())))
                                  (__tmp270751
                                   (let ((__tmp270752
                                          (let ((__tmp270753
                                                 (let ((__tmp270782
                                                        (let ((__tmp270783
                                                               (let ((__tmp270787
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp270788
                                     (let ((__tmp270789
                                            (##structure-ref
                                             _klass265255_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp270789 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp270788)))
                             (__tmp270784
                              (let ((__tmp270785
                                     (let ((__tmp270786
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj265267_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp270786))))
                                (declare (not safe))
                                (cons __tmp270785 '()))))
                         (declare (not safe))
                         (cons __tmp270787 __tmp270784))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp270783)))
               (__tmp270754
                (let ((__tmp270771
                       (let ((__tmp270772
                              (let ((__tmp270779
                                     (let ((__tmp270780
                                            (let ((__tmp270781
                                                   (##structure-ref
                                                    _self265217_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp270781 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp270780)))
                                    (__tmp270773
                                     (let ((__tmp270777
                                            (let ((__tmp270778
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field265257_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp270778)))
                                           (__tmp270774
                                            (let ((__tmp270775
                                                   (let ((__tmp270776
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj265267_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp270776))))
                                              (declare (not safe))
                                              (cons __tmp270775 '()))))
                                       (declare (not safe))
                                       (cons __tmp270777 __tmp270774))))
                                (declare (not safe))
                                (cons __tmp270779 __tmp270773))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp270772)))
                      (__tmp270755
                       (let ((__tmp270756
                              (let ((__tmp270757
                                     (let ((__tmp270769
                                            (let ((__tmp270770
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp270770)))
                                           (__tmp270758
                                            (let ((__tmp270766
                                                   (let ((__tmp270767
                                                          (let ((__tmp270768
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self265217_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp270768 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp270767)))
                                                  (__tmp270759
                                                   (let ((__tmp270764
                                                          (let ((__tmp270765
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj265267_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp270765)))
                 (__tmp270760
                  (let ((__tmp270761
                         (let ((__tmp270762
                                (let ((__tmp270763
                                       (##structure-ref
                                        _self265217_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp270763 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp270762))))
                    (declare (not safe))
                    (cons __tmp270761 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp270764
                                                           __tmp270760))))
                                              (declare (not safe))
                                              (cons __tmp270766 __tmp270759))))
                                       (declare (not safe))
                                       (cons __tmp270769 __tmp270758))))
                                (declare (not safe))
                                (cons '%#call __tmp270757))))
                         (declare (not safe))
                         (cons __tmp270756 '()))))
                  (declare (not safe))
                  (cons __tmp270771 __tmp270755))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp270782
                                                         __tmp270754))))
                                            (declare (not safe))
                                            (cons '%#if __tmp270753))))
                                     (declare (not safe))
                                     (cons __tmp270752 '()))))
                              (declare (not safe))
                              (cons __tmp270790 __tmp270751))))
                      (declare (not safe))
                      (cons '%#let-values __tmp270750))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp270748 _stx265218_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp270739
                                                            (let ((__tmp270740
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp270746
                                  (let ((__tmp270747
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp270747)))
                                 (__tmp270741
                                  (let ((__tmp270742
                                         (let ((__tmp270743
                                                (let ((__tmp270744
                                                       (let ((__tmp270745
                                                              (##structure-ref
                                                               _self265217_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp270745
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp270744))))
                                           (declare (not safe))
                                           (cons __tmp270743 '()))))
                                    (declare (not safe))
                                    (cons _object265259_ __tmp270742))))
                             (declare (not safe))
                             (cons __tmp270746 __tmp270741))))
                      (declare (not safe))
                      (cons '%#call __tmp270740))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp270739 _stx265218_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd265225265239_)
                              (let ()
                                (declare (not safe))
                                (_g265221265231_ _g265222265234_)))))
                      (let ()
                        (declare (not safe))
                        (_g265221265231_ _g265222265234_))))))
          (declare (not safe))
          (_g265220265269_ _args265219_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__t270070)
        (let ((__slot270071
               (let ((__tmp270074
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t270070 'slot))))
                 (if __tmp270074 __tmp270074 (error '"Unknown slot" 'slot))))
              (__checked?270072
               (let ((__tmp270075
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t270070 'checked?))))
                 (if __tmp270075
                     __tmp270075
                     (error '"Unknown slot" 'checked?))))
              (__id270073
               (let ((__tmp270076
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t270070 'id))))
                 (if __tmp270076 __tmp270076 (error '"Unknown slot" 'id)))))
          (lambda (_self265217_ _stx265218_ _args265219_)
            (let* ((_g265221265231_
                    (lambda (_g265222265228_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g265222265228_))))
                   (_g265220265269_
                    (lambda (_g265222265234_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g265222265234_))
                          (let ((_e265226265236_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g265222265234_))))
                            (let ((_hd265225265239_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e265226265236_)))
                                  (_tl265224265241_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e265226265236_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl265224265241_))
                                  ((lambda (_L265244_)
                                     (let* ((_klass265255_
                                             (let ((__tmp270824
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self265217_
                                                       __id270073
                                                       __t270070
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx265218_
                                                __tmp270824)))
                                            (_field265257_
                                             (let ((__tmp270825
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self265217_
                                                       __slot270071
                                                       __t270070
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass265255_
                                                __tmp270825)))
                                            (_object265259_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L265244_))))
                                       (if (##structure-ref
                                            _klass265255_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp270902
                                                  (let ((__tmp270911
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self265217_
                        __checked?270072
                        __t270070
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp270903
                 (let ((__tmp270908
                        (let ((__tmp270909
                               (let ((__tmp270910
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self265217_
                                         __id270073
                                         __t270070
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp270910 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp270909)))
                       (__tmp270904
                        (let ((__tmp270906
                               (let ((__tmp270907
                                      (let ()
                                        (declare (not safe))
                                        (cons _field265257_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp270907)))
                              (__tmp270905
                               (let ()
                                 (declare (not safe))
                                 (cons _object265259_ '()))))
                          (declare (not safe))
                          (cons __tmp270906 __tmp270905))))
                   (declare (not safe))
                   (cons __tmp270908 __tmp270904))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp270911
                                                          __tmp270903))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp270902
                                              _stx265218_))
                                           (if (##structure-ref
                                                _klass265255_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp270892
                                                      (let ((__tmp270901
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self265217_
                            __checked?270072
                            __t270070
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp270893
                     (let ((__tmp270898
                            (let ((__tmp270899
                                   (let ((__tmp270900
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self265217_
                                             __id270073
                                             __t270070
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp270900 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp270899)))
                           (__tmp270894
                            (let ((__tmp270896
                                   (let ((__tmp270897
                                          (let ()
                                            (declare (not safe))
                                            (cons _field265257_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp270897)))
                                  (__tmp270895
                                   (let ()
                                     (declare (not safe))
                                     (cons _object265259_ '()))))
                              (declare (not safe))
                              (cons __tmp270896 __tmp270895))))
                       (declare (not safe))
                       (cons __tmp270898 __tmp270894))))
                (declare (not safe))
                (cons __tmp270901 __tmp270893))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp270892
                                                  _stx265218_))
                                               (let ((_$e265262_
                                                      (let ((__tmp270826
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self265217_
                        __slot270071
                        __t270070
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass265255_ __tmp270826))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e265262_
                                                     ((lambda (_klass265265_)
                                                        (let ((__tmp270882
                                                               (let ((__tmp270891
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self265217_
                                     __checked?270072
                                     __t270070
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp270883
                              (let ((__tmp270888
                                     (let ((__tmp270889
                                            (let ((__tmp270890
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self265217_
                                                      __id270073
                                                      __t270070
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp270890 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp270889)))
                                    (__tmp270884
                                     (let ((__tmp270886
                                            (let ((__tmp270887
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field265257_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp270887)))
                                           (__tmp270885
                                            (let ()
                                              (declare (not safe))
                                              (cons _object265259_ '()))))
                                       (declare (not safe))
                                       (cons __tmp270886 __tmp270885))))
                                (declare (not safe))
                                (cons __tmp270888 __tmp270884))))
                         (declare (not safe))
                         (cons __tmp270891 __tmp270883))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp270882 _stx265218_)))
              _$e265262_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self265217_
                                                            __checked?270072
                                                            __t270070
                                                            '#f))
                                                         (let ((__tmp270836
                                                                (let* ((_$obj265267_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp270837 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp270837)))
                               (__tmp270838
                                (let ((__tmp270878
                                       (let ((__tmp270879
                                              (let ((__tmp270881
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj265267_
                                                             '())))
                                                    (__tmp270880
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object265259_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp270881
                                                      __tmp270880))))
                                         (declare (not safe))
                                         (cons __tmp270879 '())))
                                      (__tmp270839
                                       (let ((__tmp270840
                                              (let ((__tmp270841
                                                     (let ((__tmp270870
                                                            (let ((__tmp270871
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp270875
                                  (let ((__tmp270876
                                         (let ((__tmp270877
                                                (##structure-ref
                                                 _klass265255_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp270877 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp270876)))
                                 (__tmp270872
                                  (let ((__tmp270873
                                         (let ((__tmp270874
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj265267_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp270874))))
                                    (declare (not safe))
                                    (cons __tmp270873 '()))))
                             (declare (not safe))
                             (cons __tmp270875 __tmp270872))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp270871)))
                   (__tmp270842
                    (let ((__tmp270859
                           (let ((__tmp270860
                                  (let ((__tmp270867
                                         (let ((__tmp270868
                                                (let ((__tmp270869
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self265217_
                                                          __id270073
                                                          __t270070
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp270869 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp270868)))
                                        (__tmp270861
                                         (let ((__tmp270865
                                                (let ((__tmp270866
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field265257_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp270866)))
                                               (__tmp270862
                                                (let ((__tmp270863
                                                       (let ((__tmp270864
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj265267_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp270864))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp270863 '()))))
                                           (declare (not safe))
                                           (cons __tmp270865 __tmp270862))))
                                    (declare (not safe))
                                    (cons __tmp270867 __tmp270861))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp270860)))
                          (__tmp270843
                           (let ((__tmp270844
                                  (let ((__tmp270845
                                         (let ((__tmp270857
                                                (let ((__tmp270858
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp270858)))
                                               (__tmp270846
                                                (let ((__tmp270854
                                                       (let ((__tmp270855
                                                              (let ((__tmp270856
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self265217_
                                __id270073
                                __t270070
                                '#f))))
                        (declare (not safe))
                        (cons __tmp270856 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp270855)))
              (__tmp270847
               (let ((__tmp270852
                      (let ((__tmp270853
                             (let ()
                               (declare (not safe))
                               (cons _$obj265267_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp270853)))
                     (__tmp270848
                      (let ((__tmp270849
                             (let ((__tmp270850
                                    (let ((__tmp270851
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self265217_
                                              __slot270071
                                              __t270070
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp270851 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp270850))))
                        (declare (not safe))
                        (cons __tmp270849 '()))))
                 (declare (not safe))
                 (cons __tmp270852 __tmp270848))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp270854
                                                        __tmp270847))))
                                           (declare (not safe))
                                           (cons __tmp270857 __tmp270846))))
                                    (declare (not safe))
                                    (cons '%#call __tmp270845))))
                             (declare (not safe))
                             (cons __tmp270844 '()))))
                      (declare (not safe))
                      (cons __tmp270859 __tmp270843))))
               (declare (not safe))
               (cons __tmp270870 __tmp270842))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp270841))))
                                         (declare (not safe))
                                         (cons __tmp270840 '()))))
                                  (declare (not safe))
                                  (cons __tmp270878 __tmp270839))))
                          (declare (not safe))
                          (cons '%#let-values __tmp270838))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp270836 _stx265218_))
                 (let ((__tmp270827
                        (let ((__tmp270828
                               (let ((__tmp270834
                                      (let ((__tmp270835
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp270835)))
                                     (__tmp270829
                                      (let ((__tmp270830
                                             (let ((__tmp270831
                                                    (let ((__tmp270832
                                                           (let ((__tmp270833
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self265217_
                             __slot270071
                             __t270070
                             '#f))))
                     (declare (not safe))
                     (cons __tmp270833 '()))))
              (declare (not safe))
              (cons '%#quote __tmp270832))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp270831 '()))))
                                        (declare (not safe))
                                        (cons _object265259_ __tmp270830))))
                                 (declare (not safe))
                                 (cons __tmp270834 __tmp270829))))
                          (declare (not safe))
                          (cons '%#call __tmp270828))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp270827 _stx265218_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd265225265239_)
                                  (let ()
                                    (declare (not safe))
                                    (_g265221265231_ _g265222265234_)))))
                          (let ()
                            (declare (not safe))
                            (_g265221265231_ _g265222265234_))))))
              (declare (not safe))
              (_g265220265269_ _args265219_))))))
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
      (lambda (_self265022_ _stx265023_ _args265024_)
        (let* ((_g265026265040_
                (lambda (_g265027265037_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g265027265037_))))
               (_g265025265092_
                (lambda (_g265027265043_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g265027265043_))
                      (let ((_e265032265045_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g265027265043_))))
                        (let ((_hd265031265048_
                               (let ()
                                 (declare (not safe))
                                 (##car _e265032265045_)))
                              (_tl265030265050_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e265032265045_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl265030265050_))
                              (let ((_e265035265053_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl265030265050_))))
                                (let ((_hd265034265056_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e265035265053_)))
                                      (_tl265033265058_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e265035265053_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl265033265058_))
                                      ((lambda (_L265061_ _L265062_)
                                         (let* ((_klass265076_
                                                 (let ((__tmp270912
                                                        (##structure-ref
                                                         _self265022_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx265023_
                                                    __tmp270912)))
                                                (_field265078_
                                                 (let ((__tmp270913
                                                        (##structure-ref
                                                         _self265022_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass265076_
                                                    __tmp270913)))
                                                (_object265080_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L265062_)))
                                                (_value265082_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L265061_))))
                                           (if (##structure-ref
                                                _klass265076_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp270995
                                                      (let ((__tmp271005
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self265022_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp270996
                     (let ((__tmp271002
                            (let ((__tmp271003
                                   (let ((__tmp271004
                                          (##structure-ref
                                           _self265022_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp271004 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp271003)))
                           (__tmp270997
                            (let ((__tmp271000
                                   (let ((__tmp271001
                                          (let ()
                                            (declare (not safe))
                                            (cons _field265078_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp271001)))
                                  (__tmp270998
                                   (let ((__tmp270999
                                          (let ()
                                            (declare (not safe))
                                            (cons _value265082_ '()))))
                                     (declare (not safe))
                                     (cons _object265080_ __tmp270999))))
                              (declare (not safe))
                              (cons __tmp271000 __tmp270998))))
                       (declare (not safe))
                       (cons __tmp271002 __tmp270997))))
                (declare (not safe))
                (cons __tmp271005 __tmp270996))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp270995
                                                  _stx265023_))
                                               (if (##structure-ref
                                                    _klass265076_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp270984
                                                          (let ((__tmp270994
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self265022_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp270985
                         (let ((__tmp270991
                                (let ((__tmp270992
                                       (let ((__tmp270993
                                              (##structure-ref
                                               _self265022_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp270993 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp270992)))
                               (__tmp270986
                                (let ((__tmp270989
                                       (let ((__tmp270990
                                              (let ()
                                                (declare (not safe))
                                                (cons _field265078_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp270990)))
                                      (__tmp270987
                                       (let ((__tmp270988
                                              (let ()
                                                (declare (not safe))
                                                (cons _value265082_ '()))))
                                         (declare (not safe))
                                         (cons _object265080_ __tmp270988))))
                                  (declare (not safe))
                                  (cons __tmp270989 __tmp270987))))
                           (declare (not safe))
                           (cons __tmp270991 __tmp270986))))
                    (declare (not safe))
                    (cons __tmp270994 __tmp270985))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp270984
                                                      _stx265023_))
                                                   (let ((_$e265085_
                                                          (let ((__tmp270914
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self265022_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass265076_ __tmp270914))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e265085_
                                                         ((lambda (_klass265088_)
                                                            (let ((__tmp270973
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp270983
                                  (if (##structure-ref
                                       _self265022_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp270974
                                  (let ((__tmp270980
                                         (let ((__tmp270981
                                                (let ((__tmp270982
                                                       (##structure-ref
                                                        _self265022_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp270982 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp270981)))
                                        (__tmp270975
                                         (let ((__tmp270978
                                                (let ((__tmp270979
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field265078_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp270979)))
                                               (__tmp270976
                                                (let ((__tmp270977
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value265082_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object265080_
                                                        __tmp270977))))
                                           (declare (not safe))
                                           (cons __tmp270978 __tmp270976))))
                                    (declare (not safe))
                                    (cons __tmp270980 __tmp270975))))
                             (declare (not safe))
                             (cons __tmp270983 __tmp270974))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp270973 _stx265023_)))
                  _$e265085_)
                 (if (##structure-ref _self265022_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp270925
                            (let* ((_$obj265090_
                                    (let ((__tmp270926 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp270926)))
                                   (__tmp270927
                                    (let ((__tmp270969
                                           (let ((__tmp270970
                                                  (let ((__tmp270972
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj265090_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp270971
                 (let () (declare (not safe)) (cons _object265080_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp270972
                                                          __tmp270971))))
                                             (declare (not safe))
                                             (cons __tmp270970 '())))
                                          (__tmp270928
                                           (let ((__tmp270929
                                                  (let ((__tmp270930
                                                         (let ((__tmp270961
                                                                (let ((__tmp270962
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp270966
                                      (let ((__tmp270967
                                             (let ((__tmp270968
                                                    (##structure-ref
                                                     _klass265076_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp270968 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp270967)))
                                     (__tmp270963
                                      (let ((__tmp270964
                                             (let ((__tmp270965
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj265090_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp270965))))
                                        (declare (not safe))
                                        (cons __tmp270964 '()))))
                                 (declare (not safe))
                                 (cons __tmp270966 __tmp270963))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp270962)))
                       (__tmp270931
                        (let ((__tmp270949
                               (let ((__tmp270950
                                      (let ((__tmp270958
                                             (let ((__tmp270959
                                                    (let ((__tmp270960
                                                           (##structure-ref
                                                            _self265022_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp270960 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp270959)))
                                            (__tmp270951
                                             (let ((__tmp270956
                                                    (let ((__tmp270957
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field265078_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp270957)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp270952
                                                    (let ((__tmp270954
                                                           (let ((__tmp270955
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj265090_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp270955)))
                  (__tmp270953
                   (let () (declare (not safe)) (cons _value265082_ '()))))
              (declare (not safe))
              (cons __tmp270954 __tmp270953))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp270956
                                                     __tmp270952))))
                                        (declare (not safe))
                                        (cons __tmp270958 __tmp270951))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp270950)))
                              (__tmp270932
                               (let ((__tmp270933
                                      (let ((__tmp270934
                                             (let ((__tmp270947
                                                    (let ((__tmp270948
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp270948)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp270935
                                                    (let ((__tmp270944
                                                           (let ((__tmp270945
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp270946
                                 (##structure-ref
                                  _self265022_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp270946 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp270945)))
                  (__tmp270936
                   (let ((__tmp270942
                          (let ((__tmp270943
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj265090_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp270943)))
                         (__tmp270937
                          (let ((__tmp270939
                                 (let ((__tmp270940
                                        (let ((__tmp270941
                                               (##structure-ref
                                                _self265022_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp270941 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp270940)))
                                (__tmp270938
                                 (let ()
                                   (declare (not safe))
                                   (cons _value265082_ '()))))
                            (declare (not safe))
                            (cons __tmp270939 __tmp270938))))
                     (declare (not safe))
                     (cons __tmp270942 __tmp270937))))
              (declare (not safe))
              (cons __tmp270944 __tmp270936))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp270947
                                                     __tmp270935))))
                                        (declare (not safe))
                                        (cons '%#call __tmp270934))))
                                 (declare (not safe))
                                 (cons __tmp270933 '()))))
                          (declare (not safe))
                          (cons __tmp270949 __tmp270932))))
                   (declare (not safe))
                   (cons __tmp270961 __tmp270931))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp270930))))
                                             (declare (not safe))
                                             (cons __tmp270929 '()))))
                                      (declare (not safe))
                                      (cons __tmp270969 __tmp270928))))
                              (declare (not safe))
                              (cons '%#let-values __tmp270927))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp270925 _stx265023_))
                     (let ((__tmp270915
                            (let ((__tmp270916
                                   (let ((__tmp270923
                                          (let ((__tmp270924
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp270924)))
                                         (__tmp270917
                                          (let ((__tmp270918
                                                 (let ((__tmp270920
                                                        (let ((__tmp270921
                                                               (let ((__tmp270922
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self265022_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp270922 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp270921)))
               (__tmp270919
                (let () (declare (not safe)) (cons _value265082_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp270920
                                                         __tmp270919))))
                                            (declare (not safe))
                                            (cons _object265080_
                                                  __tmp270918))))
                                     (declare (not safe))
                                     (cons __tmp270923 __tmp270917))))
                              (declare (not safe))
                              (cons '%#call __tmp270916))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp270915 _stx265023_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd265034265056_
                                       _hd265031265048_)
                                      (let ()
                                        (declare (not safe))
                                        (_g265026265040_ _g265027265043_)))))
                              (let ()
                                (declare (not safe))
                                (_g265026265040_ _g265027265043_)))))
                      (let ()
                        (declare (not safe))
                        (_g265026265040_ _g265027265043_))))))
          (declare (not safe))
          (_g265025265092_ _args265024_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__t270077)
        (let ((__slot270078
               (let ((__tmp270081
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t270077 'slot))))
                 (if __tmp270081 __tmp270081 (error '"Unknown slot" 'slot))))
              (__checked?270079
               (let ((__tmp270082
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t270077 'checked?))))
                 (if __tmp270082
                     __tmp270082
                     (error '"Unknown slot" 'checked?))))
              (__id270080
               (let ((__tmp270083
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t270077 'id))))
                 (if __tmp270083 __tmp270083 (error '"Unknown slot" 'id)))))
          (lambda (_self265022_ _stx265023_ _args265024_)
            (let* ((_g265026265040_
                    (lambda (_g265027265037_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g265027265037_))))
                   (_g265025265092_
                    (lambda (_g265027265043_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g265027265043_))
                          (let ((_e265032265045_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g265027265043_))))
                            (let ((_hd265031265048_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e265032265045_)))
                                  (_tl265030265050_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e265032265045_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl265030265050_))
                                  (let ((_e265035265053_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl265030265050_))))
                                    (let ((_hd265034265056_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e265035265053_)))
                                          (_tl265033265058_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e265035265053_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl265033265058_))
                                          ((lambda (_L265061_ _L265062_)
                                             (let* ((_klass265076_
                                                     (let ((__tmp271006
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self265022_
                                                               __id270080
                                                               __t270077
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx265023_
                                                        __tmp271006)))
                                                    (_field265078_
                                                     (let ((__tmp271007
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self265022_
                                                               __slot270078
                                                               __t270077
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass265076_
                                                        __tmp271007)))
                                                    (_object265080_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L265062_)))
                                                    (_value265082_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L265061_))))
                                               (if (##structure-ref
                                                    _klass265076_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp271089
                                                          (let ((__tmp271099
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self265022_
                                __checked?270079
                                __t270077
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp271090
                         (let ((__tmp271096
                                (let ((__tmp271097
                                       (let ((__tmp271098
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self265022_
                                                 __id270080
                                                 __t270077
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp271098 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp271097)))
                               (__tmp271091
                                (let ((__tmp271094
                                       (let ((__tmp271095
                                              (let ()
                                                (declare (not safe))
                                                (cons _field265078_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp271095)))
                                      (__tmp271092
                                       (let ((__tmp271093
                                              (let ()
                                                (declare (not safe))
                                                (cons _value265082_ '()))))
                                         (declare (not safe))
                                         (cons _object265080_ __tmp271093))))
                                  (declare (not safe))
                                  (cons __tmp271094 __tmp271092))))
                           (declare (not safe))
                           (cons __tmp271096 __tmp271091))))
                    (declare (not safe))
                    (cons __tmp271099 __tmp271090))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp271089
                                                      _stx265023_))
                                                   (if (##structure-ref
                                                        _klass265076_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp271078
                                                              (let ((__tmp271088
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self265022_
                                    __checked?270079
                                    __t270077
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp271079
                             (let ((__tmp271085
                                    (let ((__tmp271086
                                           (let ((__tmp271087
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self265022_
                                                     __id270080
                                                     __t270077
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp271087 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp271086)))
                                   (__tmp271080
                                    (let ((__tmp271083
                                           (let ((__tmp271084
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field265078_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp271084)))
                                          (__tmp271081
                                           (let ((__tmp271082
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value265082_ '()))))
                                             (declare (not safe))
                                             (cons _object265080_
                                                   __tmp271082))))
                                      (declare (not safe))
                                      (cons __tmp271083 __tmp271081))))
                               (declare (not safe))
                               (cons __tmp271085 __tmp271080))))
                        (declare (not safe))
                        (cons __tmp271088 __tmp271079))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp271078 _stx265023_))
               (let ((_$e265085_
                      (let ((__tmp271008
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self265022_
                                __slot270078
                                __t270077
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass265076_
                         __tmp271008))))
                 (if _$e265085_
                     ((lambda (_klass265088_)
                        (let ((__tmp271067
                               (let ((__tmp271077
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self265022_
                                             __checked?270079
                                             __t270077
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp271068
                                      (let ((__tmp271074
                                             (let ((__tmp271075
                                                    (let ((__tmp271076
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self265022_
                                                              __id270080
                                                              __t270077
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp271076 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp271075)))
                                            (__tmp271069
                                             (let ((__tmp271072
                                                    (let ((__tmp271073
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field265078_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp271073)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp271070
                                                    (let ((__tmp271071
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value265082_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object265080_ __tmp271071))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp271072
                                                     __tmp271070))))
                                        (declare (not safe))
                                        (cons __tmp271074 __tmp271069))))
                                 (declare (not safe))
                                 (cons __tmp271077 __tmp271068))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp271067 _stx265023_)))
                      _$e265085_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self265022_
                            __checked?270079
                            __t270077
                            '#f))
                         (let ((__tmp271019
                                (let* ((_$obj265090_
                                        (let ((__tmp271020 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp271020)))
                                       (__tmp271021
                                        (let ((__tmp271063
                                               (let ((__tmp271064
                                                      (let ((__tmp271066
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj265090_ '())))
                    (__tmp271065
                     (let () (declare (not safe)) (cons _object265080_ '()))))
                (declare (not safe))
                (cons __tmp271066 __tmp271065))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp271064 '())))
                                              (__tmp271022
                                               (let ((__tmp271023
                                                      (let ((__tmp271024
                                                             (let ((__tmp271055
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp271056
                                   (let ((__tmp271060
                                          (let ((__tmp271061
                                                 (let ((__tmp271062
                                                        (##structure-ref
                                                         _klass265076_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp271062 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp271061)))
                                         (__tmp271057
                                          (let ((__tmp271058
                                                 (let ((__tmp271059
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj265090_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp271059))))
                                            (declare (not safe))
                                            (cons __tmp271058 '()))))
                                     (declare (not safe))
                                     (cons __tmp271060 __tmp271057))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp271056)))
                           (__tmp271025
                            (let ((__tmp271043
                                   (let ((__tmp271044
                                          (let ((__tmp271052
                                                 (let ((__tmp271053
                                                        (let ((__tmp271054
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self265022_
                          __id270080
                          __t270077
                          '#f))))
                  (declare (not safe))
                  (cons __tmp271054 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp271053)))
                                                (__tmp271045
                                                 (let ((__tmp271050
                                                        (let ((__tmp271051
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field265078_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp271051)))
               (__tmp271046
                (let ((__tmp271048
                       (let ((__tmp271049
                              (let ()
                                (declare (not safe))
                                (cons _$obj265090_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp271049)))
                      (__tmp271047
                       (let () (declare (not safe)) (cons _value265082_ '()))))
                  (declare (not safe))
                  (cons __tmp271048 __tmp271047))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp271050
                                                         __tmp271046))))
                                            (declare (not safe))
                                            (cons __tmp271052 __tmp271045))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp271044)))
                                  (__tmp271026
                                   (let ((__tmp271027
                                          (let ((__tmp271028
                                                 (let ((__tmp271041
                                                        (let ((__tmp271042
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp271042)))
               (__tmp271029
                (let ((__tmp271038
                       (let ((__tmp271039
                              (let ((__tmp271040
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self265022_
                                        __id270080
                                        __t270077
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp271040 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp271039)))
                      (__tmp271030
                       (let ((__tmp271036
                              (let ((__tmp271037
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj265090_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp271037)))
                             (__tmp271031
                              (let ((__tmp271033
                                     (let ((__tmp271034
                                            (let ((__tmp271035
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self265022_
                                                      __slot270078
                                                      __t270077
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp271035 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp271034)))
                                    (__tmp271032
                                     (let ()
                                       (declare (not safe))
                                       (cons _value265082_ '()))))
                                (declare (not safe))
                                (cons __tmp271033 __tmp271032))))
                         (declare (not safe))
                         (cons __tmp271036 __tmp271031))))
                  (declare (not safe))
                  (cons __tmp271038 __tmp271030))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp271041
                                                         __tmp271029))))
                                            (declare (not safe))
                                            (cons '%#call __tmp271028))))
                                     (declare (not safe))
                                     (cons __tmp271027 '()))))
                              (declare (not safe))
                              (cons __tmp271043 __tmp271026))))
                       (declare (not safe))
                       (cons __tmp271055 __tmp271025))))
                (declare (not safe))
                (cons '%#if __tmp271024))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp271023 '()))))
                                          (declare (not safe))
                                          (cons __tmp271063 __tmp271022))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp271021))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp271019 _stx265023_))
                         (let ((__tmp271009
                                (let ((__tmp271010
                                       (let ((__tmp271017
                                              (let ((__tmp271018
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp271018)))
                                             (__tmp271011
                                              (let ((__tmp271012
                                                     (let ((__tmp271014
                                                            (let ((__tmp271015
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp271016
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self265022_
                                     __slot270078
                                     __t270077
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp271016 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp271015)))
                   (__tmp271013
                    (let () (declare (not safe)) (cons _value265082_ '()))))
               (declare (not safe))
               (cons __tmp271014 __tmp271013))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object265080_
                                                      __tmp271012))))
                                         (declare (not safe))
                                         (cons __tmp271017 __tmp271011))))
                                  (declare (not safe))
                                  (cons '%#call __tmp271010))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp271009
                            _stx265023_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd265034265056_
                                           _hd265031265048_)
                                          (let ()
                                            (declare (not safe))
                                            (_g265026265040_
                                             _g265027265043_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g265026265040_ _g265027265043_)))))
                          (let ()
                            (declare (not safe))
                            (_g265026265040_ _g265027265043_))))))
              (declare (not safe))
              (_g265025265092_ _args265024_))))))
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
      (lambda (_self264856_ _stx264857_ _args264858_)
        (let* ((_self264859264868_ _self264856_)
               (_E264861264872_
                (lambda () (error '"No clause matching" _self264859264868_)))
               (_K264862264879_
                (lambda (_inline264875_ _dispatch264876_ _arity264877_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self264856_ _args264858_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx264857_
                         _arity264877_)))
                  (if _inline264875_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp271105
                               (let ((__tmp271106
                                      (_inline264875_ _stx264857_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp271106
                                  _stx264857_))))
                          (declare (not safe))
                          (gxc#compile-e__0 __tmp271105)))
                      (if _dispatch264876_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch264876_))
                            (let ((__tmp271100
                                   (let ((__tmp271101
                                          (let ((__tmp271102
                                                 (let ((__tmp271103
                                                        (let ((__tmp271104
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch264876_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp271104))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp271103
                                                         _args264858_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp271102))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp271101
                                      _stx264857_))))
                              (declare (not safe))
                              (gxc#compile-e__0 __tmp271100)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _stx264857_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self264859264868_ 'gxc#!lambda::t))
              (let* ((_e264863264882_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self264859264868_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e264864264885_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self264859264868_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity264888_ _e264864264885_)
                     (_e264865264890_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self264859264868_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch264893_ _e264865264890_)
                     (_e264866264895_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self264859264868_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline264898_ _e264866264895_))
                (declare (not safe))
                (_K264862264879_
                 _inline264898_
                 _dispatch264893_
                 _arity264888_))
              (let () (declare (not safe)) (_E264861264872_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self264695_ _stx264696_ _args264697_)
        (let* ((_self264698264705_ _self264695_)
               (_E264700264709_
                (lambda () (error '"No clause matching" _self264698264705_)))
               (_K264701264723_
                (lambda (_clauses264712_)
                  (let ((_$e264718_
                         (let ((__tmp271107
                                (lambda (_g264713264715_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g264713264715_
                                     _args264697_)))))
                           (declare (not safe))
                           (find __tmp271107 _clauses264712_))))
                    (if _$e264718_
                        ((lambda (_clause264721_)
                           (let ((__method270352
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause264721_
                                     'optimize-call))))
                             (if __method270352
                                 (__method270352
                                  _clause264721_
                                  _stx264696_
                                  _args264697_)
                                 (error '"Missing method"
                                        _clause264721_
                                        'optimize-call))))
                         _$e264718_)
                        (let ((__tmp271108
                               (map gxc#!lambda-arity _clauses264712_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx264696_
                           __tmp271108)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self264698264705_
                 'gxc#!case-lambda::t))
              (let* ((_e264702264726_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self264698264705_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e264703264729_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self264698264705_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses264732_ _e264703264729_))
                (declare (not safe))
                (_K264701264723_ _clauses264732_))
              (let () (declare (not safe)) (_E264700264709_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self264509_ _args264510_)
        (let* ((_self264511264518_ _self264509_)
               (_E264513264522_
                (lambda () (error '"No clause matching" _self264511264518_)))
               (_K264514264562_
                (lambda (_arity264525_)
                  (let* ((_arity264526264535_ _arity264525_)
                         (_E264529264539_
                          (lambda ()
                            (error '"No clause matching"
                                   _arity264526264535_))))
                    (let ((_K264533264559_
                           (lambda ()
                             (fx= (length _args264510_) _arity264525_)))
                          (_K264530264545_
                           (lambda (_arity264543_)
                             (fx>= (length _args264510_) _arity264543_))))
                      (let ((_try-match264528264555_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity264526264535_))
                                   (let ((_tl264532264550_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity264526264535_)))
                                         (_hd264531264548_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity264526264535_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl264532264550_))
                                         (let ((_arity264553_
                                                _hd264531264548_))
                                           (declare (not safe))
                                           (_K264530264545_ _arity264553_))
                                         (let ()
                                           (declare (not safe))
                                           (_E264529264539_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E264529264539_))))))
                        (if (fixnum? _arity264526264535_)
                            (let () (declare (not safe)) (_K264533264559_))
                            (let ()
                              (declare (not safe))
                              (_try-match264528264555_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self264511264518_ 'gxc#!lambda::t))
              (let* ((_e264515264565_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self264511264518_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e264516264568_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self264511264518_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity264571_ _e264516264568_))
                (declare (not safe))
                (_K264514264562_ _arity264571_))
              (let () (declare (not safe)) (_E264513264522_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self264394_ _stx264395_ _args264396_)
        (let* ((_self264397264405_ _self264394_)
               (_E264399264409_
                (lambda () (error '"No clause matching" _self264397264405_)))
               (_K264400264493_
                (lambda (_dispatch264412_ _table264413_)
                  (let* ((_g264414264423_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch264412_)))
                         (_else264416264431_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch264412_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _stx264395_))))
                         (_K264418264477_
                          (lambda (_main264434_ _keys264435_)
                            (let ((_g271109_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx264395_
                                      _args264396_))))
                              (begin
                                (let ((_g271110_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g271109_)
                                             (##vector-length _g271109_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g271110_ 2)))
                                      (error "Context expects 2 values"
                                             _g271110_)))
                                (let ((_pargs264437_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g271109_ 0)))
                                      (_kwargs264438_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g271109_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main264434_))
                                    (if _table264413_
                                        (let ((_xargs264445_
                                               (map (lambda (_key264440_)
                                                      (let ((_$e264442_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _key264440_ _kwargs264438_))))
                (if _$e264442_ (values _$e264442_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys264435_)))
                                          (for-each
                                           (lambda (_kw264447_)
                                             (if (memq (car _kw264447_)
                                                       _keys264435_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx264395_
                                                    _keys264435_
                                                    _kw264447_))))
                                           _kwargs264438_)
                                          (let ((__tmp271162
                                                 (let ((__tmp271163
                                                        (let ((__tmp271164
                                                               (let ((__tmp271169
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp271170
                                     (let ()
                                       (declare (not safe))
                                       (cons _main264434_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp271170)))
                             (__tmp271165
                              (let ((__tmp271167
                                     (let ((__tmp271168
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp271168)))
                                    (__tmp271166
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs264437_
                                               _xargs264445_))))
                                (declare (not safe))
                                (cons __tmp271167 __tmp271166))))
                         (declare (not safe))
                         (cons __tmp271169 __tmp271165))))
                  (declare (not safe))
                  (cons '%#call __tmp271164))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp271163
                                                    _stx264395_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0 __tmp271162)))
                                        (let* ((_kwt264449_
                                                (let ((__tmp271111
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp271111)))
                                               (_kwvars264452_
                                                (map (lambda (_g271112_)
                                                       (let ((__tmp271113
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp271113)))
                                                     _kwargs264438_))
                                               (_kwbind264457_
                                                (map (lambda (_kw264454_
                                                              _kwvar264455_)
                                                       (let ((__tmp271116
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar264455_ '())))
                     (__tmp271114
                      (let ((__tmp271115 (cdr _kw264454_)))
                        (declare (not safe))
                        (cons __tmp271115 '()))))
                 (declare (not safe))
                 (cons __tmp271116 __tmp271114)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs264438_
                                                     _kwvars264452_))
                                               (_kwset264462_
                                                (map (lambda (_kw264459_
                                                              _kwvar264460_)
                                                       (let ((__tmp271117
                                                              (let ((__tmp271118
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp271126
                                    (let ((__tmp271127
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt264449_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp271127)))
                                   (__tmp271119
                                    (let ((__tmp271123
                                           (let ((__tmp271124
                                                  (let ((__tmp271125
                                                         (car _kw264459_)))
                                                    (declare (not safe))
                                                    (cons __tmp271125 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp271124)))
                                          (__tmp271120
                                           (let ((__tmp271121
                                                  (let ((__tmp271122
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar264460_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp271122))))
                                             (declare (not safe))
                                             (cons __tmp271121 '()))))
                                      (declare (not safe))
                                      (cons __tmp271123 __tmp271120))))
                               (declare (not safe))
                               (cons __tmp271126 __tmp271119))))
                        (declare (not safe))
                        (cons '(%#ref hash-put!) __tmp271118))))
                 (declare (not safe))
                 (cons '%#call __tmp271117)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs264438_
                                                     _kwvars264452_))
                                               (_xkwargs264467_
                                                (map (lambda (_kw264464_
                                                              _kwvar264465_)
                                                       (let ((__tmp271130
                                                              (car _kw264464_))
                                                             (__tmp271128
                                                              (let ((__tmp271129
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar264465_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp271129))))
                 (declare (not safe))
                 (cons __tmp271130 __tmp271128)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs264438_
                                                     _kwvars264452_))
                                               (_xargs264474_
                                                (map (lambda (_key264469_)
                                                       (let ((_$e264471_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq _key264469_ _xkwargs264467_))))
                 (if _$e264471_ (values _$e264471_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys264435_)))
                                          (let ((__tmp271131
                                                 (let ((__tmp271132
                                                        (let ((__tmp271133
                                                               (let ((__tmp271134
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp271135
                                     (let ((__tmp271136
                                            (let ((__tmp271150
                                                   (let ((__tmp271151
                                                          (let ((__tmp271161
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt264449_ '())))
                        (__tmp271152
                         (let ((__tmp271153
                                (let ((__tmp271154
                                       (let ((__tmp271155
                                              (let ((__tmp271156
                                                     (let ((__tmp271157
                                                            (let ((__tmp271158
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp271159
                                  (let ((__tmp271160 (length _kwargs264438_)))
                                    (declare (not safe))
                                    (cons __tmp271160 '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp271159))))
                      (declare (not safe))
                      (cons __tmp271158 '()))))
               (declare (not safe))
               (cons '(%#quote size:) __tmp271157))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-hash-table-eq)
                                                      __tmp271156))))
                                         (declare (not safe))
                                         (cons '%#call __tmp271155))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp271154
                                   _stx264395_))))
                           (declare (not safe))
                           (cons __tmp271153 '()))))
                    (declare (not safe))
                    (cons __tmp271161 __tmp271152))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp271151 '())))
                                                  (__tmp271137
                                                   (let ((__tmp271138
                                                          (let ((__tmp271139
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp271140
                                (let ((__tmp271141
                                       (let ((__tmp271142
                                              (let ((__tmp271143
                                                     (let ((__tmp271148
                                                            (let ((__tmp271149
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main264434_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp271149)))
                   (__tmp271144
                    (let ((__tmp271146
                           (let ((__tmp271147
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt264449_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp271147)))
                          (__tmp271145
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs264437_ _xargs264474_))))
                      (declare (not safe))
                      (cons __tmp271146 __tmp271145))))
               (declare (not safe))
               (cons __tmp271148 __tmp271144))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp271143))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp271142
                                          _stx264395_))))
                                  (declare (not safe))
                                  (cons __tmp271141 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp271140 _kwset264462_))))
                    (declare (not safe))
                    (cons '%#begin __tmp271139))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp271138 '()))))
                                              (declare (not safe))
                                              (cons __tmp271150 __tmp271137))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp271136))))
                                (declare (not safe))
                                (cons __tmp271135 '()))))
                         (declare (not safe))
                         (cons _kwbind264457_ __tmp271134))))
                  (declare (not safe))
                  (cons '%#let-values __tmp271133))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp271132
                                                    _stx264395_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0
                                             __tmp271131)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g264414264423_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e264419264480_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g264414264423_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e264420264483_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g264414264423_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys264486_ _e264420264483_)
                               (_e264421264488_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g264414264423_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main264491_ _e264421264488_))
                          (declare (not safe))
                          (_K264418264477_ _main264491_ _keys264486_))
                        (let () (declare (not safe)) (_else264416264431_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self264397264405_
                 'gxc#!kw-lambda::t))
              (let* ((_e264401264496_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self264397264405_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e264402264499_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self264397264405_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table264502_ _e264402264499_)
                     (_e264403264504_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self264397264405_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch264507_ _e264403264504_))
                (declare (not safe))
                (_K264400264493_ _dispatch264507_ _table264502_))
              (let () (declare (not safe)) (_E264399264409_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx264007_ _args264008_)
        (let _lp264010_ ((_rest264012_ _args264008_)
                         (_pargs264013_ '())
                         (_kwargs264014_ '()))
          (let* ((___stx270234270235_ _rest264012_)
                 (_g264020264072_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx270234270235_)))))
            (let ((___kont270236270237_
                   (lambda (_L264251_ _L264252_)
                     (let ((__tmp271171
                            (let ()
                              (declare (not safe))
                              (cons _L264252_ _pargs264013_))))
                       (declare (not safe))
                       (_lp264010_ _L264251_ __tmp271171 _kwargs264014_))))
                  (___kont270238270239_
                   (lambda (_L264197_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L264197_ _pargs264013_))
                             (reverse _kwargs264014_))))
                  (___kont270240270241_
                   (lambda (_L264144_ _L264145_ _L264146_)
                     (let ((_kw264163_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L264146_))))
                       (if (assq _kw264163_ _kwargs264014_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx264007_
                              _kw264163_))
                           (let ((__tmp271172
                                  (let ((__tmp271173
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw264163_ _L264145_))))
                                    (declare (not safe))
                                    (cons __tmp271173 _kwargs264014_))))
                             (declare (not safe))
                             (_lp264010_
                              _L264144_
                              _pargs264013_
                              __tmp271172))))))
                  (___kont270242270243_
                   (lambda (_L264092_ _L264093_)
                     (let ((__tmp271174
                            (let ()
                              (declare (not safe))
                              (cons _L264093_ _pargs264013_))))
                       (declare (not safe))
                       (_lp264010_ _L264092_ __tmp271174 _kwargs264014_))))
                  (___kont270244270245_
                   (lambda ()
                     (values (reverse _pargs264013_)
                             (reverse _kwargs264014_)))))
              (let* ((_g264019264079_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx270234270235_))
                            (___kont270244270245_)
                            (let () (declare (not safe)) (_g264020264072_)))))
                     (___match270341270342_
                      (lambda (_e264053264112_
                               _hd264052264115_
                               _tl264051264117_
                               _e264056264120_
                               _hd264055264123_
                               _tl264054264125_
                               _e264059264128_
                               _hd264058264131_
                               _tl264057264133_
                               _e264062264136_
                               _hd264061264139_
                               _tl264060264141_)
                        (let ((_L264144_ _tl264060264141_)
                              (_L264145_ _hd264061264139_)
                              (_L264146_ _hd264058264131_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L264146_))
                              (___kont270240270241_
                               _L264144_
                               _L264145_
                               _L264146_)
                              (___kont270242270243_
                               _tl264051264117_
                               _hd264052264115_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx270234270235_))
                    (let ((_e264026264216_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx270234270235_))))
                      (let ((_tl264024264221_
                             (let ()
                               (declare (not safe))
                               (##cdr _e264026264216_)))
                            (_hd264025264219_
                             (let ()
                               (declare (not safe))
                               (##car _e264026264216_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd264025264219_))
                            (let ((_e264029264224_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd264025264219_))))
                              (let ((_tl264027264229_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e264029264224_)))
                                    (_hd264028264227_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e264029264224_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd264028264227_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd264028264227_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl264027264229_))
                                            (let ((_e264032264232_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl264027264229_))))
                                              (let ((_tl264030264237_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e264032264232_)))
                                                    (_hd264031264235_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e264032264232_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd264031264235_))
                                                    (let ((_e264033264240_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd264031264235_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e264033264240_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl264030264237_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl264024264221_))
                          (let ((_e264036264243_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl264024264221_))))
                            (let ((_tl264034264248_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e264036264243_)))
                                  (_hd264035264246_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e264036264243_))))
                              (___kont270236270237_
                               _tl264034264248_
                               _hd264035264246_)))
                          (___kont270242270243_
                           _tl264024264221_
                           _hd264025264219_))
                      (___kont270242270243_ _tl264024264221_ _hd264025264219_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e264033264240_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl264030264237_))
                          (___kont270238270239_ _tl264024264221_)
                          (___kont270242270243_
                           _tl264024264221_
                           _hd264025264219_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl264030264237_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl264024264221_))
                              (let ((_e264062264136_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl264024264221_))))
                                (let ((_tl264060264141_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e264062264136_)))
                                      (_hd264061264139_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e264062264136_))))
                                  (___match270341270342_
                                   _e264026264216_
                                   _hd264025264219_
                                   _tl264024264221_
                                   _e264029264224_
                                   _hd264028264227_
                                   _tl264027264229_
                                   _e264032264232_
                                   _hd264031264235_
                                   _tl264030264237_
                                   _e264062264136_
                                   _hd264061264139_
                                   _tl264060264141_)))
                              (___kont270242270243_
                               _tl264024264221_
                               _hd264025264219_))
                          (___kont270242270243_
                           _tl264024264221_
                           _hd264025264219_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl264030264237_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl264024264221_))
                                                            (let ((_e264062264136_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl264024264221_))))
                      (let ((_tl264060264141_
                             (let ()
                               (declare (not safe))
                               (##cdr _e264062264136_)))
                            (_hd264061264139_
                             (let ()
                               (declare (not safe))
                               (##car _e264062264136_))))
                        (___match270341270342_
                         _e264026264216_
                         _hd264025264219_
                         _tl264024264221_
                         _e264029264224_
                         _hd264028264227_
                         _tl264027264229_
                         _e264032264232_
                         _hd264031264235_
                         _tl264030264237_
                         _e264062264136_
                         _hd264061264139_
                         _tl264060264141_)))
                    (___kont270242270243_ _tl264024264221_ _hd264025264219_))
                (___kont270242270243_ _tl264024264221_ _hd264025264219_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont270242270243_
                                             _tl264024264221_
                                             _hd264025264219_))
                                        (___kont270242270243_
                                         _tl264024264221_
                                         _hd264025264219_))
                                    (___kont270242270243_
                                     _tl264024264221_
                                     _hd264025264219_))))
                            (___kont270242270243_
                             _tl264024264221_
                             _hd264025264219_))))
                    (let () (declare (not safe)) (_g264019264079_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self264003_ _stx264004_ _args264005_)
        (let () (declare (not safe)) (gxc#xform-call% _stx264004_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
