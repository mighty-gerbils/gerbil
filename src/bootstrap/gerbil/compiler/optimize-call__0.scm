(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1708343720)
  (begin
    (define gxc#&optimize-call
      (make-promise
       (lambda ()
         (let ((_tbl152103_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp152394 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-merge! _tbl152103_ __tmp152394))
           (let ()
             (declare (not safe))
             (hash-put! _tbl152103_ '%#call gxc#optimize-call%))
           _tbl152103_))))
    (define gxc#apply-optimize-call
      (lambda (_stx152086_ . _args152088_)
        (let ((__tmp152396
               (lambda ()
                 (declare (not safe))
                 (if (null? _args152088_)
                     (gxc#compile-e__0 _stx152086_)
                     (let ((_arg1152093_ (car _args152088_))
                           (_rest152095_ (cdr _args152088_)))
                       (if (null? _rest152095_)
                           (gxc#compile-e__1 _stx152086_ _arg1152093_)
                           (let ((_arg2152098_ (car _rest152095_))
                                 (_rest152100_ (cdr _rest152095_)))
                             (if (null? _rest152100_)
                                 (gxc#compile-e__2
                                  _stx152086_
                                  _arg1152093_
                                  _arg2152098_)
                                 (apply gxc#compile-e
                                        _stx152086_
                                        _arg1152093_
                                        _arg2152098_
                                        _rest152100_))))))))
              (__tmp152395 (force gxc#&optimize-call)))
          (declare (not safe))
          (call-with-parameters
           __tmp152396
           gxc#current-compile-methods
           __tmp152395))))
    (define gxc#optimize-call%
      (lambda (_stx151941_)
        (let* ((___stx152144152145_ _stx151941_)
               (_g151944151964_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx152144152145_)))))
          (let ((___kont152146152147_
                 (lambda (_L152008_ _L152009_)
                   (let* ((_rator-id152027_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L152009_)))
                          (_rator-type152029_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id152027_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type152029_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp152397
                                  (##structure-ref
                                   _rator-type152029_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id152027_
                              '" => "
                              _rator-type152029_
                              '" "
                              __tmp152397))
                           (let ((_optimized152032_
                                  (let ((__method152392
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type152029_
                                            'optimize-call))))
                                    (if __method152392
                                        (__method152392
                                         _rator-type152029_
                                         _stx151941_
                                         _L152008_)
                                        (let ()
                                          (declare (not safe))
                                          (error '"Missing method"
                                                 _rator-type152029_
                                                 'optimize-call))))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type152029_))
                                 _optimized152032_
                                 (let* ((___stx152126152127_ _optimized152032_)
                                        (_g152035152045_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx152126152127_)))))
                                   (let ((___kont152128152129_
                                          (lambda (_L152065_)
                                            (let ((__tmp152398
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L152065_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp152398
                                               _stx151941_))))
                                         (___kont152130152131_
                                          (lambda () _optimized152032_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx152126152127_))
                                         (let ((_e152040152057_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx152126152127_))))
                                           (let ((_tl152038152062_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e152040152057_)))
                                                 (_hd152039152060_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e152040152057_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd152039152060_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd152039152060_))
                                                     (___kont152128152129_
                                                      _tl152038152062_)
                                                     (___kont152130152131_))
                                                 (___kont152130152131_))))
                                         (___kont152130152131_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type152029_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx151941_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx151941_
                                _rator-type152029_)))))))
                (___kont152148152149_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _stx151941_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx152144152145_))
                (let ((_e151950151976_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx152144152145_))))
                  (let ((_tl151948151981_
                         (let () (declare (not safe)) (##cdr _e151950151976_)))
                        (_hd151949151979_
                         (let ()
                           (declare (not safe))
                           (##car _e151950151976_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl151948151981_))
                        (let ((_e151953151984_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl151948151981_))))
                          (let ((_tl151951151989_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e151953151984_)))
                                (_hd151952151987_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e151953151984_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd151952151987_))
                                (let ((_e151956151992_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd151952151987_))))
                                  (let ((_tl151954151997_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e151956151992_)))
                                        (_hd151955151995_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e151956151992_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd151955151995_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd151955151995_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl151954151997_))
                                                (let ((_e151959152000_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl151954151997_))))
                                                  (let ((_tl151957152005_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e151959152000_)))
                                                        (_hd151958152003_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e151959152000_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl151957152005_))
                                                        (___kont152146152147_
                                                         _tl151951151989_
                                                         _hd151958152003_)
                                                        (___kont152148152149_))))
                                                (___kont152148152149_))
                                            (___kont152148152149_))
                                        (___kont152148152149_))))
                                (___kont152148152149_))))
                        (___kont152148152149_))))
                (___kont152148152149_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self151895_ _stx151896_ _args151897_)
        (let* ((_g151899151909_
                (lambda (_g151900151906_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g151900151906_))))
               (_g151898151938_
                (lambda (_g151900151912_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g151900151912_))
                      (let ((_e151904151914_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g151900151912_))))
                        (let ((_hd151903151917_
                               (let ()
                                 (declare (not safe))
                                 (##car _e151904151914_)))
                              (_tl151902151919_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e151904151914_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl151902151919_))
                              ((lambda (_L151922_)
                                 (let* ((_klass151933_
                                         (let ((__tmp152399
                                                (##structure-ref
                                                 _self151895_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx151896_
                                            __tmp152399)))
                                        (_object151935_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L151922_))))
                                   (if (##structure-ref
                                        _klass151933_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp152415
                                              (let ((__tmp152416
                                                     (let ((__tmp152418
                                                            (let ((__tmp152419
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152420
                                  (##structure-ref
                                   _klass151933_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp152420 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp152419)))
                   (__tmp152417
                    (let () (declare (not safe)) (cons _object151935_ '()))))
               (declare (not safe))
               (cons __tmp152418 __tmp152417))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp152416))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp152415
                                          _stx151896_))
                                       (if (##structure-ref
                                            _klass151933_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp152409
                                                  (let ((__tmp152410
                                                         (let ((__tmp152412
                                                                (let ((__tmp152413
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp152414
                                      (##structure-ref
                                       _klass151933_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp152414 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp152413)))
                       (__tmp152411
                        (let ()
                          (declare (not safe))
                          (cons _object151935_ '()))))
                   (declare (not safe))
                   (cons __tmp152412 __tmp152411))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp152410))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152409
                                              _stx151896_))
                                           (let ((__tmp152400
                                                  (let ((__tmp152401
                                                         (let ((__tmp152407
                                                                (let ((__tmp152408
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp152408)))
                       (__tmp152402
                        (let ((__tmp152404
                               (let ((__tmp152405
                                      (let ((__tmp152406
                                             (##structure-ref
                                              _self151895_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp152406 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp152405)))
                              (__tmp152403
                               (let ()
                                 (declare (not safe))
                                 (cons _object151935_ '()))))
                          (declare (not safe))
                          (cons __tmp152404 __tmp152403))))
                   (declare (not safe))
                   (cons __tmp152407 __tmp152402))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp152401))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152400
                                              _stx151896_))))))
                               _hd151903151917_)
                              (let ()
                                (declare (not safe))
                                (_g151899151909_ _g151900151912_)))))
                      (let ()
                        (declare (not safe))
                        (_g151899151909_ _g151900151912_))))))
          (declare (not safe))
          (_g151898151938_ _args151897_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__t152105)
        (let ((__id152106
               (let ((__tmp152107
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t152105 'id))))
                 (if __tmp152107
                     __tmp152107
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self151895_ _stx151896_ _args151897_)
            (let* ((_g151899151909_
                    (lambda (_g151900151906_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g151900151906_))))
                   (_g151898151938_
                    (lambda (_g151900151912_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g151900151912_))
                          (let ((_e151904151914_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g151900151912_))))
                            (let ((_hd151903151917_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e151904151914_)))
                                  (_tl151902151919_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e151904151914_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl151902151919_))
                                  ((lambda (_L151922_)
                                     (let* ((_klass151933_
                                             (let ((__tmp152421
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self151895_
                                                       __id152106
                                                       __t152105
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx151896_
                                                __tmp152421)))
                                            (_object151935_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L151922_))))
                                       (if (##structure-ref
                                            _klass151933_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp152437
                                                  (let ((__tmp152438
                                                         (let ((__tmp152440
                                                                (let ((__tmp152441
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp152442
                                      (##structure-ref
                                       _klass151933_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp152442 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp152441)))
                       (__tmp152439
                        (let ()
                          (declare (not safe))
                          (cons _object151935_ '()))))
                   (declare (not safe))
                   (cons __tmp152440 __tmp152439))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp152438))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152437
                                              _stx151896_))
                                           (if (##structure-ref
                                                _klass151933_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp152431
                                                      (let ((__tmp152432
                                                             (let ((__tmp152434
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp152435
                                   (let ((__tmp152436
                                          (##structure-ref
                                           _klass151933_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp152436 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp152435)))
                           (__tmp152433
                            (let ()
                              (declare (not safe))
                              (cons _object151935_ '()))))
                       (declare (not safe))
                       (cons __tmp152434 __tmp152433))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp152432))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp152431
                                                  _stx151896_))
                                               (let ((__tmp152422
                                                      (let ((__tmp152423
                                                             (let ((__tmp152429
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp152430
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp152430)))
                           (__tmp152424
                            (let ((__tmp152426
                                   (let ((__tmp152427
                                          (let ((__tmp152428
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self151895_
                                                    __id152106
                                                    __t152105
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp152428 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp152427)))
                                  (__tmp152425
                                   (let ()
                                     (declare (not safe))
                                     (cons _object151935_ '()))))
                              (declare (not safe))
                              (cons __tmp152426 __tmp152425))))
                       (declare (not safe))
                       (cons __tmp152429 __tmp152424))))
                (declare (not safe))
                (cons '%#call __tmp152423))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp152422
                                                  _stx151896_))))))
                                   _hd151903151917_)
                                  (let ()
                                    (declare (not safe))
                                    (_g151899151909_ _g151900151912_)))))
                          (let ()
                            (declare (not safe))
                            (_g151899151909_ _g151900151912_))))))
              (declare (not safe))
              (_g151898151938_ _args151897_))))))
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
      (lambda (_self151615_ _stx151616_ _args151617_)
        (let* ((_klass151619_
                (let ((__tmp152443
                       (##structure-ref _self151615_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx151616_ __tmp152443)))
               (_fields151621_
                (length (##structure-ref _klass151619_ '5 gxc#!class::t '#f)))
               (_args151623_ (map gxc#compile-e _args151617_))
               (_inline-make-object151625_
                (let ((__tmp152444
                       (let ((__tmp152450
                              (let ((__tmp152451
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp152451)))
                             (__tmp152445
                              (let ((__tmp152447
                                     (let ((__tmp152448
                                            (let ((__tmp152449
                                                   (##structure-ref
                                                    _self151615_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp152449 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152448)))
                                    (__tmp152446
                                     (let ()
                                       (declare (not safe))
                                       (make-list__%
                                        _fields151621_
                                        '(%#quote #f)))))
                                (declare (not safe))
                                (cons __tmp152447 __tmp152446))))
                         (declare (not safe))
                         (cons __tmp152450 __tmp152445))))
                  (declare (not safe))
                  (cons '%#call __tmp152444))))
          (let ((_$e151628_
                 (##structure-ref _klass151619_ '6 gxc#!class::t '#f)))
            (if _$e151628_
                ((lambda (_ctor151631_)
                   (let ((_$obj151633_
                          (let ((__tmp152551 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp152551)))
                         (_ctor-impl151634_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass151619_
                             _ctor151631_))))
                     (let ((__tmp152552
                            (let ((__tmp152553
                                   (let ((__tmp152621
                                          (let ((__tmp152622
                                                 (let ((__tmp152624
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj151633_
                                                                '())))
                                                       (__tmp152623
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object151625_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp152624
                                                         __tmp152623))))
                                            (declare (not safe))
                                            (cons __tmp152622 '())))
                                         (__tmp152554
                                          (let ((__tmp152555
                                                 (let ((__tmp152556
                                                        (let ((__tmp152560
                                                               (if _ctor-impl151634_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152615
                                  (let ((__tmp152619
                                         (let ((__tmp152620
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl151634_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp152620)))
                                        (__tmp152616
                                         (let ((__tmp152617
                                                (let ((__tmp152618
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj151633_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp152618))))
                                           (declare (not safe))
                                           (cons __tmp152617 _args151623_))))
                                    (declare (not safe))
                                    (cons __tmp152619 __tmp152616))))
                             (declare (not safe))
                             (cons '%#call __tmp152615))
                           (let* ((_$ctor151636_
                                   (let ((__tmp152561 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp152561)))
                                  (__tmp152562
                                   (let ((__tmp152597
                                          (let ((__tmp152598
                                                 (let ((__tmp152614
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor151636_
                                                                '())))
                                                       (__tmp152599
                                                        (let ((__tmp152600
                                                               (let ((__tmp152601
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp152612
                                     (let ((__tmp152613
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152613)))
                                    (__tmp152602
                                     (let ((__tmp152609
                                            (let ((__tmp152610
                                                   (let ((__tmp152611
                                                          (##structure-ref
                                                           _self151615_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp152611 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp152610)))
                                           (__tmp152603
                                            (let ((__tmp152607
                                                   (let ((__tmp152608
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj151633_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152608)))
                                                  (__tmp152604
                                                   (let ((__tmp152605
                                                          (let ((__tmp152606
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _ctor151631_ '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp152606))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152605 '()))))
                                              (declare (not safe))
                                              (cons __tmp152607 __tmp152604))))
                                       (declare (not safe))
                                       (cons __tmp152609 __tmp152603))))
                                (declare (not safe))
                                (cons __tmp152612 __tmp152602))))
                         (declare (not safe))
                         (cons '%#call __tmp152601))))
                  (declare (not safe))
                  (cons __tmp152600 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp152614
                                                         __tmp152599))))
                                            (declare (not safe))
                                            (cons __tmp152598 '())))
                                         (__tmp152563
                                          (let ((__tmp152564
                                                 (let ((__tmp152565
                                                        (let ((__tmp152595
                                                               (let ((__tmp152596
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor151636_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp152596)))
                      (__tmp152566
                       (let ((__tmp152588
                              (let ((__tmp152589
                                     (let ((__tmp152593
                                            (let ((__tmp152594
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor151636_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp152594)))
                                           (__tmp152590
                                            (let ((__tmp152591
                                                   (let ((__tmp152592
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj151633_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152592))))
                                              (declare (not safe))
                                              (cons __tmp152591
                                                    _args151623_))))
                                       (declare (not safe))
                                       (cons __tmp152593 __tmp152590))))
                                (declare (not safe))
                                (cons '%#call __tmp152589)))
                             (__tmp152567
                              (let ((__tmp152568
                                     (let ((__tmp152569
                                            (let ((__tmp152586
                                                   (let ((__tmp152587
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152587)))
                                                  (__tmp152570
                                                   (let ((__tmp152584
                                                          (let ((__tmp152585
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp152585)))
                 (__tmp152571
                  (let ((__tmp152582
                         (let ((__tmp152583
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp152583)))
                        (__tmp152572
                         (let ((__tmp152579
                                (let ((__tmp152580
                                       (let ((__tmp152581
                                              (##structure-ref
                                               _self151615_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp152581 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp152580)))
                               (__tmp152573
                                (let ((__tmp152577
                                       (let ((__tmp152578
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp152578)))
                                      (__tmp152574
                                       (let ((__tmp152575
                                              (let ((__tmp152576
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor151631_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp152576))))
                                         (declare (not safe))
                                         (cons __tmp152575 '()))))
                                  (declare (not safe))
                                  (cons __tmp152577 __tmp152574))))
                           (declare (not safe))
                           (cons __tmp152579 __tmp152573))))
                    (declare (not safe))
                    (cons __tmp152582 __tmp152572))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152584
                                                           __tmp152571))))
                                              (declare (not safe))
                                              (cons __tmp152586 __tmp152570))))
                                       (declare (not safe))
                                       (cons '%#call __tmp152569))))
                                (declare (not safe))
                                (cons __tmp152568 '()))))
                         (declare (not safe))
                         (cons __tmp152588 __tmp152567))))
                  (declare (not safe))
                  (cons __tmp152595 __tmp152566))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp152565))))
                                            (declare (not safe))
                                            (cons __tmp152564 '()))))
                                     (declare (not safe))
                                     (cons __tmp152597 __tmp152563))))
                             (declare (not safe))
                             (cons '%#let-values __tmp152562))))
                      (__tmp152557
                       (let ((__tmp152558
                              (let ((__tmp152559
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj151633_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp152559))))
                         (declare (not safe))
                         (cons __tmp152558 '()))))
                  (declare (not safe))
                  (cons __tmp152560 __tmp152557))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp152556))))
                                            (declare (not safe))
                                            (cons __tmp152555 '()))))
                                     (declare (not safe))
                                     (cons __tmp152621 __tmp152554))))
                              (declare (not safe))
                              (cons '%#let-values __tmp152553))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp152552 _stx151616_))))
                 _$e151628_)
                (let ((_$e151638_
                       (##structure-ref _klass151619_ '9 gxc#!class::t '#f)))
                  (if _$e151638_
                      ((lambda (_metaclass151641_)
                         (let* ((_$obj151643_
                                 (let ((__tmp152513 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp152513)))
                                (_metakons151645_
                                 (let ((__tmp152514
                                        (let ()
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           _stx151616_
                                           _metaclass151641_))))
                                   (declare (not safe))
                                   (gxc#!class-lookup-method
                                    __tmp152514
                                    'instance-init!))))
                           (let ((__tmp152515
                                  (let ((__tmp152516
                                         (let ((__tmp152547
                                                (let ((__tmp152548
                                                       (let ((__tmp152550
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj151643_ '())))
                     (__tmp152549
                      (let ()
                        (declare (not safe))
                        (cons _inline-make-object151625_ '()))))
                 (declare (not safe))
                 (cons __tmp152550 __tmp152549))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152548 '())))
                                               (__tmp152517
                                                (let ((__tmp152518
                                                       (let ((__tmp152519
                                                              (let ((__tmp152523
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if _metakons151645_
                                 (let ((__tmp152537
                                        (let ((__tmp152545
                                               (let ((__tmp152546
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metakons151645_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp152546)))
                                              (__tmp152538
                                               (let ((__tmp152542
                                                      (let ((__tmp152543
                                                             (let ((__tmp152544
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self151615_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp152544 '()))))
                (declare (not safe))
                (cons '%#ref __tmp152543)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp152539
                                                      (let ((__tmp152540
                                                             (let ((__tmp152541
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _$obj151643_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp152541))))
                (declare (not safe))
                (cons __tmp152540 _args151623_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp152542
                                                       __tmp152539))))
                                          (declare (not safe))
                                          (cons __tmp152545 __tmp152538))))
                                   (declare (not safe))
                                   (cons '%#call __tmp152537))
                                 (let ((__tmp152524
                                        (let ((__tmp152535
                                               (let ((__tmp152536
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'call-method
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp152536)))
                                              (__tmp152525
                                               (let ((__tmp152532
                                                      (let ((__tmp152533
                                                             (let ((__tmp152534
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self151615_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp152534 '()))))
                (declare (not safe))
                (cons '%#ref __tmp152533)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp152526
                                                      (let ((__tmp152530
                                                             (let ((__tmp152531
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'instance-init! '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp152531)))
                    (__tmp152527
                     (let ((__tmp152528
                            (let ((__tmp152529
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj151643_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp152529))))
                       (declare (not safe))
                       (cons __tmp152528 _args151623_))))
                (declare (not safe))
                (cons __tmp152530 __tmp152527))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp152532
                                                       __tmp152526))))
                                          (declare (not safe))
                                          (cons __tmp152535 __tmp152525))))
                                   (declare (not safe))
                                   (cons '%#call __tmp152524))))
                            (__tmp152520
                             (let ((__tmp152521
                                    (let ((__tmp152522
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj151643_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp152522))))
                               (declare (not safe))
                               (cons __tmp152521 '()))))
                        (declare (not safe))
                        (cons __tmp152523 __tmp152520))))
                 (declare (not safe))
                 (cons '%#begin __tmp152519))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152518 '()))))
                                           (declare (not safe))
                                           (cons __tmp152547 __tmp152517))))
                                    (declare (not safe))
                                    (cons '%#let-values __tmp152516))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp152515 _stx151616_))))
                       _$e151638_)
                      (if (##structure-ref _klass151619_ '7 gxc#!class::t '#f)
                          (if (fx= (length _args151623_) _fields151621_)
                              (let ((__tmp152505
                                     (let ((__tmp152506
                                            (let ((__tmp152511
                                                   (let ((__tmp152512
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152512)))
                                                  (__tmp152507
                                                   (let ((__tmp152508
                                                          (let ((__tmp152509
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp152510
                                (##structure-ref
                                 _self151615_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp152510 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp152509))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152508
                                                           _args151623_))))
                                              (declare (not safe))
                                              (cons __tmp152511 __tmp152507))))
                                       (declare (not safe))
                                       (cons '%#call __tmp152506))))
                                (declare (not safe))
                                (gxc#xform-wrap-source
                                 __tmp152505
                                 _stx151616_))
                              (let ((__tmp152504
                                     (##structure-ref
                                      _self151615_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                    (__tmp152503
                                     (length (##structure-ref
                                              _klass151619_
                                              '5
                                              gxc#!class::t
                                              '#f))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"illegal struct constructor application; arity mismatch"
                                 _stx151616_
                                 __tmp152504
                                 __tmp152503)))
                          (let ((_$obj151648_
                                 (let ((__tmp152452 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp152452))))
                            (let _lp151650_ ((_rest151652_ _args151623_)
                                             (_initializers151653_ '()))
                              (let* ((___stx152182152183_ _rest151652_)
                                     (_g151657151678_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx152182152183_)))))
                                (let ((___kont152184152185_
                                       (lambda (_L151732_ _L151733_ _L151734_)
                                         (let* ((_slot151765_
                                                 (keyword->symbol
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e _L151734_))))
                                                (_off151767_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass151619_
                                                    _slot151765_))))
                                           (if _off151767_
                                               (let ((__tmp152454
                                                      (let ((__tmp152455
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off151767_ _L151733_))))
                (declare (not safe))
                (cons __tmp152455 _initializers151653_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp151650_
                                                  _L151732_
                                                  __tmp152454))
                                               (let ((__tmp152453
                                                      (##structure-ref
                                                       _self151615_
                                                       '1
                                                       gxc#!type::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"unknown slot"
                                                  _stx151616_
                                                  __tmp152453
                                                  _slot151765_))))))
                                      (___kont152186152187_
                                       (lambda ()
                                         (let ((__tmp152456
                                                (let ((__tmp152457
                                                       (let ((__tmp152480
                                                              (let ((__tmp152481
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp152483
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj151648_ '())))
                                   (__tmp152482
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object151625_ '()))))
                               (declare (not safe))
                               (cons __tmp152483 __tmp152482))))
                        (declare (not safe))
                        (cons __tmp152481 '())))
                     (__tmp152458
                      (let ((__tmp152459
                             (let ((__tmp152460
                                    (let ((__tmp152477
                                           (let ((__tmp152478
                                                  (let ((__tmp152479
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj151648_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp152479))))
                                             (declare (not safe))
                                             (cons __tmp152478 '())))
                                          (__tmp152461
                                           (let ((__tmp152462
                                                  (lambda (_i151692_ _r151693_)
                                                    (let ((__tmp152463
                                                           (let ((__tmp152464
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp152474
                                 (let ((__tmp152475
                                        (let ((__tmp152476
                                               (##structure-ref
                                                _self151615_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp152476 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp152475)))
                                (__tmp152465
                                 (let ((__tmp152471
                                        (let ((__tmp152472
                                               (let ((__tmp152473
                                                      (car _i151692_)))
                                                 (declare (not safe))
                                                 (cons __tmp152473 '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp152472)))
                                       (__tmp152466
                                        (let ((__tmp152469
                                               (let ((__tmp152470
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _$obj151648_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp152470)))
                                              (__tmp152467
                                               (let ((__tmp152468
                                                      (cdr _i151692_)))
                                                 (declare (not safe))
                                                 (cons __tmp152468 '()))))
                                          (declare (not safe))
                                          (cons __tmp152469 __tmp152467))))
                                   (declare (not safe))
                                   (cons __tmp152471 __tmp152466))))
                            (declare (not safe))
                            (cons __tmp152474 __tmp152465))))
                     (declare (not safe))
                     (cons '%#struct-unchecked-set! __tmp152464))))
              (declare (not safe))
              (cons __tmp152463 _r151693_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (foldl1 __tmp152462
                                                     '()
                                                     _initializers151653_))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp152477 __tmp152461))))
                               (declare (not safe))
                               (cons '%#begin __tmp152460))))
                        (declare (not safe))
                        (cons __tmp152459 '()))))
                 (declare (not safe))
                 (cons __tmp152480 __tmp152458))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp152457))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp152456
                                            _stx151616_))))
                                      (___kont152188152189_
                                       (lambda ()
                                         (let ((__tmp152484
                                                (let ((__tmp152485
                                                       (let ((__tmp152499
                                                              (let ((__tmp152500
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp152502
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj151648_ '())))
                                   (__tmp152501
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object151625_ '()))))
                               (declare (not safe))
                               (cons __tmp152502 __tmp152501))))
                        (declare (not safe))
                        (cons __tmp152500 '())))
                     (__tmp152486
                      (let ((__tmp152487
                             (let ((__tmp152488
                                    (let ((__tmp152492
                                           (let ((__tmp152493
                                                  (let ((__tmp152497
                                                         (let ((__tmp152498
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'class-instance-init! '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp152498)))
                (__tmp152494
                 (let ((__tmp152495
                        (let ((__tmp152496
                               (let ()
                                 (declare (not safe))
                                 (cons _$obj151648_ '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp152496))))
                   (declare (not safe))
                   (cons __tmp152495 _args151623_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp152497
                                                          __tmp152494))))
                                             (declare (not safe))
                                             (cons '%#call __tmp152493)))
                                          (__tmp152489
                                           (let ((__tmp152490
                                                  (let ((__tmp152491
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj151648_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp152491))))
                                             (declare (not safe))
                                             (cons __tmp152490 '()))))
                                      (declare (not safe))
                                      (cons __tmp152492 __tmp152489))))
                               (declare (not safe))
                               (cons '%#begin __tmp152488))))
                        (declare (not safe))
                        (cons __tmp152487 '()))))
                 (declare (not safe))
                 (cons __tmp152499 __tmp152486))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp152485))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp152484
                                            _stx151616_)))))
                                  (let* ((_g151655151695_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   ___stx152182152183_))
                                                (___kont152186152187_)
                                                (___kont152188152189_))))
                                         (___match152219152220_
                                          (lambda (_e151664151700_
                                                   _hd151663151703_
                                                   _tl151662151705_
                                                   _e151667151708_
                                                   _hd151666151711_
                                                   _tl151665151713_
                                                   _e151670151716_
                                                   _hd151669151719_
                                                   _tl151668151721_
                                                   _e151673151724_
                                                   _hd151672151727_
                                                   _tl151671151729_)
                                            (let ((_L151732_ _tl151671151729_)
                                                  (_L151733_ _hd151672151727_)
                                                  (_L151734_ _hd151669151719_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-keyword?
                                                     _L151734_))
                                                  (___kont152184152185_
                                                   _L151732_
                                                   _L151733_
                                                   _L151734_)
                                                  (___kont152188152189_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx152182152183_))
                                        (let ((_e151664151700_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx152182152183_))))
                                          (let ((_tl151662151705_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e151664151700_)))
                                                (_hd151663151703_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e151664151700_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd151663151703_))
                                                (let ((_e151667151708_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd151663151703_))))
                                                  (let ((_tl151665151713_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e151667151708_)))
                                                        (_hd151666151711_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e151667151708_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd151666151711_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#quote
                                                               _hd151666151711_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl151665151713_))
                        (let ((_e151670151716_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl151665151713_))))
                          (let ((_tl151668151721_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e151670151716_)))
                                (_hd151669151719_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e151670151716_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl151668151721_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl151662151705_))
                                    (let ((_e151673151724_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl151662151705_))))
                                      (let ((_tl151671151729_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e151673151724_)))
                                            (_hd151672151727_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e151673151724_))))
                                        (___match152219152220_
                                         _e151664151700_
                                         _hd151663151703_
                                         _tl151662151705_
                                         _e151667151708_
                                         _hd151666151711_
                                         _tl151665151713_
                                         _e151670151716_
                                         _hd151669151719_
                                         _tl151668151721_
                                         _e151673151724_
                                         _hd151672151727_
                                         _tl151671151729_)))
                                    (___kont152188152189_))
                                (___kont152188152189_))))
                        (___kont152188152189_))
                    (___kont152188152189_))
                (___kont152188152189_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont152188152189_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g151655151695_))))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__t152108)
        (let ((__id152109
               (let ((__tmp152110
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t152108 'id))))
                 (if __tmp152110
                     __tmp152110
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self151615_ _stx151616_ _args151617_)
            (let* ((_klass151619_
                    (let ((__tmp152625
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self151615_
                              __id152109
                              __t152108
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx151616_ __tmp152625)))
                   (_fields151621_
                    (length (##structure-ref
                             _klass151619_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args151623_ (map gxc#compile-e _args151617_))
                   (_inline-make-object151625_
                    (let ((__tmp152626
                           (let ((__tmp152632
                                  (let ((__tmp152633
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp152633)))
                                 (__tmp152627
                                  (let ((__tmp152629
                                         (let ((__tmp152630
                                                (let ((__tmp152631
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self151615_
                                                          __id152109
                                                          __t152108
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp152631 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp152630)))
                                        (__tmp152628
                                         (let ()
                                           (declare (not safe))
                                           (make-list__%
                                            _fields151621_
                                            '(%#quote #f)))))
                                    (declare (not safe))
                                    (cons __tmp152629 __tmp152628))))
                             (declare (not safe))
                             (cons __tmp152632 __tmp152627))))
                      (declare (not safe))
                      (cons '%#call __tmp152626))))
              (let ((_$e151628_
                     (##structure-ref _klass151619_ '6 gxc#!class::t '#f)))
                (if _$e151628_
                    ((lambda (_ctor151631_)
                       (let ((_$obj151633_
                              (let ((__tmp152733 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp152733)))
                             (_ctor-impl151634_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass151619_
                                 _ctor151631_))))
                         (let ((__tmp152734
                                (let ((__tmp152735
                                       (let ((__tmp152803
                                              (let ((__tmp152804
                                                     (let ((__tmp152806
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj151633_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp152805
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object151625_ '()))))
               (declare (not safe))
               (cons __tmp152806 __tmp152805))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp152804 '())))
                                             (__tmp152736
                                              (let ((__tmp152737
                                                     (let ((__tmp152738
                                                            (let ((__tmp152742
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl151634_
                               (let ((__tmp152797
                                      (let ((__tmp152801
                                             (let ((__tmp152802
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl151634_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp152802)))
                                            (__tmp152798
                                             (let ((__tmp152799
                                                    (let ((__tmp152800
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj151633_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp152800))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp152799
                                                     _args151623_))))
                                        (declare (not safe))
                                        (cons __tmp152801 __tmp152798))))
                                 (declare (not safe))
                                 (cons '%#call __tmp152797))
                               (let* ((_$ctor151636_
                                       (let ((__tmp152743
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp152743)))
                                      (__tmp152744
                                       (let ((__tmp152779
                                              (let ((__tmp152780
                                                     (let ((__tmp152796
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor151636_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp152781
                    (let ((__tmp152782
                           (let ((__tmp152783
                                  (let ((__tmp152794
                                         (let ((__tmp152795
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp152795)))
                                        (__tmp152784
                                         (let ((__tmp152791
                                                (let ((__tmp152792
                                                       (let ((__tmp152793
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self151615_
                         __id152109
                         __t152108
                         '#f))))
                 (declare (not safe))
                 (cons __tmp152793 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp152792)))
                                               (__tmp152785
                                                (let ((__tmp152789
                                                       (let ((__tmp152790
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj151633_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152790)))
              (__tmp152786
               (let ((__tmp152787
                      (let ((__tmp152788
                             (let ()
                               (declare (not safe))
                               (cons _ctor151631_ '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp152788))))
                 (declare (not safe))
                 (cons __tmp152787 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152789
                                                        __tmp152786))))
                                           (declare (not safe))
                                           (cons __tmp152791 __tmp152785))))
                                    (declare (not safe))
                                    (cons __tmp152794 __tmp152784))))
                             (declare (not safe))
                             (cons '%#call __tmp152783))))
                      (declare (not safe))
                      (cons __tmp152782 '()))))
               (declare (not safe))
               (cons __tmp152796 __tmp152781))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp152780 '())))
                                             (__tmp152745
                                              (let ((__tmp152746
                                                     (let ((__tmp152747
                                                            (let ((__tmp152777
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152778
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor151636_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp152778)))
                          (__tmp152748
                           (let ((__tmp152770
                                  (let ((__tmp152771
                                         (let ((__tmp152775
                                                (let ((__tmp152776
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor151636_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp152776)))
                                               (__tmp152772
                                                (let ((__tmp152773
                                                       (let ((__tmp152774
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj151633_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152774))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152773
                                                        _args151623_))))
                                           (declare (not safe))
                                           (cons __tmp152775 __tmp152772))))
                                    (declare (not safe))
                                    (cons '%#call __tmp152771)))
                                 (__tmp152749
                                  (let ((__tmp152750
                                         (let ((__tmp152751
                                                (let ((__tmp152768
                                                       (let ((__tmp152769
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152769)))
              (__tmp152752
               (let ((__tmp152766
                      (let ((__tmp152767
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp152767)))
                     (__tmp152753
                      (let ((__tmp152764
                             (let ((__tmp152765
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp152765)))
                            (__tmp152754
                             (let ((__tmp152761
                                    (let ((__tmp152762
                                           (let ((__tmp152763
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self151615_
                                                     __id152109
                                                     __t152108
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp152763 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp152762)))
                                   (__tmp152755
                                    (let ((__tmp152759
                                           (let ((__tmp152760
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp152760)))
                                          (__tmp152756
                                           (let ((__tmp152757
                                                  (let ((__tmp152758
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor151631_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp152758))))
                                             (declare (not safe))
                                             (cons __tmp152757 '()))))
                                      (declare (not safe))
                                      (cons __tmp152759 __tmp152756))))
                               (declare (not safe))
                               (cons __tmp152761 __tmp152755))))
                        (declare (not safe))
                        (cons __tmp152764 __tmp152754))))
                 (declare (not safe))
                 (cons __tmp152766 __tmp152753))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152768
                                                        __tmp152752))))
                                           (declare (not safe))
                                           (cons '%#call __tmp152751))))
                                    (declare (not safe))
                                    (cons __tmp152750 '()))))
                             (declare (not safe))
                             (cons __tmp152770 __tmp152749))))
                      (declare (not safe))
                      (cons __tmp152777 __tmp152748))))
               (declare (not safe))
               (cons '%#if __tmp152747))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp152746 '()))))
                                         (declare (not safe))
                                         (cons __tmp152779 __tmp152745))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp152744))))
                          (__tmp152739
                           (let ((__tmp152740
                                  (let ((__tmp152741
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj151633_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp152741))))
                             (declare (not safe))
                             (cons __tmp152740 '()))))
                      (declare (not safe))
                      (cons __tmp152742 __tmp152739))))
               (declare (not safe))
               (cons '%#begin __tmp152738))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp152737 '()))))
                                         (declare (not safe))
                                         (cons __tmp152803 __tmp152736))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp152735))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp152734 _stx151616_))))
                     _$e151628_)
                    (let ((_$e151638_
                           (##structure-ref
                            _klass151619_
                            '9
                            gxc#!class::t
                            '#f)))
                      (if _$e151638_
                          ((lambda (_metaclass151641_)
                             (let* ((_$obj151643_
                                     (let ((__tmp152695 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp152695)))
                                    (_metakons151645_
                                     (let ((__tmp152696
                                            (let ()
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               _stx151616_
                                               _metaclass151641_))))
                                       (declare (not safe))
                                       (gxc#!class-lookup-method
                                        __tmp152696
                                        'instance-init!))))
                               (let ((__tmp152697
                                      (let ((__tmp152698
                                             (let ((__tmp152729
                                                    (let ((__tmp152730
                                                           (let ((__tmp152732
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj151643_ '())))
                         (__tmp152731
                          (let ()
                            (declare (not safe))
                            (cons _inline-make-object151625_ '()))))
                     (declare (not safe))
                     (cons __tmp152732 __tmp152731))))
              (declare (not safe))
              (cons __tmp152730 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp152699
                                                    (let ((__tmp152700
                                                           (let ((__tmp152701
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp152705
                                 (if _metakons151645_
                                     (let ((__tmp152719
                                            (let ((__tmp152727
                                                   (let ((__tmp152728
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _metakons151645_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152728)))
                                                  (__tmp152720
                                                   (let ((__tmp152724
                                                          (let ((__tmp152725
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp152726
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self151615_
                                   __id152109
                                   __t152108
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp152726 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp152725)))
                 (__tmp152721
                  (let ((__tmp152722
                         (let ((__tmp152723
                                (let ()
                                  (declare (not safe))
                                  (cons _$obj151643_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp152723))))
                    (declare (not safe))
                    (cons __tmp152722 _args151623_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152724
                                                           __tmp152721))))
                                              (declare (not safe))
                                              (cons __tmp152727 __tmp152720))))
                                       (declare (not safe))
                                       (cons '%#call __tmp152719))
                                     (let ((__tmp152706
                                            (let ((__tmp152717
                                                   (let ((__tmp152718
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'call-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152718)))
                                                  (__tmp152707
                                                   (let ((__tmp152714
                                                          (let ((__tmp152715
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp152716
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self151615_
                                   __id152109
                                   __t152108
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp152716 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp152715)))
                 (__tmp152708
                  (let ((__tmp152712
                         (let ((__tmp152713
                                (let ()
                                  (declare (not safe))
                                  (cons 'instance-init! '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp152713)))
                        (__tmp152709
                         (let ((__tmp152710
                                (let ((__tmp152711
                                       (let ()
                                         (declare (not safe))
                                         (cons _$obj151643_ '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp152711))))
                           (declare (not safe))
                           (cons __tmp152710 _args151623_))))
                    (declare (not safe))
                    (cons __tmp152712 __tmp152709))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152714
                                                           __tmp152708))))
                                              (declare (not safe))
                                              (cons __tmp152717 __tmp152707))))
                                       (declare (not safe))
                                       (cons '%#call __tmp152706))))
                                (__tmp152702
                                 (let ((__tmp152703
                                        (let ((__tmp152704
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$obj151643_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp152704))))
                                   (declare (not safe))
                                   (cons __tmp152703 '()))))
                            (declare (not safe))
                            (cons __tmp152705 __tmp152702))))
                     (declare (not safe))
                     (cons '%#begin __tmp152701))))
              (declare (not safe))
              (cons __tmp152700 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp152729
                                                     __tmp152699))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp152698))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp152697
                                  _stx151616_))))
                           _$e151638_)
                          (if (##structure-ref
                               _klass151619_
                               '7
                               gxc#!class::t
                               '#f)
                              (if (fx= (length _args151623_) _fields151621_)
                                  (let ((__tmp152687
                                         (let ((__tmp152688
                                                (let ((__tmp152693
                                                       (let ((__tmp152694
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '##structure '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152694)))
              (__tmp152689
               (let ((__tmp152690
                      (let ((__tmp152691
                             (let ((__tmp152692
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self151615_
                                       __id152109
                                       __t152108
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp152692 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp152691))))
                 (declare (not safe))
                 (cons __tmp152690 _args151623_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152693
                                                        __tmp152689))))
                                           (declare (not safe))
                                           (cons '%#call __tmp152688))))
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp152687
                                     _stx151616_))
                                  (let ((__tmp152686
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _self151615_
                                            __id152109
                                            __t152108
                                            '#f)))
                                        (__tmp152685
                                         (length (##structure-ref
                                                  _klass151619_
                                                  '5
                                                  gxc#!class::t
                                                  '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _stx151616_
                                     __tmp152686
                                     __tmp152685)))
                              (let ((_$obj151648_
                                     (let ((__tmp152634 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp152634))))
                                (let _lp151650_ ((_rest151652_ _args151623_)
                                                 (_initializers151653_ '()))
                                  (let* ((___stx152224152225_ _rest151652_)
                                         (_g151657151678_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               ___stx152224152225_)))))
                                    (let ((___kont152226152227_
                                           (lambda (_L151732_
                                                    _L151733_
                                                    _L151734_)
                                             (let* ((_slot151765_
                                                     (keyword->symbol
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L151734_))))
                                                    (_off151767_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass151619_
                                                        _slot151765_))))
                                               (if _off151767_
                                                   (let ((__tmp152636
                                                          (let ((__tmp152637
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _off151767_ _L151733_))))
                    (declare (not safe))
                    (cons __tmp152637 _initializers151653_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp151650_
                                                      _L151732_
                                                      __tmp152636))
                                                   (let ((__tmp152635
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _self151615_
                                                             __id152109
                                                             __t152108
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"unknown slot"
                                                      _stx151616_
                                                      __tmp152635
                                                      _slot151765_))))))
                                          (___kont152228152229_
                                           (lambda ()
                                             (let ((__tmp152638
                                                    (let ((__tmp152639
                                                           (let ((__tmp152662
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp152663
                                 (let ((__tmp152665
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj151648_ '())))
                                       (__tmp152664
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object151625_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp152665 __tmp152664))))
                            (declare (not safe))
                            (cons __tmp152663 '())))
                         (__tmp152640
                          (let ((__tmp152641
                                 (let ((__tmp152642
                                        (let ((__tmp152659
                                               (let ((__tmp152660
                                                      (let ((__tmp152661
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj151648_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp152661))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp152660 '())))
                                              (__tmp152643
                                               (let ((__tmp152644
                                                      (lambda (_i151692_
                                                               _r151693_)
                                                        (let ((__tmp152645
                                                               (let ((__tmp152646
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp152656
                                     (let ((__tmp152657
                                            (let ((__tmp152658
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self151615_
                                                      __id152109
                                                      __t152108
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp152658 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152657)))
                                    (__tmp152647
                                     (let ((__tmp152653
                                            (let ((__tmp152654
                                                   (let ((__tmp152655
                                                          (car _i151692_)))
                                                     (declare (not safe))
                                                     (cons __tmp152655 '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp152654)))
                                           (__tmp152648
                                            (let ((__tmp152651
                                                   (let ((__tmp152652
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj151648_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152652)))
                                                  (__tmp152649
                                                   (let ((__tmp152650
                                                          (cdr _i151692_)))
                                                     (declare (not safe))
                                                     (cons __tmp152650 '()))))
                                              (declare (not safe))
                                              (cons __tmp152651 __tmp152649))))
                                       (declare (not safe))
                                       (cons __tmp152653 __tmp152648))))
                                (declare (not safe))
                                (cons __tmp152656 __tmp152647))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp152646))))
                  (declare (not safe))
                  (cons __tmp152645 _r151693_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl1 __tmp152644
                                                         '()
                                                         _initializers151653_))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp152659
                                                  __tmp152643))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp152642))))
                            (declare (not safe))
                            (cons __tmp152641 '()))))
                     (declare (not safe))
                     (cons __tmp152662 __tmp152640))))
              (declare (not safe))
              (cons '%#let-values __tmp152639))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp152638
                                                _stx151616_))))
                                          (___kont152230152231_
                                           (lambda ()
                                             (let ((__tmp152666
                                                    (let ((__tmp152667
                                                           (let ((__tmp152681
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp152682
                                 (let ((__tmp152684
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj151648_ '())))
                                       (__tmp152683
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object151625_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp152684 __tmp152683))))
                            (declare (not safe))
                            (cons __tmp152682 '())))
                         (__tmp152668
                          (let ((__tmp152669
                                 (let ((__tmp152670
                                        (let ((__tmp152674
                                               (let ((__tmp152675
                                                      (let ((__tmp152679
                                                             (let ((__tmp152680
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'class-instance-init! '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp152680)))
                    (__tmp152676
                     (let ((__tmp152677
                            (let ((__tmp152678
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj151648_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp152678))))
                       (declare (not safe))
                       (cons __tmp152677 _args151623_))))
                (declare (not safe))
                (cons __tmp152679 __tmp152676))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp152675)))
                                              (__tmp152671
                                               (let ((__tmp152672
                                                      (let ((__tmp152673
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj151648_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp152673))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp152672 '()))))
                                          (declare (not safe))
                                          (cons __tmp152674 __tmp152671))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp152670))))
                            (declare (not safe))
                            (cons __tmp152669 '()))))
                     (declare (not safe))
                     (cons __tmp152681 __tmp152668))))
              (declare (not safe))
              (cons '%#let-values __tmp152667))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp152666
                                                _stx151616_)))))
                                      (let* ((_g151655151695_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       ___stx152224152225_))
                                                    (___kont152228152229_)
                                                    (___kont152230152231_))))
                                             (___match152261152262_
                                              (lambda (_e151664151700_
                                                       _hd151663151703_
                                                       _tl151662151705_
                                                       _e151667151708_
                                                       _hd151666151711_
                                                       _tl151665151713_
                                                       _e151670151716_
                                                       _hd151669151719_
                                                       _tl151668151721_
                                                       _e151673151724_
                                                       _hd151672151727_
                                                       _tl151671151729_)
                                                (let ((_L151732_
                                                       _tl151671151729_)
                                                      (_L151733_
                                                       _hd151672151727_)
                                                      (_L151734_
                                                       _hd151669151719_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-keyword?
                                                         _L151734_))
                                                      (___kont152226152227_
                                                       _L151732_
                                                       _L151733_
                                                       _L151734_)
                                                      (___kont152230152231_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               ___stx152224152225_))
                                            (let ((_e151664151700_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      ___stx152224152225_))))
                                              (let ((_tl151662151705_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e151664151700_)))
                                                    (_hd151663151703_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e151664151700_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd151663151703_))
                                                    (let ((_e151667151708_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd151663151703_))))
                                                      (let ((_tl151665151713_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e151667151708_)))
                    (_hd151666151711_
                     (let () (declare (not safe)) (##car _e151667151708_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd151666151711_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd151666151711_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl151665151713_))
                            (let ((_e151670151716_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl151665151713_))))
                              (let ((_tl151668151721_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e151670151716_)))
                                    (_hd151669151719_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e151670151716_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl151668151721_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl151662151705_))
                                        (let ((_e151673151724_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl151662151705_))))
                                          (let ((_tl151671151729_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e151673151724_)))
                                                (_hd151672151727_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e151673151724_))))
                                            (___match152261152262_
                                             _e151664151700_
                                             _hd151663151703_
                                             _tl151662151705_
                                             _e151667151708_
                                             _hd151666151711_
                                             _tl151665151713_
                                             _e151670151716_
                                             _hd151669151719_
                                             _tl151668151721_
                                             _e151673151724_
                                             _hd151672151727_
                                             _tl151671151729_)))
                                        (___kont152230152231_))
                                    (___kont152230152231_))))
                            (___kont152230152231_))
                        (___kont152230152231_))
                    (___kont152230152231_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont152230152231_))))
                                            (let ()
                                              (declare (not safe))
                                              (_g151655151695_))))))))))))))))))
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
      (lambda (_self151438_ _stx151439_ _args151440_)
        (let* ((_g151442151452_
                (lambda (_g151443151449_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g151443151449_))))
               (_g151441151490_
                (lambda (_g151443151455_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g151443151455_))
                      (let ((_e151447151457_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g151443151455_))))
                        (let ((_hd151446151460_
                               (let ()
                                 (declare (not safe))
                                 (##car _e151447151457_)))
                              (_tl151445151462_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e151447151457_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl151445151462_))
                              ((lambda (_L151465_)
                                 (let* ((_klass151476_
                                         (let ((__tmp152807
                                                (##structure-ref
                                                 _self151438_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx151439_
                                            __tmp152807)))
                                        (_field151478_
                                         (let ((__tmp152808
                                                (##structure-ref
                                                 _self151438_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass151476_
                                            __tmp152808)))
                                        (_object151480_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L151465_))))
                                   (if (##structure-ref
                                        _klass151476_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp152885
                                              (let ((__tmp152894
                                                     (if (##structure-ref
                                                          _self151438_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp152886
                                                     (let ((__tmp152891
                                                            (let ((__tmp152892
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152893
                                  (##structure-ref
                                   _self151438_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp152893 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp152892)))
                   (__tmp152887
                    (let ((__tmp152889
                           (let ((__tmp152890
                                  (let ()
                                    (declare (not safe))
                                    (cons _field151478_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp152890)))
                          (__tmp152888
                           (let ()
                             (declare (not safe))
                             (cons _object151480_ '()))))
                      (declare (not safe))
                      (cons __tmp152889 __tmp152888))))
               (declare (not safe))
               (cons __tmp152891 __tmp152887))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp152894
                                                      __tmp152886))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp152885
                                          _stx151439_))
                                       (if (##structure-ref
                                            _klass151476_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp152875
                                                  (let ((__tmp152884
                                                         (if (##structure-ref
                                                              _self151438_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp152876
                                                         (let ((__tmp152881
                                                                (let ((__tmp152882
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp152883
                                      (##structure-ref
                                       _self151438_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp152883 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp152882)))
                       (__tmp152877
                        (let ((__tmp152879
                               (let ((__tmp152880
                                      (let ()
                                        (declare (not safe))
                                        (cons _field151478_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp152880)))
                              (__tmp152878
                               (let ()
                                 (declare (not safe))
                                 (cons _object151480_ '()))))
                          (declare (not safe))
                          (cons __tmp152879 __tmp152878))))
                   (declare (not safe))
                   (cons __tmp152881 __tmp152877))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp152884
                                                          __tmp152876))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152875
                                              _stx151439_))
                                           (let ((_$e151483_
                                                  (let ((__tmp152809
                                                         (##structure-ref
                                                          _self151438_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass151476_
                                                     __tmp152809))))
                                             (if _$e151483_
                                                 ((lambda (_klass151486_)
                                                    (let ((__tmp152865
                                                           (let ((__tmp152874
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self151438_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp152866
                          (let ((__tmp152871
                                 (let ((__tmp152872
                                        (let ((__tmp152873
                                               (##structure-ref
                                                _self151438_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp152873 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp152872)))
                                (__tmp152867
                                 (let ((__tmp152869
                                        (let ((__tmp152870
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field151478_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp152870)))
                                       (__tmp152868
                                        (let ()
                                          (declare (not safe))
                                          (cons _object151480_ '()))))
                                   (declare (not safe))
                                   (cons __tmp152869 __tmp152868))))
                            (declare (not safe))
                            (cons __tmp152871 __tmp152867))))
                     (declare (not safe))
                     (cons __tmp152874 __tmp152866))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp152865 _stx151439_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e151483_)
                                                 (if (##structure-ref
                                                      _self151438_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp152819
                                                            (let* ((_$obj151488_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp152820 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp152820)))
                           (__tmp152821
                            (let ((__tmp152861
                                   (let ((__tmp152862
                                          (let ((__tmp152864
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj151488_ '())))
                                                (__tmp152863
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object151480_ '()))))
                                            (declare (not safe))
                                            (cons __tmp152864 __tmp152863))))
                                     (declare (not safe))
                                     (cons __tmp152862 '())))
                                  (__tmp152822
                                   (let ((__tmp152823
                                          (let ((__tmp152824
                                                 (let ((__tmp152853
                                                        (let ((__tmp152854
                                                               (let ((__tmp152858
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp152859
                                     (let ((__tmp152860
                                            (##structure-ref
                                             _klass151476_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp152860 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp152859)))
                             (__tmp152855
                              (let ((__tmp152856
                                     (let ((__tmp152857
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj151488_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152857))))
                                (declare (not safe))
                                (cons __tmp152856 '()))))
                         (declare (not safe))
                         (cons __tmp152858 __tmp152855))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp152854)))
               (__tmp152825
                (let ((__tmp152842
                       (let ((__tmp152843
                              (let ((__tmp152850
                                     (let ((__tmp152851
                                            (let ((__tmp152852
                                                   (##structure-ref
                                                    _self151438_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp152852 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152851)))
                                    (__tmp152844
                                     (let ((__tmp152848
                                            (let ((__tmp152849
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field151478_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp152849)))
                                           (__tmp152845
                                            (let ((__tmp152846
                                                   (let ((__tmp152847
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj151488_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152847))))
                                              (declare (not safe))
                                              (cons __tmp152846 '()))))
                                       (declare (not safe))
                                       (cons __tmp152848 __tmp152845))))
                                (declare (not safe))
                                (cons __tmp152850 __tmp152844))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp152843)))
                      (__tmp152826
                       (let ((__tmp152827
                              (let ((__tmp152828
                                     (let ((__tmp152840
                                            (let ((__tmp152841
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp152841)))
                                           (__tmp152829
                                            (let ((__tmp152837
                                                   (let ((__tmp152838
                                                          (let ((__tmp152839
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self151438_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp152839 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152838)))
                                                  (__tmp152830
                                                   (let ((__tmp152835
                                                          (let ((__tmp152836
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj151488_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp152836)))
                 (__tmp152831
                  (let ((__tmp152832
                         (let ((__tmp152833
                                (let ((__tmp152834
                                       (##structure-ref
                                        _self151438_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp152834 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp152833))))
                    (declare (not safe))
                    (cons __tmp152832 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152835
                                                           __tmp152831))))
                                              (declare (not safe))
                                              (cons __tmp152837 __tmp152830))))
                                       (declare (not safe))
                                       (cons __tmp152840 __tmp152829))))
                                (declare (not safe))
                                (cons '%#call __tmp152828))))
                         (declare (not safe))
                         (cons __tmp152827 '()))))
                  (declare (not safe))
                  (cons __tmp152842 __tmp152826))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp152853
                                                         __tmp152825))))
                                            (declare (not safe))
                                            (cons '%#if __tmp152824))))
                                     (declare (not safe))
                                     (cons __tmp152823 '()))))
                              (declare (not safe))
                              (cons __tmp152861 __tmp152822))))
                      (declare (not safe))
                      (cons '%#let-values __tmp152821))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp152819 _stx151439_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp152810
                                                            (let ((__tmp152811
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152817
                                  (let ((__tmp152818
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp152818)))
                                 (__tmp152812
                                  (let ((__tmp152813
                                         (let ((__tmp152814
                                                (let ((__tmp152815
                                                       (let ((__tmp152816
                                                              (##structure-ref
                                                               _self151438_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp152816
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp152815))))
                                           (declare (not safe))
                                           (cons __tmp152814 '()))))
                                    (declare (not safe))
                                    (cons _object151480_ __tmp152813))))
                             (declare (not safe))
                             (cons __tmp152817 __tmp152812))))
                      (declare (not safe))
                      (cons '%#call __tmp152811))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp152810 _stx151439_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd151446151460_)
                              (let ()
                                (declare (not safe))
                                (_g151442151452_ _g151443151455_)))))
                      (let ()
                        (declare (not safe))
                        (_g151442151452_ _g151443151455_))))))
          (declare (not safe))
          (_g151441151490_ _args151440_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__t152111)
        (let ((__id152112
               (let ((__tmp152115
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t152111 'id))))
                 (if __tmp152115
                     __tmp152115
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__slot152113
               (let ((__tmp152116
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t152111 'slot))))
                 (if __tmp152116
                     __tmp152116
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__checked?152114
               (let ((__tmp152117
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t152111 'checked?))))
                 (if __tmp152117
                     __tmp152117
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self151438_ _stx151439_ _args151440_)
            (let* ((_g151442151452_
                    (lambda (_g151443151449_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g151443151449_))))
                   (_g151441151490_
                    (lambda (_g151443151455_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g151443151455_))
                          (let ((_e151447151457_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g151443151455_))))
                            (let ((_hd151446151460_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e151447151457_)))
                                  (_tl151445151462_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e151447151457_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl151445151462_))
                                  ((lambda (_L151465_)
                                     (let* ((_klass151476_
                                             (let ((__tmp152895
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self151438_
                                                       __id152112
                                                       __t152111
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx151439_
                                                __tmp152895)))
                                            (_field151478_
                                             (let ((__tmp152896
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self151438_
                                                       __slot152113
                                                       __t152111
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass151476_
                                                __tmp152896)))
                                            (_object151480_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L151465_))))
                                       (if (##structure-ref
                                            _klass151476_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp152973
                                                  (let ((__tmp152982
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self151438_
                        __checked?152114
                        __t152111
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp152974
                 (let ((__tmp152979
                        (let ((__tmp152980
                               (let ((__tmp152981
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self151438_
                                         __id152112
                                         __t152111
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp152981 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp152980)))
                       (__tmp152975
                        (let ((__tmp152977
                               (let ((__tmp152978
                                      (let ()
                                        (declare (not safe))
                                        (cons _field151478_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp152978)))
                              (__tmp152976
                               (let ()
                                 (declare (not safe))
                                 (cons _object151480_ '()))))
                          (declare (not safe))
                          (cons __tmp152977 __tmp152976))))
                   (declare (not safe))
                   (cons __tmp152979 __tmp152975))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp152982
                                                          __tmp152974))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152973
                                              _stx151439_))
                                           (if (##structure-ref
                                                _klass151476_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp152963
                                                      (let ((__tmp152972
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self151438_
                            __checked?152114
                            __t152111
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp152964
                     (let ((__tmp152969
                            (let ((__tmp152970
                                   (let ((__tmp152971
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self151438_
                                             __id152112
                                             __t152111
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp152971 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp152970)))
                           (__tmp152965
                            (let ((__tmp152967
                                   (let ((__tmp152968
                                          (let ()
                                            (declare (not safe))
                                            (cons _field151478_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp152968)))
                                  (__tmp152966
                                   (let ()
                                     (declare (not safe))
                                     (cons _object151480_ '()))))
                              (declare (not safe))
                              (cons __tmp152967 __tmp152966))))
                       (declare (not safe))
                       (cons __tmp152969 __tmp152965))))
                (declare (not safe))
                (cons __tmp152972 __tmp152964))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp152963
                                                  _stx151439_))
                                               (let ((_$e151483_
                                                      (let ((__tmp152897
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self151438_
                        __slot152113
                        __t152111
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass151476_ __tmp152897))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e151483_
                                                     ((lambda (_klass151486_)
                                                        (let ((__tmp152953
                                                               (let ((__tmp152962
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self151438_
                                     __checked?152114
                                     __t152111
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp152954
                              (let ((__tmp152959
                                     (let ((__tmp152960
                                            (let ((__tmp152961
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self151438_
                                                      __id152112
                                                      __t152111
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp152961 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152960)))
                                    (__tmp152955
                                     (let ((__tmp152957
                                            (let ((__tmp152958
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field151478_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp152958)))
                                           (__tmp152956
                                            (let ()
                                              (declare (not safe))
                                              (cons _object151480_ '()))))
                                       (declare (not safe))
                                       (cons __tmp152957 __tmp152956))))
                                (declare (not safe))
                                (cons __tmp152959 __tmp152955))))
                         (declare (not safe))
                         (cons __tmp152962 __tmp152954))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp152953 _stx151439_)))
              _$e151483_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self151438_
                                                            __checked?152114
                                                            __t152111
                                                            '#f))
                                                         (let ((__tmp152907
                                                                (let* ((_$obj151488_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp152908 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp152908)))
                               (__tmp152909
                                (let ((__tmp152949
                                       (let ((__tmp152950
                                              (let ((__tmp152952
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj151488_
                                                             '())))
                                                    (__tmp152951
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object151480_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp152952
                                                      __tmp152951))))
                                         (declare (not safe))
                                         (cons __tmp152950 '())))
                                      (__tmp152910
                                       (let ((__tmp152911
                                              (let ((__tmp152912
                                                     (let ((__tmp152941
                                                            (let ((__tmp152942
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152946
                                  (let ((__tmp152947
                                         (let ((__tmp152948
                                                (##structure-ref
                                                 _klass151476_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp152948 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp152947)))
                                 (__tmp152943
                                  (let ((__tmp152944
                                         (let ((__tmp152945
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj151488_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp152945))))
                                    (declare (not safe))
                                    (cons __tmp152944 '()))))
                             (declare (not safe))
                             (cons __tmp152946 __tmp152943))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp152942)))
                   (__tmp152913
                    (let ((__tmp152930
                           (let ((__tmp152931
                                  (let ((__tmp152938
                                         (let ((__tmp152939
                                                (let ((__tmp152940
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self151438_
                                                          __id152112
                                                          __t152111
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp152940 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp152939)))
                                        (__tmp152932
                                         (let ((__tmp152936
                                                (let ((__tmp152937
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field151478_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp152937)))
                                               (__tmp152933
                                                (let ((__tmp152934
                                                       (let ((__tmp152935
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj151488_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152935))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152934 '()))))
                                           (declare (not safe))
                                           (cons __tmp152936 __tmp152933))))
                                    (declare (not safe))
                                    (cons __tmp152938 __tmp152932))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp152931)))
                          (__tmp152914
                           (let ((__tmp152915
                                  (let ((__tmp152916
                                         (let ((__tmp152928
                                                (let ((__tmp152929
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp152929)))
                                               (__tmp152917
                                                (let ((__tmp152925
                                                       (let ((__tmp152926
                                                              (let ((__tmp152927
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self151438_
                                __id152112
                                __t152111
                                '#f))))
                        (declare (not safe))
                        (cons __tmp152927 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152926)))
              (__tmp152918
               (let ((__tmp152923
                      (let ((__tmp152924
                             (let ()
                               (declare (not safe))
                               (cons _$obj151488_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp152924)))
                     (__tmp152919
                      (let ((__tmp152920
                             (let ((__tmp152921
                                    (let ((__tmp152922
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self151438_
                                              __slot152113
                                              __t152111
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp152922 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp152921))))
                        (declare (not safe))
                        (cons __tmp152920 '()))))
                 (declare (not safe))
                 (cons __tmp152923 __tmp152919))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152925
                                                        __tmp152918))))
                                           (declare (not safe))
                                           (cons __tmp152928 __tmp152917))))
                                    (declare (not safe))
                                    (cons '%#call __tmp152916))))
                             (declare (not safe))
                             (cons __tmp152915 '()))))
                      (declare (not safe))
                      (cons __tmp152930 __tmp152914))))
               (declare (not safe))
               (cons __tmp152941 __tmp152913))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp152912))))
                                         (declare (not safe))
                                         (cons __tmp152911 '()))))
                                  (declare (not safe))
                                  (cons __tmp152949 __tmp152910))))
                          (declare (not safe))
                          (cons '%#let-values __tmp152909))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp152907 _stx151439_))
                 (let ((__tmp152898
                        (let ((__tmp152899
                               (let ((__tmp152905
                                      (let ((__tmp152906
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp152906)))
                                     (__tmp152900
                                      (let ((__tmp152901
                                             (let ((__tmp152902
                                                    (let ((__tmp152903
                                                           (let ((__tmp152904
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self151438_
                             __slot152113
                             __t152111
                             '#f))))
                     (declare (not safe))
                     (cons __tmp152904 '()))))
              (declare (not safe))
              (cons '%#quote __tmp152903))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp152902 '()))))
                                        (declare (not safe))
                                        (cons _object151480_ __tmp152901))))
                                 (declare (not safe))
                                 (cons __tmp152905 __tmp152900))))
                          (declare (not safe))
                          (cons '%#call __tmp152899))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp152898 _stx151439_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd151446151460_)
                                  (let ()
                                    (declare (not safe))
                                    (_g151442151452_ _g151443151455_)))))
                          (let ()
                            (declare (not safe))
                            (_g151442151452_ _g151443151455_))))))
              (declare (not safe))
              (_g151441151490_ _args151440_))))))
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
      (lambda (_self151243_ _stx151244_ _args151245_)
        (let* ((_g151247151261_
                (lambda (_g151248151258_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g151248151258_))))
               (_g151246151313_
                (lambda (_g151248151264_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g151248151264_))
                      (let ((_e151253151266_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g151248151264_))))
                        (let ((_hd151252151269_
                               (let ()
                                 (declare (not safe))
                                 (##car _e151253151266_)))
                              (_tl151251151271_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e151253151266_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl151251151271_))
                              (let ((_e151256151274_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl151251151271_))))
                                (let ((_hd151255151277_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e151256151274_)))
                                      (_tl151254151279_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e151256151274_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl151254151279_))
                                      ((lambda (_L151282_ _L151283_)
                                         (let* ((_klass151297_
                                                 (let ((__tmp152983
                                                        (##structure-ref
                                                         _self151243_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx151244_
                                                    __tmp152983)))
                                                (_field151299_
                                                 (let ((__tmp152984
                                                        (##structure-ref
                                                         _self151243_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass151297_
                                                    __tmp152984)))
                                                (_object151301_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L151283_)))
                                                (_value151303_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L151282_))))
                                           (if (##structure-ref
                                                _klass151297_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp153066
                                                      (let ((__tmp153076
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self151243_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp153067
                     (let ((__tmp153073
                            (let ((__tmp153074
                                   (let ((__tmp153075
                                          (##structure-ref
                                           _self151243_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp153075 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp153074)))
                           (__tmp153068
                            (let ((__tmp153071
                                   (let ((__tmp153072
                                          (let ()
                                            (declare (not safe))
                                            (cons _field151299_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp153072)))
                                  (__tmp153069
                                   (let ((__tmp153070
                                          (let ()
                                            (declare (not safe))
                                            (cons _value151303_ '()))))
                                     (declare (not safe))
                                     (cons _object151301_ __tmp153070))))
                              (declare (not safe))
                              (cons __tmp153071 __tmp153069))))
                       (declare (not safe))
                       (cons __tmp153073 __tmp153068))))
                (declare (not safe))
                (cons __tmp153076 __tmp153067))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp153066
                                                  _stx151244_))
                                               (if (##structure-ref
                                                    _klass151297_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp153055
                                                          (let ((__tmp153065
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self151243_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp153056
                         (let ((__tmp153062
                                (let ((__tmp153063
                                       (let ((__tmp153064
                                              (##structure-ref
                                               _self151243_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp153064 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp153063)))
                               (__tmp153057
                                (let ((__tmp153060
                                       (let ((__tmp153061
                                              (let ()
                                                (declare (not safe))
                                                (cons _field151299_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp153061)))
                                      (__tmp153058
                                       (let ((__tmp153059
                                              (let ()
                                                (declare (not safe))
                                                (cons _value151303_ '()))))
                                         (declare (not safe))
                                         (cons _object151301_ __tmp153059))))
                                  (declare (not safe))
                                  (cons __tmp153060 __tmp153058))))
                           (declare (not safe))
                           (cons __tmp153062 __tmp153057))))
                    (declare (not safe))
                    (cons __tmp153065 __tmp153056))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp153055
                                                      _stx151244_))
                                                   (let ((_$e151306_
                                                          (let ((__tmp152985
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self151243_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass151297_ __tmp152985))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e151306_
                                                         ((lambda (_klass151309_)
                                                            (let ((__tmp153044
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153054
                                  (if (##structure-ref
                                       _self151243_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp153045
                                  (let ((__tmp153051
                                         (let ((__tmp153052
                                                (let ((__tmp153053
                                                       (##structure-ref
                                                        _self151243_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp153053 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153052)))
                                        (__tmp153046
                                         (let ((__tmp153049
                                                (let ((__tmp153050
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field151299_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp153050)))
                                               (__tmp153047
                                                (let ((__tmp153048
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value151303_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object151301_
                                                        __tmp153048))))
                                           (declare (not safe))
                                           (cons __tmp153049 __tmp153047))))
                                    (declare (not safe))
                                    (cons __tmp153051 __tmp153046))))
                             (declare (not safe))
                             (cons __tmp153054 __tmp153045))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp153044 _stx151244_)))
                  _$e151306_)
                 (if (##structure-ref _self151243_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp152996
                            (let* ((_$obj151311_
                                    (let ((__tmp152997 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp152997)))
                                   (__tmp152998
                                    (let ((__tmp153040
                                           (let ((__tmp153041
                                                  (let ((__tmp153043
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj151311_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp153042
                 (let () (declare (not safe)) (cons _object151301_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp153043
                                                          __tmp153042))))
                                             (declare (not safe))
                                             (cons __tmp153041 '())))
                                          (__tmp152999
                                           (let ((__tmp153000
                                                  (let ((__tmp153001
                                                         (let ((__tmp153032
                                                                (let ((__tmp153033
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp153037
                                      (let ((__tmp153038
                                             (let ((__tmp153039
                                                    (##structure-ref
                                                     _klass151297_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp153039 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp153038)))
                                     (__tmp153034
                                      (let ((__tmp153035
                                             (let ((__tmp153036
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj151311_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp153036))))
                                        (declare (not safe))
                                        (cons __tmp153035 '()))))
                                 (declare (not safe))
                                 (cons __tmp153037 __tmp153034))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp153033)))
                       (__tmp153002
                        (let ((__tmp153020
                               (let ((__tmp153021
                                      (let ((__tmp153029
                                             (let ((__tmp153030
                                                    (let ((__tmp153031
                                                           (##structure-ref
                                                            _self151243_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp153031 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp153030)))
                                            (__tmp153022
                                             (let ((__tmp153027
                                                    (let ((__tmp153028
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field151299_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp153028)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp153023
                                                    (let ((__tmp153025
                                                           (let ((__tmp153026
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj151311_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp153026)))
                  (__tmp153024
                   (let () (declare (not safe)) (cons _value151303_ '()))))
              (declare (not safe))
              (cons __tmp153025 __tmp153024))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153027
                                                     __tmp153023))))
                                        (declare (not safe))
                                        (cons __tmp153029 __tmp153022))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp153021)))
                              (__tmp153003
                               (let ((__tmp153004
                                      (let ((__tmp153005
                                             (let ((__tmp153018
                                                    (let ((__tmp153019
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp153019)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp153006
                                                    (let ((__tmp153015
                                                           (let ((__tmp153016
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp153017
                                 (##structure-ref
                                  _self151243_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp153017 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp153016)))
                  (__tmp153007
                   (let ((__tmp153013
                          (let ((__tmp153014
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj151311_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp153014)))
                         (__tmp153008
                          (let ((__tmp153010
                                 (let ((__tmp153011
                                        (let ((__tmp153012
                                               (##structure-ref
                                                _self151243_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp153012 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp153011)))
                                (__tmp153009
                                 (let ()
                                   (declare (not safe))
                                   (cons _value151303_ '()))))
                            (declare (not safe))
                            (cons __tmp153010 __tmp153009))))
                     (declare (not safe))
                     (cons __tmp153013 __tmp153008))))
              (declare (not safe))
              (cons __tmp153015 __tmp153007))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153018
                                                     __tmp153006))))
                                        (declare (not safe))
                                        (cons '%#call __tmp153005))))
                                 (declare (not safe))
                                 (cons __tmp153004 '()))))
                          (declare (not safe))
                          (cons __tmp153020 __tmp153003))))
                   (declare (not safe))
                   (cons __tmp153032 __tmp153002))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp153001))))
                                             (declare (not safe))
                                             (cons __tmp153000 '()))))
                                      (declare (not safe))
                                      (cons __tmp153040 __tmp152999))))
                              (declare (not safe))
                              (cons '%#let-values __tmp152998))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp152996 _stx151244_))
                     (let ((__tmp152986
                            (let ((__tmp152987
                                   (let ((__tmp152994
                                          (let ((__tmp152995
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp152995)))
                                         (__tmp152988
                                          (let ((__tmp152989
                                                 (let ((__tmp152991
                                                        (let ((__tmp152992
                                                               (let ((__tmp152993
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self151243_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp152993 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp152992)))
               (__tmp152990
                (let () (declare (not safe)) (cons _value151303_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp152991
                                                         __tmp152990))))
                                            (declare (not safe))
                                            (cons _object151301_
                                                  __tmp152989))))
                                     (declare (not safe))
                                     (cons __tmp152994 __tmp152988))))
                              (declare (not safe))
                              (cons '%#call __tmp152987))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp152986 _stx151244_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd151255151277_
                                       _hd151252151269_)
                                      (let ()
                                        (declare (not safe))
                                        (_g151247151261_ _g151248151264_)))))
                              (let ()
                                (declare (not safe))
                                (_g151247151261_ _g151248151264_)))))
                      (let ()
                        (declare (not safe))
                        (_g151247151261_ _g151248151264_))))))
          (declare (not safe))
          (_g151246151313_ _args151245_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__t152118)
        (let ((__checked?152119
               (let ((__tmp152122
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t152118 'checked?))))
                 (if __tmp152122
                     __tmp152122
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__id152120
               (let ((__tmp152123
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t152118 'id))))
                 (if __tmp152123
                     __tmp152123
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__slot152121
               (let ((__tmp152124
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t152118 'slot))))
                 (if __tmp152124
                     __tmp152124
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self151243_ _stx151244_ _args151245_)
            (let* ((_g151247151261_
                    (lambda (_g151248151258_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g151248151258_))))
                   (_g151246151313_
                    (lambda (_g151248151264_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g151248151264_))
                          (let ((_e151253151266_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g151248151264_))))
                            (let ((_hd151252151269_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e151253151266_)))
                                  (_tl151251151271_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e151253151266_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl151251151271_))
                                  (let ((_e151256151274_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl151251151271_))))
                                    (let ((_hd151255151277_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e151256151274_)))
                                          (_tl151254151279_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e151256151274_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl151254151279_))
                                          ((lambda (_L151282_ _L151283_)
                                             (let* ((_klass151297_
                                                     (let ((__tmp153077
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self151243_
                                                               __id152120
                                                               __t152118
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx151244_
                                                        __tmp153077)))
                                                    (_field151299_
                                                     (let ((__tmp153078
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self151243_
                                                               __slot152121
                                                               __t152118
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass151297_
                                                        __tmp153078)))
                                                    (_object151301_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L151283_)))
                                                    (_value151303_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L151282_))))
                                               (if (##structure-ref
                                                    _klass151297_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp153160
                                                          (let ((__tmp153170
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self151243_
                                __checked?152119
                                __t152118
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp153161
                         (let ((__tmp153167
                                (let ((__tmp153168
                                       (let ((__tmp153169
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self151243_
                                                 __id152120
                                                 __t152118
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp153169 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp153168)))
                               (__tmp153162
                                (let ((__tmp153165
                                       (let ((__tmp153166
                                              (let ()
                                                (declare (not safe))
                                                (cons _field151299_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp153166)))
                                      (__tmp153163
                                       (let ((__tmp153164
                                              (let ()
                                                (declare (not safe))
                                                (cons _value151303_ '()))))
                                         (declare (not safe))
                                         (cons _object151301_ __tmp153164))))
                                  (declare (not safe))
                                  (cons __tmp153165 __tmp153163))))
                           (declare (not safe))
                           (cons __tmp153167 __tmp153162))))
                    (declare (not safe))
                    (cons __tmp153170 __tmp153161))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp153160
                                                      _stx151244_))
                                                   (if (##structure-ref
                                                        _klass151297_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp153149
                                                              (let ((__tmp153159
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self151243_
                                    __checked?152119
                                    __t152118
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp153150
                             (let ((__tmp153156
                                    (let ((__tmp153157
                                           (let ((__tmp153158
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self151243_
                                                     __id152120
                                                     __t152118
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp153158 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp153157)))
                                   (__tmp153151
                                    (let ((__tmp153154
                                           (let ((__tmp153155
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field151299_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp153155)))
                                          (__tmp153152
                                           (let ((__tmp153153
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value151303_ '()))))
                                             (declare (not safe))
                                             (cons _object151301_
                                                   __tmp153153))))
                                      (declare (not safe))
                                      (cons __tmp153154 __tmp153152))))
                               (declare (not safe))
                               (cons __tmp153156 __tmp153151))))
                        (declare (not safe))
                        (cons __tmp153159 __tmp153150))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp153149 _stx151244_))
               (let ((_$e151306_
                      (let ((__tmp153079
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self151243_
                                __slot152121
                                __t152118
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass151297_
                         __tmp153079))))
                 (if _$e151306_
                     ((lambda (_klass151309_)
                        (let ((__tmp153138
                               (let ((__tmp153148
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self151243_
                                             __checked?152119
                                             __t152118
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp153139
                                      (let ((__tmp153145
                                             (let ((__tmp153146
                                                    (let ((__tmp153147
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self151243_
                                                              __id152120
                                                              __t152118
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp153147 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp153146)))
                                            (__tmp153140
                                             (let ((__tmp153143
                                                    (let ((__tmp153144
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field151299_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp153144)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp153141
                                                    (let ((__tmp153142
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value151303_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object151301_ __tmp153142))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153143
                                                     __tmp153141))))
                                        (declare (not safe))
                                        (cons __tmp153145 __tmp153140))))
                                 (declare (not safe))
                                 (cons __tmp153148 __tmp153139))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp153138 _stx151244_)))
                      _$e151306_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self151243_
                            __checked?152119
                            __t152118
                            '#f))
                         (let ((__tmp153090
                                (let* ((_$obj151311_
                                        (let ((__tmp153091 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp153091)))
                                       (__tmp153092
                                        (let ((__tmp153134
                                               (let ((__tmp153135
                                                      (let ((__tmp153137
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj151311_ '())))
                    (__tmp153136
                     (let () (declare (not safe)) (cons _object151301_ '()))))
                (declare (not safe))
                (cons __tmp153137 __tmp153136))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153135 '())))
                                              (__tmp153093
                                               (let ((__tmp153094
                                                      (let ((__tmp153095
                                                             (let ((__tmp153126
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp153127
                                   (let ((__tmp153131
                                          (let ((__tmp153132
                                                 (let ((__tmp153133
                                                        (##structure-ref
                                                         _klass151297_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp153133 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp153132)))
                                         (__tmp153128
                                          (let ((__tmp153129
                                                 (let ((__tmp153130
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj151311_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp153130))))
                                            (declare (not safe))
                                            (cons __tmp153129 '()))))
                                     (declare (not safe))
                                     (cons __tmp153131 __tmp153128))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp153127)))
                           (__tmp153096
                            (let ((__tmp153114
                                   (let ((__tmp153115
                                          (let ((__tmp153123
                                                 (let ((__tmp153124
                                                        (let ((__tmp153125
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self151243_
                          __id152120
                          __t152118
                          '#f))))
                  (declare (not safe))
                  (cons __tmp153125 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp153124)))
                                                (__tmp153116
                                                 (let ((__tmp153121
                                                        (let ((__tmp153122
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field151299_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp153122)))
               (__tmp153117
                (let ((__tmp153119
                       (let ((__tmp153120
                              (let ()
                                (declare (not safe))
                                (cons _$obj151311_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp153120)))
                      (__tmp153118
                       (let () (declare (not safe)) (cons _value151303_ '()))))
                  (declare (not safe))
                  (cons __tmp153119 __tmp153118))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153121
                                                         __tmp153117))))
                                            (declare (not safe))
                                            (cons __tmp153123 __tmp153116))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp153115)))
                                  (__tmp153097
                                   (let ((__tmp153098
                                          (let ((__tmp153099
                                                 (let ((__tmp153112
                                                        (let ((__tmp153113
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp153113)))
               (__tmp153100
                (let ((__tmp153109
                       (let ((__tmp153110
                              (let ((__tmp153111
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self151243_
                                        __id152120
                                        __t152118
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp153111 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp153110)))
                      (__tmp153101
                       (let ((__tmp153107
                              (let ((__tmp153108
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj151311_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp153108)))
                             (__tmp153102
                              (let ((__tmp153104
                                     (let ((__tmp153105
                                            (let ((__tmp153106
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self151243_
                                                      __slot152121
                                                      __t152118
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp153106 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp153105)))
                                    (__tmp153103
                                     (let ()
                                       (declare (not safe))
                                       (cons _value151303_ '()))))
                                (declare (not safe))
                                (cons __tmp153104 __tmp153103))))
                         (declare (not safe))
                         (cons __tmp153107 __tmp153102))))
                  (declare (not safe))
                  (cons __tmp153109 __tmp153101))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153112
                                                         __tmp153100))))
                                            (declare (not safe))
                                            (cons '%#call __tmp153099))))
                                     (declare (not safe))
                                     (cons __tmp153098 '()))))
                              (declare (not safe))
                              (cons __tmp153114 __tmp153097))))
                       (declare (not safe))
                       (cons __tmp153126 __tmp153096))))
                (declare (not safe))
                (cons '%#if __tmp153095))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153094 '()))))
                                          (declare (not safe))
                                          (cons __tmp153134 __tmp153093))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp153092))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp153090 _stx151244_))
                         (let ((__tmp153080
                                (let ((__tmp153081
                                       (let ((__tmp153088
                                              (let ((__tmp153089
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp153089)))
                                             (__tmp153082
                                              (let ((__tmp153083
                                                     (let ((__tmp153085
                                                            (let ((__tmp153086
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153087
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self151243_
                                     __slot152121
                                     __t152118
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp153087 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp153086)))
                   (__tmp153084
                    (let () (declare (not safe)) (cons _value151303_ '()))))
               (declare (not safe))
               (cons __tmp153085 __tmp153084))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object151301_
                                                      __tmp153083))))
                                         (declare (not safe))
                                         (cons __tmp153088 __tmp153082))))
                                  (declare (not safe))
                                  (cons '%#call __tmp153081))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp153080
                            _stx151244_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd151255151277_
                                           _hd151252151269_)
                                          (let ()
                                            (declare (not safe))
                                            (_g151247151261_
                                             _g151248151264_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g151247151261_ _g151248151264_)))))
                          (let ()
                            (declare (not safe))
                            (_g151247151261_ _g151248151264_))))))
              (declare (not safe))
              (_g151246151313_ _args151245_))))))
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
      (lambda (_self151077_ _stx151078_ _args151079_)
        (let* ((_self151080151089_ _self151077_)
               (_E151082151093_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self151080151089_))))
               (_K151083151100_
                (lambda (_inline151096_ _dispatch151097_ _arity151098_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self151077_ _args151079_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx151078_
                         _arity151098_)))
                  (if _inline151096_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp153176
                               (let ((__tmp153177
                                      (_inline151096_ _stx151078_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp153177
                                  _stx151078_))))
                          (declare (not safe))
                          (gxc#compile-e__0 __tmp153176)))
                      (if _dispatch151097_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch151097_))
                            (let ((__tmp153171
                                   (let ((__tmp153172
                                          (let ((__tmp153173
                                                 (let ((__tmp153174
                                                        (let ((__tmp153175
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch151097_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp153175))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153174
                                                         _args151079_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp153173))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp153172
                                      _stx151078_))))
                              (declare (not safe))
                              (gxc#compile-e__0 __tmp153171)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _stx151078_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self151080151089_ 'gxc#!lambda::t))
              (let* ((_e151084151103_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151080151089_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e151085151106_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151080151089_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity151109_ _e151085151106_)
                     (_e151086151111_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151080151089_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch151114_ _e151086151111_)
                     (_e151087151116_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151080151089_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline151119_ _e151087151116_))
                (declare (not safe))
                (_K151083151100_
                 _inline151119_
                 _dispatch151114_
                 _arity151109_))
              (let () (declare (not safe)) (_E151082151093_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self150916_ _stx150917_ _args150918_)
        (let* ((_self150919150926_ _self150916_)
               (_E150921150930_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self150919150926_))))
               (_K150922150944_
                (lambda (_clauses150933_)
                  (let ((_$e150939_
                         (let ((__tmp153178
                                (lambda (_g150934150936_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g150934150936_
                                     _args150918_)))))
                           (declare (not safe))
                           (find __tmp153178 _clauses150933_))))
                    (if _$e150939_
                        ((lambda (_clause150942_)
                           (let ((__method152393
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause150942_
                                     'optimize-call))))
                             (if __method152393
                                 (__method152393
                                  _clause150942_
                                  _stx150917_
                                  _args150918_)
                                 (let ()
                                   (declare (not safe))
                                   (error '"Missing method"
                                          _clause150942_
                                          'optimize-call)))))
                         _$e150939_)
                        (let ((__tmp153179
                               (map gxc#!lambda-arity _clauses150933_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx150917_
                           __tmp153179)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self150919150926_
                 'gxc#!case-lambda::t))
              (let* ((_e150923150947_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150919150926_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e150924150950_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150919150926_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses150953_ _e150924150950_))
                (declare (not safe))
                (_K150922150944_ _clauses150953_))
              (let () (declare (not safe)) (_E150921150930_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self150730_ _args150731_)
        (let* ((_self150732150739_ _self150730_)
               (_E150734150743_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self150732150739_))))
               (_K150735150783_
                (lambda (_arity150746_)
                  (let* ((_arity150747150756_ _arity150746_)
                         (_E150750150760_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (error '"No clause matching"
                                     _arity150747150756_)))))
                    (let ((_K150754150780_
                           (lambda ()
                             (fx= (length _args150731_) _arity150746_)))
                          (_K150751150766_
                           (lambda (_arity150764_)
                             (fx>= (length _args150731_) _arity150764_))))
                      (let ((_try-match150749150776_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity150747150756_))
                                   (let ((_tl150753150771_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity150747150756_)))
                                         (_hd150752150769_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity150747150756_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl150753150771_))
                                         (let ((_arity150774_
                                                _hd150752150769_))
                                           (declare (not safe))
                                           (_K150751150766_ _arity150774_))
                                         (let ()
                                           (declare (not safe))
                                           (_E150750150760_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E150750150760_))))))
                        (if (let ()
                              (declare (not safe))
                              (fixnum? _arity150747150756_))
                            (let () (declare (not safe)) (_K150754150780_))
                            (let ()
                              (declare (not safe))
                              (_try-match150749150776_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self150732150739_ 'gxc#!lambda::t))
              (let* ((_e150736150786_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150732150739_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e150737150789_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150732150739_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity150792_ _e150737150789_))
                (declare (not safe))
                (_K150735150783_ _arity150792_))
              (let () (declare (not safe)) (_E150734150743_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self150615_ _stx150616_ _args150617_)
        (let* ((_self150618150626_ _self150615_)
               (_E150620150630_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self150618150626_))))
               (_K150621150714_
                (lambda (_dispatch150633_ _table150634_)
                  (let* ((_g150635150644_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch150633_)))
                         (_else150637150652_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch150633_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _stx150616_))))
                         (_K150639150698_
                          (lambda (_main150655_ _keys150656_)
                            (let ((_g153180_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx150616_
                                      _args150617_))))
                              (begin
                                (let ((_g153181_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g153180_)
                                             (##vector-length _g153180_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g153181_ 2)))
                                      (error "Context expects 2 values"
                                             _g153181_)))
                                (let ((_pargs150658_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g153180_ 0)))
                                      (_kwargs150659_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g153180_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main150655_))
                                    (if _table150634_
                                        (let ((_xargs150666_
                                               (map (lambda (_key150661_)
                                                      (let ((_$e150663_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__0 _key150661_ _kwargs150659_))))
                (if _$e150663_ (values _$e150663_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys150656_)))
                                          (for-each
                                           (lambda (_kw150668_)
                                             (if (memq (car _kw150668_)
                                                       _keys150656_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx150616_
                                                    _keys150656_
                                                    _kw150668_))))
                                           _kwargs150659_)
                                          (let ((__tmp153233
                                                 (let ((__tmp153234
                                                        (let ((__tmp153235
                                                               (let ((__tmp153240
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153241
                                     (let ()
                                       (declare (not safe))
                                       (cons _main150655_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp153241)))
                             (__tmp153236
                              (let ((__tmp153238
                                     (let ((__tmp153239
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp153239)))
                                    (__tmp153237
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs150658_
                                               _xargs150666_))))
                                (declare (not safe))
                                (cons __tmp153238 __tmp153237))))
                         (declare (not safe))
                         (cons __tmp153240 __tmp153236))))
                  (declare (not safe))
                  (cons '%#call __tmp153235))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp153234
                                                    _stx150616_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0 __tmp153233)))
                                        (let* ((_kwt150670_
                                                (let ((__tmp153182
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp153182)))
                                               (_kwvars150673_
                                                (map (lambda (_g153183_)
                                                       (let ((__tmp153184
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp153184)))
                                                     _kwargs150659_))
                                               (_kwbind150678_
                                                (map (lambda (_kw150675_
                                                              _kwvar150676_)
                                                       (let ((__tmp153187
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar150676_ '())))
                     (__tmp153185
                      (let ((__tmp153186 (cdr _kw150675_)))
                        (declare (not safe))
                        (cons __tmp153186 '()))))
                 (declare (not safe))
                 (cons __tmp153187 __tmp153185)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs150659_
                                                     _kwvars150673_))
                                               (_kwset150683_
                                                (map (lambda (_kw150680_
                                                              _kwvar150681_)
                                                       (let ((__tmp153188
                                                              (let ((__tmp153189
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp153197
                                    (let ((__tmp153198
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt150670_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp153198)))
                                   (__tmp153190
                                    (let ((__tmp153194
                                           (let ((__tmp153195
                                                  (let ((__tmp153196
                                                         (car _kw150680_)))
                                                    (declare (not safe))
                                                    (cons __tmp153196 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp153195)))
                                          (__tmp153191
                                           (let ((__tmp153192
                                                  (let ((__tmp153193
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar150681_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp153193))))
                                             (declare (not safe))
                                             (cons __tmp153192 '()))))
                                      (declare (not safe))
                                      (cons __tmp153194 __tmp153191))))
                               (declare (not safe))
                               (cons __tmp153197 __tmp153190))))
                        (declare (not safe))
                        (cons '(%#ref symoblic-table-set!) __tmp153189))))
                 (declare (not safe))
                 (cons '%#call __tmp153188)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs150659_
                                                     _kwvars150673_))
                                               (_xkwargs150688_
                                                (map (lambda (_kw150685_
                                                              _kwvar150686_)
                                                       (let ((__tmp153201
                                                              (car _kw150685_))
                                                             (__tmp153199
                                                              (let ((__tmp153200
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar150686_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp153200))))
                 (declare (not safe))
                 (cons __tmp153201 __tmp153199)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs150659_
                                                     _kwvars150673_))
                                               (_xargs150695_
                                                (map (lambda (_key150690_)
                                                       (let ((_$e150692_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq__0 _key150690_ _xkwargs150688_))))
                 (if _$e150692_ (values _$e150692_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys150656_)))
                                          (let ((__tmp153202
                                                 (let ((__tmp153203
                                                        (let ((__tmp153204
                                                               (let ((__tmp153205
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153206
                                     (let ((__tmp153207
                                            (let ((__tmp153221
                                                   (let ((__tmp153222
                                                          (let ((__tmp153232
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt150670_ '())))
                        (__tmp153223
                         (let ((__tmp153224
                                (let ((__tmp153225
                                       (let ((__tmp153226
                                              (let ((__tmp153227
                                                     (let ((__tmp153229
                                                            (let ((__tmp153230
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153231 (length _kwargs150659_)))
                             (declare (not safe))
                             (cons __tmp153231 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp153230)))
                   (__tmp153228
                    (let () (declare (not safe)) (cons '(%#quote 0) '()))))
               (declare (not safe))
               (cons __tmp153229 __tmp153228))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-symbolic-table)
                                                      __tmp153227))))
                                         (declare (not safe))
                                         (cons '%#call __tmp153226))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp153225
                                   _stx150616_))))
                           (declare (not safe))
                           (cons __tmp153224 '()))))
                    (declare (not safe))
                    (cons __tmp153232 __tmp153223))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153222 '())))
                                                  (__tmp153208
                                                   (let ((__tmp153209
                                                          (let ((__tmp153210
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp153211
                                (let ((__tmp153212
                                       (let ((__tmp153213
                                              (let ((__tmp153214
                                                     (let ((__tmp153219
                                                            (let ((__tmp153220
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main150655_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp153220)))
                   (__tmp153215
                    (let ((__tmp153217
                           (let ((__tmp153218
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt150670_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp153218)))
                          (__tmp153216
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs150658_ _xargs150695_))))
                      (declare (not safe))
                      (cons __tmp153217 __tmp153216))))
               (declare (not safe))
               (cons __tmp153219 __tmp153215))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp153214))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp153213
                                          _stx150616_))))
                                  (declare (not safe))
                                  (cons __tmp153212 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp153211 _kwset150683_))))
                    (declare (not safe))
                    (cons '%#begin __tmp153210))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153209 '()))))
                                              (declare (not safe))
                                              (cons __tmp153221 __tmp153208))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp153207))))
                                (declare (not safe))
                                (cons __tmp153206 '()))))
                         (declare (not safe))
                         (cons _kwbind150678_ __tmp153205))))
                  (declare (not safe))
                  (cons '%#let-values __tmp153204))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp153203
                                                    _stx150616_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0
                                             __tmp153202)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g150635150644_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e150640150701_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g150635150644_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e150641150704_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g150635150644_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys150707_ _e150641150704_)
                               (_e150642150709_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g150635150644_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main150712_ _e150642150709_))
                          (declare (not safe))
                          (_K150639150698_ _main150712_ _keys150707_))
                        (let () (declare (not safe)) (_else150637150652_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self150618150626_
                 'gxc#!kw-lambda::t))
              (let* ((_e150622150717_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150618150626_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e150623150720_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150618150626_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table150723_ _e150623150720_)
                     (_e150624150725_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150618150626_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch150728_ _e150624150725_))
                (declare (not safe))
                (_K150621150714_ _dispatch150728_ _table150723_))
              (let () (declare (not safe)) (_E150620150630_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx150228_ _args150229_)
        (let _lp150231_ ((_rest150233_ _args150229_)
                         (_pargs150234_ '())
                         (_kwargs150235_ '()))
          (let* ((___stx152275152276_ _rest150233_)
                 (_g150241150293_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx152275152276_)))))
            (let ((___kont152277152278_
                   (lambda (_L150472_ _L150473_)
                     (let ((__tmp153242
                            (let ()
                              (declare (not safe))
                              (cons _L150473_ _pargs150234_))))
                       (declare (not safe))
                       (_lp150231_ _L150472_ __tmp153242 _kwargs150235_))))
                  (___kont152279152280_
                   (lambda (_L150418_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L150418_ _pargs150234_))
                             (reverse _kwargs150235_))))
                  (___kont152281152282_
                   (lambda (_L150365_ _L150366_ _L150367_)
                     (let ((_kw150384_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L150367_))))
                       (if (assq _kw150384_ _kwargs150235_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx150228_
                              _kw150384_))
                           (let ((__tmp153243
                                  (let ((__tmp153244
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw150384_ _L150366_))))
                                    (declare (not safe))
                                    (cons __tmp153244 _kwargs150235_))))
                             (declare (not safe))
                             (_lp150231_
                              _L150365_
                              _pargs150234_
                              __tmp153243))))))
                  (___kont152283152284_
                   (lambda (_L150313_ _L150314_)
                     (let ((__tmp153245
                            (let ()
                              (declare (not safe))
                              (cons _L150314_ _pargs150234_))))
                       (declare (not safe))
                       (_lp150231_ _L150313_ __tmp153245 _kwargs150235_))))
                  (___kont152285152286_
                   (lambda ()
                     (values (reverse _pargs150234_)
                             (reverse _kwargs150235_)))))
              (let* ((_g150240150300_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx152275152276_))
                            (___kont152285152286_)
                            (let () (declare (not safe)) (_g150241150293_)))))
                     (___match152382152383_
                      (lambda (_e150274150333_
                               _hd150273150336_
                               _tl150272150338_
                               _e150277150341_
                               _hd150276150344_
                               _tl150275150346_
                               _e150280150349_
                               _hd150279150352_
                               _tl150278150354_
                               _e150283150357_
                               _hd150282150360_
                               _tl150281150362_)
                        (let ((_L150365_ _tl150281150362_)
                              (_L150366_ _hd150282150360_)
                              (_L150367_ _hd150279150352_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L150367_))
                              (___kont152281152282_
                               _L150365_
                               _L150366_
                               _L150367_)
                              (___kont152283152284_
                               _tl150272150338_
                               _hd150273150336_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx152275152276_))
                    (let ((_e150247150437_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx152275152276_))))
                      (let ((_tl150245150442_
                             (let ()
                               (declare (not safe))
                               (##cdr _e150247150437_)))
                            (_hd150246150440_
                             (let ()
                               (declare (not safe))
                               (##car _e150247150437_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd150246150440_))
                            (let ((_e150250150445_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd150246150440_))))
                              (let ((_tl150248150450_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e150250150445_)))
                                    (_hd150249150448_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e150250150445_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd150249150448_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd150249150448_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl150248150450_))
                                            (let ((_e150253150453_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl150248150450_))))
                                              (let ((_tl150251150458_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e150253150453_)))
                                                    (_hd150252150456_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e150253150453_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd150252150456_))
                                                    (let ((_e150254150461_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd150252150456_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e150254150461_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl150251150458_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl150245150442_))
                          (let ((_e150257150464_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl150245150442_))))
                            (let ((_tl150255150469_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e150257150464_)))
                                  (_hd150256150467_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e150257150464_))))
                              (___kont152277152278_
                               _tl150255150469_
                               _hd150256150467_)))
                          (___kont152283152284_
                           _tl150245150442_
                           _hd150246150440_))
                      (___kont152283152284_ _tl150245150442_ _hd150246150440_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e150254150461_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl150251150458_))
                          (___kont152279152280_ _tl150245150442_)
                          (___kont152283152284_
                           _tl150245150442_
                           _hd150246150440_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl150251150458_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl150245150442_))
                              (let ((_e150283150357_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl150245150442_))))
                                (let ((_tl150281150362_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e150283150357_)))
                                      (_hd150282150360_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e150283150357_))))
                                  (___match152382152383_
                                   _e150247150437_
                                   _hd150246150440_
                                   _tl150245150442_
                                   _e150250150445_
                                   _hd150249150448_
                                   _tl150248150450_
                                   _e150253150453_
                                   _hd150252150456_
                                   _tl150251150458_
                                   _e150283150357_
                                   _hd150282150360_
                                   _tl150281150362_)))
                              (___kont152283152284_
                               _tl150245150442_
                               _hd150246150440_))
                          (___kont152283152284_
                           _tl150245150442_
                           _hd150246150440_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl150251150458_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl150245150442_))
                                                            (let ((_e150283150357_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl150245150442_))))
                      (let ((_tl150281150362_
                             (let ()
                               (declare (not safe))
                               (##cdr _e150283150357_)))
                            (_hd150282150360_
                             (let ()
                               (declare (not safe))
                               (##car _e150283150357_))))
                        (___match152382152383_
                         _e150247150437_
                         _hd150246150440_
                         _tl150245150442_
                         _e150250150445_
                         _hd150249150448_
                         _tl150248150450_
                         _e150253150453_
                         _hd150252150456_
                         _tl150251150458_
                         _e150283150357_
                         _hd150282150360_
                         _tl150281150362_)))
                    (___kont152283152284_ _tl150245150442_ _hd150246150440_))
                (___kont152283152284_ _tl150245150442_ _hd150246150440_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont152283152284_
                                             _tl150245150442_
                                             _hd150246150440_))
                                        (___kont152283152284_
                                         _tl150245150442_
                                         _hd150246150440_))
                                    (___kont152283152284_
                                     _tl150245150442_
                                     _hd150246150440_))))
                            (___kont152283152284_
                             _tl150245150442_
                             _hd150246150440_))))
                    (let () (declare (not safe)) (_g150240150300_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self150224_ _stx150225_ _args150226_)
        (let () (declare (not safe)) (gxc#xform-call% _stx150225_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
