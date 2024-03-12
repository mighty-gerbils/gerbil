(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1710237316)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp153364 (list gxc#::basic-xform::t))
            (__tmp153362
             (let ((__tmp153363
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp153363 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp153364
         '()
         __tmp153362
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _$args153065_
        (apply make-instance gxc#::optimize-call::t _$args153065_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp153365
             (lambda ()
               (force gxc#::basic-xform-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::optimize-call::t
                  '%#call
                  gxc#optimize-call%))
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#::optimize-call::t)))))
        (declare (not safe))
        (make-promise __tmp153365)))
    (define gxc#apply-optimize-call
      (lambda (_stx153057_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_self153060_
                (let ((__obj153359
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj153359))
               (__tmp153366
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self153060_ _stx153057_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp153366
           gxc#current-compile-method
           _self153060_))))
    (define gxc#optimize-call%
      (lambda (_self152911_ _stx152912_)
        (let* ((___stx153110153111_ _stx152912_)
               (_g152915152935_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx153110153111_)))))
          (let ((___kont153112153113_
                 (lambda (_L152979_ _L152980_)
                   (let* ((_rator-id152998_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L152980_)))
                          (_rator-type153000_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id152998_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type153000_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp153367
                                  (##structure-ref
                                   _rator-type153000_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id152998_
                              '" => "
                              _rator-type153000_
                              '" "
                              __tmp153367))
                           (let ((_optimized153003_
                                  (let ((__method153360
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type153000_
                                            'optimize-call))))
                                    (if __method153360
                                        (__method153360
                                         _rator-type153000_
                                         _self152911_
                                         _stx152912_
                                         _L152979_)
                                        (let ()
                                          (declare (not safe))
                                          (error '"Missing method"
                                                 _rator-type153000_
                                                 'optimize-call))))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type153000_))
                                 _optimized153003_
                                 (let* ((___stx153092153093_ _optimized153003_)
                                        (_g153006153016_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx153092153093_)))))
                                   (let ((___kont153094153095_
                                          (lambda (_L153036_)
                                            (let ((__tmp153368
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L153036_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp153368
                                               _stx152912_))))
                                         (___kont153096153097_
                                          (lambda () _optimized153003_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx153092153093_))
                                         (let ((_e153011153028_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx153092153093_))))
                                           (let ((_tl153009153033_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e153011153028_)))
                                                 (_hd153010153031_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e153011153028_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd153010153031_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd153010153031_))
                                                     (___kont153094153095_
                                                      _tl153009153033_)
                                                     (___kont153096153097_))
                                                 (___kont153096153097_))))
                                         (___kont153096153097_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type153000_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _self152911_ _stx152912_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx152912_
                                _rator-type153000_)))))))
                (___kont153114153115_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _self152911_ _stx152912_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx153110153111_))
                (let ((_e152921152947_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx153110153111_))))
                  (let ((_tl152919152952_
                         (let () (declare (not safe)) (##cdr _e152921152947_)))
                        (_hd152920152950_
                         (let ()
                           (declare (not safe))
                           (##car _e152921152947_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl152919152952_))
                        (let ((_e152924152955_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl152919152952_))))
                          (let ((_tl152922152960_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e152924152955_)))
                                (_hd152923152958_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e152924152955_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd152923152958_))
                                (let ((_e152927152963_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd152923152958_))))
                                  (let ((_tl152925152968_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e152927152963_)))
                                        (_hd152926152966_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e152927152963_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd152926152966_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd152926152966_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl152925152968_))
                                                (let ((_e152930152971_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl152925152968_))))
                                                  (let ((_tl152928152976_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e152930152971_)))
                                                        (_hd152929152974_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e152930152971_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl152928152976_))
                                                        (___kont153112153113_
                                                         _tl152922152960_
                                                         _hd152929152974_)
                                                        (___kont153114153115_))))
                                                (___kont153114153115_))
                                            (___kont153114153115_))
                                        (___kont153114153115_))))
                                (___kont153114153115_))))
                        (___kont153114153115_))))
                (___kont153114153115_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self152864_ _ctx152865_ _stx152866_ _args152867_)
        (let* ((_g152869152879_
                (lambda (_g152870152876_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g152870152876_))))
               (_g152868152908_
                (lambda (_g152870152882_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g152870152882_))
                      (let ((_e152874152884_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g152870152882_))))
                        (let ((_hd152873152887_
                               (let ()
                                 (declare (not safe))
                                 (##car _e152874152884_)))
                              (_tl152872152889_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e152874152884_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl152872152889_))
                              ((lambda (_L152892_)
                                 (let* ((_klass152903_
                                         (let ((__tmp153369
                                                (##structure-ref
                                                 _self152864_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx152866_
                                            __tmp153369)))
                                        (_object152905_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _ctx152865_
                                            _L152892_))))
                                   (if (##structure-ref
                                        _klass152903_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp153385
                                              (let ((__tmp153386
                                                     (let ((__tmp153388
                                                            (let ((__tmp153389
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153390
                                  (##structure-ref
                                   _klass152903_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp153390 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp153389)))
                   (__tmp153387
                    (let () (declare (not safe)) (cons _object152905_ '()))))
               (declare (not safe))
               (cons __tmp153388 __tmp153387))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp153386))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp153385
                                          _stx152866_))
                                       (if (##structure-ref
                                            _klass152903_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp153379
                                                  (let ((__tmp153380
                                                         (let ((__tmp153382
                                                                (let ((__tmp153383
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp153384
                                      (##structure-ref
                                       _klass152903_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp153384 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp153383)))
                       (__tmp153381
                        (let ()
                          (declare (not safe))
                          (cons _object152905_ '()))))
                   (declare (not safe))
                   (cons __tmp153382 __tmp153381))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp153380))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp153379
                                              _stx152866_))
                                           (let ((__tmp153370
                                                  (let ((__tmp153371
                                                         (let ((__tmp153377
                                                                (let ((__tmp153378
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp153378)))
                       (__tmp153372
                        (let ((__tmp153374
                               (let ((__tmp153375
                                      (let ((__tmp153376
                                             (##structure-ref
                                              _self152864_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp153376 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp153375)))
                              (__tmp153373
                               (let ()
                                 (declare (not safe))
                                 (cons _object152905_ '()))))
                          (declare (not safe))
                          (cons __tmp153374 __tmp153373))))
                   (declare (not safe))
                   (cons __tmp153377 __tmp153372))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp153371))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp153370
                                              _stx152866_))))))
                               _hd152873152887_)
                              (let ()
                                (declare (not safe))
                                (_g152869152879_ _g152870152882_)))))
                      (let ()
                        (declare (not safe))
                        (_g152869152879_ _g152870152882_))))))
          (declare (not safe))
          (_g152868152908_ _args152867_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__klass153067 __method-table153068)
        (let ((__id153069
               (let ((__slot153070
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass153067 'id))))
                 (if __slot153070
                     __slot153070
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self152864_ _ctx152865_ _stx152866_ _args152867_)
            (let* ((_g152869152879_
                    (lambda (_g152870152876_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g152870152876_))))
                   (_g152868152908_
                    (lambda (_g152870152882_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g152870152882_))
                          (let ((_e152874152884_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g152870152882_))))
                            (let ((_hd152873152887_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e152874152884_)))
                                  (_tl152872152889_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e152874152884_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl152872152889_))
                                  ((lambda (_L152892_)
                                     (let* ((_klass152903_
                                             (let ((__tmp153391
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self152864_
                                                       __id153069
                                                       __klass153067
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx152866_
                                                __tmp153391)))
                                            (_object152905_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _ctx152865_
                                                _L152892_))))
                                       (if (##structure-ref
                                            _klass152903_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp153407
                                                  (let ((__tmp153408
                                                         (let ((__tmp153410
                                                                (let ((__tmp153411
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp153412
                                      (##structure-ref
                                       _klass152903_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp153412 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp153411)))
                       (__tmp153409
                        (let ()
                          (declare (not safe))
                          (cons _object152905_ '()))))
                   (declare (not safe))
                   (cons __tmp153410 __tmp153409))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp153408))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp153407
                                              _stx152866_))
                                           (if (##structure-ref
                                                _klass152903_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp153401
                                                      (let ((__tmp153402
                                                             (let ((__tmp153404
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp153405
                                   (let ((__tmp153406
                                          (##structure-ref
                                           _klass152903_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp153406 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp153405)))
                           (__tmp153403
                            (let ()
                              (declare (not safe))
                              (cons _object152905_ '()))))
                       (declare (not safe))
                       (cons __tmp153404 __tmp153403))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp153402))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp153401
                                                  _stx152866_))
                                               (let ((__tmp153392
                                                      (let ((__tmp153393
                                                             (let ((__tmp153399
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp153400
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp153400)))
                           (__tmp153394
                            (let ((__tmp153396
                                   (let ((__tmp153397
                                          (let ((__tmp153398
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self152864_
                                                    __id153069
                                                    __klass153067
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp153398 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp153397)))
                                  (__tmp153395
                                   (let ()
                                     (declare (not safe))
                                     (cons _object152905_ '()))))
                              (declare (not safe))
                              (cons __tmp153396 __tmp153395))))
                       (declare (not safe))
                       (cons __tmp153399 __tmp153394))))
                (declare (not safe))
                (cons '%#call __tmp153393))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp153392
                                                  _stx152866_))))))
                                   _hd152873152887_)
                                  (let ()
                                    (declare (not safe))
                                    (_g152869152879_ _g152870152882_)))))
                          (let ()
                            (declare (not safe))
                            (_g152869152879_ _g152870152882_))))))
              (declare (not safe))
              (_g152868152908_ _args152867_))))))
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
      (lambda (_self152579_ _ctx152580_ _stx152581_ _args152582_)
        (let* ((_klass152584_
                (let ((__tmp153413
                       (##structure-ref _self152579_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx152581_ __tmp153413)))
               (_fields152586_
                (length (##structure-ref _klass152584_ '5 gxc#!class::t '#f)))
               (_args152592_
                (map (lambda (_g152587152589_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _ctx152580_ _g152587152589_)))
                     _args152582_))
               (_inline-make-object152594_
                (let ((__tmp153414
                       (let ((__tmp153420
                              (let ((__tmp153421
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp153421)))
                             (__tmp153415
                              (let ((__tmp153417
                                     (let ((__tmp153418
                                            (let ((__tmp153419
                                                   (##structure-ref
                                                    _self152579_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp153419 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153418)))
                                    (__tmp153416
                                     (make-list _fields152586_ '(%#quote #f))))
                                (declare (not safe))
                                (cons __tmp153417 __tmp153416))))
                         (declare (not safe))
                         (cons __tmp153420 __tmp153415))))
                  (declare (not safe))
                  (cons '%#call __tmp153414))))
          (let ((_$e152597_
                 (##structure-ref _klass152584_ '6 gxc#!class::t '#f)))
            (if _$e152597_
                ((lambda (_ctor152600_)
                   (let ((_$obj152602_
                          (let ((__tmp153522 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp153522)))
                         (_ctor-impl152603_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass152584_
                             _ctor152600_))))
                     (let ((__tmp153523
                            (let ((__tmp153524
                                   (let ((__tmp153592
                                          (let ((__tmp153593
                                                 (let ((__tmp153595
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj152602_
                                                                '())))
                                                       (__tmp153594
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object152594_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp153595
                                                         __tmp153594))))
                                            (declare (not safe))
                                            (cons __tmp153593 '())))
                                         (__tmp153525
                                          (let ((__tmp153526
                                                 (let ((__tmp153527
                                                        (let ((__tmp153531
                                                               (if _ctor-impl152603_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153586
                                  (let ((__tmp153590
                                         (let ((__tmp153591
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl152603_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153591)))
                                        (__tmp153587
                                         (let ((__tmp153588
                                                (let ((__tmp153589
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj152602_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp153589))))
                                           (declare (not safe))
                                           (cons __tmp153588 _args152592_))))
                                    (declare (not safe))
                                    (cons __tmp153590 __tmp153587))))
                             (declare (not safe))
                             (cons '%#call __tmp153586))
                           (let* ((_$ctor152605_
                                   (let ((__tmp153532 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp153532)))
                                  (__tmp153533
                                   (let ((__tmp153568
                                          (let ((__tmp153569
                                                 (let ((__tmp153585
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor152605_
                                                                '())))
                                                       (__tmp153570
                                                        (let ((__tmp153571
                                                               (let ((__tmp153572
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153583
                                     (let ((__tmp153584
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153584)))
                                    (__tmp153573
                                     (let ((__tmp153580
                                            (let ((__tmp153581
                                                   (let ((__tmp153582
                                                          (##structure-ref
                                                           _self152579_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp153582 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp153581)))
                                           (__tmp153574
                                            (let ((__tmp153578
                                                   (let ((__tmp153579
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj152602_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153579)))
                                                  (__tmp153575
                                                   (let ((__tmp153576
                                                          (let ((__tmp153577
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _ctor152600_ '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp153577))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153576 '()))))
                                              (declare (not safe))
                                              (cons __tmp153578 __tmp153575))))
                                       (declare (not safe))
                                       (cons __tmp153580 __tmp153574))))
                                (declare (not safe))
                                (cons __tmp153583 __tmp153573))))
                         (declare (not safe))
                         (cons '%#call __tmp153572))))
                  (declare (not safe))
                  (cons __tmp153571 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153585
                                                         __tmp153570))))
                                            (declare (not safe))
                                            (cons __tmp153569 '())))
                                         (__tmp153534
                                          (let ((__tmp153535
                                                 (let ((__tmp153536
                                                        (let ((__tmp153566
                                                               (let ((__tmp153567
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor152605_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp153567)))
                      (__tmp153537
                       (let ((__tmp153559
                              (let ((__tmp153560
                                     (let ((__tmp153564
                                            (let ((__tmp153565
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor152605_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp153565)))
                                           (__tmp153561
                                            (let ((__tmp153562
                                                   (let ((__tmp153563
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj152602_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153563))))
                                              (declare (not safe))
                                              (cons __tmp153562
                                                    _args152592_))))
                                       (declare (not safe))
                                       (cons __tmp153564 __tmp153561))))
                                (declare (not safe))
                                (cons '%#call __tmp153560)))
                             (__tmp153538
                              (let ((__tmp153539
                                     (let ((__tmp153540
                                            (let ((__tmp153557
                                                   (let ((__tmp153558
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153558)))
                                                  (__tmp153541
                                                   (let ((__tmp153555
                                                          (let ((__tmp153556
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp153556)))
                 (__tmp153542
                  (let ((__tmp153553
                         (let ((__tmp153554
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp153554)))
                        (__tmp153543
                         (let ((__tmp153550
                                (let ((__tmp153551
                                       (let ((__tmp153552
                                              (##structure-ref
                                               _self152579_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp153552 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp153551)))
                               (__tmp153544
                                (let ((__tmp153548
                                       (let ((__tmp153549
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp153549)))
                                      (__tmp153545
                                       (let ((__tmp153546
                                              (let ((__tmp153547
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor152600_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp153547))))
                                         (declare (not safe))
                                         (cons __tmp153546 '()))))
                                  (declare (not safe))
                                  (cons __tmp153548 __tmp153545))))
                           (declare (not safe))
                           (cons __tmp153550 __tmp153544))))
                    (declare (not safe))
                    (cons __tmp153553 __tmp153543))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153555
                                                           __tmp153542))))
                                              (declare (not safe))
                                              (cons __tmp153557 __tmp153541))))
                                       (declare (not safe))
                                       (cons '%#call __tmp153540))))
                                (declare (not safe))
                                (cons __tmp153539 '()))))
                         (declare (not safe))
                         (cons __tmp153559 __tmp153538))))
                  (declare (not safe))
                  (cons __tmp153566 __tmp153537))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp153536))))
                                            (declare (not safe))
                                            (cons __tmp153535 '()))))
                                     (declare (not safe))
                                     (cons __tmp153568 __tmp153534))))
                             (declare (not safe))
                             (cons '%#let-values __tmp153533))))
                      (__tmp153528
                       (let ((__tmp153529
                              (let ((__tmp153530
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj152602_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp153530))))
                         (declare (not safe))
                         (cons __tmp153529 '()))))
                  (declare (not safe))
                  (cons __tmp153531 __tmp153528))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp153527))))
                                            (declare (not safe))
                                            (cons __tmp153526 '()))))
                                     (declare (not safe))
                                     (cons __tmp153592 __tmp153525))))
                              (declare (not safe))
                              (cons '%#let-values __tmp153524))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp153523 _stx152581_))))
                 _$e152597_)
                (let ((_$e152607_
                       (##structure-ref _klass152584_ '9 gxc#!class::t '#f)))
                  (if _$e152607_
                      ((lambda (_metaclass152610_)
                         (let* ((_$obj152612_
                                 (let ((__tmp153484 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp153484)))
                                (_metakons152614_
                                 (let ((__tmp153485
                                        (let ()
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           _stx152581_
                                           _metaclass152610_))))
                                   (declare (not safe))
                                   (gxc#!class-lookup-method
                                    __tmp153485
                                    'instance-init!))))
                           (let ((__tmp153486
                                  (let ((__tmp153487
                                         (let ((__tmp153518
                                                (let ((__tmp153519
                                                       (let ((__tmp153521
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj152612_ '())))
                     (__tmp153520
                      (let ()
                        (declare (not safe))
                        (cons _inline-make-object152594_ '()))))
                 (declare (not safe))
                 (cons __tmp153521 __tmp153520))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153519 '())))
                                               (__tmp153488
                                                (let ((__tmp153489
                                                       (let ((__tmp153490
                                                              (let ((__tmp153494
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if _metakons152614_
                                 (let ((__tmp153508
                                        (let ((__tmp153516
                                               (let ((__tmp153517
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metakons152614_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp153517)))
                                              (__tmp153509
                                               (let ((__tmp153513
                                                      (let ((__tmp153514
                                                             (let ((__tmp153515
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self152579_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp153515 '()))))
                (declare (not safe))
                (cons '%#ref __tmp153514)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp153510
                                                      (let ((__tmp153511
                                                             (let ((__tmp153512
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _$obj152612_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp153512))))
                (declare (not safe))
                (cons __tmp153511 _args152592_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153513
                                                       __tmp153510))))
                                          (declare (not safe))
                                          (cons __tmp153516 __tmp153509))))
                                   (declare (not safe))
                                   (cons '%#call __tmp153508))
                                 (let ((__tmp153495
                                        (let ((__tmp153506
                                               (let ((__tmp153507
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'call-method
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp153507)))
                                              (__tmp153496
                                               (let ((__tmp153503
                                                      (let ((__tmp153504
                                                             (let ((__tmp153505
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self152579_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp153505 '()))))
                (declare (not safe))
                (cons '%#ref __tmp153504)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp153497
                                                      (let ((__tmp153501
                                                             (let ((__tmp153502
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'instance-init! '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp153502)))
                    (__tmp153498
                     (let ((__tmp153499
                            (let ((__tmp153500
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj152612_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp153500))))
                       (declare (not safe))
                       (cons __tmp153499 _args152592_))))
                (declare (not safe))
                (cons __tmp153501 __tmp153498))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153503
                                                       __tmp153497))))
                                          (declare (not safe))
                                          (cons __tmp153506 __tmp153496))))
                                   (declare (not safe))
                                   (cons '%#call __tmp153495))))
                            (__tmp153491
                             (let ((__tmp153492
                                    (let ((__tmp153493
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj152612_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp153493))))
                               (declare (not safe))
                               (cons __tmp153492 '()))))
                        (declare (not safe))
                        (cons __tmp153494 __tmp153491))))
                 (declare (not safe))
                 (cons '%#begin __tmp153490))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153489 '()))))
                                           (declare (not safe))
                                           (cons __tmp153518 __tmp153488))))
                                    (declare (not safe))
                                    (cons '%#let-values __tmp153487))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp153486 _stx152581_))))
                       _$e152607_)
                      (if (##structure-ref _klass152584_ '7 gxc#!class::t '#f)
                          (if (fx= (length _args152592_) _fields152586_)
                              (let ((__tmp153476
                                     (let ((__tmp153477
                                            (let ((__tmp153482
                                                   (let ((__tmp153483
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153483)))
                                                  (__tmp153478
                                                   (let ((__tmp153479
                                                          (let ((__tmp153480
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp153481
                                (##structure-ref
                                 _self152579_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp153481 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp153480))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153479
                                                           _args152592_))))
                                              (declare (not safe))
                                              (cons __tmp153482 __tmp153478))))
                                       (declare (not safe))
                                       (cons '%#call __tmp153477))))
                                (declare (not safe))
                                (gxc#xform-wrap-source
                                 __tmp153476
                                 _stx152581_))
                              (let ((__tmp153475
                                     (##structure-ref
                                      _self152579_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                    (__tmp153474
                                     (length (##structure-ref
                                              _klass152584_
                                              '5
                                              gxc#!class::t
                                              '#f))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"illegal struct constructor application; arity mismatch"
                                 _stx152581_
                                 __tmp153475
                                 __tmp153474)))
                          (let ((_$obj152617_
                                 (let ((__tmp153422 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp153422))))
                            (let _lp152619_ ((_rest152621_ _args152592_)
                                             (_initializers152622_ '()))
                              (let* ((___stx153148153149_ _rest152621_)
                                     (_g152626152647_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx153148153149_)))))
                                (let ((___kont153150153151_
                                       (lambda (_L152701_ _L152702_ _L152703_)
                                         (let* ((_slot152734_
                                                 (let ((__tmp153423
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L152703_))))
                                                   (declare (not safe))
                                                   (keyword->symbol
                                                    __tmp153423)))
                                                (_off152736_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass152584_
                                                    _slot152734_))))
                                           (if _off152736_
                                               (let ((__tmp153425
                                                      (let ((__tmp153426
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off152736_ _L152702_))))
                (declare (not safe))
                (cons __tmp153426 _initializers152622_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp152619_
                                                  _L152701_
                                                  __tmp153425))
                                               (let ((__tmp153424
                                                      (##structure-ref
                                                       _self152579_
                                                       '1
                                                       gxc#!type::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"unknown slot"
                                                  _stx152581_
                                                  __tmp153424
                                                  _slot152734_))))))
                                      (___kont153152153153_
                                       (lambda ()
                                         (let ((__tmp153427
                                                (let ((__tmp153428
                                                       (let ((__tmp153451
                                                              (let ((__tmp153452
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp153454
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj152617_ '())))
                                   (__tmp153453
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object152594_ '()))))
                               (declare (not safe))
                               (cons __tmp153454 __tmp153453))))
                        (declare (not safe))
                        (cons __tmp153452 '())))
                     (__tmp153429
                      (let ((__tmp153430
                             (let ((__tmp153431
                                    (let ((__tmp153448
                                           (let ((__tmp153449
                                                  (let ((__tmp153450
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj152617_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp153450))))
                                             (declare (not safe))
                                             (cons __tmp153449 '())))
                                          (__tmp153432
                                           (let ((__tmp153433
                                                  (lambda (_i152661_ _r152662_)
                                                    (let ((__tmp153434
                                                           (let ((__tmp153435
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp153445
                                 (let ((__tmp153446
                                        (let ((__tmp153447
                                               (##structure-ref
                                                _self152579_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp153447 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp153446)))
                                (__tmp153436
                                 (let ((__tmp153442
                                        (let ((__tmp153443
                                               (let ((__tmp153444
                                                      (car _i152661_)))
                                                 (declare (not safe))
                                                 (cons __tmp153444 '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp153443)))
                                       (__tmp153437
                                        (let ((__tmp153440
                                               (let ((__tmp153441
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _$obj152617_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp153441)))
                                              (__tmp153438
                                               (let ((__tmp153439
                                                      (cdr _i152661_)))
                                                 (declare (not safe))
                                                 (cons __tmp153439 '()))))
                                          (declare (not safe))
                                          (cons __tmp153440 __tmp153438))))
                                   (declare (not safe))
                                   (cons __tmp153442 __tmp153437))))
                            (declare (not safe))
                            (cons __tmp153445 __tmp153436))))
                     (declare (not safe))
                     (cons '%#struct-unchecked-set! __tmp153435))))
              (declare (not safe))
              (cons __tmp153434 _r152662_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (foldl1 __tmp153433
                                                     '()
                                                     _initializers152622_))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp153448 __tmp153432))))
                               (declare (not safe))
                               (cons '%#begin __tmp153431))))
                        (declare (not safe))
                        (cons __tmp153430 '()))))
                 (declare (not safe))
                 (cons __tmp153451 __tmp153429))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp153428))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp153427
                                            _stx152581_))))
                                      (___kont153154153155_
                                       (lambda ()
                                         (let ((__tmp153455
                                                (let ((__tmp153456
                                                       (let ((__tmp153470
                                                              (let ((__tmp153471
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp153473
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj152617_ '())))
                                   (__tmp153472
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object152594_ '()))))
                               (declare (not safe))
                               (cons __tmp153473 __tmp153472))))
                        (declare (not safe))
                        (cons __tmp153471 '())))
                     (__tmp153457
                      (let ((__tmp153458
                             (let ((__tmp153459
                                    (let ((__tmp153463
                                           (let ((__tmp153464
                                                  (let ((__tmp153468
                                                         (let ((__tmp153469
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'class-instance-init! '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp153469)))
                (__tmp153465
                 (let ((__tmp153466
                        (let ((__tmp153467
                               (let ()
                                 (declare (not safe))
                                 (cons _$obj152617_ '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp153467))))
                   (declare (not safe))
                   (cons __tmp153466 _args152592_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp153468
                                                          __tmp153465))))
                                             (declare (not safe))
                                             (cons '%#call __tmp153464)))
                                          (__tmp153460
                                           (let ((__tmp153461
                                                  (let ((__tmp153462
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj152617_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp153462))))
                                             (declare (not safe))
                                             (cons __tmp153461 '()))))
                                      (declare (not safe))
                                      (cons __tmp153463 __tmp153460))))
                               (declare (not safe))
                               (cons '%#begin __tmp153459))))
                        (declare (not safe))
                        (cons __tmp153458 '()))))
                 (declare (not safe))
                 (cons __tmp153470 __tmp153457))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp153456))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp153455
                                            _stx152581_)))))
                                  (let* ((_g152624152664_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   ___stx153148153149_))
                                                (___kont153152153153_)
                                                (___kont153154153155_))))
                                         (___match153185153186_
                                          (lambda (_e152633152669_
                                                   _hd152632152672_
                                                   _tl152631152674_
                                                   _e152636152677_
                                                   _hd152635152680_
                                                   _tl152634152682_
                                                   _e152639152685_
                                                   _hd152638152688_
                                                   _tl152637152690_
                                                   _e152642152693_
                                                   _hd152641152696_
                                                   _tl152640152698_)
                                            (let ((_L152701_ _tl152640152698_)
                                                  (_L152702_ _hd152641152696_)
                                                  (_L152703_ _hd152638152688_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-keyword?
                                                     _L152703_))
                                                  (___kont153150153151_
                                                   _L152701_
                                                   _L152702_
                                                   _L152703_)
                                                  (___kont153154153155_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx153148153149_))
                                        (let ((_e152633152669_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx153148153149_))))
                                          (let ((_tl152631152674_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e152633152669_)))
                                                (_hd152632152672_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e152633152669_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd152632152672_))
                                                (let ((_e152636152677_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd152632152672_))))
                                                  (let ((_tl152634152682_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e152636152677_)))
                                                        (_hd152635152680_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e152636152677_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd152635152680_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#quote
                                                               _hd152635152680_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl152634152682_))
                        (let ((_e152639152685_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl152634152682_))))
                          (let ((_tl152637152690_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e152639152685_)))
                                (_hd152638152688_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e152639152685_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl152637152690_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl152631152674_))
                                    (let ((_e152642152693_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl152631152674_))))
                                      (let ((_tl152640152698_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e152642152693_)))
                                            (_hd152641152696_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e152642152693_))))
                                        (___match153185153186_
                                         _e152633152669_
                                         _hd152632152672_
                                         _tl152631152674_
                                         _e152636152677_
                                         _hd152635152680_
                                         _tl152634152682_
                                         _e152639152685_
                                         _hd152638152688_
                                         _tl152637152690_
                                         _e152642152693_
                                         _hd152641152696_
                                         _tl152640152698_)))
                                    (___kont153154153155_))
                                (___kont153154153155_))))
                        (___kont153154153155_))
                    (___kont153154153155_))
                (___kont153154153155_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont153154153155_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g152624152664_))))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__klass153071 __method-table153072)
        (let ((__id153073
               (let ((__slot153074
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass153071 'id))))
                 (if __slot153074
                     __slot153074
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self152579_ _ctx152580_ _stx152581_ _args152582_)
            (let* ((_klass152584_
                    (let ((__tmp153596
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self152579_
                              __id153073
                              __klass153071
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx152581_ __tmp153596)))
                   (_fields152586_
                    (length (##structure-ref
                             _klass152584_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args152592_
                    (map (lambda (_g152587152589_)
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _ctx152580_ _g152587152589_)))
                         _args152582_))
                   (_inline-make-object152594_
                    (let ((__tmp153597
                           (let ((__tmp153603
                                  (let ((__tmp153604
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp153604)))
                                 (__tmp153598
                                  (let ((__tmp153600
                                         (let ((__tmp153601
                                                (let ((__tmp153602
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self152579_
                                                          __id153073
                                                          __klass153071
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp153602 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153601)))
                                        (__tmp153599
                                         (make-list
                                          _fields152586_
                                          '(%#quote #f))))
                                    (declare (not safe))
                                    (cons __tmp153600 __tmp153599))))
                             (declare (not safe))
                             (cons __tmp153603 __tmp153598))))
                      (declare (not safe))
                      (cons '%#call __tmp153597))))
              (let ((_$e152597_
                     (##structure-ref _klass152584_ '6 gxc#!class::t '#f)))
                (if _$e152597_
                    ((lambda (_ctor152600_)
                       (let ((_$obj152602_
                              (let ((__tmp153705 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp153705)))
                             (_ctor-impl152603_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass152584_
                                 _ctor152600_))))
                         (let ((__tmp153706
                                (let ((__tmp153707
                                       (let ((__tmp153775
                                              (let ((__tmp153776
                                                     (let ((__tmp153778
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj152602_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp153777
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object152594_ '()))))
               (declare (not safe))
               (cons __tmp153778 __tmp153777))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp153776 '())))
                                             (__tmp153708
                                              (let ((__tmp153709
                                                     (let ((__tmp153710
                                                            (let ((__tmp153714
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl152603_
                               (let ((__tmp153769
                                      (let ((__tmp153773
                                             (let ((__tmp153774
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl152603_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp153774)))
                                            (__tmp153770
                                             (let ((__tmp153771
                                                    (let ((__tmp153772
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj152602_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp153772))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153771
                                                     _args152592_))))
                                        (declare (not safe))
                                        (cons __tmp153773 __tmp153770))))
                                 (declare (not safe))
                                 (cons '%#call __tmp153769))
                               (let* ((_$ctor152605_
                                       (let ((__tmp153715
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp153715)))
                                      (__tmp153716
                                       (let ((__tmp153751
                                              (let ((__tmp153752
                                                     (let ((__tmp153768
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor152605_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp153753
                    (let ((__tmp153754
                           (let ((__tmp153755
                                  (let ((__tmp153766
                                         (let ((__tmp153767
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153767)))
                                        (__tmp153756
                                         (let ((__tmp153763
                                                (let ((__tmp153764
                                                       (let ((__tmp153765
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self152579_
                         __id153073
                         __klass153071
                         '#f))))
                 (declare (not safe))
                 (cons __tmp153765 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp153764)))
                                               (__tmp153757
                                                (let ((__tmp153761
                                                       (let ((__tmp153762
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj152602_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153762)))
              (__tmp153758
               (let ((__tmp153759
                      (let ((__tmp153760
                             (let ()
                               (declare (not safe))
                               (cons _ctor152600_ '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp153760))))
                 (declare (not safe))
                 (cons __tmp153759 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153761
                                                        __tmp153758))))
                                           (declare (not safe))
                                           (cons __tmp153763 __tmp153757))))
                                    (declare (not safe))
                                    (cons __tmp153766 __tmp153756))))
                             (declare (not safe))
                             (cons '%#call __tmp153755))))
                      (declare (not safe))
                      (cons __tmp153754 '()))))
               (declare (not safe))
               (cons __tmp153768 __tmp153753))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp153752 '())))
                                             (__tmp153717
                                              (let ((__tmp153718
                                                     (let ((__tmp153719
                                                            (let ((__tmp153749
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153750
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor152605_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp153750)))
                          (__tmp153720
                           (let ((__tmp153742
                                  (let ((__tmp153743
                                         (let ((__tmp153747
                                                (let ((__tmp153748
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor152605_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp153748)))
                                               (__tmp153744
                                                (let ((__tmp153745
                                                       (let ((__tmp153746
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj152602_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153746))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153745
                                                        _args152592_))))
                                           (declare (not safe))
                                           (cons __tmp153747 __tmp153744))))
                                    (declare (not safe))
                                    (cons '%#call __tmp153743)))
                                 (__tmp153721
                                  (let ((__tmp153722
                                         (let ((__tmp153723
                                                (let ((__tmp153740
                                                       (let ((__tmp153741
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153741)))
              (__tmp153724
               (let ((__tmp153738
                      (let ((__tmp153739
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp153739)))
                     (__tmp153725
                      (let ((__tmp153736
                             (let ((__tmp153737
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp153737)))
                            (__tmp153726
                             (let ((__tmp153733
                                    (let ((__tmp153734
                                           (let ((__tmp153735
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self152579_
                                                     __id153073
                                                     __klass153071
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp153735 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp153734)))
                                   (__tmp153727
                                    (let ((__tmp153731
                                           (let ((__tmp153732
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp153732)))
                                          (__tmp153728
                                           (let ((__tmp153729
                                                  (let ((__tmp153730
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor152600_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp153730))))
                                             (declare (not safe))
                                             (cons __tmp153729 '()))))
                                      (declare (not safe))
                                      (cons __tmp153731 __tmp153728))))
                               (declare (not safe))
                               (cons __tmp153733 __tmp153727))))
                        (declare (not safe))
                        (cons __tmp153736 __tmp153726))))
                 (declare (not safe))
                 (cons __tmp153738 __tmp153725))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153740
                                                        __tmp153724))))
                                           (declare (not safe))
                                           (cons '%#call __tmp153723))))
                                    (declare (not safe))
                                    (cons __tmp153722 '()))))
                             (declare (not safe))
                             (cons __tmp153742 __tmp153721))))
                      (declare (not safe))
                      (cons __tmp153749 __tmp153720))))
               (declare (not safe))
               (cons '%#if __tmp153719))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp153718 '()))))
                                         (declare (not safe))
                                         (cons __tmp153751 __tmp153717))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp153716))))
                          (__tmp153711
                           (let ((__tmp153712
                                  (let ((__tmp153713
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj152602_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp153713))))
                             (declare (not safe))
                             (cons __tmp153712 '()))))
                      (declare (not safe))
                      (cons __tmp153714 __tmp153711))))
               (declare (not safe))
               (cons '%#begin __tmp153710))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp153709 '()))))
                                         (declare (not safe))
                                         (cons __tmp153775 __tmp153708))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp153707))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp153706 _stx152581_))))
                     _$e152597_)
                    (let ((_$e152607_
                           (##structure-ref
                            _klass152584_
                            '9
                            gxc#!class::t
                            '#f)))
                      (if _$e152607_
                          ((lambda (_metaclass152610_)
                             (let* ((_$obj152612_
                                     (let ((__tmp153667 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp153667)))
                                    (_metakons152614_
                                     (let ((__tmp153668
                                            (let ()
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               _stx152581_
                                               _metaclass152610_))))
                                       (declare (not safe))
                                       (gxc#!class-lookup-method
                                        __tmp153668
                                        'instance-init!))))
                               (let ((__tmp153669
                                      (let ((__tmp153670
                                             (let ((__tmp153701
                                                    (let ((__tmp153702
                                                           (let ((__tmp153704
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj152612_ '())))
                         (__tmp153703
                          (let ()
                            (declare (not safe))
                            (cons _inline-make-object152594_ '()))))
                     (declare (not safe))
                     (cons __tmp153704 __tmp153703))))
              (declare (not safe))
              (cons __tmp153702 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp153671
                                                    (let ((__tmp153672
                                                           (let ((__tmp153673
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp153677
                                 (if _metakons152614_
                                     (let ((__tmp153691
                                            (let ((__tmp153699
                                                   (let ((__tmp153700
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _metakons152614_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153700)))
                                                  (__tmp153692
                                                   (let ((__tmp153696
                                                          (let ((__tmp153697
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp153698
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self152579_
                                   __id153073
                                   __klass153071
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp153698 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp153697)))
                 (__tmp153693
                  (let ((__tmp153694
                         (let ((__tmp153695
                                (let ()
                                  (declare (not safe))
                                  (cons _$obj152612_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp153695))))
                    (declare (not safe))
                    (cons __tmp153694 _args152592_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153696
                                                           __tmp153693))))
                                              (declare (not safe))
                                              (cons __tmp153699 __tmp153692))))
                                       (declare (not safe))
                                       (cons '%#call __tmp153691))
                                     (let ((__tmp153678
                                            (let ((__tmp153689
                                                   (let ((__tmp153690
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'call-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153690)))
                                                  (__tmp153679
                                                   (let ((__tmp153686
                                                          (let ((__tmp153687
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp153688
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self152579_
                                   __id153073
                                   __klass153071
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp153688 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp153687)))
                 (__tmp153680
                  (let ((__tmp153684
                         (let ((__tmp153685
                                (let ()
                                  (declare (not safe))
                                  (cons 'instance-init! '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp153685)))
                        (__tmp153681
                         (let ((__tmp153682
                                (let ((__tmp153683
                                       (let ()
                                         (declare (not safe))
                                         (cons _$obj152612_ '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp153683))))
                           (declare (not safe))
                           (cons __tmp153682 _args152592_))))
                    (declare (not safe))
                    (cons __tmp153684 __tmp153681))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153686
                                                           __tmp153680))))
                                              (declare (not safe))
                                              (cons __tmp153689 __tmp153679))))
                                       (declare (not safe))
                                       (cons '%#call __tmp153678))))
                                (__tmp153674
                                 (let ((__tmp153675
                                        (let ((__tmp153676
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$obj152612_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp153676))))
                                   (declare (not safe))
                                   (cons __tmp153675 '()))))
                            (declare (not safe))
                            (cons __tmp153677 __tmp153674))))
                     (declare (not safe))
                     (cons '%#begin __tmp153673))))
              (declare (not safe))
              (cons __tmp153672 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153701
                                                     __tmp153671))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp153670))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp153669
                                  _stx152581_))))
                           _$e152607_)
                          (if (##structure-ref
                               _klass152584_
                               '7
                               gxc#!class::t
                               '#f)
                              (if (fx= (length _args152592_) _fields152586_)
                                  (let ((__tmp153659
                                         (let ((__tmp153660
                                                (let ((__tmp153665
                                                       (let ((__tmp153666
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '##structure '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153666)))
              (__tmp153661
               (let ((__tmp153662
                      (let ((__tmp153663
                             (let ((__tmp153664
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self152579_
                                       __id153073
                                       __klass153071
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp153664 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp153663))))
                 (declare (not safe))
                 (cons __tmp153662 _args152592_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153665
                                                        __tmp153661))))
                                           (declare (not safe))
                                           (cons '%#call __tmp153660))))
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp153659
                                     _stx152581_))
                                  (let ((__tmp153658
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _self152579_
                                            __id153073
                                            __klass153071
                                            '#f)))
                                        (__tmp153657
                                         (length (##structure-ref
                                                  _klass152584_
                                                  '5
                                                  gxc#!class::t
                                                  '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _stx152581_
                                     __tmp153658
                                     __tmp153657)))
                              (let ((_$obj152617_
                                     (let ((__tmp153605 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp153605))))
                                (let _lp152619_ ((_rest152621_ _args152592_)
                                                 (_initializers152622_ '()))
                                  (let* ((___stx153190153191_ _rest152621_)
                                         (_g152626152647_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               ___stx153190153191_)))))
                                    (let ((___kont153192153193_
                                           (lambda (_L152701_
                                                    _L152702_
                                                    _L152703_)
                                             (let* ((_slot152734_
                                                     (let ((__tmp153606
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L152703_))))
                                                       (declare (not safe))
                                                       (keyword->symbol
                                                        __tmp153606)))
                                                    (_off152736_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass152584_
                                                        _slot152734_))))
                                               (if _off152736_
                                                   (let ((__tmp153608
                                                          (let ((__tmp153609
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _off152736_ _L152702_))))
                    (declare (not safe))
                    (cons __tmp153609 _initializers152622_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp152619_
                                                      _L152701_
                                                      __tmp153608))
                                                   (let ((__tmp153607
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _self152579_
                                                             __id153073
                                                             __klass153071
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"unknown slot"
                                                      _stx152581_
                                                      __tmp153607
                                                      _slot152734_))))))
                                          (___kont153194153195_
                                           (lambda ()
                                             (let ((__tmp153610
                                                    (let ((__tmp153611
                                                           (let ((__tmp153634
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp153635
                                 (let ((__tmp153637
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj152617_ '())))
                                       (__tmp153636
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object152594_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp153637 __tmp153636))))
                            (declare (not safe))
                            (cons __tmp153635 '())))
                         (__tmp153612
                          (let ((__tmp153613
                                 (let ((__tmp153614
                                        (let ((__tmp153631
                                               (let ((__tmp153632
                                                      (let ((__tmp153633
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj152617_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp153633))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153632 '())))
                                              (__tmp153615
                                               (let ((__tmp153616
                                                      (lambda (_i152661_
                                                               _r152662_)
                                                        (let ((__tmp153617
                                                               (let ((__tmp153618
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153628
                                     (let ((__tmp153629
                                            (let ((__tmp153630
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self152579_
                                                      __id153073
                                                      __klass153071
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp153630 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153629)))
                                    (__tmp153619
                                     (let ((__tmp153625
                                            (let ((__tmp153626
                                                   (let ((__tmp153627
                                                          (car _i152661_)))
                                                     (declare (not safe))
                                                     (cons __tmp153627 '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp153626)))
                                           (__tmp153620
                                            (let ((__tmp153623
                                                   (let ((__tmp153624
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj152617_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153624)))
                                                  (__tmp153621
                                                   (let ((__tmp153622
                                                          (cdr _i152661_)))
                                                     (declare (not safe))
                                                     (cons __tmp153622 '()))))
                                              (declare (not safe))
                                              (cons __tmp153623 __tmp153621))))
                                       (declare (not safe))
                                       (cons __tmp153625 __tmp153620))))
                                (declare (not safe))
                                (cons __tmp153628 __tmp153619))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp153618))))
                  (declare (not safe))
                  (cons __tmp153617 _r152662_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl1 __tmp153616
                                                         '()
                                                         _initializers152622_))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp153631
                                                  __tmp153615))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp153614))))
                            (declare (not safe))
                            (cons __tmp153613 '()))))
                     (declare (not safe))
                     (cons __tmp153634 __tmp153612))))
              (declare (not safe))
              (cons '%#let-values __tmp153611))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp153610
                                                _stx152581_))))
                                          (___kont153196153197_
                                           (lambda ()
                                             (let ((__tmp153638
                                                    (let ((__tmp153639
                                                           (let ((__tmp153653
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp153654
                                 (let ((__tmp153656
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj152617_ '())))
                                       (__tmp153655
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object152594_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp153656 __tmp153655))))
                            (declare (not safe))
                            (cons __tmp153654 '())))
                         (__tmp153640
                          (let ((__tmp153641
                                 (let ((__tmp153642
                                        (let ((__tmp153646
                                               (let ((__tmp153647
                                                      (let ((__tmp153651
                                                             (let ((__tmp153652
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'class-instance-init! '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp153652)))
                    (__tmp153648
                     (let ((__tmp153649
                            (let ((__tmp153650
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj152617_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp153650))))
                       (declare (not safe))
                       (cons __tmp153649 _args152592_))))
                (declare (not safe))
                (cons __tmp153651 __tmp153648))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp153647)))
                                              (__tmp153643
                                               (let ((__tmp153644
                                                      (let ((__tmp153645
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj152617_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp153645))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153644 '()))))
                                          (declare (not safe))
                                          (cons __tmp153646 __tmp153643))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp153642))))
                            (declare (not safe))
                            (cons __tmp153641 '()))))
                     (declare (not safe))
                     (cons __tmp153653 __tmp153640))))
              (declare (not safe))
              (cons '%#let-values __tmp153639))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp153638
                                                _stx152581_)))))
                                      (let* ((_g152624152664_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       ___stx153190153191_))
                                                    (___kont153194153195_)
                                                    (___kont153196153197_))))
                                             (___match153227153228_
                                              (lambda (_e152633152669_
                                                       _hd152632152672_
                                                       _tl152631152674_
                                                       _e152636152677_
                                                       _hd152635152680_
                                                       _tl152634152682_
                                                       _e152639152685_
                                                       _hd152638152688_
                                                       _tl152637152690_
                                                       _e152642152693_
                                                       _hd152641152696_
                                                       _tl152640152698_)
                                                (let ((_L152701_
                                                       _tl152640152698_)
                                                      (_L152702_
                                                       _hd152641152696_)
                                                      (_L152703_
                                                       _hd152638152688_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-keyword?
                                                         _L152703_))
                                                      (___kont153192153193_
                                                       _L152701_
                                                       _L152702_
                                                       _L152703_)
                                                      (___kont153196153197_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               ___stx153190153191_))
                                            (let ((_e152633152669_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      ___stx153190153191_))))
                                              (let ((_tl152631152674_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e152633152669_)))
                                                    (_hd152632152672_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e152633152669_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd152632152672_))
                                                    (let ((_e152636152677_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd152632152672_))))
                                                      (let ((_tl152634152682_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e152636152677_)))
                    (_hd152635152680_
                     (let () (declare (not safe)) (##car _e152636152677_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd152635152680_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd152635152680_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl152634152682_))
                            (let ((_e152639152685_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl152634152682_))))
                              (let ((_tl152637152690_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e152639152685_)))
                                    (_hd152638152688_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e152639152685_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl152637152690_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl152631152674_))
                                        (let ((_e152642152693_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl152631152674_))))
                                          (let ((_tl152640152698_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e152642152693_)))
                                                (_hd152641152696_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e152642152693_))))
                                            (___match153227153228_
                                             _e152633152669_
                                             _hd152632152672_
                                             _tl152631152674_
                                             _e152636152677_
                                             _hd152635152680_
                                             _tl152634152682_
                                             _e152639152685_
                                             _hd152638152688_
                                             _tl152637152690_
                                             _e152642152693_
                                             _hd152641152696_
                                             _tl152640152698_)))
                                        (___kont153196153197_))
                                    (___kont153196153197_))))
                            (___kont153196153197_))
                        (___kont153196153197_))
                    (___kont153196153197_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont153196153197_))))
                                            (let ()
                                              (declare (not safe))
                                              (_g152624152664_))))))))))))))))))
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
      (lambda (_self152401_ _ctx152402_ _stx152403_ _args152404_)
        (let* ((_g152406152416_
                (lambda (_g152407152413_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g152407152413_))))
               (_g152405152454_
                (lambda (_g152407152419_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g152407152419_))
                      (let ((_e152411152421_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g152407152419_))))
                        (let ((_hd152410152424_
                               (let ()
                                 (declare (not safe))
                                 (##car _e152411152421_)))
                              (_tl152409152426_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e152411152421_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl152409152426_))
                              ((lambda (_L152429_)
                                 (let* ((_klass152440_
                                         (let ((__tmp153779
                                                (##structure-ref
                                                 _self152401_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx152403_
                                            __tmp153779)))
                                        (_field152442_
                                         (let ((__tmp153780
                                                (##structure-ref
                                                 _self152401_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass152440_
                                            __tmp153780)))
                                        (_object152444_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _ctx152402_
                                            _L152429_))))
                                   (if (##structure-ref
                                        _klass152440_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp153857
                                              (let ((__tmp153866
                                                     (if (##structure-ref
                                                          _self152401_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp153858
                                                     (let ((__tmp153863
                                                            (let ((__tmp153864
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153865
                                  (##structure-ref
                                   _self152401_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp153865 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp153864)))
                   (__tmp153859
                    (let ((__tmp153861
                           (let ((__tmp153862
                                  (let ()
                                    (declare (not safe))
                                    (cons _field152442_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp153862)))
                          (__tmp153860
                           (let ()
                             (declare (not safe))
                             (cons _object152444_ '()))))
                      (declare (not safe))
                      (cons __tmp153861 __tmp153860))))
               (declare (not safe))
               (cons __tmp153863 __tmp153859))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp153866
                                                      __tmp153858))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp153857
                                          _stx152403_))
                                       (if (##structure-ref
                                            _klass152440_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp153847
                                                  (let ((__tmp153856
                                                         (if (##structure-ref
                                                              _self152401_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp153848
                                                         (let ((__tmp153853
                                                                (let ((__tmp153854
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp153855
                                      (##structure-ref
                                       _self152401_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp153855 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp153854)))
                       (__tmp153849
                        (let ((__tmp153851
                               (let ((__tmp153852
                                      (let ()
                                        (declare (not safe))
                                        (cons _field152442_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp153852)))
                              (__tmp153850
                               (let ()
                                 (declare (not safe))
                                 (cons _object152444_ '()))))
                          (declare (not safe))
                          (cons __tmp153851 __tmp153850))))
                   (declare (not safe))
                   (cons __tmp153853 __tmp153849))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp153856
                                                          __tmp153848))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp153847
                                              _stx152403_))
                                           (let ((_$e152447_
                                                  (let ((__tmp153781
                                                         (##structure-ref
                                                          _self152401_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass152440_
                                                     __tmp153781))))
                                             (if _$e152447_
                                                 ((lambda (_klass152450_)
                                                    (let ((__tmp153837
                                                           (let ((__tmp153846
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self152401_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp153838
                          (let ((__tmp153843
                                 (let ((__tmp153844
                                        (let ((__tmp153845
                                               (##structure-ref
                                                _self152401_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp153845 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp153844)))
                                (__tmp153839
                                 (let ((__tmp153841
                                        (let ((__tmp153842
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field152442_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp153842)))
                                       (__tmp153840
                                        (let ()
                                          (declare (not safe))
                                          (cons _object152444_ '()))))
                                   (declare (not safe))
                                   (cons __tmp153841 __tmp153840))))
                            (declare (not safe))
                            (cons __tmp153843 __tmp153839))))
                     (declare (not safe))
                     (cons __tmp153846 __tmp153838))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp153837 _stx152403_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e152447_)
                                                 (if (##structure-ref
                                                      _self152401_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp153791
                                                            (let* ((_$obj152452_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp153792 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp153792)))
                           (__tmp153793
                            (let ((__tmp153833
                                   (let ((__tmp153834
                                          (let ((__tmp153836
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj152452_ '())))
                                                (__tmp153835
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object152444_ '()))))
                                            (declare (not safe))
                                            (cons __tmp153836 __tmp153835))))
                                     (declare (not safe))
                                     (cons __tmp153834 '())))
                                  (__tmp153794
                                   (let ((__tmp153795
                                          (let ((__tmp153796
                                                 (let ((__tmp153825
                                                        (let ((__tmp153826
                                                               (let ((__tmp153830
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153831
                                     (let ((__tmp153832
                                            (##structure-ref
                                             _klass152440_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp153832 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp153831)))
                             (__tmp153827
                              (let ((__tmp153828
                                     (let ((__tmp153829
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj152452_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153829))))
                                (declare (not safe))
                                (cons __tmp153828 '()))))
                         (declare (not safe))
                         (cons __tmp153830 __tmp153827))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp153826)))
               (__tmp153797
                (let ((__tmp153814
                       (let ((__tmp153815
                              (let ((__tmp153822
                                     (let ((__tmp153823
                                            (let ((__tmp153824
                                                   (##structure-ref
                                                    _self152401_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp153824 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153823)))
                                    (__tmp153816
                                     (let ((__tmp153820
                                            (let ((__tmp153821
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field152442_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp153821)))
                                           (__tmp153817
                                            (let ((__tmp153818
                                                   (let ((__tmp153819
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj152452_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153819))))
                                              (declare (not safe))
                                              (cons __tmp153818 '()))))
                                       (declare (not safe))
                                       (cons __tmp153820 __tmp153817))))
                                (declare (not safe))
                                (cons __tmp153822 __tmp153816))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp153815)))
                      (__tmp153798
                       (let ((__tmp153799
                              (let ((__tmp153800
                                     (let ((__tmp153812
                                            (let ((__tmp153813
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp153813)))
                                           (__tmp153801
                                            (let ((__tmp153809
                                                   (let ((__tmp153810
                                                          (let ((__tmp153811
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self152401_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp153811 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153810)))
                                                  (__tmp153802
                                                   (let ((__tmp153807
                                                          (let ((__tmp153808
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj152452_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp153808)))
                 (__tmp153803
                  (let ((__tmp153804
                         (let ((__tmp153805
                                (let ((__tmp153806
                                       (##structure-ref
                                        _self152401_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp153806 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp153805))))
                    (declare (not safe))
                    (cons __tmp153804 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153807
                                                           __tmp153803))))
                                              (declare (not safe))
                                              (cons __tmp153809 __tmp153802))))
                                       (declare (not safe))
                                       (cons __tmp153812 __tmp153801))))
                                (declare (not safe))
                                (cons '%#call __tmp153800))))
                         (declare (not safe))
                         (cons __tmp153799 '()))))
                  (declare (not safe))
                  (cons __tmp153814 __tmp153798))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153825
                                                         __tmp153797))))
                                            (declare (not safe))
                                            (cons '%#if __tmp153796))))
                                     (declare (not safe))
                                     (cons __tmp153795 '()))))
                              (declare (not safe))
                              (cons __tmp153833 __tmp153794))))
                      (declare (not safe))
                      (cons '%#let-values __tmp153793))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp153791 _stx152403_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp153782
                                                            (let ((__tmp153783
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153789
                                  (let ((__tmp153790
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp153790)))
                                 (__tmp153784
                                  (let ((__tmp153785
                                         (let ((__tmp153786
                                                (let ((__tmp153787
                                                       (let ((__tmp153788
                                                              (##structure-ref
                                                               _self152401_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp153788
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp153787))))
                                           (declare (not safe))
                                           (cons __tmp153786 '()))))
                                    (declare (not safe))
                                    (cons _object152444_ __tmp153785))))
                             (declare (not safe))
                             (cons __tmp153789 __tmp153784))))
                      (declare (not safe))
                      (cons '%#call __tmp153783))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp153782 _stx152403_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd152410152424_)
                              (let ()
                                (declare (not safe))
                                (_g152406152416_ _g152407152419_)))))
                      (let ()
                        (declare (not safe))
                        (_g152406152416_ _g152407152419_))))))
          (declare (not safe))
          (_g152405152454_ _args152404_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass153075 __method-table153076)
        (let ((__id153077
               (let ((__slot153080
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass153075 'id))))
                 (if __slot153080
                     __slot153080
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?153078
               (let ((__slot153081
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass153075 'checked?))))
                 (if __slot153081
                     __slot153081
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot153079
               (let ((__slot153082
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass153075 'slot))))
                 (if __slot153082
                     __slot153082
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self152401_ _ctx152402_ _stx152403_ _args152404_)
            (let* ((_g152406152416_
                    (lambda (_g152407152413_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g152407152413_))))
                   (_g152405152454_
                    (lambda (_g152407152419_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g152407152419_))
                          (let ((_e152411152421_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g152407152419_))))
                            (let ((_hd152410152424_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e152411152421_)))
                                  (_tl152409152426_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e152411152421_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl152409152426_))
                                  ((lambda (_L152429_)
                                     (let* ((_klass152440_
                                             (let ((__tmp153867
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self152401_
                                                       __id153077
                                                       __klass153075
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx152403_
                                                __tmp153867)))
                                            (_field152442_
                                             (let ((__tmp153868
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self152401_
                                                       __slot153079
                                                       __klass153075
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass152440_
                                                __tmp153868)))
                                            (_object152444_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _ctx152402_
                                                _L152429_))))
                                       (if (##structure-ref
                                            _klass152440_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp153945
                                                  (let ((__tmp153954
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self152401_
                        __checked?153078
                        __klass153075
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp153946
                 (let ((__tmp153951
                        (let ((__tmp153952
                               (let ((__tmp153953
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self152401_
                                         __id153077
                                         __klass153075
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp153953 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp153952)))
                       (__tmp153947
                        (let ((__tmp153949
                               (let ((__tmp153950
                                      (let ()
                                        (declare (not safe))
                                        (cons _field152442_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp153950)))
                              (__tmp153948
                               (let ()
                                 (declare (not safe))
                                 (cons _object152444_ '()))))
                          (declare (not safe))
                          (cons __tmp153949 __tmp153948))))
                   (declare (not safe))
                   (cons __tmp153951 __tmp153947))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp153954
                                                          __tmp153946))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp153945
                                              _stx152403_))
                                           (if (##structure-ref
                                                _klass152440_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp153935
                                                      (let ((__tmp153944
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self152401_
                            __checked?153078
                            __klass153075
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp153936
                     (let ((__tmp153941
                            (let ((__tmp153942
                                   (let ((__tmp153943
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self152401_
                                             __id153077
                                             __klass153075
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp153943 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp153942)))
                           (__tmp153937
                            (let ((__tmp153939
                                   (let ((__tmp153940
                                          (let ()
                                            (declare (not safe))
                                            (cons _field152442_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp153940)))
                                  (__tmp153938
                                   (let ()
                                     (declare (not safe))
                                     (cons _object152444_ '()))))
                              (declare (not safe))
                              (cons __tmp153939 __tmp153938))))
                       (declare (not safe))
                       (cons __tmp153941 __tmp153937))))
                (declare (not safe))
                (cons __tmp153944 __tmp153936))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp153935
                                                  _stx152403_))
                                               (let ((_$e152447_
                                                      (let ((__tmp153869
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self152401_
                        __slot153079
                        __klass153075
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass152440_ __tmp153869))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e152447_
                                                     ((lambda (_klass152450_)
                                                        (let ((__tmp153925
                                                               (let ((__tmp153934
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self152401_
                                     __checked?153078
                                     __klass153075
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp153926
                              (let ((__tmp153931
                                     (let ((__tmp153932
                                            (let ((__tmp153933
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self152401_
                                                      __id153077
                                                      __klass153075
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp153933 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153932)))
                                    (__tmp153927
                                     (let ((__tmp153929
                                            (let ((__tmp153930
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field152442_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp153930)))
                                           (__tmp153928
                                            (let ()
                                              (declare (not safe))
                                              (cons _object152444_ '()))))
                                       (declare (not safe))
                                       (cons __tmp153929 __tmp153928))))
                                (declare (not safe))
                                (cons __tmp153931 __tmp153927))))
                         (declare (not safe))
                         (cons __tmp153934 __tmp153926))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp153925 _stx152403_)))
              _$e152447_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self152401_
                                                            __checked?153078
                                                            __klass153075
                                                            '#f))
                                                         (let ((__tmp153879
                                                                (let* ((_$obj152452_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp153880 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp153880)))
                               (__tmp153881
                                (let ((__tmp153921
                                       (let ((__tmp153922
                                              (let ((__tmp153924
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj152452_
                                                             '())))
                                                    (__tmp153923
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object152444_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp153924
                                                      __tmp153923))))
                                         (declare (not safe))
                                         (cons __tmp153922 '())))
                                      (__tmp153882
                                       (let ((__tmp153883
                                              (let ((__tmp153884
                                                     (let ((__tmp153913
                                                            (let ((__tmp153914
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153918
                                  (let ((__tmp153919
                                         (let ((__tmp153920
                                                (##structure-ref
                                                 _klass152440_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp153920 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp153919)))
                                 (__tmp153915
                                  (let ((__tmp153916
                                         (let ((__tmp153917
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj152452_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153917))))
                                    (declare (not safe))
                                    (cons __tmp153916 '()))))
                             (declare (not safe))
                             (cons __tmp153918 __tmp153915))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp153914)))
                   (__tmp153885
                    (let ((__tmp153902
                           (let ((__tmp153903
                                  (let ((__tmp153910
                                         (let ((__tmp153911
                                                (let ((__tmp153912
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self152401_
                                                          __id153077
                                                          __klass153075
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp153912 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153911)))
                                        (__tmp153904
                                         (let ((__tmp153908
                                                (let ((__tmp153909
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field152442_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp153909)))
                                               (__tmp153905
                                                (let ((__tmp153906
                                                       (let ((__tmp153907
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj152452_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153907))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153906 '()))))
                                           (declare (not safe))
                                           (cons __tmp153908 __tmp153905))))
                                    (declare (not safe))
                                    (cons __tmp153910 __tmp153904))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp153903)))
                          (__tmp153886
                           (let ((__tmp153887
                                  (let ((__tmp153888
                                         (let ((__tmp153900
                                                (let ((__tmp153901
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp153901)))
                                               (__tmp153889
                                                (let ((__tmp153897
                                                       (let ((__tmp153898
                                                              (let ((__tmp153899
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self152401_
                                __id153077
                                __klass153075
                                '#f))))
                        (declare (not safe))
                        (cons __tmp153899 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153898)))
              (__tmp153890
               (let ((__tmp153895
                      (let ((__tmp153896
                             (let ()
                               (declare (not safe))
                               (cons _$obj152452_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp153896)))
                     (__tmp153891
                      (let ((__tmp153892
                             (let ((__tmp153893
                                    (let ((__tmp153894
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self152401_
                                              __slot153079
                                              __klass153075
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp153894 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp153893))))
                        (declare (not safe))
                        (cons __tmp153892 '()))))
                 (declare (not safe))
                 (cons __tmp153895 __tmp153891))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153897
                                                        __tmp153890))))
                                           (declare (not safe))
                                           (cons __tmp153900 __tmp153889))))
                                    (declare (not safe))
                                    (cons '%#call __tmp153888))))
                             (declare (not safe))
                             (cons __tmp153887 '()))))
                      (declare (not safe))
                      (cons __tmp153902 __tmp153886))))
               (declare (not safe))
               (cons __tmp153913 __tmp153885))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp153884))))
                                         (declare (not safe))
                                         (cons __tmp153883 '()))))
                                  (declare (not safe))
                                  (cons __tmp153921 __tmp153882))))
                          (declare (not safe))
                          (cons '%#let-values __tmp153881))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp153879 _stx152403_))
                 (let ((__tmp153870
                        (let ((__tmp153871
                               (let ((__tmp153877
                                      (let ((__tmp153878
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp153878)))
                                     (__tmp153872
                                      (let ((__tmp153873
                                             (let ((__tmp153874
                                                    (let ((__tmp153875
                                                           (let ((__tmp153876
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self152401_
                             __slot153079
                             __klass153075
                             '#f))))
                     (declare (not safe))
                     (cons __tmp153876 '()))))
              (declare (not safe))
              (cons '%#quote __tmp153875))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153874 '()))))
                                        (declare (not safe))
                                        (cons _object152444_ __tmp153873))))
                                 (declare (not safe))
                                 (cons __tmp153877 __tmp153872))))
                          (declare (not safe))
                          (cons '%#call __tmp153871))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp153870 _stx152403_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd152410152424_)
                                  (let ()
                                    (declare (not safe))
                                    (_g152406152416_ _g152407152419_)))))
                          (let ()
                            (declare (not safe))
                            (_g152406152416_ _g152407152419_))))))
              (declare (not safe))
              (_g152405152454_ _args152404_))))))
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
      (lambda (_self152205_ _ctx152206_ _stx152207_ _args152208_)
        (let* ((_g152210152224_
                (lambda (_g152211152221_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g152211152221_))))
               (_g152209152276_
                (lambda (_g152211152227_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g152211152227_))
                      (let ((_e152216152229_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g152211152227_))))
                        (let ((_hd152215152232_
                               (let ()
                                 (declare (not safe))
                                 (##car _e152216152229_)))
                              (_tl152214152234_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e152216152229_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl152214152234_))
                              (let ((_e152219152237_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl152214152234_))))
                                (let ((_hd152218152240_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e152219152237_)))
                                      (_tl152217152242_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e152219152237_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl152217152242_))
                                      ((lambda (_L152245_ _L152246_)
                                         (let* ((_klass152260_
                                                 (let ((__tmp153955
                                                        (##structure-ref
                                                         _self152205_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx152207_
                                                    __tmp153955)))
                                                (_field152262_
                                                 (let ((__tmp153956
                                                        (##structure-ref
                                                         _self152205_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass152260_
                                                    __tmp153956)))
                                                (_object152264_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _ctx152206_
                                                    _L152246_)))
                                                (_value152266_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _ctx152206_
                                                    _L152245_))))
                                           (if (##structure-ref
                                                _klass152260_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp154038
                                                      (let ((__tmp154048
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self152205_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp154039
                     (let ((__tmp154045
                            (let ((__tmp154046
                                   (let ((__tmp154047
                                          (##structure-ref
                                           _self152205_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp154047 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp154046)))
                           (__tmp154040
                            (let ((__tmp154043
                                   (let ((__tmp154044
                                          (let ()
                                            (declare (not safe))
                                            (cons _field152262_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp154044)))
                                  (__tmp154041
                                   (let ((__tmp154042
                                          (let ()
                                            (declare (not safe))
                                            (cons _value152266_ '()))))
                                     (declare (not safe))
                                     (cons _object152264_ __tmp154042))))
                              (declare (not safe))
                              (cons __tmp154043 __tmp154041))))
                       (declare (not safe))
                       (cons __tmp154045 __tmp154040))))
                (declare (not safe))
                (cons __tmp154048 __tmp154039))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp154038
                                                  _stx152207_))
                                               (if (##structure-ref
                                                    _klass152260_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp154027
                                                          (let ((__tmp154037
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self152205_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp154028
                         (let ((__tmp154034
                                (let ((__tmp154035
                                       (let ((__tmp154036
                                              (##structure-ref
                                               _self152205_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp154036 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp154035)))
                               (__tmp154029
                                (let ((__tmp154032
                                       (let ((__tmp154033
                                              (let ()
                                                (declare (not safe))
                                                (cons _field152262_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp154033)))
                                      (__tmp154030
                                       (let ((__tmp154031
                                              (let ()
                                                (declare (not safe))
                                                (cons _value152266_ '()))))
                                         (declare (not safe))
                                         (cons _object152264_ __tmp154031))))
                                  (declare (not safe))
                                  (cons __tmp154032 __tmp154030))))
                           (declare (not safe))
                           (cons __tmp154034 __tmp154029))))
                    (declare (not safe))
                    (cons __tmp154037 __tmp154028))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp154027
                                                      _stx152207_))
                                                   (let ((_$e152269_
                                                          (let ((__tmp153957
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self152205_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass152260_ __tmp153957))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e152269_
                                                         ((lambda (_klass152272_)
                                                            (let ((__tmp154016
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp154026
                                  (if (##structure-ref
                                       _self152205_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp154017
                                  (let ((__tmp154023
                                         (let ((__tmp154024
                                                (let ((__tmp154025
                                                       (##structure-ref
                                                        _self152205_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp154025 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp154024)))
                                        (__tmp154018
                                         (let ((__tmp154021
                                                (let ((__tmp154022
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field152262_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp154022)))
                                               (__tmp154019
                                                (let ((__tmp154020
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value152266_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object152264_
                                                        __tmp154020))))
                                           (declare (not safe))
                                           (cons __tmp154021 __tmp154019))))
                                    (declare (not safe))
                                    (cons __tmp154023 __tmp154018))))
                             (declare (not safe))
                             (cons __tmp154026 __tmp154017))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp154016 _stx152207_)))
                  _$e152269_)
                 (if (##structure-ref _self152205_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp153968
                            (let* ((_$obj152274_
                                    (let ((__tmp153969 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp153969)))
                                   (__tmp153970
                                    (let ((__tmp154012
                                           (let ((__tmp154013
                                                  (let ((__tmp154015
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj152274_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp154014
                 (let () (declare (not safe)) (cons _object152264_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp154015
                                                          __tmp154014))))
                                             (declare (not safe))
                                             (cons __tmp154013 '())))
                                          (__tmp153971
                                           (let ((__tmp153972
                                                  (let ((__tmp153973
                                                         (let ((__tmp154004
                                                                (let ((__tmp154005
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp154009
                                      (let ((__tmp154010
                                             (let ((__tmp154011
                                                    (##structure-ref
                                                     _klass152260_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp154011 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp154010)))
                                     (__tmp154006
                                      (let ((__tmp154007
                                             (let ((__tmp154008
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj152274_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp154008))))
                                        (declare (not safe))
                                        (cons __tmp154007 '()))))
                                 (declare (not safe))
                                 (cons __tmp154009 __tmp154006))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp154005)))
                       (__tmp153974
                        (let ((__tmp153992
                               (let ((__tmp153993
                                      (let ((__tmp154001
                                             (let ((__tmp154002
                                                    (let ((__tmp154003
                                                           (##structure-ref
                                                            _self152205_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp154003 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp154002)))
                                            (__tmp153994
                                             (let ((__tmp153999
                                                    (let ((__tmp154000
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field152262_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp154000)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp153995
                                                    (let ((__tmp153997
                                                           (let ((__tmp153998
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj152274_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp153998)))
                  (__tmp153996
                   (let () (declare (not safe)) (cons _value152266_ '()))))
              (declare (not safe))
              (cons __tmp153997 __tmp153996))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153999
                                                     __tmp153995))))
                                        (declare (not safe))
                                        (cons __tmp154001 __tmp153994))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp153993)))
                              (__tmp153975
                               (let ((__tmp153976
                                      (let ((__tmp153977
                                             (let ((__tmp153990
                                                    (let ((__tmp153991
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp153991)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp153978
                                                    (let ((__tmp153987
                                                           (let ((__tmp153988
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp153989
                                 (##structure-ref
                                  _self152205_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp153989 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp153988)))
                  (__tmp153979
                   (let ((__tmp153985
                          (let ((__tmp153986
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj152274_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp153986)))
                         (__tmp153980
                          (let ((__tmp153982
                                 (let ((__tmp153983
                                        (let ((__tmp153984
                                               (##structure-ref
                                                _self152205_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp153984 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp153983)))
                                (__tmp153981
                                 (let ()
                                   (declare (not safe))
                                   (cons _value152266_ '()))))
                            (declare (not safe))
                            (cons __tmp153982 __tmp153981))))
                     (declare (not safe))
                     (cons __tmp153985 __tmp153980))))
              (declare (not safe))
              (cons __tmp153987 __tmp153979))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153990
                                                     __tmp153978))))
                                        (declare (not safe))
                                        (cons '%#call __tmp153977))))
                                 (declare (not safe))
                                 (cons __tmp153976 '()))))
                          (declare (not safe))
                          (cons __tmp153992 __tmp153975))))
                   (declare (not safe))
                   (cons __tmp154004 __tmp153974))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp153973))))
                                             (declare (not safe))
                                             (cons __tmp153972 '()))))
                                      (declare (not safe))
                                      (cons __tmp154012 __tmp153971))))
                              (declare (not safe))
                              (cons '%#let-values __tmp153970))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp153968 _stx152207_))
                     (let ((__tmp153958
                            (let ((__tmp153959
                                   (let ((__tmp153966
                                          (let ((__tmp153967
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp153967)))
                                         (__tmp153960
                                          (let ((__tmp153961
                                                 (let ((__tmp153963
                                                        (let ((__tmp153964
                                                               (let ((__tmp153965
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self152205_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp153965 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp153964)))
               (__tmp153962
                (let () (declare (not safe)) (cons _value152266_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153963
                                                         __tmp153962))))
                                            (declare (not safe))
                                            (cons _object152264_
                                                  __tmp153961))))
                                     (declare (not safe))
                                     (cons __tmp153966 __tmp153960))))
                              (declare (not safe))
                              (cons '%#call __tmp153959))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp153958 _stx152207_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd152218152240_
                                       _hd152215152232_)
                                      (let ()
                                        (declare (not safe))
                                        (_g152210152224_ _g152211152227_)))))
                              (let ()
                                (declare (not safe))
                                (_g152210152224_ _g152211152227_)))))
                      (let ()
                        (declare (not safe))
                        (_g152210152224_ _g152211152227_))))))
          (declare (not safe))
          (_g152209152276_ _args152208_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass153083 __method-table153084)
        (let ((__id153085
               (let ((__slot153088
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass153083 'id))))
                 (if __slot153088
                     __slot153088
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?153086
               (let ((__slot153089
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass153083 'checked?))))
                 (if __slot153089
                     __slot153089
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot153087
               (let ((__slot153090
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass153083 'slot))))
                 (if __slot153090
                     __slot153090
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self152205_ _ctx152206_ _stx152207_ _args152208_)
            (let* ((_g152210152224_
                    (lambda (_g152211152221_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g152211152221_))))
                   (_g152209152276_
                    (lambda (_g152211152227_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g152211152227_))
                          (let ((_e152216152229_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g152211152227_))))
                            (let ((_hd152215152232_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e152216152229_)))
                                  (_tl152214152234_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e152216152229_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl152214152234_))
                                  (let ((_e152219152237_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl152214152234_))))
                                    (let ((_hd152218152240_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e152219152237_)))
                                          (_tl152217152242_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e152219152237_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl152217152242_))
                                          ((lambda (_L152245_ _L152246_)
                                             (let* ((_klass152260_
                                                     (let ((__tmp154049
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self152205_
                                                               __id153085
                                                               __klass153083
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx152207_
                                                        __tmp154049)))
                                                    (_field152262_
                                                     (let ((__tmp154050
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self152205_
                                                               __slot153087
                                                               __klass153083
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass152260_
                                                        __tmp154050)))
                                                    (_object152264_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _ctx152206_
                                                        _L152246_)))
                                                    (_value152266_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _ctx152206_
                                                        _L152245_))))
                                               (if (##structure-ref
                                                    _klass152260_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp154132
                                                          (let ((__tmp154142
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self152205_
                                __checked?153086
                                __klass153083
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp154133
                         (let ((__tmp154139
                                (let ((__tmp154140
                                       (let ((__tmp154141
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self152205_
                                                 __id153085
                                                 __klass153083
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp154141 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp154140)))
                               (__tmp154134
                                (let ((__tmp154137
                                       (let ((__tmp154138
                                              (let ()
                                                (declare (not safe))
                                                (cons _field152262_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp154138)))
                                      (__tmp154135
                                       (let ((__tmp154136
                                              (let ()
                                                (declare (not safe))
                                                (cons _value152266_ '()))))
                                         (declare (not safe))
                                         (cons _object152264_ __tmp154136))))
                                  (declare (not safe))
                                  (cons __tmp154137 __tmp154135))))
                           (declare (not safe))
                           (cons __tmp154139 __tmp154134))))
                    (declare (not safe))
                    (cons __tmp154142 __tmp154133))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp154132
                                                      _stx152207_))
                                                   (if (##structure-ref
                                                        _klass152260_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp154121
                                                              (let ((__tmp154131
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self152205_
                                    __checked?153086
                                    __klass153083
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp154122
                             (let ((__tmp154128
                                    (let ((__tmp154129
                                           (let ((__tmp154130
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self152205_
                                                     __id153085
                                                     __klass153083
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp154130 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp154129)))
                                   (__tmp154123
                                    (let ((__tmp154126
                                           (let ((__tmp154127
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field152262_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp154127)))
                                          (__tmp154124
                                           (let ((__tmp154125
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value152266_ '()))))
                                             (declare (not safe))
                                             (cons _object152264_
                                                   __tmp154125))))
                                      (declare (not safe))
                                      (cons __tmp154126 __tmp154124))))
                               (declare (not safe))
                               (cons __tmp154128 __tmp154123))))
                        (declare (not safe))
                        (cons __tmp154131 __tmp154122))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp154121 _stx152207_))
               (let ((_$e152269_
                      (let ((__tmp154051
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self152205_
                                __slot153087
                                __klass153083
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass152260_
                         __tmp154051))))
                 (if _$e152269_
                     ((lambda (_klass152272_)
                        (let ((__tmp154110
                               (let ((__tmp154120
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self152205_
                                             __checked?153086
                                             __klass153083
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp154111
                                      (let ((__tmp154117
                                             (let ((__tmp154118
                                                    (let ((__tmp154119
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self152205_
                                                              __id153085
                                                              __klass153083
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp154119 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp154118)))
                                            (__tmp154112
                                             (let ((__tmp154115
                                                    (let ((__tmp154116
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field152262_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp154116)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp154113
                                                    (let ((__tmp154114
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value152266_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object152264_ __tmp154114))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp154115
                                                     __tmp154113))))
                                        (declare (not safe))
                                        (cons __tmp154117 __tmp154112))))
                                 (declare (not safe))
                                 (cons __tmp154120 __tmp154111))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp154110 _stx152207_)))
                      _$e152269_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self152205_
                            __checked?153086
                            __klass153083
                            '#f))
                         (let ((__tmp154062
                                (let* ((_$obj152274_
                                        (let ((__tmp154063 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp154063)))
                                       (__tmp154064
                                        (let ((__tmp154106
                                               (let ((__tmp154107
                                                      (let ((__tmp154109
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj152274_ '())))
                    (__tmp154108
                     (let () (declare (not safe)) (cons _object152264_ '()))))
                (declare (not safe))
                (cons __tmp154109 __tmp154108))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp154107 '())))
                                              (__tmp154065
                                               (let ((__tmp154066
                                                      (let ((__tmp154067
                                                             (let ((__tmp154098
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp154099
                                   (let ((__tmp154103
                                          (let ((__tmp154104
                                                 (let ((__tmp154105
                                                        (##structure-ref
                                                         _klass152260_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp154105 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp154104)))
                                         (__tmp154100
                                          (let ((__tmp154101
                                                 (let ((__tmp154102
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj152274_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp154102))))
                                            (declare (not safe))
                                            (cons __tmp154101 '()))))
                                     (declare (not safe))
                                     (cons __tmp154103 __tmp154100))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp154099)))
                           (__tmp154068
                            (let ((__tmp154086
                                   (let ((__tmp154087
                                          (let ((__tmp154095
                                                 (let ((__tmp154096
                                                        (let ((__tmp154097
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self152205_
                          __id153085
                          __klass153083
                          '#f))))
                  (declare (not safe))
                  (cons __tmp154097 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp154096)))
                                                (__tmp154088
                                                 (let ((__tmp154093
                                                        (let ((__tmp154094
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field152262_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp154094)))
               (__tmp154089
                (let ((__tmp154091
                       (let ((__tmp154092
                              (let ()
                                (declare (not safe))
                                (cons _$obj152274_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp154092)))
                      (__tmp154090
                       (let () (declare (not safe)) (cons _value152266_ '()))))
                  (declare (not safe))
                  (cons __tmp154091 __tmp154090))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp154093
                                                         __tmp154089))))
                                            (declare (not safe))
                                            (cons __tmp154095 __tmp154088))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp154087)))
                                  (__tmp154069
                                   (let ((__tmp154070
                                          (let ((__tmp154071
                                                 (let ((__tmp154084
                                                        (let ((__tmp154085
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp154085)))
               (__tmp154072
                (let ((__tmp154081
                       (let ((__tmp154082
                              (let ((__tmp154083
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self152205_
                                        __id153085
                                        __klass153083
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp154083 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp154082)))
                      (__tmp154073
                       (let ((__tmp154079
                              (let ((__tmp154080
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj152274_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp154080)))
                             (__tmp154074
                              (let ((__tmp154076
                                     (let ((__tmp154077
                                            (let ((__tmp154078
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self152205_
                                                      __slot153087
                                                      __klass153083
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp154078 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp154077)))
                                    (__tmp154075
                                     (let ()
                                       (declare (not safe))
                                       (cons _value152266_ '()))))
                                (declare (not safe))
                                (cons __tmp154076 __tmp154075))))
                         (declare (not safe))
                         (cons __tmp154079 __tmp154074))))
                  (declare (not safe))
                  (cons __tmp154081 __tmp154073))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp154084
                                                         __tmp154072))))
                                            (declare (not safe))
                                            (cons '%#call __tmp154071))))
                                     (declare (not safe))
                                     (cons __tmp154070 '()))))
                              (declare (not safe))
                              (cons __tmp154086 __tmp154069))))
                       (declare (not safe))
                       (cons __tmp154098 __tmp154068))))
                (declare (not safe))
                (cons '%#if __tmp154067))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp154066 '()))))
                                          (declare (not safe))
                                          (cons __tmp154106 __tmp154065))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp154064))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp154062 _stx152207_))
                         (let ((__tmp154052
                                (let ((__tmp154053
                                       (let ((__tmp154060
                                              (let ((__tmp154061
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp154061)))
                                             (__tmp154054
                                              (let ((__tmp154055
                                                     (let ((__tmp154057
                                                            (let ((__tmp154058
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp154059
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self152205_
                                     __slot153087
                                     __klass153083
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp154059 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp154058)))
                   (__tmp154056
                    (let () (declare (not safe)) (cons _value152266_ '()))))
               (declare (not safe))
               (cons __tmp154057 __tmp154056))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object152264_
                                                      __tmp154055))))
                                         (declare (not safe))
                                         (cons __tmp154060 __tmp154054))))
                                  (declare (not safe))
                                  (cons '%#call __tmp154053))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp154052
                            _stx152207_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd152218152240_
                                           _hd152215152232_)
                                          (let ()
                                            (declare (not safe))
                                            (_g152210152224_
                                             _g152211152227_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g152210152224_ _g152211152227_)))))
                          (let ()
                            (declare (not safe))
                            (_g152210152224_ _g152211152227_))))))
              (declare (not safe))
              (_g152209152276_ _args152208_))))))
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
      (lambda (_self152038_ _ctx152039_ _stx152040_ _args152041_)
        (let* ((_self152042152051_ _self152038_)
               (_E152044152055_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self152042152051_))))
               (_K152045152062_
                (lambda (_inline152058_ _dispatch152059_ _arity152060_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self152038_ _args152041_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx152040_
                         _arity152060_)))
                  (if _inline152058_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp154148
                               (let ((__tmp154149
                                      (_inline152058_ _stx152040_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp154149
                                  _stx152040_))))
                          (declare (not safe))
                          (gxc#compile-e__1 _ctx152039_ __tmp154148)))
                      (if _dispatch152059_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch152059_))
                            (let ((__tmp154143
                                   (let ((__tmp154144
                                          (let ((__tmp154145
                                                 (let ((__tmp154146
                                                        (let ((__tmp154147
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch152059_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp154147))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp154146
                                                         _args152041_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp154145))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp154144
                                      _stx152040_))))
                              (declare (not safe))
                              (gxc#compile-e__1 _ctx152039_ __tmp154143)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _ctx152039_ _stx152040_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self152042152051_ 'gxc#!lambda::t))
              (let* ((_e152046152065_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152042152051_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e152047152068_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152042152051_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity152071_ _e152047152068_)
                     (_e152048152073_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152042152051_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch152076_ _e152048152073_)
                     (_e152049152078_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152042152051_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline152081_ _e152049152078_))
                (declare (not safe))
                (_K152045152062_
                 _inline152081_
                 _dispatch152076_
                 _arity152071_))
              (let () (declare (not safe)) (_E152044152055_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self151876_ _ctx151877_ _stx151878_ _args151879_)
        (let* ((_self151880151887_ _self151876_)
               (_E151882151891_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self151880151887_))))
               (_K151883151905_
                (lambda (_clauses151894_)
                  (let ((_$e151900_
                         (let ((__tmp154150
                                (lambda (_g151895151897_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g151895151897_
                                     _args151879_)))))
                           (declare (not safe))
                           (find __tmp154150 _clauses151894_))))
                    (if _$e151900_
                        ((lambda (_clause151903_)
                           (let ((__method153361
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause151903_
                                     'optimize-call))))
                             (if __method153361
                                 (__method153361
                                  _clause151903_
                                  _ctx151877_
                                  _stx151878_
                                  _args151879_)
                                 (let ()
                                   (declare (not safe))
                                   (error '"Missing method"
                                          _clause151903_
                                          'optimize-call)))))
                         _$e151900_)
                        (let ((__tmp154151
                               (map gxc#!lambda-arity _clauses151894_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx151878_
                           __tmp154151)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self151880151887_
                 'gxc#!case-lambda::t))
              (let* ((_e151884151908_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151880151887_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e151885151911_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151880151887_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses151914_ _e151885151911_))
                (declare (not safe))
                (_K151883151905_ _clauses151914_))
              (let () (declare (not safe)) (_E151882151891_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self151690_ _args151691_)
        (let* ((_self151692151699_ _self151690_)
               (_E151694151703_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self151692151699_))))
               (_K151695151743_
                (lambda (_arity151706_)
                  (let* ((_arity151707151716_ _arity151706_)
                         (_E151710151720_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (error '"No clause matching"
                                     _arity151707151716_)))))
                    (let ((_K151714151740_
                           (lambda ()
                             (fx= (length _args151691_) _arity151706_)))
                          (_K151711151726_
                           (lambda (_arity151724_)
                             (fx>= (length _args151691_) _arity151724_))))
                      (let ((_try-match151709151736_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity151707151716_))
                                   (let ((_tl151713151731_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity151707151716_)))
                                         (_hd151712151729_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity151707151716_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl151713151731_))
                                         (let ((_arity151734_
                                                _hd151712151729_))
                                           (declare (not safe))
                                           (_K151711151726_ _arity151734_))
                                         (let ()
                                           (declare (not safe))
                                           (_E151710151720_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E151710151720_))))))
                        (if (let ()
                              (declare (not safe))
                              (fixnum? _arity151707151716_))
                            (let () (declare (not safe)) (_K151714151740_))
                            (let ()
                              (declare (not safe))
                              (_try-match151709151736_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self151692151699_ 'gxc#!lambda::t))
              (let* ((_e151696151746_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151692151699_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e151697151749_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151692151699_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity151752_ _e151697151749_))
                (declare (not safe))
                (_K151695151743_ _arity151752_))
              (let () (declare (not safe)) (_E151694151703_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self151574_ _ctx151575_ _stx151576_ _args151577_)
        (let* ((_self151578151586_ _self151574_)
               (_E151580151590_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self151578151586_))))
               (_K151581151674_
                (lambda (_dispatch151593_ _table151594_)
                  (let* ((_g151595151604_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch151593_)))
                         (_else151597151612_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch151593_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _ctx151575_ _stx151576_))))
                         (_K151599151658_
                          (lambda (_main151615_ _keys151616_)
                            (let ((_g154152_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx151576_
                                      _args151577_))))
                              (begin
                                (let ((_g154153_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g154152_)
                                             (##vector-length _g154152_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g154153_ 2)))
                                      (error "Context expects 2 values"
                                             _g154153_)))
                                (let ((_pargs151618_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g154152_ 0)))
                                      (_kwargs151619_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g154152_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main151615_))
                                    (if _table151594_
                                        (let ((_xargs151626_
                                               (map (lambda (_key151621_)
                                                      (let ((_$e151623_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__0 _key151621_ _kwargs151619_))))
                (if _$e151623_ (values _$e151623_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys151616_)))
                                          (for-each
                                           (lambda (_kw151628_)
                                             (if (memq (car _kw151628_)
                                                       _keys151616_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx151576_
                                                    _keys151616_
                                                    _kw151628_))))
                                           _kwargs151619_)
                                          (let ((__tmp154205
                                                 (let ((__tmp154206
                                                        (let ((__tmp154207
                                                               (let ((__tmp154212
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp154213
                                     (let ()
                                       (declare (not safe))
                                       (cons _main151615_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp154213)))
                             (__tmp154208
                              (let ((__tmp154210
                                     (let ((__tmp154211
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp154211)))
                                    (__tmp154209
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs151618_
                                               _xargs151626_))))
                                (declare (not safe))
                                (cons __tmp154210 __tmp154209))))
                         (declare (not safe))
                         (cons __tmp154212 __tmp154208))))
                  (declare (not safe))
                  (cons '%#call __tmp154207))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp154206
                                                    _stx151576_))))
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _ctx151575_
                                             __tmp154205)))
                                        (let* ((_kwt151630_
                                                (let ((__tmp154154
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp154154)))
                                               (_kwvars151633_
                                                (map (lambda (_g154155_)
                                                       (let ((__tmp154156
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp154156)))
                                                     _kwargs151619_))
                                               (_kwbind151638_
                                                (map (lambda (_kw151635_
                                                              _kwvar151636_)
                                                       (let ((__tmp154159
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar151636_ '())))
                     (__tmp154157
                      (let ((__tmp154158 (cdr _kw151635_)))
                        (declare (not safe))
                        (cons __tmp154158 '()))))
                 (declare (not safe))
                 (cons __tmp154159 __tmp154157)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs151619_
                                                     _kwvars151633_))
                                               (_kwset151643_
                                                (map (lambda (_kw151640_
                                                              _kwvar151641_)
                                                       (let ((__tmp154160
                                                              (let ((__tmp154161
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp154169
                                    (let ((__tmp154170
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt151630_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp154170)))
                                   (__tmp154162
                                    (let ((__tmp154166
                                           (let ((__tmp154167
                                                  (let ((__tmp154168
                                                         (car _kw151640_)))
                                                    (declare (not safe))
                                                    (cons __tmp154168 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp154167)))
                                          (__tmp154163
                                           (let ((__tmp154164
                                                  (let ((__tmp154165
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar151641_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp154165))))
                                             (declare (not safe))
                                             (cons __tmp154164 '()))))
                                      (declare (not safe))
                                      (cons __tmp154166 __tmp154163))))
                               (declare (not safe))
                               (cons __tmp154169 __tmp154162))))
                        (declare (not safe))
                        (cons '(%#ref symbolic-table-set!) __tmp154161))))
                 (declare (not safe))
                 (cons '%#call __tmp154160)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs151619_
                                                     _kwvars151633_))
                                               (_xkwargs151648_
                                                (map (lambda (_kw151645_
                                                              _kwvar151646_)
                                                       (let ((__tmp154173
                                                              (car _kw151645_))
                                                             (__tmp154171
                                                              (let ((__tmp154172
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar151646_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp154172))))
                 (declare (not safe))
                 (cons __tmp154173 __tmp154171)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs151619_
                                                     _kwvars151633_))
                                               (_xargs151655_
                                                (map (lambda (_key151650_)
                                                       (let ((_$e151652_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq__0 _key151650_ _xkwargs151648_))))
                 (if _$e151652_ (values _$e151652_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys151616_)))
                                          (let ((__tmp154174
                                                 (let ((__tmp154175
                                                        (let ((__tmp154176
                                                               (let ((__tmp154177
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp154178
                                     (let ((__tmp154179
                                            (let ((__tmp154193
                                                   (let ((__tmp154194
                                                          (let ((__tmp154204
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt151630_ '())))
                        (__tmp154195
                         (let ((__tmp154196
                                (let ((__tmp154197
                                       (let ((__tmp154198
                                              (let ((__tmp154199
                                                     (let ((__tmp154201
                                                            (let ((__tmp154202
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp154203 (length _kwargs151619_)))
                             (declare (not safe))
                             (cons __tmp154203 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp154202)))
                   (__tmp154200
                    (let () (declare (not safe)) (cons '(%#quote 0) '()))))
               (declare (not safe))
               (cons __tmp154201 __tmp154200))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-symbolic-table)
                                                      __tmp154199))))
                                         (declare (not safe))
                                         (cons '%#call __tmp154198))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp154197
                                   _stx151576_))))
                           (declare (not safe))
                           (cons __tmp154196 '()))))
                    (declare (not safe))
                    (cons __tmp154204 __tmp154195))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp154194 '())))
                                                  (__tmp154180
                                                   (let ((__tmp154181
                                                          (let ((__tmp154182
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp154183
                                (let ((__tmp154184
                                       (let ((__tmp154185
                                              (let ((__tmp154186
                                                     (let ((__tmp154191
                                                            (let ((__tmp154192
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main151615_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp154192)))
                   (__tmp154187
                    (let ((__tmp154189
                           (let ((__tmp154190
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt151630_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp154190)))
                          (__tmp154188
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs151618_ _xargs151655_))))
                      (declare (not safe))
                      (cons __tmp154189 __tmp154188))))
               (declare (not safe))
               (cons __tmp154191 __tmp154187))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp154186))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp154185
                                          _stx151576_))))
                                  (declare (not safe))
                                  (cons __tmp154184 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp154183 _kwset151643_))))
                    (declare (not safe))
                    (cons '%#begin __tmp154182))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp154181 '()))))
                                              (declare (not safe))
                                              (cons __tmp154193 __tmp154180))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp154179))))
                                (declare (not safe))
                                (cons __tmp154178 '()))))
                         (declare (not safe))
                         (cons _kwbind151638_ __tmp154177))))
                  (declare (not safe))
                  (cons '%#let-values __tmp154176))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp154175
                                                    _stx151576_))))
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _ctx151575_
                                             __tmp154174)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g151595151604_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e151600151661_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g151595151604_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e151601151664_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g151595151604_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys151667_ _e151601151664_)
                               (_e151602151669_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g151595151604_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main151672_ _e151602151669_))
                          (declare (not safe))
                          (_K151599151658_ _main151672_ _keys151667_))
                        (let () (declare (not safe)) (_else151597151612_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self151578151586_
                 'gxc#!kw-lambda::t))
              (let* ((_e151582151677_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151578151586_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e151583151680_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151578151586_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table151683_ _e151583151680_)
                     (_e151584151685_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151578151586_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch151688_ _e151584151685_))
                (declare (not safe))
                (_K151581151674_ _dispatch151688_ _table151683_))
              (let () (declare (not safe)) (_E151580151590_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx151187_ _args151188_)
        (let _lp151190_ ((_rest151192_ _args151188_)
                         (_pargs151193_ '())
                         (_kwargs151194_ '()))
          (let* ((___stx153241153242_ _rest151192_)
                 (_g151200151252_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx153241153242_)))))
            (let ((___kont153243153244_
                   (lambda (_L151431_ _L151432_)
                     (let ((__tmp154214
                            (let ()
                              (declare (not safe))
                              (cons _L151432_ _pargs151193_))))
                       (declare (not safe))
                       (_lp151190_ _L151431_ __tmp154214 _kwargs151194_))))
                  (___kont153245153246_
                   (lambda (_L151377_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L151377_ _pargs151193_))
                             (reverse _kwargs151194_))))
                  (___kont153247153248_
                   (lambda (_L151324_ _L151325_ _L151326_)
                     (let ((_kw151343_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L151326_))))
                       (if (assq _kw151343_ _kwargs151194_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx151187_
                              _kw151343_))
                           (let ((__tmp154215
                                  (let ((__tmp154216
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw151343_ _L151325_))))
                                    (declare (not safe))
                                    (cons __tmp154216 _kwargs151194_))))
                             (declare (not safe))
                             (_lp151190_
                              _L151324_
                              _pargs151193_
                              __tmp154215))))))
                  (___kont153249153250_
                   (lambda (_L151272_ _L151273_)
                     (let ((__tmp154217
                            (let ()
                              (declare (not safe))
                              (cons _L151273_ _pargs151193_))))
                       (declare (not safe))
                       (_lp151190_ _L151272_ __tmp154217 _kwargs151194_))))
                  (___kont153251153252_
                   (lambda ()
                     (values (reverse _pargs151193_)
                             (reverse _kwargs151194_)))))
              (let* ((_g151199151259_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx153241153242_))
                            (___kont153251153252_)
                            (let () (declare (not safe)) (_g151200151252_)))))
                     (___match153348153349_
                      (lambda (_e151233151292_
                               _hd151232151295_
                               _tl151231151297_
                               _e151236151300_
                               _hd151235151303_
                               _tl151234151305_
                               _e151239151308_
                               _hd151238151311_
                               _tl151237151313_
                               _e151242151316_
                               _hd151241151319_
                               _tl151240151321_)
                        (let ((_L151324_ _tl151240151321_)
                              (_L151325_ _hd151241151319_)
                              (_L151326_ _hd151238151311_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L151326_))
                              (___kont153247153248_
                               _L151324_
                               _L151325_
                               _L151326_)
                              (___kont153249153250_
                               _tl151231151297_
                               _hd151232151295_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx153241153242_))
                    (let ((_e151206151396_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx153241153242_))))
                      (let ((_tl151204151401_
                             (let ()
                               (declare (not safe))
                               (##cdr _e151206151396_)))
                            (_hd151205151399_
                             (let ()
                               (declare (not safe))
                               (##car _e151206151396_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd151205151399_))
                            (let ((_e151209151404_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd151205151399_))))
                              (let ((_tl151207151409_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e151209151404_)))
                                    (_hd151208151407_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e151209151404_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd151208151407_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd151208151407_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl151207151409_))
                                            (let ((_e151212151412_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl151207151409_))))
                                              (let ((_tl151210151417_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e151212151412_)))
                                                    (_hd151211151415_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e151212151412_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd151211151415_))
                                                    (let ((_e151213151420_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd151211151415_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e151213151420_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl151210151417_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl151204151401_))
                          (let ((_e151216151423_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl151204151401_))))
                            (let ((_tl151214151428_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e151216151423_)))
                                  (_hd151215151426_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e151216151423_))))
                              (___kont153243153244_
                               _tl151214151428_
                               _hd151215151426_)))
                          (___kont153249153250_
                           _tl151204151401_
                           _hd151205151399_))
                      (___kont153249153250_ _tl151204151401_ _hd151205151399_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e151213151420_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl151210151417_))
                          (___kont153245153246_ _tl151204151401_)
                          (___kont153249153250_
                           _tl151204151401_
                           _hd151205151399_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl151210151417_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl151204151401_))
                              (let ((_e151242151316_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl151204151401_))))
                                (let ((_tl151240151321_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e151242151316_)))
                                      (_hd151241151319_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e151242151316_))))
                                  (___match153348153349_
                                   _e151206151396_
                                   _hd151205151399_
                                   _tl151204151401_
                                   _e151209151404_
                                   _hd151208151407_
                                   _tl151207151409_
                                   _e151212151412_
                                   _hd151211151415_
                                   _tl151210151417_
                                   _e151242151316_
                                   _hd151241151319_
                                   _tl151240151321_)))
                              (___kont153249153250_
                               _tl151204151401_
                               _hd151205151399_))
                          (___kont153249153250_
                           _tl151204151401_
                           _hd151205151399_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl151210151417_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl151204151401_))
                                                            (let ((_e151242151316_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl151204151401_))))
                      (let ((_tl151240151321_
                             (let ()
                               (declare (not safe))
                               (##cdr _e151242151316_)))
                            (_hd151241151319_
                             (let ()
                               (declare (not safe))
                               (##car _e151242151316_))))
                        (___match153348153349_
                         _e151206151396_
                         _hd151205151399_
                         _tl151204151401_
                         _e151209151404_
                         _hd151208151407_
                         _tl151207151409_
                         _e151212151412_
                         _hd151211151415_
                         _tl151210151417_
                         _e151242151316_
                         _hd151241151319_
                         _tl151240151321_)))
                    (___kont153249153250_ _tl151204151401_ _hd151205151399_))
                (___kont153249153250_ _tl151204151401_ _hd151205151399_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont153249153250_
                                             _tl151204151401_
                                             _hd151205151399_))
                                        (___kont153249153250_
                                         _tl151204151401_
                                         _hd151205151399_))
                                    (___kont153249153250_
                                     _tl151204151401_
                                     _hd151205151399_))))
                            (___kont153249153250_
                             _tl151204151401_
                             _hd151205151399_))))
                    (let () (declare (not safe)) (_g151199151259_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self151182_ _ctx151183_ _stx151184_ _args151185_)
        (let ()
          (declare (not safe))
          (gxc#xform-call% _ctx151183_ _stx151184_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
