(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1707423046)
  (begin
    (define gxc#&optimize-call
      (make-promise
       (lambda ()
         (let ((_tbl265888_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp270373 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl265888_ __tmp270373))
           (let ()
             (declare (not safe))
             (table-set! _tbl265888_ '%#call gxc#optimize-call%))
           _tbl265888_))))
    (define gxc#apply-optimize-call
      (lambda (_stx265871_ . _args265873_)
        (let ((__tmp270375
               (lambda ()
                 (declare (not safe))
                 (if (null? _args265873_)
                     (gxc#compile-e__0 _stx265871_)
                     (let ((_arg1265878_ (car _args265873_))
                           (_rest265880_ (cdr _args265873_)))
                       (if (null? _rest265880_)
                           (gxc#compile-e__1 _stx265871_ _arg1265878_)
                           (let ((_arg2265883_ (car _rest265880_))
                                 (_rest265885_ (cdr _rest265880_)))
                             (if (null? _rest265885_)
                                 (gxc#compile-e__2
                                  _stx265871_
                                  _arg1265878_
                                  _arg2265883_)
                                 (apply gxc#compile-e
                                        _stx265871_
                                        _arg1265878_
                                        _arg2265883_
                                        _rest265885_))))))))
              (__tmp270374 (force gxc#&optimize-call)))
          (declare (not safe))
          (call-with-parameters
           __tmp270375
           gxc#current-compile-methods
           __tmp270374))))
    (define gxc#optimize-call%
      (lambda (_stx265726_)
        (let* ((___stx270123270124_ _stx265726_)
               (_g265729265749_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx270123270124_)))))
          (let ((___kont270125270126_
                 (lambda (_L265793_ _L265794_)
                   (let* ((_rator-id265812_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L265794_)))
                          (_rator-type265814_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id265812_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type265814_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp270376
                                  (##structure-ref
                                   _rator-type265814_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id265812_
                              '" => "
                              _rator-type265814_
                              '" "
                              __tmp270376))
                           (let ((_optimized265817_
                                  (let ((__method270371
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type265814_
                                            'optimize-call))))
                                    (if __method270371
                                        (__method270371
                                         _rator-type265814_
                                         _stx265726_
                                         _L265793_)
                                        (error '"Missing method"
                                               _rator-type265814_
                                               'optimize-call)))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type265814_))
                                 _optimized265817_
                                 (let* ((___stx270105270106_ _optimized265817_)
                                        (_g265820265830_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx270105270106_)))))
                                   (let ((___kont270107270108_
                                          (lambda (_L265850_)
                                            (let ((__tmp270377
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L265850_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp270377
                                               _stx265726_))))
                                         (___kont270109270110_
                                          (lambda () _optimized265817_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx270105270106_))
                                         (let ((_e265825265842_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx270105270106_))))
                                           (let ((_tl265823265847_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e265825265842_)))
                                                 (_hd265824265845_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e265825265842_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd265824265845_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd265824265845_))
                                                     (___kont270107270108_
                                                      _tl265823265847_)
                                                     (___kont270109270110_))
                                                 (___kont270109270110_))))
                                         (___kont270109270110_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type265814_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx265726_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx265726_
                                _rator-type265814_)))))))
                (___kont270127270128_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _stx265726_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx270123270124_))
                (let ((_e265735265761_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx270123270124_))))
                  (let ((_tl265733265766_
                         (let () (declare (not safe)) (##cdr _e265735265761_)))
                        (_hd265734265764_
                         (let ()
                           (declare (not safe))
                           (##car _e265735265761_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl265733265766_))
                        (let ((_e265738265769_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl265733265766_))))
                          (let ((_tl265736265774_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e265738265769_)))
                                (_hd265737265772_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e265738265769_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd265737265772_))
                                (let ((_e265741265777_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd265737265772_))))
                                  (let ((_tl265739265782_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e265741265777_)))
                                        (_hd265740265780_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e265741265777_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd265740265780_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd265740265780_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl265739265782_))
                                                (let ((_e265744265785_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl265739265782_))))
                                                  (let ((_tl265742265790_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e265744265785_)))
                                                        (_hd265743265788_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e265744265785_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl265742265790_))
                                                        (___kont270125270126_
                                                         _tl265736265774_
                                                         _hd265743265788_)
                                                        (___kont270127270128_))))
                                                (___kont270127270128_))
                                            (___kont270127270128_))
                                        (___kont270127270128_))))
                                (___kont270127270128_))))
                        (___kont270127270128_))))
                (___kont270127270128_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self265680_ _stx265681_ _args265682_)
        (let* ((_g265684265694_
                (lambda (_g265685265691_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g265685265691_))))
               (_g265683265723_
                (lambda (_g265685265697_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g265685265697_))
                      (let ((_e265689265699_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g265685265697_))))
                        (let ((_hd265688265702_
                               (let ()
                                 (declare (not safe))
                                 (##car _e265689265699_)))
                              (_tl265687265704_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e265689265699_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl265687265704_))
                              ((lambda (_L265707_)
                                 (let* ((_klass265718_
                                         (let ((__tmp270378
                                                (##structure-ref
                                                 _self265680_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx265681_
                                            __tmp270378)))
                                        (_object265720_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L265707_))))
                                   (if (##structure-ref
                                        _klass265718_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp270394
                                              (let ((__tmp270395
                                                     (let ((__tmp270397
                                                            (let ((__tmp270398
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp270399
                                  (##structure-ref
                                   _klass265718_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp270399 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp270398)))
                   (__tmp270396
                    (let () (declare (not safe)) (cons _object265720_ '()))))
               (declare (not safe))
               (cons __tmp270397 __tmp270396))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp270395))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp270394
                                          _stx265681_))
                                       (if (##structure-ref
                                            _klass265718_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp270388
                                                  (let ((__tmp270389
                                                         (let ((__tmp270391
                                                                (let ((__tmp270392
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp270393
                                      (##structure-ref
                                       _klass265718_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp270393 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp270392)))
                       (__tmp270390
                        (let ()
                          (declare (not safe))
                          (cons _object265720_ '()))))
                   (declare (not safe))
                   (cons __tmp270391 __tmp270390))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp270389))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp270388
                                              _stx265681_))
                                           (let ((__tmp270379
                                                  (let ((__tmp270380
                                                         (let ((__tmp270386
                                                                (let ((__tmp270387
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp270387)))
                       (__tmp270381
                        (let ((__tmp270383
                               (let ((__tmp270384
                                      (let ((__tmp270385
                                             (##structure-ref
                                              _self265680_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp270385 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp270384)))
                              (__tmp270382
                               (let ()
                                 (declare (not safe))
                                 (cons _object265720_ '()))))
                          (declare (not safe))
                          (cons __tmp270383 __tmp270382))))
                   (declare (not safe))
                   (cons __tmp270386 __tmp270381))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp270380))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp270379
                                              _stx265681_))))))
                               _hd265688265702_)
                              (let ()
                                (declare (not safe))
                                (_g265684265694_ _g265685265697_)))))
                      (let ()
                        (declare (not safe))
                        (_g265684265694_ _g265685265697_))))))
          (declare (not safe))
          (_g265683265723_ _args265682_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__t270084)
        (let ((__id270085
               (let ((__tmp270086
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t270084 'id))))
                 (if __tmp270086 __tmp270086 (error '"Unknown slot" 'id)))))
          (lambda (_self265680_ _stx265681_ _args265682_)
            (let* ((_g265684265694_
                    (lambda (_g265685265691_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g265685265691_))))
                   (_g265683265723_
                    (lambda (_g265685265697_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g265685265697_))
                          (let ((_e265689265699_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g265685265697_))))
                            (let ((_hd265688265702_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e265689265699_)))
                                  (_tl265687265704_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e265689265699_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl265687265704_))
                                  ((lambda (_L265707_)
                                     (let* ((_klass265718_
                                             (let ((__tmp270400
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self265680_
                                                       __id270085
                                                       __t270084
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx265681_
                                                __tmp270400)))
                                            (_object265720_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L265707_))))
                                       (if (##structure-ref
                                            _klass265718_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp270416
                                                  (let ((__tmp270417
                                                         (let ((__tmp270419
                                                                (let ((__tmp270420
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp270421
                                      (##structure-ref
                                       _klass265718_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp270421 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp270420)))
                       (__tmp270418
                        (let ()
                          (declare (not safe))
                          (cons _object265720_ '()))))
                   (declare (not safe))
                   (cons __tmp270419 __tmp270418))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp270417))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp270416
                                              _stx265681_))
                                           (if (##structure-ref
                                                _klass265718_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp270410
                                                      (let ((__tmp270411
                                                             (let ((__tmp270413
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp270414
                                   (let ((__tmp270415
                                          (##structure-ref
                                           _klass265718_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp270415 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp270414)))
                           (__tmp270412
                            (let ()
                              (declare (not safe))
                              (cons _object265720_ '()))))
                       (declare (not safe))
                       (cons __tmp270413 __tmp270412))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp270411))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp270410
                                                  _stx265681_))
                                               (let ((__tmp270401
                                                      (let ((__tmp270402
                                                             (let ((__tmp270408
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp270409
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp270409)))
                           (__tmp270403
                            (let ((__tmp270405
                                   (let ((__tmp270406
                                          (let ((__tmp270407
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self265680_
                                                    __id270085
                                                    __t270084
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp270407 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp270406)))
                                  (__tmp270404
                                   (let ()
                                     (declare (not safe))
                                     (cons _object265720_ '()))))
                              (declare (not safe))
                              (cons __tmp270405 __tmp270404))))
                       (declare (not safe))
                       (cons __tmp270408 __tmp270403))))
                (declare (not safe))
                (cons '%#call __tmp270402))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp270401
                                                  _stx265681_))))))
                                   _hd265688265702_)
                                  (let ()
                                    (declare (not safe))
                                    (_g265684265694_ _g265685265697_)))))
                          (let ()
                            (declare (not safe))
                            (_g265684265694_ _g265685265697_))))))
              (declare (not safe))
              (_g265683265723_ _args265682_))))))
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
      (lambda (_self265414_ _stx265415_ _args265416_)
        (let* ((_klass265418_
                (let ((__tmp270422
                       (##structure-ref _self265414_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx265415_ __tmp270422)))
               (_fields265420_
                (let ((__tmp270423
                       (length (##structure-ref
                                _klass265418_
                                '5
                                gxc#!class::t
                                '#f))))
                  (declare (not safe))
                  (fx+ __tmp270423 '1)))
               (_args265422_ (map gxc#compile-e _args265416_)))
          (let ((_$e265425_
                 (##structure-ref _klass265418_ '6 gxc#!class::t '#f)))
            (if _$e265425_
                ((lambda (_ctor265428_)
                   (let ((_$obj265430_
                          (let ((__tmp270507 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp270507)))
                         (_ctor-impl265431_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass265418_
                             _ctor265428_))))
                     (let ((__tmp270508
                            (let ((__tmp270509
                                   (let ((__tmp270574
                                          (let ((__tmp270575
                                                 (let ((__tmp270588
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj265430_
                                                                '())))
                                                       (__tmp270576
                                                        (let ((__tmp270577
                                                               (let ((__tmp270578
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp270586
                                     (let ((__tmp270587
                                            (let ()
                                              (declare (not safe))
                                              (cons 'make-object* '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp270587)))
                                    (__tmp270579
                                     (let ((__tmp270583
                                            (let ((__tmp270584
                                                   (let ((__tmp270585
                                                          (##structure-ref
                                                           _self265414_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp270585 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp270584)))
                                           (__tmp270580
                                            (let ((__tmp270581
                                                   (let ((__tmp270582
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _fields265420_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#quote
                                                           __tmp270582))))
                                              (declare (not safe))
                                              (cons __tmp270581 '()))))
                                       (declare (not safe))
                                       (cons __tmp270583 __tmp270580))))
                                (declare (not safe))
                                (cons __tmp270586 __tmp270579))))
                         (declare (not safe))
                         (cons '%#call __tmp270578))))
                  (declare (not safe))
                  (cons __tmp270577 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp270588
                                                         __tmp270576))))
                                            (declare (not safe))
                                            (cons __tmp270575 '())))
                                         (__tmp270510
                                          (let ((__tmp270511
                                                 (let ((__tmp270512
                                                        (let ((__tmp270516
                                                               (if _ctor-impl265431_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp270568
                                  (let ((__tmp270572
                                         (let ((__tmp270573
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl265431_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp270573)))
                                        (__tmp270569
                                         (let ((__tmp270570
                                                (let ((__tmp270571
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj265430_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp270571))))
                                           (declare (not safe))
                                           (cons __tmp270570 _args265422_))))
                                    (declare (not safe))
                                    (cons __tmp270572 __tmp270569))))
                             (declare (not safe))
                             (cons '%#call __tmp270568))
                           (let* ((_$ctor265433_
                                   (let ((__tmp270517 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp270517)))
                                  (__tmp270518
                                   (let ((__tmp270553
                                          (let ((__tmp270554
                                                 (let ((__tmp270567
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor265433_
                                                                '())))
                                                       (__tmp270555
                                                        (let ((__tmp270556
                                                               (let ((__tmp270557
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp270565
                                     (let ((__tmp270566
                                            (let ()
                                              (declare (not safe))
                                              (cons 'find-method '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp270566)))
                                    (__tmp270558
                                     (let ((__tmp270562
                                            (let ((__tmp270563
                                                   (let ((__tmp270564
                                                          (##structure-ref
                                                           _self265414_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp270564 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp270563)))
                                           (__tmp270559
                                            (let ((__tmp270560
                                                   (let ((__tmp270561
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _ctor265428_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#quote
                                                           __tmp270561))))
                                              (declare (not safe))
                                              (cons __tmp270560 '()))))
                                       (declare (not safe))
                                       (cons __tmp270562 __tmp270559))))
                                (declare (not safe))
                                (cons __tmp270565 __tmp270558))))
                         (declare (not safe))
                         (cons '%#call __tmp270557))))
                  (declare (not safe))
                  (cons __tmp270556 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp270567
                                                         __tmp270555))))
                                            (declare (not safe))
                                            (cons __tmp270554 '())))
                                         (__tmp270519
                                          (let ((__tmp270520
                                                 (let ((__tmp270521
                                                        (let ((__tmp270551
                                                               (let ((__tmp270552
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor265433_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp270552)))
                      (__tmp270522
                       (let ((__tmp270544
                              (let ((__tmp270545
                                     (let ((__tmp270549
                                            (let ((__tmp270550
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor265433_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp270550)))
                                           (__tmp270546
                                            (let ((__tmp270547
                                                   (let ((__tmp270548
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj265430_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp270548))))
                                              (declare (not safe))
                                              (cons __tmp270547
                                                    _args265422_))))
                                       (declare (not safe))
                                       (cons __tmp270549 __tmp270546))))
                                (declare (not safe))
                                (cons '%#call __tmp270545)))
                             (__tmp270523
                              (let ((__tmp270524
                                     (let ((__tmp270525
                                            (let ((__tmp270542
                                                   (let ((__tmp270543
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp270543)))
                                                  (__tmp270526
                                                   (let ((__tmp270540
                                                          (let ((__tmp270541
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp270541)))
                 (__tmp270527
                  (let ((__tmp270538
                         (let ((__tmp270539
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp270539)))
                        (__tmp270528
                         (let ((__tmp270535
                                (let ((__tmp270536
                                       (let ((__tmp270537
                                              (##structure-ref
                                               _self265414_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp270537 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp270536)))
                               (__tmp270529
                                (let ((__tmp270533
                                       (let ((__tmp270534
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp270534)))
                                      (__tmp270530
                                       (let ((__tmp270531
                                              (let ((__tmp270532
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor265428_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp270532))))
                                         (declare (not safe))
                                         (cons __tmp270531 '()))))
                                  (declare (not safe))
                                  (cons __tmp270533 __tmp270530))))
                           (declare (not safe))
                           (cons __tmp270535 __tmp270529))))
                    (declare (not safe))
                    (cons __tmp270538 __tmp270528))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp270540
                                                           __tmp270527))))
                                              (declare (not safe))
                                              (cons __tmp270542 __tmp270526))))
                                       (declare (not safe))
                                       (cons '%#call __tmp270525))))
                                (declare (not safe))
                                (cons __tmp270524 '()))))
                         (declare (not safe))
                         (cons __tmp270544 __tmp270523))))
                  (declare (not safe))
                  (cons __tmp270551 __tmp270522))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp270521))))
                                            (declare (not safe))
                                            (cons __tmp270520 '()))))
                                     (declare (not safe))
                                     (cons __tmp270553 __tmp270519))))
                             (declare (not safe))
                             (cons '%#let-values __tmp270518))))
                      (__tmp270513
                       (let ((__tmp270514
                              (let ((__tmp270515
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj265430_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp270515))))
                         (declare (not safe))
                         (cons __tmp270514 '()))))
                  (declare (not safe))
                  (cons __tmp270516 __tmp270513))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp270512))))
                                            (declare (not safe))
                                            (cons __tmp270511 '()))))
                                     (declare (not safe))
                                     (cons __tmp270574 __tmp270510))))
                              (declare (not safe))
                              (cons '%#let-values __tmp270509))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp270508 _stx265415_))))
                 _$e265425_)
                (if (##structure-ref _klass265418_ '7 gxc#!class::t '#f)
                    (if (fx= (length _args265422_)
                             (let ()
                               (declare (not safe))
                               (fx- _fields265420_ '1)))
                        (let ((__tmp270499
                               (let ((__tmp270500
                                      (let ((__tmp270505
                                             (let ((__tmp270506
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '##structure
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp270506)))
                                            (__tmp270501
                                             (let ((__tmp270502
                                                    (let ((__tmp270503
                                                           (let ((__tmp270504
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##structure-ref _self265414_ '1 gxc#!type::t '#f)))
                     (declare (not safe))
                     (cons __tmp270504 '()))))
              (declare (not safe))
              (cons '%#ref __tmp270503))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp270502
                                                     _args265422_))))
                                        (declare (not safe))
                                        (cons __tmp270505 __tmp270501))))
                                 (declare (not safe))
                                 (cons '%#call __tmp270500))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp270499 _stx265415_))
                        (let ((__tmp270498
                               (##structure-ref
                                _self265414_
                                '1
                                gxc#!type::t
                                '#f))
                              (__tmp270497
                               (length (##structure-ref
                                        _klass265418_
                                        '5
                                        gxc#!class::t
                                        '#f))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"illegal struct constructor application; arity mismatch"
                           _stx265415_
                           __tmp270498
                           __tmp270497)))
                    (let ((_$obj265435_
                           (let ((__tmp270424 (gensym '__obj)))
                             (declare (not safe))
                             (make-symbol__0 __tmp270424))))
                      (let _lp265437_ ((_rest265439_ _args265422_)
                                       (_initializers265440_ '()))
                        (let* ((___stx270161270162_ _rest265439_)
                               (_g265444265465_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     ___stx270161270162_)))))
                          (let ((___kont270163270164_
                                 (lambda (_L265519_ _L265520_ _L265521_)
                                   (let* ((_slot265550_
                                           (keyword->symbol
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _L265521_))))
                                          (_off265552_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!class-slot->field-offset
                                              _klass265418_
                                              _slot265550_))))
                                     (if _off265552_
                                         (let ((__tmp270426
                                                (let ((__tmp270427
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _off265552_
                                                               _L265520_))))
                                                  (declare (not safe))
                                                  (cons __tmp270427
                                                        _initializers265440_))))
                                           (declare (not safe))
                                           (_lp265437_ _L265519_ __tmp270426))
                                         (let ((__tmp270425
                                                (##structure-ref
                                                 _self265414_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#raise-compile-error
                                            '"unknown slot"
                                            _stx265415_
                                            __tmp270425
                                            _slot265550_))))))
                                (___kont270165270166_
                                 (lambda ()
                                   (let ((__tmp270428
                                          (let ((__tmp270429
                                                 (let ((__tmp270452
                                                        (let ((__tmp270453
                                                               (let ((__tmp270466
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$obj265435_ '())))
                             (__tmp270454
                              (let ((__tmp270455
                                     (let ((__tmp270456
                                            (let ((__tmp270464
                                                   (let ((__tmp270465
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'make-object*
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp270465)))
                                                  (__tmp270457
                                                   (let ((__tmp270461
                                                          (let ((__tmp270462
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp270463
                                (##structure-ref
                                 _self265414_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp270463 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp270462)))
                 (__tmp270458
                  (let ((__tmp270459
                         (let ((__tmp270460
                                (let ()
                                  (declare (not safe))
                                  (cons _fields265420_ '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp270460))))
                    (declare (not safe))
                    (cons __tmp270459 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp270461
                                                           __tmp270458))))
                                              (declare (not safe))
                                              (cons __tmp270464 __tmp270457))))
                                       (declare (not safe))
                                       (cons '%#call __tmp270456))))
                                (declare (not safe))
                                (cons __tmp270455 '()))))
                         (declare (not safe))
                         (cons __tmp270466 __tmp270454))))
                  (declare (not safe))
                  (cons __tmp270453 '())))
               (__tmp270430
                (let ((__tmp270431
                       (let ((__tmp270432
                              (let ((__tmp270449
                                     (let ((__tmp270450
                                            (let ((__tmp270451
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$obj265435_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp270451))))
                                       (declare (not safe))
                                       (cons __tmp270450 '())))
                                    (__tmp270433
                                     (let ((__tmp270434
                                            (lambda (_i265479_ _r265480_)
                                              (let ((__tmp270435
                                                     (let ((__tmp270436
                                                            (let ((__tmp270446
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp270447
                                  (let ((__tmp270448
                                         (##structure-ref
                                          _self265414_
                                          '1
                                          gxc#!type::t
                                          '#f)))
                                    (declare (not safe))
                                    (cons __tmp270448 '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp270447)))
                          (__tmp270437
                           (let ((__tmp270443
                                  (let ((__tmp270444
                                         (let ((__tmp270445 (car _i265479_)))
                                           (declare (not safe))
                                           (cons __tmp270445 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp270444)))
                                 (__tmp270438
                                  (let ((__tmp270441
                                         (let ((__tmp270442
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj265435_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp270442)))
                                        (__tmp270439
                                         (let ((__tmp270440 (cdr _i265479_)))
                                           (declare (not safe))
                                           (cons __tmp270440 '()))))
                                    (declare (not safe))
                                    (cons __tmp270441 __tmp270439))))
                             (declare (not safe))
                             (cons __tmp270443 __tmp270438))))
                      (declare (not safe))
                      (cons __tmp270446 __tmp270437))))
               (declare (not safe))
               (cons '%#struct-unchecked-set! __tmp270436))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp270435
                                                      _r265480_)))))
                                       (declare (not safe))
                                       (foldl1 __tmp270434
                                               '()
                                               _initializers265440_))))
                                (declare (not safe))
                                (foldr1 cons __tmp270449 __tmp270433))))
                         (declare (not safe))
                         (cons '%#begin __tmp270432))))
                  (declare (not safe))
                  (cons __tmp270431 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp270452
                                                         __tmp270430))))
                                            (declare (not safe))
                                            (cons '%#let-values __tmp270429))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp270428
                                      _stx265415_))))
                                (___kont270167270168_
                                 (lambda ()
                                   (let ((__tmp270467
                                          (let ((__tmp270468
                                                 (let ((__tmp270482
                                                        (let ((__tmp270483
                                                               (let ((__tmp270496
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$obj265435_ '())))
                             (__tmp270484
                              (let ((__tmp270485
                                     (let ((__tmp270486
                                            (let ((__tmp270494
                                                   (let ((__tmp270495
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'make-object*
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp270495)))
                                                  (__tmp270487
                                                   (let ((__tmp270491
                                                          (let ((__tmp270492
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp270493
                                (##structure-ref
                                 _self265414_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp270493 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp270492)))
                 (__tmp270488
                  (let ((__tmp270489
                         (let ((__tmp270490
                                (let ()
                                  (declare (not safe))
                                  (cons _fields265420_ '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp270490))))
                    (declare (not safe))
                    (cons __tmp270489 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp270491
                                                           __tmp270488))))
                                              (declare (not safe))
                                              (cons __tmp270494 __tmp270487))))
                                       (declare (not safe))
                                       (cons '%#call __tmp270486))))
                                (declare (not safe))
                                (cons __tmp270485 '()))))
                         (declare (not safe))
                         (cons __tmp270496 __tmp270484))))
                  (declare (not safe))
                  (cons __tmp270483 '())))
               (__tmp270469
                (let ((__tmp270470
                       (let ((__tmp270471
                              (let ((__tmp270475
                                     (let ((__tmp270476
                                            (let ((__tmp270480
                                                   (let ((__tmp270481
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'class-instance-init!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp270481)))
                                                  (__tmp270477
                                                   (let ((__tmp270478
                                                          (let ((__tmp270479
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj265435_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp270479))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp270478
                                                           _args265422_))))
                                              (declare (not safe))
                                              (cons __tmp270480 __tmp270477))))
                                       (declare (not safe))
                                       (cons '%#call __tmp270476)))
                                    (__tmp270472
                                     (let ((__tmp270473
                                            (let ((__tmp270474
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$obj265435_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp270474))))
                                       (declare (not safe))
                                       (cons __tmp270473 '()))))
                                (declare (not safe))
                                (cons __tmp270475 __tmp270472))))
                         (declare (not safe))
                         (cons '%#begin __tmp270471))))
                  (declare (not safe))
                  (cons __tmp270470 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp270482
                                                         __tmp270469))))
                                            (declare (not safe))
                                            (cons '%#let-values __tmp270468))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp270467
                                      _stx265415_)))))
                            (let* ((_g265442265482_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? ___stx270161270162_))
                                          (___kont270165270166_)
                                          (___kont270167270168_))))
                                   (___match270198270199_
                                    (lambda (_e265451265487_
                                             _hd265450265490_
                                             _tl265449265492_
                                             _e265454265495_
                                             _hd265453265498_
                                             _tl265452265500_
                                             _e265457265503_
                                             _hd265456265506_
                                             _tl265455265508_
                                             _e265460265511_
                                             _hd265459265514_
                                             _tl265458265516_)
                                      (let ((_L265519_ _tl265458265516_)
                                            (_L265520_ _hd265459265514_)
                                            (_L265521_ _hd265456265506_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-keyword? _L265521_))
                                            (___kont270163270164_
                                             _L265519_
                                             _L265520_
                                             _L265521_)
                                            (___kont270167270168_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? ___stx270161270162_))
                                  (let ((_e265451265487_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e ___stx270161270162_))))
                                    (let ((_tl265449265492_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e265451265487_)))
                                          (_hd265450265490_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e265451265487_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd265450265490_))
                                          (let ((_e265454265495_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd265450265490_))))
                                            (let ((_tl265452265500_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e265454265495_)))
                                                  (_hd265453265498_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e265454265495_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd265453265498_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#quote
                                                         _hd265453265498_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl265452265500_))
                                                          (let ((_e265457265503_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl265452265500_))))
                    (let ((_tl265455265508_
                           (let ()
                             (declare (not safe))
                             (##cdr _e265457265503_)))
                          (_hd265456265506_
                           (let ()
                             (declare (not safe))
                             (##car _e265457265503_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl265455265508_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl265449265492_))
                              (let ((_e265460265511_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl265449265492_))))
                                (let ((_tl265458265516_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e265460265511_)))
                                      (_hd265459265514_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e265460265511_))))
                                  (___match270198270199_
                                   _e265451265487_
                                   _hd265450265490_
                                   _tl265449265492_
                                   _e265454265495_
                                   _hd265453265498_
                                   _tl265452265500_
                                   _e265457265503_
                                   _hd265456265506_
                                   _tl265455265508_
                                   _e265460265511_
                                   _hd265459265514_
                                   _tl265458265516_)))
                              (___kont270167270168_))
                          (___kont270167270168_))))
                  (___kont270167270168_))
              (___kont270167270168_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont270167270168_))))
                                          (___kont270167270168_))))
                                  (let ()
                                    (declare (not safe))
                                    (_g265442265482_))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__t270087)
        (let ((__id270088
               (let ((__tmp270089
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t270087 'id))))
                 (if __tmp270089 __tmp270089 (error '"Unknown slot" 'id)))))
          (lambda (_self265414_ _stx265415_ _args265416_)
            (let* ((_klass265418_
                    (let ((__tmp270589
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self265414_
                              __id270088
                              __t270087
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx265415_ __tmp270589)))
                   (_fields265420_
                    (let ((__tmp270590
                           (length (##structure-ref
                                    _klass265418_
                                    '5
                                    gxc#!class::t
                                    '#f))))
                      (declare (not safe))
                      (fx+ __tmp270590 '1)))
                   (_args265422_ (map gxc#compile-e _args265416_)))
              (let ((_$e265425_
                     (##structure-ref _klass265418_ '6 gxc#!class::t '#f)))
                (if _$e265425_
                    ((lambda (_ctor265428_)
                       (let ((_$obj265430_
                              (let ((__tmp270674 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp270674)))
                             (_ctor-impl265431_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass265418_
                                 _ctor265428_))))
                         (let ((__tmp270675
                                (let ((__tmp270676
                                       (let ((__tmp270741
                                              (let ((__tmp270742
                                                     (let ((__tmp270755
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj265430_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp270743
                    (let ((__tmp270744
                           (let ((__tmp270745
                                  (let ((__tmp270753
                                         (let ((__tmp270754
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'make-object* '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp270754)))
                                        (__tmp270746
                                         (let ((__tmp270750
                                                (let ((__tmp270751
                                                       (let ((__tmp270752
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self265414_
                         __id270088
                         __t270087
                         '#f))))
                 (declare (not safe))
                 (cons __tmp270752 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp270751)))
                                               (__tmp270747
                                                (let ((__tmp270748
                                                       (let ((__tmp270749
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _fields265420_ '()))))
                 (declare (not safe))
                 (cons '%#quote __tmp270749))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp270748 '()))))
                                           (declare (not safe))
                                           (cons __tmp270750 __tmp270747))))
                                    (declare (not safe))
                                    (cons __tmp270753 __tmp270746))))
                             (declare (not safe))
                             (cons '%#call __tmp270745))))
                      (declare (not safe))
                      (cons __tmp270744 '()))))
               (declare (not safe))
               (cons __tmp270755 __tmp270743))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp270742 '())))
                                             (__tmp270677
                                              (let ((__tmp270678
                                                     (let ((__tmp270679
                                                            (let ((__tmp270683
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl265431_
                               (let ((__tmp270735
                                      (let ((__tmp270739
                                             (let ((__tmp270740
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl265431_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp270740)))
                                            (__tmp270736
                                             (let ((__tmp270737
                                                    (let ((__tmp270738
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj265430_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp270738))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp270737
                                                     _args265422_))))
                                        (declare (not safe))
                                        (cons __tmp270739 __tmp270736))))
                                 (declare (not safe))
                                 (cons '%#call __tmp270735))
                               (let* ((_$ctor265433_
                                       (let ((__tmp270684
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp270684)))
                                      (__tmp270685
                                       (let ((__tmp270720
                                              (let ((__tmp270721
                                                     (let ((__tmp270734
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor265433_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp270722
                    (let ((__tmp270723
                           (let ((__tmp270724
                                  (let ((__tmp270732
                                         (let ((__tmp270733
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'find-method '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp270733)))
                                        (__tmp270725
                                         (let ((__tmp270729
                                                (let ((__tmp270730
                                                       (let ((__tmp270731
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self265414_
                         __id270088
                         __t270087
                         '#f))))
                 (declare (not safe))
                 (cons __tmp270731 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp270730)))
                                               (__tmp270726
                                                (let ((__tmp270727
                                                       (let ((__tmp270728
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _ctor265428_ '()))))
                 (declare (not safe))
                 (cons '%#quote __tmp270728))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp270727 '()))))
                                           (declare (not safe))
                                           (cons __tmp270729 __tmp270726))))
                                    (declare (not safe))
                                    (cons __tmp270732 __tmp270725))))
                             (declare (not safe))
                             (cons '%#call __tmp270724))))
                      (declare (not safe))
                      (cons __tmp270723 '()))))
               (declare (not safe))
               (cons __tmp270734 __tmp270722))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp270721 '())))
                                             (__tmp270686
                                              (let ((__tmp270687
                                                     (let ((__tmp270688
                                                            (let ((__tmp270718
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp270719
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor265433_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp270719)))
                          (__tmp270689
                           (let ((__tmp270711
                                  (let ((__tmp270712
                                         (let ((__tmp270716
                                                (let ((__tmp270717
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor265433_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp270717)))
                                               (__tmp270713
                                                (let ((__tmp270714
                                                       (let ((__tmp270715
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj265430_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp270715))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp270714
                                                        _args265422_))))
                                           (declare (not safe))
                                           (cons __tmp270716 __tmp270713))))
                                    (declare (not safe))
                                    (cons '%#call __tmp270712)))
                                 (__tmp270690
                                  (let ((__tmp270691
                                         (let ((__tmp270692
                                                (let ((__tmp270709
                                                       (let ((__tmp270710
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp270710)))
              (__tmp270693
               (let ((__tmp270707
                      (let ((__tmp270708
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp270708)))
                     (__tmp270694
                      (let ((__tmp270705
                             (let ((__tmp270706
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp270706)))
                            (__tmp270695
                             (let ((__tmp270702
                                    (let ((__tmp270703
                                           (let ((__tmp270704
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self265414_
                                                     __id270088
                                                     __t270087
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp270704 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp270703)))
                                   (__tmp270696
                                    (let ((__tmp270700
                                           (let ((__tmp270701
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp270701)))
                                          (__tmp270697
                                           (let ((__tmp270698
                                                  (let ((__tmp270699
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor265428_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp270699))))
                                             (declare (not safe))
                                             (cons __tmp270698 '()))))
                                      (declare (not safe))
                                      (cons __tmp270700 __tmp270697))))
                               (declare (not safe))
                               (cons __tmp270702 __tmp270696))))
                        (declare (not safe))
                        (cons __tmp270705 __tmp270695))))
                 (declare (not safe))
                 (cons __tmp270707 __tmp270694))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp270709
                                                        __tmp270693))))
                                           (declare (not safe))
                                           (cons '%#call __tmp270692))))
                                    (declare (not safe))
                                    (cons __tmp270691 '()))))
                             (declare (not safe))
                             (cons __tmp270711 __tmp270690))))
                      (declare (not safe))
                      (cons __tmp270718 __tmp270689))))
               (declare (not safe))
               (cons '%#if __tmp270688))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp270687 '()))))
                                         (declare (not safe))
                                         (cons __tmp270720 __tmp270686))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp270685))))
                          (__tmp270680
                           (let ((__tmp270681
                                  (let ((__tmp270682
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj265430_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp270682))))
                             (declare (not safe))
                             (cons __tmp270681 '()))))
                      (declare (not safe))
                      (cons __tmp270683 __tmp270680))))
               (declare (not safe))
               (cons '%#begin __tmp270679))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp270678 '()))))
                                         (declare (not safe))
                                         (cons __tmp270741 __tmp270677))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp270676))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp270675 _stx265415_))))
                     _$e265425_)
                    (if (##structure-ref _klass265418_ '7 gxc#!class::t '#f)
                        (if (fx= (length _args265422_)
                                 (let ()
                                   (declare (not safe))
                                   (fx- _fields265420_ '1)))
                            (let ((__tmp270666
                                   (let ((__tmp270667
                                          (let ((__tmp270672
                                                 (let ((__tmp270673
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons '##structure
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp270673)))
                                                (__tmp270668
                                                 (let ((__tmp270669
                                                        (let ((__tmp270670
                                                               (let ((__tmp270671
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self265414_
                                 __id270088
                                 __t270087
                                 '#f))))
                         (declare (not safe))
                         (cons __tmp270671 '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp270670))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp270669
                                                         _args265422_))))
                                            (declare (not safe))
                                            (cons __tmp270672 __tmp270668))))
                                     (declare (not safe))
                                     (cons '%#call __tmp270667))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp270666 _stx265415_))
                            (let ((__tmp270665
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _self265414_
                                      __id270088
                                      __t270087
                                      '#f)))
                                  (__tmp270664
                                   (length (##structure-ref
                                            _klass265418_
                                            '5
                                            gxc#!class::t
                                            '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _stx265415_
                               __tmp270665
                               __tmp270664)))
                        (let ((_$obj265435_
                               (let ((__tmp270591 (gensym '__obj)))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp270591))))
                          (let _lp265437_ ((_rest265439_ _args265422_)
                                           (_initializers265440_ '()))
                            (let* ((___stx270203270204_ _rest265439_)
                                   (_g265444265465_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         ___stx270203270204_)))))
                              (let ((___kont270205270206_
                                     (lambda (_L265519_ _L265520_ _L265521_)
                                       (let* ((_slot265550_
                                               (keyword->symbol
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L265521_))))
                                              (_off265552_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _klass265418_
                                                  _slot265550_))))
                                         (if _off265552_
                                             (let ((__tmp270593
                                                    (let ((__tmp270594
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _off265552_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L265520_))))
              (declare (not safe))
              (cons __tmp270594 _initializers265440_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_lp265437_
                                                _L265519_
                                                __tmp270593))
                                             (let ((__tmp270592
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self265414_
                                                       __id270088
                                                       __t270087
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _stx265415_
                                                __tmp270592
                                                _slot265550_))))))
                                    (___kont270207270208_
                                     (lambda ()
                                       (let ((__tmp270595
                                              (let ((__tmp270596
                                                     (let ((__tmp270619
                                                            (let ((__tmp270620
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp270633
                                  (let ()
                                    (declare (not safe))
                                    (cons _$obj265435_ '())))
                                 (__tmp270621
                                  (let ((__tmp270622
                                         (let ((__tmp270623
                                                (let ((__tmp270631
                                                       (let ((__tmp270632
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'make-object* '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp270632)))
              (__tmp270624
               (let ((__tmp270628
                      (let ((__tmp270629
                             (let ((__tmp270630
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self265414_
                                       __id270088
                                       __t270087
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp270630 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp270629)))
                     (__tmp270625
                      (let ((__tmp270626
                             (let ((__tmp270627
                                    (let ()
                                      (declare (not safe))
                                      (cons _fields265420_ '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp270627))))
                        (declare (not safe))
                        (cons __tmp270626 '()))))
                 (declare (not safe))
                 (cons __tmp270628 __tmp270625))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp270631
                                                        __tmp270624))))
                                           (declare (not safe))
                                           (cons '%#call __tmp270623))))
                                    (declare (not safe))
                                    (cons __tmp270622 '()))))
                             (declare (not safe))
                             (cons __tmp270633 __tmp270621))))
                      (declare (not safe))
                      (cons __tmp270620 '())))
                   (__tmp270597
                    (let ((__tmp270598
                           (let ((__tmp270599
                                  (let ((__tmp270616
                                         (let ((__tmp270617
                                                (let ((__tmp270618
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj265435_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp270618))))
                                           (declare (not safe))
                                           (cons __tmp270617 '())))
                                        (__tmp270600
                                         (let ((__tmp270601
                                                (lambda (_i265479_ _r265480_)
                                                  (let ((__tmp270602
                                                         (let ((__tmp270603
                                                                (let ((__tmp270613
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp270614
                                      (let ((__tmp270615
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _self265414_
                                                __id270088
                                                __t270087
                                                '#f))))
                                        (declare (not safe))
                                        (cons __tmp270615 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp270614)))
                              (__tmp270604
                               (let ((__tmp270610
                                      (let ((__tmp270611
                                             (let ((__tmp270612
                                                    (car _i265479_)))
                                               (declare (not safe))
                                               (cons __tmp270612 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp270611)))
                                     (__tmp270605
                                      (let ((__tmp270608
                                             (let ((__tmp270609
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj265435_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp270609)))
                                            (__tmp270606
                                             (let ((__tmp270607
                                                    (cdr _i265479_)))
                                               (declare (not safe))
                                               (cons __tmp270607 '()))))
                                        (declare (not safe))
                                        (cons __tmp270608 __tmp270606))))
                                 (declare (not safe))
                                 (cons __tmp270610 __tmp270605))))
                          (declare (not safe))
                          (cons __tmp270613 __tmp270604))))
                   (declare (not safe))
                   (cons '%#struct-unchecked-set! __tmp270603))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp270602
                                                          _r265480_)))))
                                           (declare (not safe))
                                           (foldl1 __tmp270601
                                                   '()
                                                   _initializers265440_))))
                                    (declare (not safe))
                                    (foldr1 cons __tmp270616 __tmp270600))))
                             (declare (not safe))
                             (cons '%#begin __tmp270599))))
                      (declare (not safe))
                      (cons __tmp270598 '()))))
               (declare (not safe))
               (cons __tmp270619 __tmp270597))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#let-values
                                                      __tmp270596))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp270595
                                          _stx265415_))))
                                    (___kont270209270210_
                                     (lambda ()
                                       (let ((__tmp270634
                                              (let ((__tmp270635
                                                     (let ((__tmp270649
                                                            (let ((__tmp270650
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp270663
                                  (let ()
                                    (declare (not safe))
                                    (cons _$obj265435_ '())))
                                 (__tmp270651
                                  (let ((__tmp270652
                                         (let ((__tmp270653
                                                (let ((__tmp270661
                                                       (let ((__tmp270662
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'make-object* '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp270662)))
              (__tmp270654
               (let ((__tmp270658
                      (let ((__tmp270659
                             (let ((__tmp270660
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self265414_
                                       __id270088
                                       __t270087
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp270660 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp270659)))
                     (__tmp270655
                      (let ((__tmp270656
                             (let ((__tmp270657
                                    (let ()
                                      (declare (not safe))
                                      (cons _fields265420_ '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp270657))))
                        (declare (not safe))
                        (cons __tmp270656 '()))))
                 (declare (not safe))
                 (cons __tmp270658 __tmp270655))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp270661
                                                        __tmp270654))))
                                           (declare (not safe))
                                           (cons '%#call __tmp270653))))
                                    (declare (not safe))
                                    (cons __tmp270652 '()))))
                             (declare (not safe))
                             (cons __tmp270663 __tmp270651))))
                      (declare (not safe))
                      (cons __tmp270650 '())))
                   (__tmp270636
                    (let ((__tmp270637
                           (let ((__tmp270638
                                  (let ((__tmp270642
                                         (let ((__tmp270643
                                                (let ((__tmp270647
                                                       (let ((__tmp270648
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'class-instance-init! '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp270648)))
              (__tmp270644
               (let ((__tmp270645
                      (let ((__tmp270646
                             (let ()
                               (declare (not safe))
                               (cons _$obj265435_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp270646))))
                 (declare (not safe))
                 (cons __tmp270645 _args265422_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp270647
                                                        __tmp270644))))
                                           (declare (not safe))
                                           (cons '%#call __tmp270643)))
                                        (__tmp270639
                                         (let ((__tmp270640
                                                (let ((__tmp270641
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj265435_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp270641))))
                                           (declare (not safe))
                                           (cons __tmp270640 '()))))
                                    (declare (not safe))
                                    (cons __tmp270642 __tmp270639))))
                             (declare (not safe))
                             (cons '%#begin __tmp270638))))
                      (declare (not safe))
                      (cons __tmp270637 '()))))
               (declare (not safe))
               (cons __tmp270649 __tmp270636))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#let-values
                                                      __tmp270635))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp270634
                                          _stx265415_)))))
                                (let* ((_g265442265482_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 ___stx270203270204_))
                                              (___kont270207270208_)
                                              (___kont270209270210_))))
                                       (___match270240270241_
                                        (lambda (_e265451265487_
                                                 _hd265450265490_
                                                 _tl265449265492_
                                                 _e265454265495_
                                                 _hd265453265498_
                                                 _tl265452265500_
                                                 _e265457265503_
                                                 _hd265456265506_
                                                 _tl265455265508_
                                                 _e265460265511_
                                                 _hd265459265514_
                                                 _tl265458265516_)
                                          (let ((_L265519_ _tl265458265516_)
                                                (_L265520_ _hd265459265514_)
                                                (_L265521_ _hd265456265506_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword? _L265521_))
                                                (___kont270205270206_
                                                 _L265519_
                                                 _L265520_
                                                 _L265521_)
                                                (___kont270209270210_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? ___stx270203270204_))
                                      (let ((_e265451265487_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                ___stx270203270204_))))
                                        (let ((_tl265449265492_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e265451265487_)))
                                              (_hd265450265490_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e265451265487_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd265450265490_))
                                              (let ((_e265454265495_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd265450265490_))))
                                                (let ((_tl265452265500_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e265454265495_)))
                                                      (_hd265453265498_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e265454265495_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd265453265498_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _hd265453265498_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl265452265500_))
                      (let ((_e265457265503_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl265452265500_))))
                        (let ((_tl265455265508_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e265457265503_)))
                              (_hd265456265506_
                               (let ()
                                 (declare (not safe))
                                 (##car _e265457265503_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl265455265508_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl265449265492_))
                                  (let ((_e265460265511_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl265449265492_))))
                                    (let ((_tl265458265516_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e265460265511_)))
                                          (_hd265459265514_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e265460265511_))))
                                      (___match270240270241_
                                       _e265451265487_
                                       _hd265450265490_
                                       _tl265449265492_
                                       _e265454265495_
                                       _hd265453265498_
                                       _tl265452265500_
                                       _e265457265503_
                                       _hd265456265506_
                                       _tl265455265508_
                                       _e265460265511_
                                       _hd265459265514_
                                       _tl265458265516_)))
                                  (___kont270209270210_))
                              (___kont270209270210_))))
                      (___kont270209270210_))
                  (___kont270209270210_))
              (___kont270209270210_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont270209270210_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g265442265482_))))))))))))))))
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
      (lambda (_self265237_ _stx265238_ _args265239_)
        (let* ((_g265241265251_
                (lambda (_g265242265248_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g265242265248_))))
               (_g265240265289_
                (lambda (_g265242265254_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g265242265254_))
                      (let ((_e265246265256_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g265242265254_))))
                        (let ((_hd265245265259_
                               (let ()
                                 (declare (not safe))
                                 (##car _e265246265256_)))
                              (_tl265244265261_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e265246265256_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl265244265261_))
                              ((lambda (_L265264_)
                                 (let* ((_klass265275_
                                         (let ((__tmp270756
                                                (##structure-ref
                                                 _self265237_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx265238_
                                            __tmp270756)))
                                        (_field265277_
                                         (let ((__tmp270757
                                                (##structure-ref
                                                 _self265237_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass265275_
                                            __tmp270757)))
                                        (_object265279_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L265264_))))
                                   (if (##structure-ref
                                        _klass265275_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp270834
                                              (let ((__tmp270843
                                                     (if (##structure-ref
                                                          _self265237_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp270835
                                                     (let ((__tmp270840
                                                            (let ((__tmp270841
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp270842
                                  (##structure-ref
                                   _self265237_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp270842 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp270841)))
                   (__tmp270836
                    (let ((__tmp270838
                           (let ((__tmp270839
                                  (let ()
                                    (declare (not safe))
                                    (cons _field265277_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp270839)))
                          (__tmp270837
                           (let ()
                             (declare (not safe))
                             (cons _object265279_ '()))))
                      (declare (not safe))
                      (cons __tmp270838 __tmp270837))))
               (declare (not safe))
               (cons __tmp270840 __tmp270836))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp270843
                                                      __tmp270835))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp270834
                                          _stx265238_))
                                       (if (##structure-ref
                                            _klass265275_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp270824
                                                  (let ((__tmp270833
                                                         (if (##structure-ref
                                                              _self265237_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp270825
                                                         (let ((__tmp270830
                                                                (let ((__tmp270831
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp270832
                                      (##structure-ref
                                       _self265237_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp270832 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp270831)))
                       (__tmp270826
                        (let ((__tmp270828
                               (let ((__tmp270829
                                      (let ()
                                        (declare (not safe))
                                        (cons _field265277_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp270829)))
                              (__tmp270827
                               (let ()
                                 (declare (not safe))
                                 (cons _object265279_ '()))))
                          (declare (not safe))
                          (cons __tmp270828 __tmp270827))))
                   (declare (not safe))
                   (cons __tmp270830 __tmp270826))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp270833
                                                          __tmp270825))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp270824
                                              _stx265238_))
                                           (let ((_$e265282_
                                                  (let ((__tmp270758
                                                         (##structure-ref
                                                          _self265237_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass265275_
                                                     __tmp270758))))
                                             (if _$e265282_
                                                 ((lambda (_klass265285_)
                                                    (let ((__tmp270814
                                                           (let ((__tmp270823
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self265237_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp270815
                          (let ((__tmp270820
                                 (let ((__tmp270821
                                        (let ((__tmp270822
                                               (##structure-ref
                                                _self265237_
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
                                                 (cons _field265277_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp270819)))
                                       (__tmp270817
                                        (let ()
                                          (declare (not safe))
                                          (cons _object265279_ '()))))
                                   (declare (not safe))
                                   (cons __tmp270818 __tmp270817))))
                            (declare (not safe))
                            (cons __tmp270820 __tmp270816))))
                     (declare (not safe))
                     (cons __tmp270823 __tmp270815))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp270814 _stx265238_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e265282_)
                                                 (if (##structure-ref
                                                      _self265237_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp270768
                                                            (let* ((_$obj265287_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp270769 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp270769)))
                           (__tmp270770
                            (let ((__tmp270810
                                   (let ((__tmp270811
                                          (let ((__tmp270813
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj265287_ '())))
                                                (__tmp270812
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object265279_ '()))))
                                            (declare (not safe))
                                            (cons __tmp270813 __tmp270812))))
                                     (declare (not safe))
                                     (cons __tmp270811 '())))
                                  (__tmp270771
                                   (let ((__tmp270772
                                          (let ((__tmp270773
                                                 (let ((__tmp270802
                                                        (let ((__tmp270803
                                                               (let ((__tmp270807
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp270808
                                     (let ((__tmp270809
                                            (##structure-ref
                                             _klass265275_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp270809 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp270808)))
                             (__tmp270804
                              (let ((__tmp270805
                                     (let ((__tmp270806
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj265287_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp270806))))
                                (declare (not safe))
                                (cons __tmp270805 '()))))
                         (declare (not safe))
                         (cons __tmp270807 __tmp270804))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp270803)))
               (__tmp270774
                (let ((__tmp270791
                       (let ((__tmp270792
                              (let ((__tmp270799
                                     (let ((__tmp270800
                                            (let ((__tmp270801
                                                   (##structure-ref
                                                    _self265237_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp270801 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp270800)))
                                    (__tmp270793
                                     (let ((__tmp270797
                                            (let ((__tmp270798
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field265277_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp270798)))
                                           (__tmp270794
                                            (let ((__tmp270795
                                                   (let ((__tmp270796
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj265287_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp270796))))
                                              (declare (not safe))
                                              (cons __tmp270795 '()))))
                                       (declare (not safe))
                                       (cons __tmp270797 __tmp270794))))
                                (declare (not safe))
                                (cons __tmp270799 __tmp270793))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp270792)))
                      (__tmp270775
                       (let ((__tmp270776
                              (let ((__tmp270777
                                     (let ((__tmp270789
                                            (let ((__tmp270790
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp270790)))
                                           (__tmp270778
                                            (let ((__tmp270786
                                                   (let ((__tmp270787
                                                          (let ((__tmp270788
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self265237_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp270788 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp270787)))
                                                  (__tmp270779
                                                   (let ((__tmp270784
                                                          (let ((__tmp270785
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj265287_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp270785)))
                 (__tmp270780
                  (let ((__tmp270781
                         (let ((__tmp270782
                                (let ((__tmp270783
                                       (##structure-ref
                                        _self265237_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp270783 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp270782))))
                    (declare (not safe))
                    (cons __tmp270781 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp270784
                                                           __tmp270780))))
                                              (declare (not safe))
                                              (cons __tmp270786 __tmp270779))))
                                       (declare (not safe))
                                       (cons __tmp270789 __tmp270778))))
                                (declare (not safe))
                                (cons '%#call __tmp270777))))
                         (declare (not safe))
                         (cons __tmp270776 '()))))
                  (declare (not safe))
                  (cons __tmp270791 __tmp270775))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp270802
                                                         __tmp270774))))
                                            (declare (not safe))
                                            (cons '%#if __tmp270773))))
                                     (declare (not safe))
                                     (cons __tmp270772 '()))))
                              (declare (not safe))
                              (cons __tmp270810 __tmp270771))))
                      (declare (not safe))
                      (cons '%#let-values __tmp270770))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp270768 _stx265238_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp270759
                                                            (let ((__tmp270760
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp270766
                                  (let ((__tmp270767
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp270767)))
                                 (__tmp270761
                                  (let ((__tmp270762
                                         (let ((__tmp270763
                                                (let ((__tmp270764
                                                       (let ((__tmp270765
                                                              (##structure-ref
                                                               _self265237_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp270765
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp270764))))
                                           (declare (not safe))
                                           (cons __tmp270763 '()))))
                                    (declare (not safe))
                                    (cons _object265279_ __tmp270762))))
                             (declare (not safe))
                             (cons __tmp270766 __tmp270761))))
                      (declare (not safe))
                      (cons '%#call __tmp270760))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp270759 _stx265238_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd265245265259_)
                              (let ()
                                (declare (not safe))
                                (_g265241265251_ _g265242265254_)))))
                      (let ()
                        (declare (not safe))
                        (_g265241265251_ _g265242265254_))))))
          (declare (not safe))
          (_g265240265289_ _args265239_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__t270090)
        (let ((__id270091
               (let ((__tmp270094
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t270090 'id))))
                 (if __tmp270094 __tmp270094 (error '"Unknown slot" 'id))))
              (__slot270092
               (let ((__tmp270095
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t270090 'slot))))
                 (if __tmp270095 __tmp270095 (error '"Unknown slot" 'slot))))
              (__checked?270093
               (let ((__tmp270096
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t270090 'checked?))))
                 (if __tmp270096
                     __tmp270096
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self265237_ _stx265238_ _args265239_)
            (let* ((_g265241265251_
                    (lambda (_g265242265248_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g265242265248_))))
                   (_g265240265289_
                    (lambda (_g265242265254_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g265242265254_))
                          (let ((_e265246265256_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g265242265254_))))
                            (let ((_hd265245265259_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e265246265256_)))
                                  (_tl265244265261_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e265246265256_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl265244265261_))
                                  ((lambda (_L265264_)
                                     (let* ((_klass265275_
                                             (let ((__tmp270844
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self265237_
                                                       __id270091
                                                       __t270090
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx265238_
                                                __tmp270844)))
                                            (_field265277_
                                             (let ((__tmp270845
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self265237_
                                                       __slot270092
                                                       __t270090
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass265275_
                                                __tmp270845)))
                                            (_object265279_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L265264_))))
                                       (if (##structure-ref
                                            _klass265275_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp270922
                                                  (let ((__tmp270931
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self265237_
                        __checked?270093
                        __t270090
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp270923
                 (let ((__tmp270928
                        (let ((__tmp270929
                               (let ((__tmp270930
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self265237_
                                         __id270091
                                         __t270090
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp270930 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp270929)))
                       (__tmp270924
                        (let ((__tmp270926
                               (let ((__tmp270927
                                      (let ()
                                        (declare (not safe))
                                        (cons _field265277_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp270927)))
                              (__tmp270925
                               (let ()
                                 (declare (not safe))
                                 (cons _object265279_ '()))))
                          (declare (not safe))
                          (cons __tmp270926 __tmp270925))))
                   (declare (not safe))
                   (cons __tmp270928 __tmp270924))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp270931
                                                          __tmp270923))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp270922
                                              _stx265238_))
                                           (if (##structure-ref
                                                _klass265275_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp270912
                                                      (let ((__tmp270921
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self265237_
                            __checked?270093
                            __t270090
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp270913
                     (let ((__tmp270918
                            (let ((__tmp270919
                                   (let ((__tmp270920
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self265237_
                                             __id270091
                                             __t270090
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp270920 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp270919)))
                           (__tmp270914
                            (let ((__tmp270916
                                   (let ((__tmp270917
                                          (let ()
                                            (declare (not safe))
                                            (cons _field265277_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp270917)))
                                  (__tmp270915
                                   (let ()
                                     (declare (not safe))
                                     (cons _object265279_ '()))))
                              (declare (not safe))
                              (cons __tmp270916 __tmp270915))))
                       (declare (not safe))
                       (cons __tmp270918 __tmp270914))))
                (declare (not safe))
                (cons __tmp270921 __tmp270913))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp270912
                                                  _stx265238_))
                                               (let ((_$e265282_
                                                      (let ((__tmp270846
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self265237_
                        __slot270092
                        __t270090
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass265275_ __tmp270846))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e265282_
                                                     ((lambda (_klass265285_)
                                                        (let ((__tmp270902
                                                               (let ((__tmp270911
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self265237_
                                     __checked?270093
                                     __t270090
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp270903
                              (let ((__tmp270908
                                     (let ((__tmp270909
                                            (let ((__tmp270910
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self265237_
                                                      __id270091
                                                      __t270090
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
                                                     (cons _field265277_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp270907)))
                                           (__tmp270905
                                            (let ()
                                              (declare (not safe))
                                              (cons _object265279_ '()))))
                                       (declare (not safe))
                                       (cons __tmp270906 __tmp270905))))
                                (declare (not safe))
                                (cons __tmp270908 __tmp270904))))
                         (declare (not safe))
                         (cons __tmp270911 __tmp270903))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp270902 _stx265238_)))
              _$e265282_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self265237_
                                                            __checked?270093
                                                            __t270090
                                                            '#f))
                                                         (let ((__tmp270856
                                                                (let* ((_$obj265287_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp270857 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp270857)))
                               (__tmp270858
                                (let ((__tmp270898
                                       (let ((__tmp270899
                                              (let ((__tmp270901
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj265287_
                                                             '())))
                                                    (__tmp270900
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object265279_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp270901
                                                      __tmp270900))))
                                         (declare (not safe))
                                         (cons __tmp270899 '())))
                                      (__tmp270859
                                       (let ((__tmp270860
                                              (let ((__tmp270861
                                                     (let ((__tmp270890
                                                            (let ((__tmp270891
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp270895
                                  (let ((__tmp270896
                                         (let ((__tmp270897
                                                (##structure-ref
                                                 _klass265275_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp270897 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp270896)))
                                 (__tmp270892
                                  (let ((__tmp270893
                                         (let ((__tmp270894
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj265287_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp270894))))
                                    (declare (not safe))
                                    (cons __tmp270893 '()))))
                             (declare (not safe))
                             (cons __tmp270895 __tmp270892))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp270891)))
                   (__tmp270862
                    (let ((__tmp270879
                           (let ((__tmp270880
                                  (let ((__tmp270887
                                         (let ((__tmp270888
                                                (let ((__tmp270889
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self265237_
                                                          __id270091
                                                          __t270090
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp270889 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp270888)))
                                        (__tmp270881
                                         (let ((__tmp270885
                                                (let ((__tmp270886
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field265277_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp270886)))
                                               (__tmp270882
                                                (let ((__tmp270883
                                                       (let ((__tmp270884
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj265287_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp270884))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp270883 '()))))
                                           (declare (not safe))
                                           (cons __tmp270885 __tmp270882))))
                                    (declare (not safe))
                                    (cons __tmp270887 __tmp270881))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp270880)))
                          (__tmp270863
                           (let ((__tmp270864
                                  (let ((__tmp270865
                                         (let ((__tmp270877
                                                (let ((__tmp270878
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp270878)))
                                               (__tmp270866
                                                (let ((__tmp270874
                                                       (let ((__tmp270875
                                                              (let ((__tmp270876
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self265237_
                                __id270091
                                __t270090
                                '#f))))
                        (declare (not safe))
                        (cons __tmp270876 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp270875)))
              (__tmp270867
               (let ((__tmp270872
                      (let ((__tmp270873
                             (let ()
                               (declare (not safe))
                               (cons _$obj265287_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp270873)))
                     (__tmp270868
                      (let ((__tmp270869
                             (let ((__tmp270870
                                    (let ((__tmp270871
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self265237_
                                              __slot270092
                                              __t270090
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp270871 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp270870))))
                        (declare (not safe))
                        (cons __tmp270869 '()))))
                 (declare (not safe))
                 (cons __tmp270872 __tmp270868))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp270874
                                                        __tmp270867))))
                                           (declare (not safe))
                                           (cons __tmp270877 __tmp270866))))
                                    (declare (not safe))
                                    (cons '%#call __tmp270865))))
                             (declare (not safe))
                             (cons __tmp270864 '()))))
                      (declare (not safe))
                      (cons __tmp270879 __tmp270863))))
               (declare (not safe))
               (cons __tmp270890 __tmp270862))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp270861))))
                                         (declare (not safe))
                                         (cons __tmp270860 '()))))
                                  (declare (not safe))
                                  (cons __tmp270898 __tmp270859))))
                          (declare (not safe))
                          (cons '%#let-values __tmp270858))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp270856 _stx265238_))
                 (let ((__tmp270847
                        (let ((__tmp270848
                               (let ((__tmp270854
                                      (let ((__tmp270855
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp270855)))
                                     (__tmp270849
                                      (let ((__tmp270850
                                             (let ((__tmp270851
                                                    (let ((__tmp270852
                                                           (let ((__tmp270853
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self265237_
                             __slot270092
                             __t270090
                             '#f))))
                     (declare (not safe))
                     (cons __tmp270853 '()))))
              (declare (not safe))
              (cons '%#quote __tmp270852))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp270851 '()))))
                                        (declare (not safe))
                                        (cons _object265279_ __tmp270850))))
                                 (declare (not safe))
                                 (cons __tmp270854 __tmp270849))))
                          (declare (not safe))
                          (cons '%#call __tmp270848))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp270847 _stx265238_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd265245265259_)
                                  (let ()
                                    (declare (not safe))
                                    (_g265241265251_ _g265242265254_)))))
                          (let ()
                            (declare (not safe))
                            (_g265241265251_ _g265242265254_))))))
              (declare (not safe))
              (_g265240265289_ _args265239_))))))
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
      (lambda (_self265042_ _stx265043_ _args265044_)
        (let* ((_g265046265060_
                (lambda (_g265047265057_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g265047265057_))))
               (_g265045265112_
                (lambda (_g265047265063_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g265047265063_))
                      (let ((_e265052265065_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g265047265063_))))
                        (let ((_hd265051265068_
                               (let ()
                                 (declare (not safe))
                                 (##car _e265052265065_)))
                              (_tl265050265070_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e265052265065_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl265050265070_))
                              (let ((_e265055265073_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl265050265070_))))
                                (let ((_hd265054265076_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e265055265073_)))
                                      (_tl265053265078_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e265055265073_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl265053265078_))
                                      ((lambda (_L265081_ _L265082_)
                                         (let* ((_klass265096_
                                                 (let ((__tmp270932
                                                        (##structure-ref
                                                         _self265042_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx265043_
                                                    __tmp270932)))
                                                (_field265098_
                                                 (let ((__tmp270933
                                                        (##structure-ref
                                                         _self265042_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass265096_
                                                    __tmp270933)))
                                                (_object265100_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L265082_)))
                                                (_value265102_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L265081_))))
                                           (if (##structure-ref
                                                _klass265096_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp271015
                                                      (let ((__tmp271025
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self265042_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp271016
                     (let ((__tmp271022
                            (let ((__tmp271023
                                   (let ((__tmp271024
                                          (##structure-ref
                                           _self265042_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp271024 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp271023)))
                           (__tmp271017
                            (let ((__tmp271020
                                   (let ((__tmp271021
                                          (let ()
                                            (declare (not safe))
                                            (cons _field265098_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp271021)))
                                  (__tmp271018
                                   (let ((__tmp271019
                                          (let ()
                                            (declare (not safe))
                                            (cons _value265102_ '()))))
                                     (declare (not safe))
                                     (cons _object265100_ __tmp271019))))
                              (declare (not safe))
                              (cons __tmp271020 __tmp271018))))
                       (declare (not safe))
                       (cons __tmp271022 __tmp271017))))
                (declare (not safe))
                (cons __tmp271025 __tmp271016))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp271015
                                                  _stx265043_))
                                               (if (##structure-ref
                                                    _klass265096_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp271004
                                                          (let ((__tmp271014
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self265042_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp271005
                         (let ((__tmp271011
                                (let ((__tmp271012
                                       (let ((__tmp271013
                                              (##structure-ref
                                               _self265042_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp271013 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp271012)))
                               (__tmp271006
                                (let ((__tmp271009
                                       (let ((__tmp271010
                                              (let ()
                                                (declare (not safe))
                                                (cons _field265098_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp271010)))
                                      (__tmp271007
                                       (let ((__tmp271008
                                              (let ()
                                                (declare (not safe))
                                                (cons _value265102_ '()))))
                                         (declare (not safe))
                                         (cons _object265100_ __tmp271008))))
                                  (declare (not safe))
                                  (cons __tmp271009 __tmp271007))))
                           (declare (not safe))
                           (cons __tmp271011 __tmp271006))))
                    (declare (not safe))
                    (cons __tmp271014 __tmp271005))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp271004
                                                      _stx265043_))
                                                   (let ((_$e265105_
                                                          (let ((__tmp270934
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self265042_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass265096_ __tmp270934))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e265105_
                                                         ((lambda (_klass265108_)
                                                            (let ((__tmp270993
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp271003
                                  (if (##structure-ref
                                       _self265042_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp270994
                                  (let ((__tmp271000
                                         (let ((__tmp271001
                                                (let ((__tmp271002
                                                       (##structure-ref
                                                        _self265042_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp271002 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp271001)))
                                        (__tmp270995
                                         (let ((__tmp270998
                                                (let ((__tmp270999
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field265098_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp270999)))
                                               (__tmp270996
                                                (let ((__tmp270997
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value265102_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object265100_
                                                        __tmp270997))))
                                           (declare (not safe))
                                           (cons __tmp270998 __tmp270996))))
                                    (declare (not safe))
                                    (cons __tmp271000 __tmp270995))))
                             (declare (not safe))
                             (cons __tmp271003 __tmp270994))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp270993 _stx265043_)))
                  _$e265105_)
                 (if (##structure-ref _self265042_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp270945
                            (let* ((_$obj265110_
                                    (let ((__tmp270946 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp270946)))
                                   (__tmp270947
                                    (let ((__tmp270989
                                           (let ((__tmp270990
                                                  (let ((__tmp270992
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj265110_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp270991
                 (let () (declare (not safe)) (cons _object265100_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp270992
                                                          __tmp270991))))
                                             (declare (not safe))
                                             (cons __tmp270990 '())))
                                          (__tmp270948
                                           (let ((__tmp270949
                                                  (let ((__tmp270950
                                                         (let ((__tmp270981
                                                                (let ((__tmp270982
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp270986
                                      (let ((__tmp270987
                                             (let ((__tmp270988
                                                    (##structure-ref
                                                     _klass265096_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp270988 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp270987)))
                                     (__tmp270983
                                      (let ((__tmp270984
                                             (let ((__tmp270985
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj265110_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp270985))))
                                        (declare (not safe))
                                        (cons __tmp270984 '()))))
                                 (declare (not safe))
                                 (cons __tmp270986 __tmp270983))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp270982)))
                       (__tmp270951
                        (let ((__tmp270969
                               (let ((__tmp270970
                                      (let ((__tmp270978
                                             (let ((__tmp270979
                                                    (let ((__tmp270980
                                                           (##structure-ref
                                                            _self265042_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp270980 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp270979)))
                                            (__tmp270971
                                             (let ((__tmp270976
                                                    (let ((__tmp270977
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field265098_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp270977)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp270972
                                                    (let ((__tmp270974
                                                           (let ((__tmp270975
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj265110_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp270975)))
                  (__tmp270973
                   (let () (declare (not safe)) (cons _value265102_ '()))))
              (declare (not safe))
              (cons __tmp270974 __tmp270973))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp270976
                                                     __tmp270972))))
                                        (declare (not safe))
                                        (cons __tmp270978 __tmp270971))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp270970)))
                              (__tmp270952
                               (let ((__tmp270953
                                      (let ((__tmp270954
                                             (let ((__tmp270967
                                                    (let ((__tmp270968
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp270968)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp270955
                                                    (let ((__tmp270964
                                                           (let ((__tmp270965
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp270966
                                 (##structure-ref
                                  _self265042_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp270966 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp270965)))
                  (__tmp270956
                   (let ((__tmp270962
                          (let ((__tmp270963
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj265110_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp270963)))
                         (__tmp270957
                          (let ((__tmp270959
                                 (let ((__tmp270960
                                        (let ((__tmp270961
                                               (##structure-ref
                                                _self265042_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp270961 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp270960)))
                                (__tmp270958
                                 (let ()
                                   (declare (not safe))
                                   (cons _value265102_ '()))))
                            (declare (not safe))
                            (cons __tmp270959 __tmp270958))))
                     (declare (not safe))
                     (cons __tmp270962 __tmp270957))))
              (declare (not safe))
              (cons __tmp270964 __tmp270956))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp270967
                                                     __tmp270955))))
                                        (declare (not safe))
                                        (cons '%#call __tmp270954))))
                                 (declare (not safe))
                                 (cons __tmp270953 '()))))
                          (declare (not safe))
                          (cons __tmp270969 __tmp270952))))
                   (declare (not safe))
                   (cons __tmp270981 __tmp270951))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp270950))))
                                             (declare (not safe))
                                             (cons __tmp270949 '()))))
                                      (declare (not safe))
                                      (cons __tmp270989 __tmp270948))))
                              (declare (not safe))
                              (cons '%#let-values __tmp270947))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp270945 _stx265043_))
                     (let ((__tmp270935
                            (let ((__tmp270936
                                   (let ((__tmp270943
                                          (let ((__tmp270944
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp270944)))
                                         (__tmp270937
                                          (let ((__tmp270938
                                                 (let ((__tmp270940
                                                        (let ((__tmp270941
                                                               (let ((__tmp270942
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self265042_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp270942 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp270941)))
               (__tmp270939
                (let () (declare (not safe)) (cons _value265102_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp270940
                                                         __tmp270939))))
                                            (declare (not safe))
                                            (cons _object265100_
                                                  __tmp270938))))
                                     (declare (not safe))
                                     (cons __tmp270943 __tmp270937))))
                              (declare (not safe))
                              (cons '%#call __tmp270936))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp270935 _stx265043_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd265054265076_
                                       _hd265051265068_)
                                      (let ()
                                        (declare (not safe))
                                        (_g265046265060_ _g265047265063_)))))
                              (let ()
                                (declare (not safe))
                                (_g265046265060_ _g265047265063_)))))
                      (let ()
                        (declare (not safe))
                        (_g265046265060_ _g265047265063_))))))
          (declare (not safe))
          (_g265045265112_ _args265044_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__t270097)
        (let ((__id270098
               (let ((__tmp270101
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t270097 'id))))
                 (if __tmp270101 __tmp270101 (error '"Unknown slot" 'id))))
              (__slot270099
               (let ((__tmp270102
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t270097 'slot))))
                 (if __tmp270102 __tmp270102 (error '"Unknown slot" 'slot))))
              (__checked?270100
               (let ((__tmp270103
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t270097 'checked?))))
                 (if __tmp270103
                     __tmp270103
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self265042_ _stx265043_ _args265044_)
            (let* ((_g265046265060_
                    (lambda (_g265047265057_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g265047265057_))))
                   (_g265045265112_
                    (lambda (_g265047265063_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g265047265063_))
                          (let ((_e265052265065_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g265047265063_))))
                            (let ((_hd265051265068_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e265052265065_)))
                                  (_tl265050265070_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e265052265065_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl265050265070_))
                                  (let ((_e265055265073_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl265050265070_))))
                                    (let ((_hd265054265076_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e265055265073_)))
                                          (_tl265053265078_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e265055265073_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl265053265078_))
                                          ((lambda (_L265081_ _L265082_)
                                             (let* ((_klass265096_
                                                     (let ((__tmp271026
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self265042_
                                                               __id270098
                                                               __t270097
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx265043_
                                                        __tmp271026)))
                                                    (_field265098_
                                                     (let ((__tmp271027
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self265042_
                                                               __slot270099
                                                               __t270097
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass265096_
                                                        __tmp271027)))
                                                    (_object265100_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L265082_)))
                                                    (_value265102_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L265081_))))
                                               (if (##structure-ref
                                                    _klass265096_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp271109
                                                          (let ((__tmp271119
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self265042_
                                __checked?270100
                                __t270097
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp271110
                         (let ((__tmp271116
                                (let ((__tmp271117
                                       (let ((__tmp271118
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self265042_
                                                 __id270098
                                                 __t270097
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp271118 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp271117)))
                               (__tmp271111
                                (let ((__tmp271114
                                       (let ((__tmp271115
                                              (let ()
                                                (declare (not safe))
                                                (cons _field265098_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp271115)))
                                      (__tmp271112
                                       (let ((__tmp271113
                                              (let ()
                                                (declare (not safe))
                                                (cons _value265102_ '()))))
                                         (declare (not safe))
                                         (cons _object265100_ __tmp271113))))
                                  (declare (not safe))
                                  (cons __tmp271114 __tmp271112))))
                           (declare (not safe))
                           (cons __tmp271116 __tmp271111))))
                    (declare (not safe))
                    (cons __tmp271119 __tmp271110))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp271109
                                                      _stx265043_))
                                                   (if (##structure-ref
                                                        _klass265096_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp271098
                                                              (let ((__tmp271108
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self265042_
                                    __checked?270100
                                    __t270097
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp271099
                             (let ((__tmp271105
                                    (let ((__tmp271106
                                           (let ((__tmp271107
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self265042_
                                                     __id270098
                                                     __t270097
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp271107 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp271106)))
                                   (__tmp271100
                                    (let ((__tmp271103
                                           (let ((__tmp271104
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field265098_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp271104)))
                                          (__tmp271101
                                           (let ((__tmp271102
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value265102_ '()))))
                                             (declare (not safe))
                                             (cons _object265100_
                                                   __tmp271102))))
                                      (declare (not safe))
                                      (cons __tmp271103 __tmp271101))))
                               (declare (not safe))
                               (cons __tmp271105 __tmp271100))))
                        (declare (not safe))
                        (cons __tmp271108 __tmp271099))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp271098 _stx265043_))
               (let ((_$e265105_
                      (let ((__tmp271028
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self265042_
                                __slot270099
                                __t270097
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass265096_
                         __tmp271028))))
                 (if _$e265105_
                     ((lambda (_klass265108_)
                        (let ((__tmp271087
                               (let ((__tmp271097
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self265042_
                                             __checked?270100
                                             __t270097
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp271088
                                      (let ((__tmp271094
                                             (let ((__tmp271095
                                                    (let ((__tmp271096
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self265042_
                                                              __id270098
                                                              __t270097
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp271096 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp271095)))
                                            (__tmp271089
                                             (let ((__tmp271092
                                                    (let ((__tmp271093
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field265098_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp271093)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp271090
                                                    (let ((__tmp271091
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value265102_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object265100_ __tmp271091))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp271092
                                                     __tmp271090))))
                                        (declare (not safe))
                                        (cons __tmp271094 __tmp271089))))
                                 (declare (not safe))
                                 (cons __tmp271097 __tmp271088))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp271087 _stx265043_)))
                      _$e265105_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self265042_
                            __checked?270100
                            __t270097
                            '#f))
                         (let ((__tmp271039
                                (let* ((_$obj265110_
                                        (let ((__tmp271040 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp271040)))
                                       (__tmp271041
                                        (let ((__tmp271083
                                               (let ((__tmp271084
                                                      (let ((__tmp271086
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj265110_ '())))
                    (__tmp271085
                     (let () (declare (not safe)) (cons _object265100_ '()))))
                (declare (not safe))
                (cons __tmp271086 __tmp271085))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp271084 '())))
                                              (__tmp271042
                                               (let ((__tmp271043
                                                      (let ((__tmp271044
                                                             (let ((__tmp271075
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp271076
                                   (let ((__tmp271080
                                          (let ((__tmp271081
                                                 (let ((__tmp271082
                                                        (##structure-ref
                                                         _klass265096_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp271082 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp271081)))
                                         (__tmp271077
                                          (let ((__tmp271078
                                                 (let ((__tmp271079
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj265110_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp271079))))
                                            (declare (not safe))
                                            (cons __tmp271078 '()))))
                                     (declare (not safe))
                                     (cons __tmp271080 __tmp271077))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp271076)))
                           (__tmp271045
                            (let ((__tmp271063
                                   (let ((__tmp271064
                                          (let ((__tmp271072
                                                 (let ((__tmp271073
                                                        (let ((__tmp271074
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self265042_
                          __id270098
                          __t270097
                          '#f))))
                  (declare (not safe))
                  (cons __tmp271074 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp271073)))
                                                (__tmp271065
                                                 (let ((__tmp271070
                                                        (let ((__tmp271071
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field265098_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp271071)))
               (__tmp271066
                (let ((__tmp271068
                       (let ((__tmp271069
                              (let ()
                                (declare (not safe))
                                (cons _$obj265110_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp271069)))
                      (__tmp271067
                       (let () (declare (not safe)) (cons _value265102_ '()))))
                  (declare (not safe))
                  (cons __tmp271068 __tmp271067))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp271070
                                                         __tmp271066))))
                                            (declare (not safe))
                                            (cons __tmp271072 __tmp271065))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp271064)))
                                  (__tmp271046
                                   (let ((__tmp271047
                                          (let ((__tmp271048
                                                 (let ((__tmp271061
                                                        (let ((__tmp271062
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp271062)))
               (__tmp271049
                (let ((__tmp271058
                       (let ((__tmp271059
                              (let ((__tmp271060
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self265042_
                                        __id270098
                                        __t270097
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp271060 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp271059)))
                      (__tmp271050
                       (let ((__tmp271056
                              (let ((__tmp271057
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj265110_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp271057)))
                             (__tmp271051
                              (let ((__tmp271053
                                     (let ((__tmp271054
                                            (let ((__tmp271055
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self265042_
                                                      __slot270099
                                                      __t270097
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp271055 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp271054)))
                                    (__tmp271052
                                     (let ()
                                       (declare (not safe))
                                       (cons _value265102_ '()))))
                                (declare (not safe))
                                (cons __tmp271053 __tmp271052))))
                         (declare (not safe))
                         (cons __tmp271056 __tmp271051))))
                  (declare (not safe))
                  (cons __tmp271058 __tmp271050))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp271061
                                                         __tmp271049))))
                                            (declare (not safe))
                                            (cons '%#call __tmp271048))))
                                     (declare (not safe))
                                     (cons __tmp271047 '()))))
                              (declare (not safe))
                              (cons __tmp271063 __tmp271046))))
                       (declare (not safe))
                       (cons __tmp271075 __tmp271045))))
                (declare (not safe))
                (cons '%#if __tmp271044))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp271043 '()))))
                                          (declare (not safe))
                                          (cons __tmp271083 __tmp271042))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp271041))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp271039 _stx265043_))
                         (let ((__tmp271029
                                (let ((__tmp271030
                                       (let ((__tmp271037
                                              (let ((__tmp271038
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp271038)))
                                             (__tmp271031
                                              (let ((__tmp271032
                                                     (let ((__tmp271034
                                                            (let ((__tmp271035
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp271036
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self265042_
                                     __slot270099
                                     __t270097
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp271036 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp271035)))
                   (__tmp271033
                    (let () (declare (not safe)) (cons _value265102_ '()))))
               (declare (not safe))
               (cons __tmp271034 __tmp271033))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object265100_
                                                      __tmp271032))))
                                         (declare (not safe))
                                         (cons __tmp271037 __tmp271031))))
                                  (declare (not safe))
                                  (cons '%#call __tmp271030))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp271029
                            _stx265043_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd265054265076_
                                           _hd265051265068_)
                                          (let ()
                                            (declare (not safe))
                                            (_g265046265060_
                                             _g265047265063_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g265046265060_ _g265047265063_)))))
                          (let ()
                            (declare (not safe))
                            (_g265046265060_ _g265047265063_))))))
              (declare (not safe))
              (_g265045265112_ _args265044_))))))
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
      (lambda (_self264876_ _stx264877_ _args264878_)
        (let* ((_self264879264888_ _self264876_)
               (_E264881264892_
                (lambda () (error '"No clause matching" _self264879264888_)))
               (_K264882264899_
                (lambda (_inline264895_ _dispatch264896_ _arity264897_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self264876_ _args264878_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx264877_
                         _arity264897_)))
                  (if _inline264895_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp271125
                               (let ((__tmp271126
                                      (_inline264895_ _stx264877_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp271126
                                  _stx264877_))))
                          (declare (not safe))
                          (gxc#compile-e__0 __tmp271125)))
                      (if _dispatch264896_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch264896_))
                            (let ((__tmp271120
                                   (let ((__tmp271121
                                          (let ((__tmp271122
                                                 (let ((__tmp271123
                                                        (let ((__tmp271124
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch264896_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp271124))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp271123
                                                         _args264878_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp271122))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp271121
                                      _stx264877_))))
                              (declare (not safe))
                              (gxc#compile-e__0 __tmp271120)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _stx264877_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self264879264888_ 'gxc#!lambda::t))
              (let* ((_e264883264902_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self264879264888_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e264884264905_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self264879264888_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity264908_ _e264884264905_)
                     (_e264885264910_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self264879264888_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch264913_ _e264885264910_)
                     (_e264886264915_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self264879264888_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline264918_ _e264886264915_))
                (declare (not safe))
                (_K264882264899_
                 _inline264918_
                 _dispatch264913_
                 _arity264908_))
              (let () (declare (not safe)) (_E264881264892_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self264715_ _stx264716_ _args264717_)
        (let* ((_self264718264725_ _self264715_)
               (_E264720264729_
                (lambda () (error '"No clause matching" _self264718264725_)))
               (_K264721264743_
                (lambda (_clauses264732_)
                  (let ((_$e264738_
                         (let ((__tmp271127
                                (lambda (_g264733264735_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g264733264735_
                                     _args264717_)))))
                           (declare (not safe))
                           (find __tmp271127 _clauses264732_))))
                    (if _$e264738_
                        ((lambda (_clause264741_)
                           (let ((__method270372
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause264741_
                                     'optimize-call))))
                             (if __method270372
                                 (__method270372
                                  _clause264741_
                                  _stx264716_
                                  _args264717_)
                                 (error '"Missing method"
                                        _clause264741_
                                        'optimize-call))))
                         _$e264738_)
                        (let ((__tmp271128
                               (map gxc#!lambda-arity _clauses264732_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx264716_
                           __tmp271128)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self264718264725_
                 'gxc#!case-lambda::t))
              (let* ((_e264722264746_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self264718264725_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e264723264749_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self264718264725_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses264752_ _e264723264749_))
                (declare (not safe))
                (_K264721264743_ _clauses264752_))
              (let () (declare (not safe)) (_E264720264729_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self264529_ _args264530_)
        (let* ((_self264531264538_ _self264529_)
               (_E264533264542_
                (lambda () (error '"No clause matching" _self264531264538_)))
               (_K264534264582_
                (lambda (_arity264545_)
                  (let* ((_arity264546264555_ _arity264545_)
                         (_E264549264559_
                          (lambda ()
                            (error '"No clause matching"
                                   _arity264546264555_))))
                    (let ((_K264553264579_
                           (lambda ()
                             (fx= (length _args264530_) _arity264545_)))
                          (_K264550264565_
                           (lambda (_arity264563_)
                             (fx>= (length _args264530_) _arity264563_))))
                      (let ((_try-match264548264575_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity264546264555_))
                                   (let ((_tl264552264570_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity264546264555_)))
                                         (_hd264551264568_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity264546264555_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl264552264570_))
                                         (let ((_arity264573_
                                                _hd264551264568_))
                                           (declare (not safe))
                                           (_K264550264565_ _arity264573_))
                                         (let ()
                                           (declare (not safe))
                                           (_E264549264559_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E264549264559_))))))
                        (if (fixnum? _arity264546264555_)
                            (let () (declare (not safe)) (_K264553264579_))
                            (let ()
                              (declare (not safe))
                              (_try-match264548264575_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self264531264538_ 'gxc#!lambda::t))
              (let* ((_e264535264585_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self264531264538_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e264536264588_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self264531264538_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity264591_ _e264536264588_))
                (declare (not safe))
                (_K264534264582_ _arity264591_))
              (let () (declare (not safe)) (_E264533264542_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self264414_ _stx264415_ _args264416_)
        (let* ((_self264417264425_ _self264414_)
               (_E264419264429_
                (lambda () (error '"No clause matching" _self264417264425_)))
               (_K264420264513_
                (lambda (_dispatch264432_ _table264433_)
                  (let* ((_g264434264443_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch264432_)))
                         (_else264436264451_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch264432_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _stx264415_))))
                         (_K264438264497_
                          (lambda (_main264454_ _keys264455_)
                            (let ((_g271129_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx264415_
                                      _args264416_))))
                              (begin
                                (let ((_g271130_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g271129_)
                                             (##vector-length _g271129_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g271130_ 2)))
                                      (error "Context expects 2 values"
                                             _g271130_)))
                                (let ((_pargs264457_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g271129_ 0)))
                                      (_kwargs264458_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g271129_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main264454_))
                                    (if _table264433_
                                        (let ((_xargs264465_
                                               (map (lambda (_key264460_)
                                                      (let ((_$e264462_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _key264460_ _kwargs264458_))))
                (if _$e264462_ (values _$e264462_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys264455_)))
                                          (for-each
                                           (lambda (_kw264467_)
                                             (if (memq (car _kw264467_)
                                                       _keys264455_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx264415_
                                                    _keys264455_
                                                    _kw264467_))))
                                           _kwargs264458_)
                                          (let ((__tmp271182
                                                 (let ((__tmp271183
                                                        (let ((__tmp271184
                                                               (let ((__tmp271189
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp271190
                                     (let ()
                                       (declare (not safe))
                                       (cons _main264454_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp271190)))
                             (__tmp271185
                              (let ((__tmp271187
                                     (let ((__tmp271188
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp271188)))
                                    (__tmp271186
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs264457_
                                               _xargs264465_))))
                                (declare (not safe))
                                (cons __tmp271187 __tmp271186))))
                         (declare (not safe))
                         (cons __tmp271189 __tmp271185))))
                  (declare (not safe))
                  (cons '%#call __tmp271184))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp271183
                                                    _stx264415_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0 __tmp271182)))
                                        (let* ((_kwt264469_
                                                (let ((__tmp271131
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp271131)))
                                               (_kwvars264472_
                                                (map (lambda (_g271132_)
                                                       (let ((__tmp271133
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp271133)))
                                                     _kwargs264458_))
                                               (_kwbind264477_
                                                (map (lambda (_kw264474_
                                                              _kwvar264475_)
                                                       (let ((__tmp271136
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar264475_ '())))
                     (__tmp271134
                      (let ((__tmp271135 (cdr _kw264474_)))
                        (declare (not safe))
                        (cons __tmp271135 '()))))
                 (declare (not safe))
                 (cons __tmp271136 __tmp271134)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs264458_
                                                     _kwvars264472_))
                                               (_kwset264482_
                                                (map (lambda (_kw264479_
                                                              _kwvar264480_)
                                                       (let ((__tmp271137
                                                              (let ((__tmp271138
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp271146
                                    (let ((__tmp271147
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt264469_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp271147)))
                                   (__tmp271139
                                    (let ((__tmp271143
                                           (let ((__tmp271144
                                                  (let ((__tmp271145
                                                         (car _kw264479_)))
                                                    (declare (not safe))
                                                    (cons __tmp271145 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp271144)))
                                          (__tmp271140
                                           (let ((__tmp271141
                                                  (let ((__tmp271142
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar264480_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp271142))))
                                             (declare (not safe))
                                             (cons __tmp271141 '()))))
                                      (declare (not safe))
                                      (cons __tmp271143 __tmp271140))))
                               (declare (not safe))
                               (cons __tmp271146 __tmp271139))))
                        (declare (not safe))
                        (cons '(%#ref hash-put!) __tmp271138))))
                 (declare (not safe))
                 (cons '%#call __tmp271137)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs264458_
                                                     _kwvars264472_))
                                               (_xkwargs264487_
                                                (map (lambda (_kw264484_
                                                              _kwvar264485_)
                                                       (let ((__tmp271150
                                                              (car _kw264484_))
                                                             (__tmp271148
                                                              (let ((__tmp271149
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar264485_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp271149))))
                 (declare (not safe))
                 (cons __tmp271150 __tmp271148)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs264458_
                                                     _kwvars264472_))
                                               (_xargs264494_
                                                (map (lambda (_key264489_)
                                                       (let ((_$e264491_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq _key264489_ _xkwargs264487_))))
                 (if _$e264491_ (values _$e264491_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys264455_)))
                                          (let ((__tmp271151
                                                 (let ((__tmp271152
                                                        (let ((__tmp271153
                                                               (let ((__tmp271154
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp271155
                                     (let ((__tmp271156
                                            (let ((__tmp271170
                                                   (let ((__tmp271171
                                                          (let ((__tmp271181
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt264469_ '())))
                        (__tmp271172
                         (let ((__tmp271173
                                (let ((__tmp271174
                                       (let ((__tmp271175
                                              (let ((__tmp271176
                                                     (let ((__tmp271177
                                                            (let ((__tmp271178
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp271179
                                  (let ((__tmp271180 (length _kwargs264458_)))
                                    (declare (not safe))
                                    (cons __tmp271180 '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp271179))))
                      (declare (not safe))
                      (cons __tmp271178 '()))))
               (declare (not safe))
               (cons '(%#quote size:) __tmp271177))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-hash-table-eq)
                                                      __tmp271176))))
                                         (declare (not safe))
                                         (cons '%#call __tmp271175))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp271174
                                   _stx264415_))))
                           (declare (not safe))
                           (cons __tmp271173 '()))))
                    (declare (not safe))
                    (cons __tmp271181 __tmp271172))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp271171 '())))
                                                  (__tmp271157
                                                   (let ((__tmp271158
                                                          (let ((__tmp271159
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp271160
                                (let ((__tmp271161
                                       (let ((__tmp271162
                                              (let ((__tmp271163
                                                     (let ((__tmp271168
                                                            (let ((__tmp271169
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main264454_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp271169)))
                   (__tmp271164
                    (let ((__tmp271166
                           (let ((__tmp271167
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt264469_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp271167)))
                          (__tmp271165
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs264457_ _xargs264494_))))
                      (declare (not safe))
                      (cons __tmp271166 __tmp271165))))
               (declare (not safe))
               (cons __tmp271168 __tmp271164))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp271163))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp271162
                                          _stx264415_))))
                                  (declare (not safe))
                                  (cons __tmp271161 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp271160 _kwset264482_))))
                    (declare (not safe))
                    (cons '%#begin __tmp271159))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp271158 '()))))
                                              (declare (not safe))
                                              (cons __tmp271170 __tmp271157))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp271156))))
                                (declare (not safe))
                                (cons __tmp271155 '()))))
                         (declare (not safe))
                         (cons _kwbind264477_ __tmp271154))))
                  (declare (not safe))
                  (cons '%#let-values __tmp271153))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp271152
                                                    _stx264415_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0
                                             __tmp271151)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g264434264443_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e264439264500_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g264434264443_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e264440264503_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g264434264443_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys264506_ _e264440264503_)
                               (_e264441264508_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g264434264443_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main264511_ _e264441264508_))
                          (declare (not safe))
                          (_K264438264497_ _main264511_ _keys264506_))
                        (let () (declare (not safe)) (_else264436264451_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self264417264425_
                 'gxc#!kw-lambda::t))
              (let* ((_e264421264516_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self264417264425_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e264422264519_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self264417264425_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table264522_ _e264422264519_)
                     (_e264423264524_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self264417264425_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch264527_ _e264423264524_))
                (declare (not safe))
                (_K264420264513_ _dispatch264527_ _table264522_))
              (let () (declare (not safe)) (_E264419264429_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx264027_ _args264028_)
        (let _lp264030_ ((_rest264032_ _args264028_)
                         (_pargs264033_ '())
                         (_kwargs264034_ '()))
          (let* ((___stx270254270255_ _rest264032_)
                 (_g264040264092_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx270254270255_)))))
            (let ((___kont270256270257_
                   (lambda (_L264271_ _L264272_)
                     (let ((__tmp271191
                            (let ()
                              (declare (not safe))
                              (cons _L264272_ _pargs264033_))))
                       (declare (not safe))
                       (_lp264030_ _L264271_ __tmp271191 _kwargs264034_))))
                  (___kont270258270259_
                   (lambda (_L264217_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L264217_ _pargs264033_))
                             (reverse _kwargs264034_))))
                  (___kont270260270261_
                   (lambda (_L264164_ _L264165_ _L264166_)
                     (let ((_kw264183_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L264166_))))
                       (if (assq _kw264183_ _kwargs264034_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx264027_
                              _kw264183_))
                           (let ((__tmp271192
                                  (let ((__tmp271193
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw264183_ _L264165_))))
                                    (declare (not safe))
                                    (cons __tmp271193 _kwargs264034_))))
                             (declare (not safe))
                             (_lp264030_
                              _L264164_
                              _pargs264033_
                              __tmp271192))))))
                  (___kont270262270263_
                   (lambda (_L264112_ _L264113_)
                     (let ((__tmp271194
                            (let ()
                              (declare (not safe))
                              (cons _L264113_ _pargs264033_))))
                       (declare (not safe))
                       (_lp264030_ _L264112_ __tmp271194 _kwargs264034_))))
                  (___kont270264270265_
                   (lambda ()
                     (values (reverse _pargs264033_)
                             (reverse _kwargs264034_)))))
              (let* ((_g264039264099_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx270254270255_))
                            (___kont270264270265_)
                            (let () (declare (not safe)) (_g264040264092_)))))
                     (___match270361270362_
                      (lambda (_e264073264132_
                               _hd264072264135_
                               _tl264071264137_
                               _e264076264140_
                               _hd264075264143_
                               _tl264074264145_
                               _e264079264148_
                               _hd264078264151_
                               _tl264077264153_
                               _e264082264156_
                               _hd264081264159_
                               _tl264080264161_)
                        (let ((_L264164_ _tl264080264161_)
                              (_L264165_ _hd264081264159_)
                              (_L264166_ _hd264078264151_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L264166_))
                              (___kont270260270261_
                               _L264164_
                               _L264165_
                               _L264166_)
                              (___kont270262270263_
                               _tl264071264137_
                               _hd264072264135_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx270254270255_))
                    (let ((_e264046264236_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx270254270255_))))
                      (let ((_tl264044264241_
                             (let ()
                               (declare (not safe))
                               (##cdr _e264046264236_)))
                            (_hd264045264239_
                             (let ()
                               (declare (not safe))
                               (##car _e264046264236_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd264045264239_))
                            (let ((_e264049264244_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd264045264239_))))
                              (let ((_tl264047264249_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e264049264244_)))
                                    (_hd264048264247_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e264049264244_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd264048264247_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd264048264247_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl264047264249_))
                                            (let ((_e264052264252_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl264047264249_))))
                                              (let ((_tl264050264257_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e264052264252_)))
                                                    (_hd264051264255_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e264052264252_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd264051264255_))
                                                    (let ((_e264053264260_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd264051264255_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e264053264260_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl264050264257_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl264044264241_))
                          (let ((_e264056264263_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl264044264241_))))
                            (let ((_tl264054264268_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e264056264263_)))
                                  (_hd264055264266_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e264056264263_))))
                              (___kont270256270257_
                               _tl264054264268_
                               _hd264055264266_)))
                          (___kont270262270263_
                           _tl264044264241_
                           _hd264045264239_))
                      (___kont270262270263_ _tl264044264241_ _hd264045264239_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e264053264260_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl264050264257_))
                          (___kont270258270259_ _tl264044264241_)
                          (___kont270262270263_
                           _tl264044264241_
                           _hd264045264239_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl264050264257_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl264044264241_))
                              (let ((_e264082264156_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl264044264241_))))
                                (let ((_tl264080264161_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e264082264156_)))
                                      (_hd264081264159_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e264082264156_))))
                                  (___match270361270362_
                                   _e264046264236_
                                   _hd264045264239_
                                   _tl264044264241_
                                   _e264049264244_
                                   _hd264048264247_
                                   _tl264047264249_
                                   _e264052264252_
                                   _hd264051264255_
                                   _tl264050264257_
                                   _e264082264156_
                                   _hd264081264159_
                                   _tl264080264161_)))
                              (___kont270262270263_
                               _tl264044264241_
                               _hd264045264239_))
                          (___kont270262270263_
                           _tl264044264241_
                           _hd264045264239_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl264050264257_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl264044264241_))
                                                            (let ((_e264082264156_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl264044264241_))))
                      (let ((_tl264080264161_
                             (let ()
                               (declare (not safe))
                               (##cdr _e264082264156_)))
                            (_hd264081264159_
                             (let ()
                               (declare (not safe))
                               (##car _e264082264156_))))
                        (___match270361270362_
                         _e264046264236_
                         _hd264045264239_
                         _tl264044264241_
                         _e264049264244_
                         _hd264048264247_
                         _tl264047264249_
                         _e264052264252_
                         _hd264051264255_
                         _tl264050264257_
                         _e264082264156_
                         _hd264081264159_
                         _tl264080264161_)))
                    (___kont270262270263_ _tl264044264241_ _hd264045264239_))
                (___kont270262270263_ _tl264044264241_ _hd264045264239_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont270262270263_
                                             _tl264044264241_
                                             _hd264045264239_))
                                        (___kont270262270263_
                                         _tl264044264241_
                                         _hd264045264239_))
                                    (___kont270262270263_
                                     _tl264044264241_
                                     _hd264045264239_))))
                            (___kont270262270263_
                             _tl264044264241_
                             _hd264045264239_))))
                    (let () (declare (not safe)) (_g264039264099_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self264023_ _stx264024_ _args264025_)
        (let () (declare (not safe)) (gxc#xform-call% _stx264024_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
