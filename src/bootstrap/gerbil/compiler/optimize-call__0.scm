(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1708194438)
  (begin
    (define gxc#&optimize-call
      (make-promise
       (lambda ()
         (let ((_tbl269125_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp273483 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl269125_ __tmp273483))
           (let ()
             (declare (not safe))
             (table-set! _tbl269125_ '%#call gxc#optimize-call%))
           _tbl269125_))))
    (define gxc#apply-optimize-call
      (lambda (_stx269108_ . _args269110_)
        (let ((__tmp273485
               (lambda ()
                 (declare (not safe))
                 (if (null? _args269110_)
                     (gxc#compile-e__0 _stx269108_)
                     (let ((_arg1269115_ (car _args269110_))
                           (_rest269117_ (cdr _args269110_)))
                       (if (null? _rest269117_)
                           (gxc#compile-e__1 _stx269108_ _arg1269115_)
                           (let ((_arg2269120_ (car _rest269117_))
                                 (_rest269122_ (cdr _rest269117_)))
                             (if (null? _rest269122_)
                                 (gxc#compile-e__2
                                  _stx269108_
                                  _arg1269115_
                                  _arg2269120_)
                                 (apply gxc#compile-e
                                        _stx269108_
                                        _arg1269115_
                                        _arg2269120_
                                        _rest269122_))))))))
              (__tmp273484 (force gxc#&optimize-call)))
          (declare (not safe))
          (call-with-parameters
           __tmp273485
           gxc#current-compile-methods
           __tmp273484))))
    (define gxc#optimize-call%
      (lambda (_stx268963_)
        (let* ((___stx273233273234_ _stx268963_)
               (_g268966268986_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx273233273234_)))))
          (let ((___kont273235273236_
                 (lambda (_L269030_ _L269031_)
                   (let* ((_rator-id269049_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L269031_)))
                          (_rator-type269051_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id269049_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type269051_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp273486
                                  (##structure-ref
                                   _rator-type269051_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id269049_
                              '" => "
                              _rator-type269051_
                              '" "
                              __tmp273486))
                           (let ((_optimized269054_
                                  (let ((__method273481
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type269051_
                                            'optimize-call))))
                                    (if __method273481
                                        (__method273481
                                         _rator-type269051_
                                         _stx268963_
                                         _L269030_)
                                        (error '"Missing method"
                                               _rator-type269051_
                                               'optimize-call)))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type269051_))
                                 _optimized269054_
                                 (let* ((___stx273215273216_ _optimized269054_)
                                        (_g269057269067_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx273215273216_)))))
                                   (let ((___kont273217273218_
                                          (lambda (_L269087_)
                                            (let ((__tmp273487
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L269087_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp273487
                                               _stx268963_))))
                                         (___kont273219273220_
                                          (lambda () _optimized269054_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx273215273216_))
                                         (let ((_e269060269079_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx273215273216_))))
                                           (let ((_tl269062269084_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e269060269079_)))
                                                 (_hd269061269082_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e269060269079_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd269061269082_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd269061269082_))
                                                     (___kont273217273218_
                                                      _tl269062269084_)
                                                     (___kont273219273220_))
                                                 (___kont273219273220_))))
                                         (___kont273219273220_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type269051_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx268963_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx268963_
                                _rator-type269051_)))))))
                (___kont273237273238_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _stx268963_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx273233273234_))
                (let ((_e268970268998_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx273233273234_))))
                  (let ((_tl268972269003_
                         (let () (declare (not safe)) (##cdr _e268970268998_)))
                        (_hd268971269001_
                         (let ()
                           (declare (not safe))
                           (##car _e268970268998_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl268972269003_))
                        (let ((_e268973269006_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl268972269003_))))
                          (let ((_tl268975269011_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e268973269006_)))
                                (_hd268974269009_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e268973269006_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd268974269009_))
                                (let ((_e268976269014_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd268974269009_))))
                                  (let ((_tl268978269019_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e268976269014_)))
                                        (_hd268977269017_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e268976269014_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd268977269017_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd268977269017_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl268978269019_))
                                                (let ((_e268979269022_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl268978269019_))))
                                                  (let ((_tl268981269027_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e268979269022_)))
                                                        (_hd268980269025_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e268979269022_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl268981269027_))
                                                        (___kont273235273236_
                                                         _tl268975269011_
                                                         _hd268980269025_)
                                                        (___kont273237273238_))))
                                                (___kont273237273238_))
                                            (___kont273237273238_))
                                        (___kont273237273238_))))
                                (___kont273237273238_))))
                        (___kont273237273238_))))
                (___kont273237273238_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self268917_ _stx268918_ _args268919_)
        (let* ((_g268921268931_
                (lambda (_g268922268928_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g268922268928_))))
               (_g268920268960_
                (lambda (_g268922268934_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g268922268934_))
                      (let ((_e268924268936_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g268922268934_))))
                        (let ((_hd268925268939_
                               (let ()
                                 (declare (not safe))
                                 (##car _e268924268936_)))
                              (_tl268926268941_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e268924268936_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl268926268941_))
                              ((lambda (_L268944_)
                                 (let* ((_klass268955_
                                         (let ((__tmp273488
                                                (##structure-ref
                                                 _self268917_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx268918_
                                            __tmp273488)))
                                        (_object268957_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L268944_))))
                                   (if (##structure-ref
                                        _klass268955_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp273489
                                              (let ((__tmp273490
                                                     (let ((__tmp273492
                                                            (let ((__tmp273493
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp273494
                                  (##structure-ref
                                   _klass268955_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp273494 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp273493)))
                   (__tmp273491
                    (let () (declare (not safe)) (cons _object268957_ '()))))
               (declare (not safe))
               (cons __tmp273492 __tmp273491))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp273490))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp273489
                                          _stx268918_))
                                       (if (##structure-ref
                                            _klass268955_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp273495
                                                  (let ((__tmp273496
                                                         (let ((__tmp273498
                                                                (let ((__tmp273499
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp273500
                                      (##structure-ref
                                       _klass268955_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp273500 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp273499)))
                       (__tmp273497
                        (let ()
                          (declare (not safe))
                          (cons _object268957_ '()))))
                   (declare (not safe))
                   (cons __tmp273498 __tmp273497))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp273496))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp273495
                                              _stx268918_))
                                           (let ((__tmp273501
                                                  (let ((__tmp273502
                                                         (let ((__tmp273508
                                                                (let ((__tmp273509
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp273509)))
                       (__tmp273503
                        (let ((__tmp273505
                               (let ((__tmp273506
                                      (let ((__tmp273507
                                             (##structure-ref
                                              _self268917_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp273507 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp273506)))
                              (__tmp273504
                               (let ()
                                 (declare (not safe))
                                 (cons _object268957_ '()))))
                          (declare (not safe))
                          (cons __tmp273505 __tmp273504))))
                   (declare (not safe))
                   (cons __tmp273508 __tmp273503))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp273502))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp273501
                                              _stx268918_))))))
                               _hd268925268939_)
                              (let ()
                                (declare (not safe))
                                (_g268921268931_ _g268922268934_)))))
                      (let ()
                        (declare (not safe))
                        (_g268921268931_ _g268922268934_))))))
          (declare (not safe))
          (_g268920268960_ _args268919_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__t273194)
        (let ((__id273195
               (let ((__tmp273196
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t273194 'id))))
                 (if __tmp273196 __tmp273196 (error '"Unknown slot" 'id)))))
          (lambda (_self268917_ _stx268918_ _args268919_)
            (let* ((_g268921268931_
                    (lambda (_g268922268928_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g268922268928_))))
                   (_g268920268960_
                    (lambda (_g268922268934_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g268922268934_))
                          (let ((_e268924268936_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g268922268934_))))
                            (let ((_hd268925268939_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e268924268936_)))
                                  (_tl268926268941_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e268924268936_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl268926268941_))
                                  ((lambda (_L268944_)
                                     (let* ((_klass268955_
                                             (let ((__tmp273510
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self268917_
                                                       __id273195
                                                       __t273194
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx268918_
                                                __tmp273510)))
                                            (_object268957_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L268944_))))
                                       (if (##structure-ref
                                            _klass268955_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp273511
                                                  (let ((__tmp273512
                                                         (let ((__tmp273514
                                                                (let ((__tmp273515
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp273516
                                      (##structure-ref
                                       _klass268955_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp273516 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp273515)))
                       (__tmp273513
                        (let ()
                          (declare (not safe))
                          (cons _object268957_ '()))))
                   (declare (not safe))
                   (cons __tmp273514 __tmp273513))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp273512))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp273511
                                              _stx268918_))
                                           (if (##structure-ref
                                                _klass268955_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp273517
                                                      (let ((__tmp273518
                                                             (let ((__tmp273520
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp273521
                                   (let ((__tmp273522
                                          (##structure-ref
                                           _klass268955_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp273522 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp273521)))
                           (__tmp273519
                            (let ()
                              (declare (not safe))
                              (cons _object268957_ '()))))
                       (declare (not safe))
                       (cons __tmp273520 __tmp273519))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp273518))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp273517
                                                  _stx268918_))
                                               (let ((__tmp273523
                                                      (let ((__tmp273524
                                                             (let ((__tmp273530
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp273531
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp273531)))
                           (__tmp273525
                            (let ((__tmp273527
                                   (let ((__tmp273528
                                          (let ((__tmp273529
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self268917_
                                                    __id273195
                                                    __t273194
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp273529 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp273528)))
                                  (__tmp273526
                                   (let ()
                                     (declare (not safe))
                                     (cons _object268957_ '()))))
                              (declare (not safe))
                              (cons __tmp273527 __tmp273526))))
                       (declare (not safe))
                       (cons __tmp273530 __tmp273525))))
                (declare (not safe))
                (cons '%#call __tmp273524))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp273523
                                                  _stx268918_))))))
                                   _hd268925268939_)
                                  (let ()
                                    (declare (not safe))
                                    (_g268921268931_ _g268922268934_)))))
                          (let ()
                            (declare (not safe))
                            (_g268921268931_ _g268922268934_))))))
              (declare (not safe))
              (_g268920268960_ _args268919_))))))
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
      (lambda (_self268637_ _stx268638_ _args268639_)
        (let* ((_klass268641_
                (let ((__tmp273532
                       (##structure-ref _self268637_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx268638_ __tmp273532)))
               (_fields268643_
                (length (##structure-ref _klass268641_ '5 gxc#!class::t '#f)))
               (_args268645_ (map gxc#compile-e _args268639_))
               (_inline-make-object268647_
                (let ((__tmp273533
                       (let ((__tmp273539
                              (let ((__tmp273540
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp273540)))
                             (__tmp273534
                              (let ((__tmp273536
                                     (let ((__tmp273537
                                            (let ((__tmp273538
                                                   (##structure-ref
                                                    _self268637_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp273538 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp273537)))
                                    (__tmp273535
                                     (make-list _fields268643_ '(%#quote #f))))
                                (declare (not safe))
                                (cons __tmp273536 __tmp273535))))
                         (declare (not safe))
                         (cons __tmp273539 __tmp273534))))
                  (declare (not safe))
                  (cons '%#call __tmp273533))))
          (let ((_$e268650_
                 (##structure-ref _klass268641_ '6 gxc#!class::t '#f)))
            (if _$e268650_
                ((lambda (_ctor268653_)
                   (let ((_$obj268655_
                          (let ((__tmp273541 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp273541)))
                         (_ctor-impl268656_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass268641_
                             _ctor268653_))))
                     (let ((__tmp273542
                            (let ((__tmp273543
                                   (let ((__tmp273611
                                          (let ((__tmp273612
                                                 (let ((__tmp273614
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj268655_
                                                                '())))
                                                       (__tmp273613
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object268647_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp273614
                                                         __tmp273613))))
                                            (declare (not safe))
                                            (cons __tmp273612 '())))
                                         (__tmp273544
                                          (let ((__tmp273545
                                                 (let ((__tmp273546
                                                        (let ((__tmp273550
                                                               (if _ctor-impl268656_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp273551
                                  (let ((__tmp273555
                                         (let ((__tmp273556
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl268656_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp273556)))
                                        (__tmp273552
                                         (let ((__tmp273553
                                                (let ((__tmp273554
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj268655_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp273554))))
                                           (declare (not safe))
                                           (cons __tmp273553 _args268645_))))
                                    (declare (not safe))
                                    (cons __tmp273555 __tmp273552))))
                             (declare (not safe))
                             (cons '%#call __tmp273551))
                           (let* ((_$ctor268658_
                                   (let ((__tmp273557 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp273557)))
                                  (__tmp273558
                                   (let ((__tmp273593
                                          (let ((__tmp273594
                                                 (let ((__tmp273610
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor268658_
                                                                '())))
                                                       (__tmp273595
                                                        (let ((__tmp273596
                                                               (let ((__tmp273597
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp273608
                                     (let ((__tmp273609
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp273609)))
                                    (__tmp273598
                                     (let ((__tmp273605
                                            (let ((__tmp273606
                                                   (let ((__tmp273607
                                                          (##structure-ref
                                                           _self268637_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp273607 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp273606)))
                                           (__tmp273599
                                            (let ((__tmp273603
                                                   (let ((__tmp273604
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj268655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp273604)))
                                                  (__tmp273600
                                                   (let ((__tmp273601
                                                          (let ((__tmp273602
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _ctor268653_ '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp273602))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp273601 '()))))
                                              (declare (not safe))
                                              (cons __tmp273603 __tmp273600))))
                                       (declare (not safe))
                                       (cons __tmp273605 __tmp273599))))
                                (declare (not safe))
                                (cons __tmp273608 __tmp273598))))
                         (declare (not safe))
                         (cons '%#call __tmp273597))))
                  (declare (not safe))
                  (cons __tmp273596 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp273610
                                                         __tmp273595))))
                                            (declare (not safe))
                                            (cons __tmp273594 '())))
                                         (__tmp273559
                                          (let ((__tmp273560
                                                 (let ((__tmp273561
                                                        (let ((__tmp273591
                                                               (let ((__tmp273592
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor268658_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp273592)))
                      (__tmp273562
                       (let ((__tmp273584
                              (let ((__tmp273585
                                     (let ((__tmp273589
                                            (let ((__tmp273590
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor268658_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp273590)))
                                           (__tmp273586
                                            (let ((__tmp273587
                                                   (let ((__tmp273588
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj268655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp273588))))
                                              (declare (not safe))
                                              (cons __tmp273587
                                                    _args268645_))))
                                       (declare (not safe))
                                       (cons __tmp273589 __tmp273586))))
                                (declare (not safe))
                                (cons '%#call __tmp273585)))
                             (__tmp273563
                              (let ((__tmp273564
                                     (let ((__tmp273565
                                            (let ((__tmp273582
                                                   (let ((__tmp273583
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp273583)))
                                                  (__tmp273566
                                                   (let ((__tmp273580
                                                          (let ((__tmp273581
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp273581)))
                 (__tmp273567
                  (let ((__tmp273578
                         (let ((__tmp273579
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp273579)))
                        (__tmp273568
                         (let ((__tmp273575
                                (let ((__tmp273576
                                       (let ((__tmp273577
                                              (##structure-ref
                                               _self268637_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp273577 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp273576)))
                               (__tmp273569
                                (let ((__tmp273573
                                       (let ((__tmp273574
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp273574)))
                                      (__tmp273570
                                       (let ((__tmp273571
                                              (let ((__tmp273572
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor268653_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp273572))))
                                         (declare (not safe))
                                         (cons __tmp273571 '()))))
                                  (declare (not safe))
                                  (cons __tmp273573 __tmp273570))))
                           (declare (not safe))
                           (cons __tmp273575 __tmp273569))))
                    (declare (not safe))
                    (cons __tmp273578 __tmp273568))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp273580
                                                           __tmp273567))))
                                              (declare (not safe))
                                              (cons __tmp273582 __tmp273566))))
                                       (declare (not safe))
                                       (cons '%#call __tmp273565))))
                                (declare (not safe))
                                (cons __tmp273564 '()))))
                         (declare (not safe))
                         (cons __tmp273584 __tmp273563))))
                  (declare (not safe))
                  (cons __tmp273591 __tmp273562))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp273561))))
                                            (declare (not safe))
                                            (cons __tmp273560 '()))))
                                     (declare (not safe))
                                     (cons __tmp273593 __tmp273559))))
                             (declare (not safe))
                             (cons '%#let-values __tmp273558))))
                      (__tmp273547
                       (let ((__tmp273548
                              (let ((__tmp273549
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj268655_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp273549))))
                         (declare (not safe))
                         (cons __tmp273548 '()))))
                  (declare (not safe))
                  (cons __tmp273550 __tmp273547))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp273546))))
                                            (declare (not safe))
                                            (cons __tmp273545 '()))))
                                     (declare (not safe))
                                     (cons __tmp273611 __tmp273544))))
                              (declare (not safe))
                              (cons '%#let-values __tmp273543))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp273542 _stx268638_))))
                 _$e268650_)
                (let ((_$e268660_
                       (##structure-ref _klass268641_ '9 gxc#!class::t '#f)))
                  (if _$e268660_
                      ((lambda (_metaclass268663_)
                         (let* ((_$obj268665_
                                 (let ((__tmp273615 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp273615)))
                                (_metakons268667_
                                 (let ((__tmp273616
                                        (let ()
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           _stx268638_
                                           _metaclass268663_))))
                                   (declare (not safe))
                                   (gxc#!class-lookup-method
                                    __tmp273616
                                    'instance-init!))))
                           (let ((__tmp273617
                                  (let ((__tmp273618
                                         (let ((__tmp273649
                                                (let ((__tmp273650
                                                       (let ((__tmp273652
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj268665_ '())))
                     (__tmp273651
                      (let ()
                        (declare (not safe))
                        (cons _inline-make-object268647_ '()))))
                 (declare (not safe))
                 (cons __tmp273652 __tmp273651))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp273650 '())))
                                               (__tmp273619
                                                (let ((__tmp273620
                                                       (let ((__tmp273621
                                                              (let ((__tmp273625
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if _metakons268667_
                                 (let ((__tmp273626
                                        (let ((__tmp273634
                                               (let ((__tmp273635
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metakons268667_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp273635)))
                                              (__tmp273627
                                               (let ((__tmp273631
                                                      (let ((__tmp273632
                                                             (let ((__tmp273633
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self268637_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp273633 '()))))
                (declare (not safe))
                (cons '%#ref __tmp273632)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp273628
                                                      (let ((__tmp273629
                                                             (let ((__tmp273630
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _$obj268665_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp273630))))
                (declare (not safe))
                (cons __tmp273629 _args268645_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp273631
                                                       __tmp273628))))
                                          (declare (not safe))
                                          (cons __tmp273634 __tmp273627))))
                                   (declare (not safe))
                                   (cons '%#call __tmp273626))
                                 (let ((__tmp273636
                                        (let ((__tmp273647
                                               (let ((__tmp273648
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'call-method
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp273648)))
                                              (__tmp273637
                                               (let ((__tmp273644
                                                      (let ((__tmp273645
                                                             (let ((__tmp273646
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self268637_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp273646 '()))))
                (declare (not safe))
                (cons '%#ref __tmp273645)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp273638
                                                      (let ((__tmp273642
                                                             (let ((__tmp273643
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'instance-init! '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp273643)))
                    (__tmp273639
                     (let ((__tmp273640
                            (let ((__tmp273641
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj268665_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp273641))))
                       (declare (not safe))
                       (cons __tmp273640 _args268645_))))
                (declare (not safe))
                (cons __tmp273642 __tmp273639))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp273644
                                                       __tmp273638))))
                                          (declare (not safe))
                                          (cons __tmp273647 __tmp273637))))
                                   (declare (not safe))
                                   (cons '%#call __tmp273636))))
                            (__tmp273622
                             (let ((__tmp273623
                                    (let ((__tmp273624
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj268665_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp273624))))
                               (declare (not safe))
                               (cons __tmp273623 '()))))
                        (declare (not safe))
                        (cons __tmp273625 __tmp273622))))
                 (declare (not safe))
                 (cons '%#begin __tmp273621))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp273620 '()))))
                                           (declare (not safe))
                                           (cons __tmp273649 __tmp273619))))
                                    (declare (not safe))
                                    (cons '%#let-values __tmp273618))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp273617 _stx268638_))))
                       _$e268660_)
                      (if (##structure-ref _klass268641_ '7 gxc#!class::t '#f)
                          (if (fx= (length _args268645_) _fields268643_)
                              (let ((__tmp273653
                                     (let ((__tmp273654
                                            (let ((__tmp273659
                                                   (let ((__tmp273660
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp273660)))
                                                  (__tmp273655
                                                   (let ((__tmp273656
                                                          (let ((__tmp273657
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp273658
                                (##structure-ref
                                 _self268637_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp273658 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp273657))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp273656
                                                           _args268645_))))
                                              (declare (not safe))
                                              (cons __tmp273659 __tmp273655))))
                                       (declare (not safe))
                                       (cons '%#call __tmp273654))))
                                (declare (not safe))
                                (gxc#xform-wrap-source
                                 __tmp273653
                                 _stx268638_))
                              (let ((__tmp273662
                                     (##structure-ref
                                      _self268637_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                    (__tmp273661
                                     (length (##structure-ref
                                              _klass268641_
                                              '5
                                              gxc#!class::t
                                              '#f))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"illegal struct constructor application; arity mismatch"
                                 _stx268638_
                                 __tmp273662
                                 __tmp273661)))
                          (let ((_$obj268670_
                                 (let ((__tmp273663 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp273663))))
                            (let _lp268672_ ((_rest268674_ _args268645_)
                                             (_initializers268675_ '()))
                              (let* ((___stx273271273272_ _rest268674_)
                                     (_g268679268700_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx273271273272_)))))
                                (let ((___kont273273273274_
                                       (lambda (_L268754_ _L268755_ _L268756_)
                                         (let* ((_slot268787_
                                                 (keyword->symbol
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e _L268756_))))
                                                (_off268789_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass268641_
                                                    _slot268787_))))
                                           (if _off268789_
                                               (let ((__tmp273664
                                                      (let ((__tmp273665
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off268789_ _L268755_))))
                (declare (not safe))
                (cons __tmp273665 _initializers268675_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp268672_
                                                  _L268754_
                                                  __tmp273664))
                                               (let ((__tmp273666
                                                      (##structure-ref
                                                       _self268637_
                                                       '1
                                                       gxc#!type::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"unknown slot"
                                                  _stx268638_
                                                  __tmp273666
                                                  _slot268787_))))))
                                      (___kont273275273276_
                                       (lambda ()
                                         (let ((__tmp273667
                                                (let ((__tmp273668
                                                       (let ((__tmp273691
                                                              (let ((__tmp273692
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp273694
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj268670_ '())))
                                   (__tmp273693
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object268647_ '()))))
                               (declare (not safe))
                               (cons __tmp273694 __tmp273693))))
                        (declare (not safe))
                        (cons __tmp273692 '())))
                     (__tmp273669
                      (let ((__tmp273670
                             (let ((__tmp273671
                                    (let ((__tmp273688
                                           (let ((__tmp273689
                                                  (let ((__tmp273690
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj268670_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp273690))))
                                             (declare (not safe))
                                             (cons __tmp273689 '())))
                                          (__tmp273672
                                           (let ((__tmp273673
                                                  (lambda (_i268714_ _r268715_)
                                                    (let ((__tmp273674
                                                           (let ((__tmp273675
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp273685
                                 (let ((__tmp273686
                                        (let ((__tmp273687
                                               (##structure-ref
                                                _self268637_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp273687 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp273686)))
                                (__tmp273676
                                 (let ((__tmp273682
                                        (let ((__tmp273683
                                               (let ((__tmp273684
                                                      (car _i268714_)))
                                                 (declare (not safe))
                                                 (cons __tmp273684 '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp273683)))
                                       (__tmp273677
                                        (let ((__tmp273680
                                               (let ((__tmp273681
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _$obj268670_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp273681)))
                                              (__tmp273678
                                               (let ((__tmp273679
                                                      (cdr _i268714_)))
                                                 (declare (not safe))
                                                 (cons __tmp273679 '()))))
                                          (declare (not safe))
                                          (cons __tmp273680 __tmp273678))))
                                   (declare (not safe))
                                   (cons __tmp273682 __tmp273677))))
                            (declare (not safe))
                            (cons __tmp273685 __tmp273676))))
                     (declare (not safe))
                     (cons '%#struct-unchecked-set! __tmp273675))))
              (declare (not safe))
              (cons __tmp273674 _r268715_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (foldl1 __tmp273673
                                                     '()
                                                     _initializers268675_))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp273688 __tmp273672))))
                               (declare (not safe))
                               (cons '%#begin __tmp273671))))
                        (declare (not safe))
                        (cons __tmp273670 '()))))
                 (declare (not safe))
                 (cons __tmp273691 __tmp273669))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp273668))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp273667
                                            _stx268638_))))
                                      (___kont273277273278_
                                       (lambda ()
                                         (let ((__tmp273695
                                                (let ((__tmp273696
                                                       (let ((__tmp273710
                                                              (let ((__tmp273711
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp273713
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj268670_ '())))
                                   (__tmp273712
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object268647_ '()))))
                               (declare (not safe))
                               (cons __tmp273713 __tmp273712))))
                        (declare (not safe))
                        (cons __tmp273711 '())))
                     (__tmp273697
                      (let ((__tmp273698
                             (let ((__tmp273699
                                    (let ((__tmp273703
                                           (let ((__tmp273704
                                                  (let ((__tmp273708
                                                         (let ((__tmp273709
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'class-instance-init! '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp273709)))
                (__tmp273705
                 (let ((__tmp273706
                        (let ((__tmp273707
                               (let ()
                                 (declare (not safe))
                                 (cons _$obj268670_ '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp273707))))
                   (declare (not safe))
                   (cons __tmp273706 _args268645_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp273708
                                                          __tmp273705))))
                                             (declare (not safe))
                                             (cons '%#call __tmp273704)))
                                          (__tmp273700
                                           (let ((__tmp273701
                                                  (let ((__tmp273702
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj268670_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp273702))))
                                             (declare (not safe))
                                             (cons __tmp273701 '()))))
                                      (declare (not safe))
                                      (cons __tmp273703 __tmp273700))))
                               (declare (not safe))
                               (cons '%#begin __tmp273699))))
                        (declare (not safe))
                        (cons __tmp273698 '()))))
                 (declare (not safe))
                 (cons __tmp273710 __tmp273697))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp273696))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp273695
                                            _stx268638_)))))
                                  (let* ((_g268677268717_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   ___stx273271273272_))
                                                (___kont273275273276_)
                                                (___kont273277273278_))))
                                         (___match273308273309_
                                          (lambda (_e268684268722_
                                                   _hd268685268725_
                                                   _tl268686268727_
                                                   _e268687268730_
                                                   _hd268688268733_
                                                   _tl268689268735_
                                                   _e268690268738_
                                                   _hd268691268741_
                                                   _tl268692268743_
                                                   _e268693268746_
                                                   _hd268694268749_
                                                   _tl268695268751_)
                                            (let ((_L268754_ _tl268695268751_)
                                                  (_L268755_ _hd268694268749_)
                                                  (_L268756_ _hd268691268741_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-keyword?
                                                     _L268756_))
                                                  (___kont273273273274_
                                                   _L268754_
                                                   _L268755_
                                                   _L268756_)
                                                  (___kont273277273278_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx273271273272_))
                                        (let ((_e268684268722_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx273271273272_))))
                                          (let ((_tl268686268727_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e268684268722_)))
                                                (_hd268685268725_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e268684268722_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd268685268725_))
                                                (let ((_e268687268730_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd268685268725_))))
                                                  (let ((_tl268689268735_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e268687268730_)))
                                                        (_hd268688268733_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e268687268730_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd268688268733_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#quote
                                                               _hd268688268733_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl268689268735_))
                        (let ((_e268690268738_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl268689268735_))))
                          (let ((_tl268692268743_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e268690268738_)))
                                (_hd268691268741_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e268690268738_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl268692268743_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl268686268727_))
                                    (let ((_e268693268746_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl268686268727_))))
                                      (let ((_tl268695268751_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e268693268746_)))
                                            (_hd268694268749_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e268693268746_))))
                                        (___match273308273309_
                                         _e268684268722_
                                         _hd268685268725_
                                         _tl268686268727_
                                         _e268687268730_
                                         _hd268688268733_
                                         _tl268689268735_
                                         _e268690268738_
                                         _hd268691268741_
                                         _tl268692268743_
                                         _e268693268746_
                                         _hd268694268749_
                                         _tl268695268751_)))
                                    (___kont273277273278_))
                                (___kont273277273278_))))
                        (___kont273277273278_))
                    (___kont273277273278_))
                (___kont273277273278_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont273277273278_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g268677268717_))))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__t273197)
        (let ((__id273198
               (let ((__tmp273199
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t273197 'id))))
                 (if __tmp273199 __tmp273199 (error '"Unknown slot" 'id)))))
          (lambda (_self268637_ _stx268638_ _args268639_)
            (let* ((_klass268641_
                    (let ((__tmp273714
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self268637_
                              __id273198
                              __t273197
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx268638_ __tmp273714)))
                   (_fields268643_
                    (length (##structure-ref
                             _klass268641_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args268645_ (map gxc#compile-e _args268639_))
                   (_inline-make-object268647_
                    (let ((__tmp273715
                           (let ((__tmp273721
                                  (let ((__tmp273722
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp273722)))
                                 (__tmp273716
                                  (let ((__tmp273718
                                         (let ((__tmp273719
                                                (let ((__tmp273720
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self268637_
                                                          __id273198
                                                          __t273197
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp273720 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp273719)))
                                        (__tmp273717
                                         (make-list
                                          _fields268643_
                                          '(%#quote #f))))
                                    (declare (not safe))
                                    (cons __tmp273718 __tmp273717))))
                             (declare (not safe))
                             (cons __tmp273721 __tmp273716))))
                      (declare (not safe))
                      (cons '%#call __tmp273715))))
              (let ((_$e268650_
                     (##structure-ref _klass268641_ '6 gxc#!class::t '#f)))
                (if _$e268650_
                    ((lambda (_ctor268653_)
                       (let ((_$obj268655_
                              (let ((__tmp273723 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp273723)))
                             (_ctor-impl268656_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass268641_
                                 _ctor268653_))))
                         (let ((__tmp273724
                                (let ((__tmp273725
                                       (let ((__tmp273793
                                              (let ((__tmp273794
                                                     (let ((__tmp273796
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj268655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp273795
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object268647_ '()))))
               (declare (not safe))
               (cons __tmp273796 __tmp273795))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp273794 '())))
                                             (__tmp273726
                                              (let ((__tmp273727
                                                     (let ((__tmp273728
                                                            (let ((__tmp273732
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl268656_
                               (let ((__tmp273733
                                      (let ((__tmp273737
                                             (let ((__tmp273738
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl268656_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp273738)))
                                            (__tmp273734
                                             (let ((__tmp273735
                                                    (let ((__tmp273736
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj268655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp273736))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp273735
                                                     _args268645_))))
                                        (declare (not safe))
                                        (cons __tmp273737 __tmp273734))))
                                 (declare (not safe))
                                 (cons '%#call __tmp273733))
                               (let* ((_$ctor268658_
                                       (let ((__tmp273739
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp273739)))
                                      (__tmp273740
                                       (let ((__tmp273775
                                              (let ((__tmp273776
                                                     (let ((__tmp273792
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor268658_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp273777
                    (let ((__tmp273778
                           (let ((__tmp273779
                                  (let ((__tmp273790
                                         (let ((__tmp273791
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp273791)))
                                        (__tmp273780
                                         (let ((__tmp273787
                                                (let ((__tmp273788
                                                       (let ((__tmp273789
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self268637_
                         __id273198
                         __t273197
                         '#f))))
                 (declare (not safe))
                 (cons __tmp273789 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp273788)))
                                               (__tmp273781
                                                (let ((__tmp273785
                                                       (let ((__tmp273786
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj268655_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp273786)))
              (__tmp273782
               (let ((__tmp273783
                      (let ((__tmp273784
                             (let ()
                               (declare (not safe))
                               (cons _ctor268653_ '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp273784))))
                 (declare (not safe))
                 (cons __tmp273783 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp273785
                                                        __tmp273782))))
                                           (declare (not safe))
                                           (cons __tmp273787 __tmp273781))))
                                    (declare (not safe))
                                    (cons __tmp273790 __tmp273780))))
                             (declare (not safe))
                             (cons '%#call __tmp273779))))
                      (declare (not safe))
                      (cons __tmp273778 '()))))
               (declare (not safe))
               (cons __tmp273792 __tmp273777))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp273776 '())))
                                             (__tmp273741
                                              (let ((__tmp273742
                                                     (let ((__tmp273743
                                                            (let ((__tmp273773
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp273774
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor268658_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp273774)))
                          (__tmp273744
                           (let ((__tmp273766
                                  (let ((__tmp273767
                                         (let ((__tmp273771
                                                (let ((__tmp273772
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor268658_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp273772)))
                                               (__tmp273768
                                                (let ((__tmp273769
                                                       (let ((__tmp273770
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj268655_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp273770))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp273769
                                                        _args268645_))))
                                           (declare (not safe))
                                           (cons __tmp273771 __tmp273768))))
                                    (declare (not safe))
                                    (cons '%#call __tmp273767)))
                                 (__tmp273745
                                  (let ((__tmp273746
                                         (let ((__tmp273747
                                                (let ((__tmp273764
                                                       (let ((__tmp273765
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp273765)))
              (__tmp273748
               (let ((__tmp273762
                      (let ((__tmp273763
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp273763)))
                     (__tmp273749
                      (let ((__tmp273760
                             (let ((__tmp273761
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp273761)))
                            (__tmp273750
                             (let ((__tmp273757
                                    (let ((__tmp273758
                                           (let ((__tmp273759
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self268637_
                                                     __id273198
                                                     __t273197
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp273759 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp273758)))
                                   (__tmp273751
                                    (let ((__tmp273755
                                           (let ((__tmp273756
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp273756)))
                                          (__tmp273752
                                           (let ((__tmp273753
                                                  (let ((__tmp273754
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor268653_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp273754))))
                                             (declare (not safe))
                                             (cons __tmp273753 '()))))
                                      (declare (not safe))
                                      (cons __tmp273755 __tmp273752))))
                               (declare (not safe))
                               (cons __tmp273757 __tmp273751))))
                        (declare (not safe))
                        (cons __tmp273760 __tmp273750))))
                 (declare (not safe))
                 (cons __tmp273762 __tmp273749))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp273764
                                                        __tmp273748))))
                                           (declare (not safe))
                                           (cons '%#call __tmp273747))))
                                    (declare (not safe))
                                    (cons __tmp273746 '()))))
                             (declare (not safe))
                             (cons __tmp273766 __tmp273745))))
                      (declare (not safe))
                      (cons __tmp273773 __tmp273744))))
               (declare (not safe))
               (cons '%#if __tmp273743))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp273742 '()))))
                                         (declare (not safe))
                                         (cons __tmp273775 __tmp273741))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp273740))))
                          (__tmp273729
                           (let ((__tmp273730
                                  (let ((__tmp273731
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj268655_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp273731))))
                             (declare (not safe))
                             (cons __tmp273730 '()))))
                      (declare (not safe))
                      (cons __tmp273732 __tmp273729))))
               (declare (not safe))
               (cons '%#begin __tmp273728))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp273727 '()))))
                                         (declare (not safe))
                                         (cons __tmp273793 __tmp273726))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp273725))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp273724 _stx268638_))))
                     _$e268650_)
                    (let ((_$e268660_
                           (##structure-ref
                            _klass268641_
                            '9
                            gxc#!class::t
                            '#f)))
                      (if _$e268660_
                          ((lambda (_metaclass268663_)
                             (let* ((_$obj268665_
                                     (let ((__tmp273797 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp273797)))
                                    (_metakons268667_
                                     (let ((__tmp273798
                                            (let ()
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               _stx268638_
                                               _metaclass268663_))))
                                       (declare (not safe))
                                       (gxc#!class-lookup-method
                                        __tmp273798
                                        'instance-init!))))
                               (let ((__tmp273799
                                      (let ((__tmp273800
                                             (let ((__tmp273831
                                                    (let ((__tmp273832
                                                           (let ((__tmp273834
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj268665_ '())))
                         (__tmp273833
                          (let ()
                            (declare (not safe))
                            (cons _inline-make-object268647_ '()))))
                     (declare (not safe))
                     (cons __tmp273834 __tmp273833))))
              (declare (not safe))
              (cons __tmp273832 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp273801
                                                    (let ((__tmp273802
                                                           (let ((__tmp273803
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp273807
                                 (if _metakons268667_
                                     (let ((__tmp273808
                                            (let ((__tmp273816
                                                   (let ((__tmp273817
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _metakons268667_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp273817)))
                                                  (__tmp273809
                                                   (let ((__tmp273813
                                                          (let ((__tmp273814
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp273815
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self268637_
                                   __id273198
                                   __t273197
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp273815 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp273814)))
                 (__tmp273810
                  (let ((__tmp273811
                         (let ((__tmp273812
                                (let ()
                                  (declare (not safe))
                                  (cons _$obj268665_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp273812))))
                    (declare (not safe))
                    (cons __tmp273811 _args268645_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp273813
                                                           __tmp273810))))
                                              (declare (not safe))
                                              (cons __tmp273816 __tmp273809))))
                                       (declare (not safe))
                                       (cons '%#call __tmp273808))
                                     (let ((__tmp273818
                                            (let ((__tmp273829
                                                   (let ((__tmp273830
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'call-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp273830)))
                                                  (__tmp273819
                                                   (let ((__tmp273826
                                                          (let ((__tmp273827
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp273828
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self268637_
                                   __id273198
                                   __t273197
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp273828 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp273827)))
                 (__tmp273820
                  (let ((__tmp273824
                         (let ((__tmp273825
                                (let ()
                                  (declare (not safe))
                                  (cons 'instance-init! '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp273825)))
                        (__tmp273821
                         (let ((__tmp273822
                                (let ((__tmp273823
                                       (let ()
                                         (declare (not safe))
                                         (cons _$obj268665_ '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp273823))))
                           (declare (not safe))
                           (cons __tmp273822 _args268645_))))
                    (declare (not safe))
                    (cons __tmp273824 __tmp273821))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp273826
                                                           __tmp273820))))
                                              (declare (not safe))
                                              (cons __tmp273829 __tmp273819))))
                                       (declare (not safe))
                                       (cons '%#call __tmp273818))))
                                (__tmp273804
                                 (let ((__tmp273805
                                        (let ((__tmp273806
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$obj268665_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp273806))))
                                   (declare (not safe))
                                   (cons __tmp273805 '()))))
                            (declare (not safe))
                            (cons __tmp273807 __tmp273804))))
                     (declare (not safe))
                     (cons '%#begin __tmp273803))))
              (declare (not safe))
              (cons __tmp273802 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp273831
                                                     __tmp273801))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp273800))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp273799
                                  _stx268638_))))
                           _$e268660_)
                          (if (##structure-ref
                               _klass268641_
                               '7
                               gxc#!class::t
                               '#f)
                              (if (fx= (length _args268645_) _fields268643_)
                                  (let ((__tmp273835
                                         (let ((__tmp273836
                                                (let ((__tmp273841
                                                       (let ((__tmp273842
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '##structure '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp273842)))
              (__tmp273837
               (let ((__tmp273838
                      (let ((__tmp273839
                             (let ((__tmp273840
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self268637_
                                       __id273198
                                       __t273197
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp273840 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp273839))))
                 (declare (not safe))
                 (cons __tmp273838 _args268645_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp273841
                                                        __tmp273837))))
                                           (declare (not safe))
                                           (cons '%#call __tmp273836))))
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp273835
                                     _stx268638_))
                                  (let ((__tmp273844
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _self268637_
                                            __id273198
                                            __t273197
                                            '#f)))
                                        (__tmp273843
                                         (length (##structure-ref
                                                  _klass268641_
                                                  '5
                                                  gxc#!class::t
                                                  '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _stx268638_
                                     __tmp273844
                                     __tmp273843)))
                              (let ((_$obj268670_
                                     (let ((__tmp273845 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp273845))))
                                (let _lp268672_ ((_rest268674_ _args268645_)
                                                 (_initializers268675_ '()))
                                  (let* ((___stx273313273314_ _rest268674_)
                                         (_g268679268700_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               ___stx273313273314_)))))
                                    (let ((___kont273315273316_
                                           (lambda (_L268754_
                                                    _L268755_
                                                    _L268756_)
                                             (let* ((_slot268787_
                                                     (keyword->symbol
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L268756_))))
                                                    (_off268789_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass268641_
                                                        _slot268787_))))
                                               (if _off268789_
                                                   (let ((__tmp273846
                                                          (let ((__tmp273847
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _off268789_ _L268755_))))
                    (declare (not safe))
                    (cons __tmp273847 _initializers268675_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp268672_
                                                      _L268754_
                                                      __tmp273846))
                                                   (let ((__tmp273848
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _self268637_
                                                             __id273198
                                                             __t273197
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"unknown slot"
                                                      _stx268638_
                                                      __tmp273848
                                                      _slot268787_))))))
                                          (___kont273317273318_
                                           (lambda ()
                                             (let ((__tmp273849
                                                    (let ((__tmp273850
                                                           (let ((__tmp273873
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp273874
                                 (let ((__tmp273876
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj268670_ '())))
                                       (__tmp273875
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object268647_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp273876 __tmp273875))))
                            (declare (not safe))
                            (cons __tmp273874 '())))
                         (__tmp273851
                          (let ((__tmp273852
                                 (let ((__tmp273853
                                        (let ((__tmp273870
                                               (let ((__tmp273871
                                                      (let ((__tmp273872
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj268670_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp273872))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp273871 '())))
                                              (__tmp273854
                                               (let ((__tmp273855
                                                      (lambda (_i268714_
                                                               _r268715_)
                                                        (let ((__tmp273856
                                                               (let ((__tmp273857
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp273867
                                     (let ((__tmp273868
                                            (let ((__tmp273869
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self268637_
                                                      __id273198
                                                      __t273197
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp273869 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp273868)))
                                    (__tmp273858
                                     (let ((__tmp273864
                                            (let ((__tmp273865
                                                   (let ((__tmp273866
                                                          (car _i268714_)))
                                                     (declare (not safe))
                                                     (cons __tmp273866 '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp273865)))
                                           (__tmp273859
                                            (let ((__tmp273862
                                                   (let ((__tmp273863
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj268670_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp273863)))
                                                  (__tmp273860
                                                   (let ((__tmp273861
                                                          (cdr _i268714_)))
                                                     (declare (not safe))
                                                     (cons __tmp273861 '()))))
                                              (declare (not safe))
                                              (cons __tmp273862 __tmp273860))))
                                       (declare (not safe))
                                       (cons __tmp273864 __tmp273859))))
                                (declare (not safe))
                                (cons __tmp273867 __tmp273858))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp273857))))
                  (declare (not safe))
                  (cons __tmp273856 _r268715_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl1 __tmp273855
                                                         '()
                                                         _initializers268675_))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp273870
                                                  __tmp273854))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp273853))))
                            (declare (not safe))
                            (cons __tmp273852 '()))))
                     (declare (not safe))
                     (cons __tmp273873 __tmp273851))))
              (declare (not safe))
              (cons '%#let-values __tmp273850))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp273849
                                                _stx268638_))))
                                          (___kont273319273320_
                                           (lambda ()
                                             (let ((__tmp273877
                                                    (let ((__tmp273878
                                                           (let ((__tmp273892
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp273893
                                 (let ((__tmp273895
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj268670_ '())))
                                       (__tmp273894
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object268647_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp273895 __tmp273894))))
                            (declare (not safe))
                            (cons __tmp273893 '())))
                         (__tmp273879
                          (let ((__tmp273880
                                 (let ((__tmp273881
                                        (let ((__tmp273885
                                               (let ((__tmp273886
                                                      (let ((__tmp273890
                                                             (let ((__tmp273891
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'class-instance-init! '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp273891)))
                    (__tmp273887
                     (let ((__tmp273888
                            (let ((__tmp273889
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj268670_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp273889))))
                       (declare (not safe))
                       (cons __tmp273888 _args268645_))))
                (declare (not safe))
                (cons __tmp273890 __tmp273887))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp273886)))
                                              (__tmp273882
                                               (let ((__tmp273883
                                                      (let ((__tmp273884
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj268670_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp273884))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp273883 '()))))
                                          (declare (not safe))
                                          (cons __tmp273885 __tmp273882))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp273881))))
                            (declare (not safe))
                            (cons __tmp273880 '()))))
                     (declare (not safe))
                     (cons __tmp273892 __tmp273879))))
              (declare (not safe))
              (cons '%#let-values __tmp273878))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp273877
                                                _stx268638_)))))
                                      (let* ((_g268677268717_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       ___stx273313273314_))
                                                    (___kont273317273318_)
                                                    (___kont273319273320_))))
                                             (___match273350273351_
                                              (lambda (_e268684268722_
                                                       _hd268685268725_
                                                       _tl268686268727_
                                                       _e268687268730_
                                                       _hd268688268733_
                                                       _tl268689268735_
                                                       _e268690268738_
                                                       _hd268691268741_
                                                       _tl268692268743_
                                                       _e268693268746_
                                                       _hd268694268749_
                                                       _tl268695268751_)
                                                (let ((_L268754_
                                                       _tl268695268751_)
                                                      (_L268755_
                                                       _hd268694268749_)
                                                      (_L268756_
                                                       _hd268691268741_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-keyword?
                                                         _L268756_))
                                                      (___kont273315273316_
                                                       _L268754_
                                                       _L268755_
                                                       _L268756_)
                                                      (___kont273319273320_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               ___stx273313273314_))
                                            (let ((_e268684268722_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      ___stx273313273314_))))
                                              (let ((_tl268686268727_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e268684268722_)))
                                                    (_hd268685268725_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e268684268722_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd268685268725_))
                                                    (let ((_e268687268730_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd268685268725_))))
                                                      (let ((_tl268689268735_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e268687268730_)))
                    (_hd268688268733_
                     (let () (declare (not safe)) (##car _e268687268730_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd268688268733_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd268688268733_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl268689268735_))
                            (let ((_e268690268738_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl268689268735_))))
                              (let ((_tl268692268743_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e268690268738_)))
                                    (_hd268691268741_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e268690268738_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl268692268743_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl268686268727_))
                                        (let ((_e268693268746_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl268686268727_))))
                                          (let ((_tl268695268751_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e268693268746_)))
                                                (_hd268694268749_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e268693268746_))))
                                            (___match273350273351_
                                             _e268684268722_
                                             _hd268685268725_
                                             _tl268686268727_
                                             _e268687268730_
                                             _hd268688268733_
                                             _tl268689268735_
                                             _e268690268738_
                                             _hd268691268741_
                                             _tl268692268743_
                                             _e268693268746_
                                             _hd268694268749_
                                             _tl268695268751_)))
                                        (___kont273319273320_))
                                    (___kont273319273320_))))
                            (___kont273319273320_))
                        (___kont273319273320_))
                    (___kont273319273320_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont273319273320_))))
                                            (let ()
                                              (declare (not safe))
                                              (_g268677268717_))))))))))))))))))
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
      (lambda (_self268460_ _stx268461_ _args268462_)
        (let* ((_g268464268474_
                (lambda (_g268465268471_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g268465268471_))))
               (_g268463268512_
                (lambda (_g268465268477_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g268465268477_))
                      (let ((_e268467268479_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g268465268477_))))
                        (let ((_hd268468268482_
                               (let ()
                                 (declare (not safe))
                                 (##car _e268467268479_)))
                              (_tl268469268484_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e268467268479_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl268469268484_))
                              ((lambda (_L268487_)
                                 (let* ((_klass268498_
                                         (let ((__tmp273896
                                                (##structure-ref
                                                 _self268460_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx268461_
                                            __tmp273896)))
                                        (_field268500_
                                         (let ((__tmp273897
                                                (##structure-ref
                                                 _self268460_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass268498_
                                            __tmp273897)))
                                        (_object268502_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L268487_))))
                                   (if (##structure-ref
                                        _klass268498_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp273898
                                              (let ((__tmp273907
                                                     (if (##structure-ref
                                                          _self268460_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp273899
                                                     (let ((__tmp273904
                                                            (let ((__tmp273905
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp273906
                                  (##structure-ref
                                   _self268460_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp273906 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp273905)))
                   (__tmp273900
                    (let ((__tmp273902
                           (let ((__tmp273903
                                  (let ()
                                    (declare (not safe))
                                    (cons _field268500_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp273903)))
                          (__tmp273901
                           (let ()
                             (declare (not safe))
                             (cons _object268502_ '()))))
                      (declare (not safe))
                      (cons __tmp273902 __tmp273901))))
               (declare (not safe))
               (cons __tmp273904 __tmp273900))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp273907
                                                      __tmp273899))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp273898
                                          _stx268461_))
                                       (if (##structure-ref
                                            _klass268498_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp273908
                                                  (let ((__tmp273917
                                                         (if (##structure-ref
                                                              _self268460_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp273909
                                                         (let ((__tmp273914
                                                                (let ((__tmp273915
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp273916
                                      (##structure-ref
                                       _self268460_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp273916 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp273915)))
                       (__tmp273910
                        (let ((__tmp273912
                               (let ((__tmp273913
                                      (let ()
                                        (declare (not safe))
                                        (cons _field268500_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp273913)))
                              (__tmp273911
                               (let ()
                                 (declare (not safe))
                                 (cons _object268502_ '()))))
                          (declare (not safe))
                          (cons __tmp273912 __tmp273911))))
                   (declare (not safe))
                   (cons __tmp273914 __tmp273910))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp273917
                                                          __tmp273909))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp273908
                                              _stx268461_))
                                           (let ((_$e268505_
                                                  (let ((__tmp273918
                                                         (##structure-ref
                                                          _self268460_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass268498_
                                                     __tmp273918))))
                                             (if _$e268505_
                                                 ((lambda (_klass268508_)
                                                    (let ((__tmp273919
                                                           (let ((__tmp273928
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self268460_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp273920
                          (let ((__tmp273925
                                 (let ((__tmp273926
                                        (let ((__tmp273927
                                               (##structure-ref
                                                _self268460_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp273927 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp273926)))
                                (__tmp273921
                                 (let ((__tmp273923
                                        (let ((__tmp273924
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field268500_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp273924)))
                                       (__tmp273922
                                        (let ()
                                          (declare (not safe))
                                          (cons _object268502_ '()))))
                                   (declare (not safe))
                                   (cons __tmp273923 __tmp273922))))
                            (declare (not safe))
                            (cons __tmp273925 __tmp273921))))
                     (declare (not safe))
                     (cons __tmp273928 __tmp273920))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp273919 _stx268461_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e268505_)
                                                 (if (##structure-ref
                                                      _self268460_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp273929
                                                            (let* ((_$obj268510_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp273930 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp273930)))
                           (__tmp273931
                            (let ((__tmp273971
                                   (let ((__tmp273972
                                          (let ((__tmp273974
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj268510_ '())))
                                                (__tmp273973
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object268502_ '()))))
                                            (declare (not safe))
                                            (cons __tmp273974 __tmp273973))))
                                     (declare (not safe))
                                     (cons __tmp273972 '())))
                                  (__tmp273932
                                   (let ((__tmp273933
                                          (let ((__tmp273934
                                                 (let ((__tmp273963
                                                        (let ((__tmp273964
                                                               (let ((__tmp273968
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp273969
                                     (let ((__tmp273970
                                            (##structure-ref
                                             _klass268498_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp273970 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp273969)))
                             (__tmp273965
                              (let ((__tmp273966
                                     (let ((__tmp273967
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj268510_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp273967))))
                                (declare (not safe))
                                (cons __tmp273966 '()))))
                         (declare (not safe))
                         (cons __tmp273968 __tmp273965))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp273964)))
               (__tmp273935
                (let ((__tmp273952
                       (let ((__tmp273953
                              (let ((__tmp273960
                                     (let ((__tmp273961
                                            (let ((__tmp273962
                                                   (##structure-ref
                                                    _self268460_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp273962 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp273961)))
                                    (__tmp273954
                                     (let ((__tmp273958
                                            (let ((__tmp273959
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field268500_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp273959)))
                                           (__tmp273955
                                            (let ((__tmp273956
                                                   (let ((__tmp273957
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj268510_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp273957))))
                                              (declare (not safe))
                                              (cons __tmp273956 '()))))
                                       (declare (not safe))
                                       (cons __tmp273958 __tmp273955))))
                                (declare (not safe))
                                (cons __tmp273960 __tmp273954))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp273953)))
                      (__tmp273936
                       (let ((__tmp273937
                              (let ((__tmp273938
                                     (let ((__tmp273950
                                            (let ((__tmp273951
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp273951)))
                                           (__tmp273939
                                            (let ((__tmp273947
                                                   (let ((__tmp273948
                                                          (let ((__tmp273949
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self268460_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp273949 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp273948)))
                                                  (__tmp273940
                                                   (let ((__tmp273945
                                                          (let ((__tmp273946
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj268510_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp273946)))
                 (__tmp273941
                  (let ((__tmp273942
                         (let ((__tmp273943
                                (let ((__tmp273944
                                       (##structure-ref
                                        _self268460_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp273944 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp273943))))
                    (declare (not safe))
                    (cons __tmp273942 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp273945
                                                           __tmp273941))))
                                              (declare (not safe))
                                              (cons __tmp273947 __tmp273940))))
                                       (declare (not safe))
                                       (cons __tmp273950 __tmp273939))))
                                (declare (not safe))
                                (cons '%#call __tmp273938))))
                         (declare (not safe))
                         (cons __tmp273937 '()))))
                  (declare (not safe))
                  (cons __tmp273952 __tmp273936))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp273963
                                                         __tmp273935))))
                                            (declare (not safe))
                                            (cons '%#if __tmp273934))))
                                     (declare (not safe))
                                     (cons __tmp273933 '()))))
                              (declare (not safe))
                              (cons __tmp273971 __tmp273932))))
                      (declare (not safe))
                      (cons '%#let-values __tmp273931))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp273929 _stx268461_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp273975
                                                            (let ((__tmp273976
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp273982
                                  (let ((__tmp273983
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp273983)))
                                 (__tmp273977
                                  (let ((__tmp273978
                                         (let ((__tmp273979
                                                (let ((__tmp273980
                                                       (let ((__tmp273981
                                                              (##structure-ref
                                                               _self268460_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp273981
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp273980))))
                                           (declare (not safe))
                                           (cons __tmp273979 '()))))
                                    (declare (not safe))
                                    (cons _object268502_ __tmp273978))))
                             (declare (not safe))
                             (cons __tmp273982 __tmp273977))))
                      (declare (not safe))
                      (cons '%#call __tmp273976))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp273975 _stx268461_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd268468268482_)
                              (let ()
                                (declare (not safe))
                                (_g268464268474_ _g268465268477_)))))
                      (let ()
                        (declare (not safe))
                        (_g268464268474_ _g268465268477_))))))
          (declare (not safe))
          (_g268463268512_ _args268462_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__t273200)
        (let ((__slot273201
               (let ((__tmp273204
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t273200 'slot))))
                 (if __tmp273204 __tmp273204 (error '"Unknown slot" 'slot))))
              (__id273202
               (let ((__tmp273205
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t273200 'id))))
                 (if __tmp273205 __tmp273205 (error '"Unknown slot" 'id))))
              (__checked?273203
               (let ((__tmp273206
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t273200 'checked?))))
                 (if __tmp273206
                     __tmp273206
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self268460_ _stx268461_ _args268462_)
            (let* ((_g268464268474_
                    (lambda (_g268465268471_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g268465268471_))))
                   (_g268463268512_
                    (lambda (_g268465268477_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g268465268477_))
                          (let ((_e268467268479_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g268465268477_))))
                            (let ((_hd268468268482_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e268467268479_)))
                                  (_tl268469268484_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e268467268479_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl268469268484_))
                                  ((lambda (_L268487_)
                                     (let* ((_klass268498_
                                             (let ((__tmp273984
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self268460_
                                                       __id273202
                                                       __t273200
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx268461_
                                                __tmp273984)))
                                            (_field268500_
                                             (let ((__tmp273985
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self268460_
                                                       __slot273201
                                                       __t273200
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass268498_
                                                __tmp273985)))
                                            (_object268502_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L268487_))))
                                       (if (##structure-ref
                                            _klass268498_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp273986
                                                  (let ((__tmp273995
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self268460_
                        __checked?273203
                        __t273200
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp273987
                 (let ((__tmp273992
                        (let ((__tmp273993
                               (let ((__tmp273994
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self268460_
                                         __id273202
                                         __t273200
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp273994 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp273993)))
                       (__tmp273988
                        (let ((__tmp273990
                               (let ((__tmp273991
                                      (let ()
                                        (declare (not safe))
                                        (cons _field268500_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp273991)))
                              (__tmp273989
                               (let ()
                                 (declare (not safe))
                                 (cons _object268502_ '()))))
                          (declare (not safe))
                          (cons __tmp273990 __tmp273989))))
                   (declare (not safe))
                   (cons __tmp273992 __tmp273988))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp273995
                                                          __tmp273987))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp273986
                                              _stx268461_))
                                           (if (##structure-ref
                                                _klass268498_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp273996
                                                      (let ((__tmp274005
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self268460_
                            __checked?273203
                            __t273200
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp273997
                     (let ((__tmp274002
                            (let ((__tmp274003
                                   (let ((__tmp274004
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self268460_
                                             __id273202
                                             __t273200
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp274004 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp274003)))
                           (__tmp273998
                            (let ((__tmp274000
                                   (let ((__tmp274001
                                          (let ()
                                            (declare (not safe))
                                            (cons _field268500_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp274001)))
                                  (__tmp273999
                                   (let ()
                                     (declare (not safe))
                                     (cons _object268502_ '()))))
                              (declare (not safe))
                              (cons __tmp274000 __tmp273999))))
                       (declare (not safe))
                       (cons __tmp274002 __tmp273998))))
                (declare (not safe))
                (cons __tmp274005 __tmp273997))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp273996
                                                  _stx268461_))
                                               (let ((_$e268505_
                                                      (let ((__tmp274006
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self268460_
                        __slot273201
                        __t273200
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass268498_ __tmp274006))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e268505_
                                                     ((lambda (_klass268508_)
                                                        (let ((__tmp274007
                                                               (let ((__tmp274016
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self268460_
                                     __checked?273203
                                     __t273200
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp274008
                              (let ((__tmp274013
                                     (let ((__tmp274014
                                            (let ((__tmp274015
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self268460_
                                                      __id273202
                                                      __t273200
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp274015 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp274014)))
                                    (__tmp274009
                                     (let ((__tmp274011
                                            (let ((__tmp274012
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field268500_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp274012)))
                                           (__tmp274010
                                            (let ()
                                              (declare (not safe))
                                              (cons _object268502_ '()))))
                                       (declare (not safe))
                                       (cons __tmp274011 __tmp274010))))
                                (declare (not safe))
                                (cons __tmp274013 __tmp274009))))
                         (declare (not safe))
                         (cons __tmp274016 __tmp274008))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp274007 _stx268461_)))
              _$e268505_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self268460_
                                                            __checked?273203
                                                            __t273200
                                                            '#f))
                                                         (let ((__tmp274017
                                                                (let* ((_$obj268510_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp274018 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp274018)))
                               (__tmp274019
                                (let ((__tmp274059
                                       (let ((__tmp274060
                                              (let ((__tmp274062
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj268510_
                                                             '())))
                                                    (__tmp274061
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object268502_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp274062
                                                      __tmp274061))))
                                         (declare (not safe))
                                         (cons __tmp274060 '())))
                                      (__tmp274020
                                       (let ((__tmp274021
                                              (let ((__tmp274022
                                                     (let ((__tmp274051
                                                            (let ((__tmp274052
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp274056
                                  (let ((__tmp274057
                                         (let ((__tmp274058
                                                (##structure-ref
                                                 _klass268498_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp274058 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp274057)))
                                 (__tmp274053
                                  (let ((__tmp274054
                                         (let ((__tmp274055
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj268510_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp274055))))
                                    (declare (not safe))
                                    (cons __tmp274054 '()))))
                             (declare (not safe))
                             (cons __tmp274056 __tmp274053))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp274052)))
                   (__tmp274023
                    (let ((__tmp274040
                           (let ((__tmp274041
                                  (let ((__tmp274048
                                         (let ((__tmp274049
                                                (let ((__tmp274050
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self268460_
                                                          __id273202
                                                          __t273200
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp274050 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp274049)))
                                        (__tmp274042
                                         (let ((__tmp274046
                                                (let ((__tmp274047
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field268500_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp274047)))
                                               (__tmp274043
                                                (let ((__tmp274044
                                                       (let ((__tmp274045
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj268510_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp274045))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp274044 '()))))
                                           (declare (not safe))
                                           (cons __tmp274046 __tmp274043))))
                                    (declare (not safe))
                                    (cons __tmp274048 __tmp274042))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp274041)))
                          (__tmp274024
                           (let ((__tmp274025
                                  (let ((__tmp274026
                                         (let ((__tmp274038
                                                (let ((__tmp274039
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp274039)))
                                               (__tmp274027
                                                (let ((__tmp274035
                                                       (let ((__tmp274036
                                                              (let ((__tmp274037
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self268460_
                                __id273202
                                __t273200
                                '#f))))
                        (declare (not safe))
                        (cons __tmp274037 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp274036)))
              (__tmp274028
               (let ((__tmp274033
                      (let ((__tmp274034
                             (let ()
                               (declare (not safe))
                               (cons _$obj268510_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp274034)))
                     (__tmp274029
                      (let ((__tmp274030
                             (let ((__tmp274031
                                    (let ((__tmp274032
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self268460_
                                              __slot273201
                                              __t273200
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp274032 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp274031))))
                        (declare (not safe))
                        (cons __tmp274030 '()))))
                 (declare (not safe))
                 (cons __tmp274033 __tmp274029))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp274035
                                                        __tmp274028))))
                                           (declare (not safe))
                                           (cons __tmp274038 __tmp274027))))
                                    (declare (not safe))
                                    (cons '%#call __tmp274026))))
                             (declare (not safe))
                             (cons __tmp274025 '()))))
                      (declare (not safe))
                      (cons __tmp274040 __tmp274024))))
               (declare (not safe))
               (cons __tmp274051 __tmp274023))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp274022))))
                                         (declare (not safe))
                                         (cons __tmp274021 '()))))
                                  (declare (not safe))
                                  (cons __tmp274059 __tmp274020))))
                          (declare (not safe))
                          (cons '%#let-values __tmp274019))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp274017 _stx268461_))
                 (let ((__tmp274063
                        (let ((__tmp274064
                               (let ((__tmp274070
                                      (let ((__tmp274071
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp274071)))
                                     (__tmp274065
                                      (let ((__tmp274066
                                             (let ((__tmp274067
                                                    (let ((__tmp274068
                                                           (let ((__tmp274069
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self268460_
                             __slot273201
                             __t273200
                             '#f))))
                     (declare (not safe))
                     (cons __tmp274069 '()))))
              (declare (not safe))
              (cons '%#quote __tmp274068))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp274067 '()))))
                                        (declare (not safe))
                                        (cons _object268502_ __tmp274066))))
                                 (declare (not safe))
                                 (cons __tmp274070 __tmp274065))))
                          (declare (not safe))
                          (cons '%#call __tmp274064))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp274063 _stx268461_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd268468268482_)
                                  (let ()
                                    (declare (not safe))
                                    (_g268464268474_ _g268465268477_)))))
                          (let ()
                            (declare (not safe))
                            (_g268464268474_ _g268465268477_))))))
              (declare (not safe))
              (_g268463268512_ _args268462_))))))
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
      (lambda (_self268265_ _stx268266_ _args268267_)
        (let* ((_g268269268283_
                (lambda (_g268270268280_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g268270268280_))))
               (_g268268268335_
                (lambda (_g268270268286_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g268270268286_))
                      (let ((_e268273268288_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g268270268286_))))
                        (let ((_hd268274268291_
                               (let ()
                                 (declare (not safe))
                                 (##car _e268273268288_)))
                              (_tl268275268293_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e268273268288_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl268275268293_))
                              (let ((_e268276268296_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl268275268293_))))
                                (let ((_hd268277268299_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e268276268296_)))
                                      (_tl268278268301_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e268276268296_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl268278268301_))
                                      ((lambda (_L268304_ _L268305_)
                                         (let* ((_klass268319_
                                                 (let ((__tmp274072
                                                        (##structure-ref
                                                         _self268265_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx268266_
                                                    __tmp274072)))
                                                (_field268321_
                                                 (let ((__tmp274073
                                                        (##structure-ref
                                                         _self268265_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass268319_
                                                    __tmp274073)))
                                                (_object268323_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L268305_)))
                                                (_value268325_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L268304_))))
                                           (if (##structure-ref
                                                _klass268319_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp274074
                                                      (let ((__tmp274084
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self268265_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp274075
                     (let ((__tmp274081
                            (let ((__tmp274082
                                   (let ((__tmp274083
                                          (##structure-ref
                                           _self268265_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp274083 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp274082)))
                           (__tmp274076
                            (let ((__tmp274079
                                   (let ((__tmp274080
                                          (let ()
                                            (declare (not safe))
                                            (cons _field268321_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp274080)))
                                  (__tmp274077
                                   (let ((__tmp274078
                                          (let ()
                                            (declare (not safe))
                                            (cons _value268325_ '()))))
                                     (declare (not safe))
                                     (cons _object268323_ __tmp274078))))
                              (declare (not safe))
                              (cons __tmp274079 __tmp274077))))
                       (declare (not safe))
                       (cons __tmp274081 __tmp274076))))
                (declare (not safe))
                (cons __tmp274084 __tmp274075))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp274074
                                                  _stx268266_))
                                               (if (##structure-ref
                                                    _klass268319_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp274085
                                                          (let ((__tmp274095
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self268265_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp274086
                         (let ((__tmp274092
                                (let ((__tmp274093
                                       (let ((__tmp274094
                                              (##structure-ref
                                               _self268265_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp274094 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp274093)))
                               (__tmp274087
                                (let ((__tmp274090
                                       (let ((__tmp274091
                                              (let ()
                                                (declare (not safe))
                                                (cons _field268321_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp274091)))
                                      (__tmp274088
                                       (let ((__tmp274089
                                              (let ()
                                                (declare (not safe))
                                                (cons _value268325_ '()))))
                                         (declare (not safe))
                                         (cons _object268323_ __tmp274089))))
                                  (declare (not safe))
                                  (cons __tmp274090 __tmp274088))))
                           (declare (not safe))
                           (cons __tmp274092 __tmp274087))))
                    (declare (not safe))
                    (cons __tmp274095 __tmp274086))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp274085
                                                      _stx268266_))
                                                   (let ((_$e268328_
                                                          (let ((__tmp274096
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self268265_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass268319_ __tmp274096))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e268328_
                                                         ((lambda (_klass268331_)
                                                            (let ((__tmp274097
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp274107
                                  (if (##structure-ref
                                       _self268265_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp274098
                                  (let ((__tmp274104
                                         (let ((__tmp274105
                                                (let ((__tmp274106
                                                       (##structure-ref
                                                        _self268265_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp274106 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp274105)))
                                        (__tmp274099
                                         (let ((__tmp274102
                                                (let ((__tmp274103
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field268321_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp274103)))
                                               (__tmp274100
                                                (let ((__tmp274101
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value268325_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object268323_
                                                        __tmp274101))))
                                           (declare (not safe))
                                           (cons __tmp274102 __tmp274100))))
                                    (declare (not safe))
                                    (cons __tmp274104 __tmp274099))))
                             (declare (not safe))
                             (cons __tmp274107 __tmp274098))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp274097 _stx268266_)))
                  _$e268328_)
                 (if (##structure-ref _self268265_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp274108
                            (let* ((_$obj268333_
                                    (let ((__tmp274109 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp274109)))
                                   (__tmp274110
                                    (let ((__tmp274152
                                           (let ((__tmp274153
                                                  (let ((__tmp274155
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj268333_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp274154
                 (let () (declare (not safe)) (cons _object268323_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp274155
                                                          __tmp274154))))
                                             (declare (not safe))
                                             (cons __tmp274153 '())))
                                          (__tmp274111
                                           (let ((__tmp274112
                                                  (let ((__tmp274113
                                                         (let ((__tmp274144
                                                                (let ((__tmp274145
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp274149
                                      (let ((__tmp274150
                                             (let ((__tmp274151
                                                    (##structure-ref
                                                     _klass268319_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp274151 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp274150)))
                                     (__tmp274146
                                      (let ((__tmp274147
                                             (let ((__tmp274148
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj268333_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp274148))))
                                        (declare (not safe))
                                        (cons __tmp274147 '()))))
                                 (declare (not safe))
                                 (cons __tmp274149 __tmp274146))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp274145)))
                       (__tmp274114
                        (let ((__tmp274132
                               (let ((__tmp274133
                                      (let ((__tmp274141
                                             (let ((__tmp274142
                                                    (let ((__tmp274143
                                                           (##structure-ref
                                                            _self268265_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp274143 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp274142)))
                                            (__tmp274134
                                             (let ((__tmp274139
                                                    (let ((__tmp274140
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field268321_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp274140)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp274135
                                                    (let ((__tmp274137
                                                           (let ((__tmp274138
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj268333_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp274138)))
                  (__tmp274136
                   (let () (declare (not safe)) (cons _value268325_ '()))))
              (declare (not safe))
              (cons __tmp274137 __tmp274136))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp274139
                                                     __tmp274135))))
                                        (declare (not safe))
                                        (cons __tmp274141 __tmp274134))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp274133)))
                              (__tmp274115
                               (let ((__tmp274116
                                      (let ((__tmp274117
                                             (let ((__tmp274130
                                                    (let ((__tmp274131
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp274131)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp274118
                                                    (let ((__tmp274127
                                                           (let ((__tmp274128
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp274129
                                 (##structure-ref
                                  _self268265_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp274129 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp274128)))
                  (__tmp274119
                   (let ((__tmp274125
                          (let ((__tmp274126
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj268333_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp274126)))
                         (__tmp274120
                          (let ((__tmp274122
                                 (let ((__tmp274123
                                        (let ((__tmp274124
                                               (##structure-ref
                                                _self268265_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp274124 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp274123)))
                                (__tmp274121
                                 (let ()
                                   (declare (not safe))
                                   (cons _value268325_ '()))))
                            (declare (not safe))
                            (cons __tmp274122 __tmp274121))))
                     (declare (not safe))
                     (cons __tmp274125 __tmp274120))))
              (declare (not safe))
              (cons __tmp274127 __tmp274119))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp274130
                                                     __tmp274118))))
                                        (declare (not safe))
                                        (cons '%#call __tmp274117))))
                                 (declare (not safe))
                                 (cons __tmp274116 '()))))
                          (declare (not safe))
                          (cons __tmp274132 __tmp274115))))
                   (declare (not safe))
                   (cons __tmp274144 __tmp274114))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp274113))))
                                             (declare (not safe))
                                             (cons __tmp274112 '()))))
                                      (declare (not safe))
                                      (cons __tmp274152 __tmp274111))))
                              (declare (not safe))
                              (cons '%#let-values __tmp274110))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp274108 _stx268266_))
                     (let ((__tmp274156
                            (let ((__tmp274157
                                   (let ((__tmp274164
                                          (let ((__tmp274165
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp274165)))
                                         (__tmp274158
                                          (let ((__tmp274159
                                                 (let ((__tmp274161
                                                        (let ((__tmp274162
                                                               (let ((__tmp274163
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self268265_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp274163 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp274162)))
               (__tmp274160
                (let () (declare (not safe)) (cons _value268325_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp274161
                                                         __tmp274160))))
                                            (declare (not safe))
                                            (cons _object268323_
                                                  __tmp274159))))
                                     (declare (not safe))
                                     (cons __tmp274164 __tmp274158))))
                              (declare (not safe))
                              (cons '%#call __tmp274157))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp274156 _stx268266_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd268277268299_
                                       _hd268274268291_)
                                      (let ()
                                        (declare (not safe))
                                        (_g268269268283_ _g268270268286_)))))
                              (let ()
                                (declare (not safe))
                                (_g268269268283_ _g268270268286_)))))
                      (let ()
                        (declare (not safe))
                        (_g268269268283_ _g268270268286_))))))
          (declare (not safe))
          (_g268268268335_ _args268267_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__t273207)
        (let ((__slot273208
               (let ((__tmp273211
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t273207 'slot))))
                 (if __tmp273211 __tmp273211 (error '"Unknown slot" 'slot))))
              (__id273209
               (let ((__tmp273212
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t273207 'id))))
                 (if __tmp273212 __tmp273212 (error '"Unknown slot" 'id))))
              (__checked?273210
               (let ((__tmp273213
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t273207 'checked?))))
                 (if __tmp273213
                     __tmp273213
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self268265_ _stx268266_ _args268267_)
            (let* ((_g268269268283_
                    (lambda (_g268270268280_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g268270268280_))))
                   (_g268268268335_
                    (lambda (_g268270268286_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g268270268286_))
                          (let ((_e268273268288_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g268270268286_))))
                            (let ((_hd268274268291_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e268273268288_)))
                                  (_tl268275268293_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e268273268288_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl268275268293_))
                                  (let ((_e268276268296_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl268275268293_))))
                                    (let ((_hd268277268299_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e268276268296_)))
                                          (_tl268278268301_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e268276268296_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl268278268301_))
                                          ((lambda (_L268304_ _L268305_)
                                             (let* ((_klass268319_
                                                     (let ((__tmp274166
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self268265_
                                                               __id273209
                                                               __t273207
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx268266_
                                                        __tmp274166)))
                                                    (_field268321_
                                                     (let ((__tmp274167
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self268265_
                                                               __slot273208
                                                               __t273207
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass268319_
                                                        __tmp274167)))
                                                    (_object268323_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L268305_)))
                                                    (_value268325_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L268304_))))
                                               (if (##structure-ref
                                                    _klass268319_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp274168
                                                          (let ((__tmp274178
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self268265_
                                __checked?273210
                                __t273207
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp274169
                         (let ((__tmp274175
                                (let ((__tmp274176
                                       (let ((__tmp274177
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self268265_
                                                 __id273209
                                                 __t273207
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp274177 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp274176)))
                               (__tmp274170
                                (let ((__tmp274173
                                       (let ((__tmp274174
                                              (let ()
                                                (declare (not safe))
                                                (cons _field268321_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp274174)))
                                      (__tmp274171
                                       (let ((__tmp274172
                                              (let ()
                                                (declare (not safe))
                                                (cons _value268325_ '()))))
                                         (declare (not safe))
                                         (cons _object268323_ __tmp274172))))
                                  (declare (not safe))
                                  (cons __tmp274173 __tmp274171))))
                           (declare (not safe))
                           (cons __tmp274175 __tmp274170))))
                    (declare (not safe))
                    (cons __tmp274178 __tmp274169))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp274168
                                                      _stx268266_))
                                                   (if (##structure-ref
                                                        _klass268319_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp274179
                                                              (let ((__tmp274189
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self268265_
                                    __checked?273210
                                    __t273207
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp274180
                             (let ((__tmp274186
                                    (let ((__tmp274187
                                           (let ((__tmp274188
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self268265_
                                                     __id273209
                                                     __t273207
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp274188 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp274187)))
                                   (__tmp274181
                                    (let ((__tmp274184
                                           (let ((__tmp274185
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field268321_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp274185)))
                                          (__tmp274182
                                           (let ((__tmp274183
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value268325_ '()))))
                                             (declare (not safe))
                                             (cons _object268323_
                                                   __tmp274183))))
                                      (declare (not safe))
                                      (cons __tmp274184 __tmp274182))))
                               (declare (not safe))
                               (cons __tmp274186 __tmp274181))))
                        (declare (not safe))
                        (cons __tmp274189 __tmp274180))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp274179 _stx268266_))
               (let ((_$e268328_
                      (let ((__tmp274190
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self268265_
                                __slot273208
                                __t273207
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass268319_
                         __tmp274190))))
                 (if _$e268328_
                     ((lambda (_klass268331_)
                        (let ((__tmp274191
                               (let ((__tmp274201
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self268265_
                                             __checked?273210
                                             __t273207
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp274192
                                      (let ((__tmp274198
                                             (let ((__tmp274199
                                                    (let ((__tmp274200
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self268265_
                                                              __id273209
                                                              __t273207
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp274200 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp274199)))
                                            (__tmp274193
                                             (let ((__tmp274196
                                                    (let ((__tmp274197
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field268321_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp274197)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp274194
                                                    (let ((__tmp274195
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value268325_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object268323_ __tmp274195))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp274196
                                                     __tmp274194))))
                                        (declare (not safe))
                                        (cons __tmp274198 __tmp274193))))
                                 (declare (not safe))
                                 (cons __tmp274201 __tmp274192))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp274191 _stx268266_)))
                      _$e268328_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self268265_
                            __checked?273210
                            __t273207
                            '#f))
                         (let ((__tmp274202
                                (let* ((_$obj268333_
                                        (let ((__tmp274203 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp274203)))
                                       (__tmp274204
                                        (let ((__tmp274246
                                               (let ((__tmp274247
                                                      (let ((__tmp274249
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj268333_ '())))
                    (__tmp274248
                     (let () (declare (not safe)) (cons _object268323_ '()))))
                (declare (not safe))
                (cons __tmp274249 __tmp274248))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp274247 '())))
                                              (__tmp274205
                                               (let ((__tmp274206
                                                      (let ((__tmp274207
                                                             (let ((__tmp274238
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp274239
                                   (let ((__tmp274243
                                          (let ((__tmp274244
                                                 (let ((__tmp274245
                                                        (##structure-ref
                                                         _klass268319_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp274245 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp274244)))
                                         (__tmp274240
                                          (let ((__tmp274241
                                                 (let ((__tmp274242
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj268333_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp274242))))
                                            (declare (not safe))
                                            (cons __tmp274241 '()))))
                                     (declare (not safe))
                                     (cons __tmp274243 __tmp274240))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp274239)))
                           (__tmp274208
                            (let ((__tmp274226
                                   (let ((__tmp274227
                                          (let ((__tmp274235
                                                 (let ((__tmp274236
                                                        (let ((__tmp274237
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self268265_
                          __id273209
                          __t273207
                          '#f))))
                  (declare (not safe))
                  (cons __tmp274237 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp274236)))
                                                (__tmp274228
                                                 (let ((__tmp274233
                                                        (let ((__tmp274234
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field268321_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp274234)))
               (__tmp274229
                (let ((__tmp274231
                       (let ((__tmp274232
                              (let ()
                                (declare (not safe))
                                (cons _$obj268333_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp274232)))
                      (__tmp274230
                       (let () (declare (not safe)) (cons _value268325_ '()))))
                  (declare (not safe))
                  (cons __tmp274231 __tmp274230))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp274233
                                                         __tmp274229))))
                                            (declare (not safe))
                                            (cons __tmp274235 __tmp274228))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp274227)))
                                  (__tmp274209
                                   (let ((__tmp274210
                                          (let ((__tmp274211
                                                 (let ((__tmp274224
                                                        (let ((__tmp274225
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp274225)))
               (__tmp274212
                (let ((__tmp274221
                       (let ((__tmp274222
                              (let ((__tmp274223
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self268265_
                                        __id273209
                                        __t273207
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp274223 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp274222)))
                      (__tmp274213
                       (let ((__tmp274219
                              (let ((__tmp274220
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj268333_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp274220)))
                             (__tmp274214
                              (let ((__tmp274216
                                     (let ((__tmp274217
                                            (let ((__tmp274218
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self268265_
                                                      __slot273208
                                                      __t273207
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp274218 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp274217)))
                                    (__tmp274215
                                     (let ()
                                       (declare (not safe))
                                       (cons _value268325_ '()))))
                                (declare (not safe))
                                (cons __tmp274216 __tmp274215))))
                         (declare (not safe))
                         (cons __tmp274219 __tmp274214))))
                  (declare (not safe))
                  (cons __tmp274221 __tmp274213))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp274224
                                                         __tmp274212))))
                                            (declare (not safe))
                                            (cons '%#call __tmp274211))))
                                     (declare (not safe))
                                     (cons __tmp274210 '()))))
                              (declare (not safe))
                              (cons __tmp274226 __tmp274209))))
                       (declare (not safe))
                       (cons __tmp274238 __tmp274208))))
                (declare (not safe))
                (cons '%#if __tmp274207))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp274206 '()))))
                                          (declare (not safe))
                                          (cons __tmp274246 __tmp274205))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp274204))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp274202 _stx268266_))
                         (let ((__tmp274250
                                (let ((__tmp274251
                                       (let ((__tmp274258
                                              (let ((__tmp274259
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp274259)))
                                             (__tmp274252
                                              (let ((__tmp274253
                                                     (let ((__tmp274255
                                                            (let ((__tmp274256
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp274257
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self268265_
                                     __slot273208
                                     __t273207
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp274257 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp274256)))
                   (__tmp274254
                    (let () (declare (not safe)) (cons _value268325_ '()))))
               (declare (not safe))
               (cons __tmp274255 __tmp274254))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object268323_
                                                      __tmp274253))))
                                         (declare (not safe))
                                         (cons __tmp274258 __tmp274252))))
                                  (declare (not safe))
                                  (cons '%#call __tmp274251))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp274250
                            _stx268266_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd268277268299_
                                           _hd268274268291_)
                                          (let ()
                                            (declare (not safe))
                                            (_g268269268283_
                                             _g268270268286_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g268269268283_ _g268270268286_)))))
                          (let ()
                            (declare (not safe))
                            (_g268269268283_ _g268270268286_))))))
              (declare (not safe))
              (_g268268268335_ _args268267_))))))
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
      (lambda (_self268099_ _stx268100_ _args268101_)
        (let* ((_self268102268111_ _self268099_)
               (_E268104268115_
                (lambda () (error '"No clause matching" _self268102268111_)))
               (_K268105268122_
                (lambda (_inline268118_ _dispatch268119_ _arity268120_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self268099_ _args268101_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx268100_
                         _arity268120_)))
                  (if _inline268118_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp274260
                               (let ((__tmp274261
                                      (_inline268118_ _stx268100_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp274261
                                  _stx268100_))))
                          (declare (not safe))
                          (gxc#compile-e__0 __tmp274260)))
                      (if _dispatch268119_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch268119_))
                            (let ((__tmp274262
                                   (let ((__tmp274263
                                          (let ((__tmp274264
                                                 (let ((__tmp274265
                                                        (let ((__tmp274266
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch268119_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp274266))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp274265
                                                         _args268101_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp274264))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp274263
                                      _stx268100_))))
                              (declare (not safe))
                              (gxc#compile-e__0 __tmp274262)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _stx268100_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self268102268111_ 'gxc#!lambda::t))
              (let* ((_e268106268125_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self268102268111_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e268107268128_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self268102268111_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity268131_ _e268107268128_)
                     (_e268108268133_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self268102268111_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch268136_ _e268108268133_)
                     (_e268109268138_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self268102268111_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline268141_ _e268109268138_))
                (declare (not safe))
                (_K268105268122_
                 _inline268141_
                 _dispatch268136_
                 _arity268131_))
              (let () (declare (not safe)) (_E268104268115_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self267938_ _stx267939_ _args267940_)
        (let* ((_self267941267948_ _self267938_)
               (_E267943267952_
                (lambda () (error '"No clause matching" _self267941267948_)))
               (_K267944267966_
                (lambda (_clauses267955_)
                  (let ((_$e267961_
                         (let ((__tmp274267
                                (lambda (_g267956267958_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g267956267958_
                                     _args267940_)))))
                           (declare (not safe))
                           (find __tmp274267 _clauses267955_))))
                    (if _$e267961_
                        ((lambda (_clause267964_)
                           (let ((__method273482
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause267964_
                                     'optimize-call))))
                             (if __method273482
                                 (__method273482
                                  _clause267964_
                                  _stx267939_
                                  _args267940_)
                                 (error '"Missing method"
                                        _clause267964_
                                        'optimize-call))))
                         _$e267961_)
                        (let ((__tmp274268
                               (map gxc#!lambda-arity _clauses267955_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx267939_
                           __tmp274268)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self267941267948_
                 'gxc#!case-lambda::t))
              (let* ((_e267945267969_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self267941267948_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e267946267972_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self267941267948_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses267975_ _e267946267972_))
                (declare (not safe))
                (_K267944267966_ _clauses267975_))
              (let () (declare (not safe)) (_E267943267952_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self267752_ _args267753_)
        (let* ((_self267754267761_ _self267752_)
               (_E267756267765_
                (lambda () (error '"No clause matching" _self267754267761_)))
               (_K267757267805_
                (lambda (_arity267768_)
                  (let* ((_arity267769267778_ _arity267768_)
                         (_E267772267782_
                          (lambda ()
                            (error '"No clause matching"
                                   _arity267769267778_))))
                    (let ((_K267776267802_
                           (lambda ()
                             (fx= (length _args267753_) _arity267768_)))
                          (_K267773267788_
                           (lambda (_arity267786_)
                             (fx>= (length _args267753_) _arity267786_))))
                      (let ((_try-match267771267798_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity267769267778_))
                                   (let ((_tl267775267793_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity267769267778_)))
                                         (_hd267774267791_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity267769267778_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl267775267793_))
                                         (let ((_arity267796_
                                                _hd267774267791_))
                                           (declare (not safe))
                                           (_K267773267788_ _arity267796_))
                                         (let ()
                                           (declare (not safe))
                                           (_E267772267782_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E267772267782_))))))
                        (if (fixnum? _arity267769267778_)
                            (let () (declare (not safe)) (_K267776267802_))
                            (let ()
                              (declare (not safe))
                              (_try-match267771267798_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self267754267761_ 'gxc#!lambda::t))
              (let* ((_e267758267808_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self267754267761_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e267759267811_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self267754267761_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity267814_ _e267759267811_))
                (declare (not safe))
                (_K267757267805_ _arity267814_))
              (let () (declare (not safe)) (_E267756267765_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self267637_ _stx267638_ _args267639_)
        (let* ((_self267640267648_ _self267637_)
               (_E267642267652_
                (lambda () (error '"No clause matching" _self267640267648_)))
               (_K267643267736_
                (lambda (_dispatch267655_ _table267656_)
                  (let* ((_g267657267666_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch267655_)))
                         (_else267659267674_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch267655_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _stx267638_))))
                         (_K267661267720_
                          (lambda (_main267677_ _keys267678_)
                            (let ((_g274269_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx267638_
                                      _args267639_))))
                              (begin
                                (let ((_g274270_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g274269_)
                                             (##vector-length _g274269_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g274270_ 2)))
                                      (error "Context expects 2 values"
                                             _g274270_)))
                                (let ((_pargs267680_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g274269_ 0)))
                                      (_kwargs267681_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g274269_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main267677_))
                                    (if _table267656_
                                        (let ((_xargs267688_
                                               (map (lambda (_key267683_)
                                                      (let ((_$e267685_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _key267683_ _kwargs267681_))))
                (if _$e267685_ (values _$e267685_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys267678_)))
                                          (for-each
                                           (lambda (_kw267690_)
                                             (if (memq (car _kw267690_)
                                                       _keys267678_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx267638_
                                                    _keys267678_
                                                    _kw267690_))))
                                           _kwargs267681_)
                                          (let ((__tmp274271
                                                 (let ((__tmp274272
                                                        (let ((__tmp274273
                                                               (let ((__tmp274278
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp274279
                                     (let ()
                                       (declare (not safe))
                                       (cons _main267677_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp274279)))
                             (__tmp274274
                              (let ((__tmp274276
                                     (let ((__tmp274277
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp274277)))
                                    (__tmp274275
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs267680_
                                               _xargs267688_))))
                                (declare (not safe))
                                (cons __tmp274276 __tmp274275))))
                         (declare (not safe))
                         (cons __tmp274278 __tmp274274))))
                  (declare (not safe))
                  (cons '%#call __tmp274273))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp274272
                                                    _stx267638_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0 __tmp274271)))
                                        (let* ((_kwt267692_
                                                (let ((__tmp274280
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp274280)))
                                               (_kwvars267695_
                                                (map (lambda (_g274281_)
                                                       (let ((__tmp274282
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp274282)))
                                                     _kwargs267681_))
                                               (_kwbind267700_
                                                (map (lambda (_kw267697_
                                                              _kwvar267698_)
                                                       (let ((__tmp274285
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar267698_ '())))
                     (__tmp274283
                      (let ((__tmp274284 (cdr _kw267697_)))
                        (declare (not safe))
                        (cons __tmp274284 '()))))
                 (declare (not safe))
                 (cons __tmp274285 __tmp274283)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs267681_
                                                     _kwvars267695_))
                                               (_kwset267705_
                                                (map (lambda (_kw267702_
                                                              _kwvar267703_)
                                                       (let ((__tmp274286
                                                              (let ((__tmp274287
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp274295
                                    (let ((__tmp274296
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt267692_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp274296)))
                                   (__tmp274288
                                    (let ((__tmp274292
                                           (let ((__tmp274293
                                                  (let ((__tmp274294
                                                         (car _kw267702_)))
                                                    (declare (not safe))
                                                    (cons __tmp274294 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp274293)))
                                          (__tmp274289
                                           (let ((__tmp274290
                                                  (let ((__tmp274291
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar267703_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp274291))))
                                             (declare (not safe))
                                             (cons __tmp274290 '()))))
                                      (declare (not safe))
                                      (cons __tmp274292 __tmp274289))))
                               (declare (not safe))
                               (cons __tmp274295 __tmp274288))))
                        (declare (not safe))
                        (cons '(%#ref symoblic-table-set!) __tmp274287))))
                 (declare (not safe))
                 (cons '%#call __tmp274286)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs267681_
                                                     _kwvars267695_))
                                               (_xkwargs267710_
                                                (map (lambda (_kw267707_
                                                              _kwvar267708_)
                                                       (let ((__tmp274299
                                                              (car _kw267707_))
                                                             (__tmp274297
                                                              (let ((__tmp274298
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar267708_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp274298))))
                 (declare (not safe))
                 (cons __tmp274299 __tmp274297)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs267681_
                                                     _kwvars267695_))
                                               (_xargs267717_
                                                (map (lambda (_key267712_)
                                                       (let ((_$e267714_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq _key267712_ _xkwargs267710_))))
                 (if _$e267714_ (values _$e267714_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys267678_)))
                                          (let ((__tmp274300
                                                 (let ((__tmp274301
                                                        (let ((__tmp274302
                                                               (let ((__tmp274303
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp274304
                                     (let ((__tmp274305
                                            (let ((__tmp274319
                                                   (let ((__tmp274320
                                                          (let ((__tmp274329
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt267692_ '())))
                        (__tmp274321
                         (let ((__tmp274322
                                (let ((__tmp274323
                                       (let ((__tmp274324
                                              (let ((__tmp274325
                                                     (let ((__tmp274326
                                                            (let ((__tmp274327
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp274328 (length _kwargs267681_)))
                             (declare (not safe))
                             (cons __tmp274328 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp274327))))
               (declare (not safe))
               (cons __tmp274326 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-symbolic-table)
                                                      __tmp274325))))
                                         (declare (not safe))
                                         (cons '%#call __tmp274324))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp274323
                                   _stx267638_))))
                           (declare (not safe))
                           (cons __tmp274322 '()))))
                    (declare (not safe))
                    (cons __tmp274329 __tmp274321))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp274320 '())))
                                                  (__tmp274306
                                                   (let ((__tmp274307
                                                          (let ((__tmp274308
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp274309
                                (let ((__tmp274310
                                       (let ((__tmp274311
                                              (let ((__tmp274312
                                                     (let ((__tmp274317
                                                            (let ((__tmp274318
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main267677_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp274318)))
                   (__tmp274313
                    (let ((__tmp274315
                           (let ((__tmp274316
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt267692_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp274316)))
                          (__tmp274314
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs267680_ _xargs267717_))))
                      (declare (not safe))
                      (cons __tmp274315 __tmp274314))))
               (declare (not safe))
               (cons __tmp274317 __tmp274313))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp274312))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp274311
                                          _stx267638_))))
                                  (declare (not safe))
                                  (cons __tmp274310 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp274309 _kwset267705_))))
                    (declare (not safe))
                    (cons '%#begin __tmp274308))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp274307 '()))))
                                              (declare (not safe))
                                              (cons __tmp274319 __tmp274306))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp274305))))
                                (declare (not safe))
                                (cons __tmp274304 '()))))
                         (declare (not safe))
                         (cons _kwbind267700_ __tmp274303))))
                  (declare (not safe))
                  (cons '%#let-values __tmp274302))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp274301
                                                    _stx267638_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0
                                             __tmp274300)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g267657267666_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e267662267723_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g267657267666_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e267663267726_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g267657267666_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys267729_ _e267663267726_)
                               (_e267664267731_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g267657267666_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main267734_ _e267664267731_))
                          (declare (not safe))
                          (_K267661267720_ _main267734_ _keys267729_))
                        (let () (declare (not safe)) (_else267659267674_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self267640267648_
                 'gxc#!kw-lambda::t))
              (let* ((_e267644267739_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self267640267648_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e267645267742_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self267640267648_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table267745_ _e267645267742_)
                     (_e267646267747_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self267640267648_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch267750_ _e267646267747_))
                (declare (not safe))
                (_K267643267736_ _dispatch267750_ _table267745_))
              (let () (declare (not safe)) (_E267642267652_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx267250_ _args267251_)
        (let _lp267253_ ((_rest267255_ _args267251_)
                         (_pargs267256_ '())
                         (_kwargs267257_ '()))
          (let* ((___stx273364273365_ _rest267255_)
                 (_g267263267315_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx273364273365_)))))
            (let ((___kont273366273367_
                   (lambda (_L267494_ _L267495_)
                     (let ((__tmp274330
                            (let ()
                              (declare (not safe))
                              (cons _L267495_ _pargs267256_))))
                       (declare (not safe))
                       (_lp267253_ _L267494_ __tmp274330 _kwargs267257_))))
                  (___kont273368273369_
                   (lambda (_L267440_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L267440_ _pargs267256_))
                             (reverse _kwargs267257_))))
                  (___kont273370273371_
                   (lambda (_L267387_ _L267388_ _L267389_)
                     (let ((_kw267406_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L267389_))))
                       (if (assq _kw267406_ _kwargs267257_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx267250_
                              _kw267406_))
                           (let ((__tmp274331
                                  (let ((__tmp274332
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw267406_ _L267388_))))
                                    (declare (not safe))
                                    (cons __tmp274332 _kwargs267257_))))
                             (declare (not safe))
                             (_lp267253_
                              _L267387_
                              _pargs267256_
                              __tmp274331))))))
                  (___kont273372273373_
                   (lambda (_L267335_ _L267336_)
                     (let ((__tmp274333
                            (let ()
                              (declare (not safe))
                              (cons _L267336_ _pargs267256_))))
                       (declare (not safe))
                       (_lp267253_ _L267335_ __tmp274333 _kwargs267257_))))
                  (___kont273374273375_
                   (lambda ()
                     (values (reverse _pargs267256_)
                             (reverse _kwargs267257_)))))
              (let* ((_g267262267322_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx273364273365_))
                            (___kont273374273375_)
                            (let () (declare (not safe)) (_g267263267315_)))))
                     (___match273471273472_
                      (lambda (_e267294267355_
                               _hd267295267358_
                               _tl267296267360_
                               _e267297267363_
                               _hd267298267366_
                               _tl267299267368_
                               _e267300267371_
                               _hd267301267374_
                               _tl267302267376_
                               _e267303267379_
                               _hd267304267382_
                               _tl267305267384_)
                        (let ((_L267387_ _tl267305267384_)
                              (_L267388_ _hd267304267382_)
                              (_L267389_ _hd267301267374_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L267389_))
                              (___kont273370273371_
                               _L267387_
                               _L267388_
                               _L267389_)
                              (___kont273372273373_
                               _tl267296267360_
                               _hd267295267358_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx273364273365_))
                    (let ((_e267267267459_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx273364273365_))))
                      (let ((_tl267269267464_
                             (let ()
                               (declare (not safe))
                               (##cdr _e267267267459_)))
                            (_hd267268267462_
                             (let ()
                               (declare (not safe))
                               (##car _e267267267459_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd267268267462_))
                            (let ((_e267270267467_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd267268267462_))))
                              (let ((_tl267272267472_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e267270267467_)))
                                    (_hd267271267470_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e267270267467_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd267271267470_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd267271267470_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl267272267472_))
                                            (let ((_e267273267475_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl267272267472_))))
                                              (let ((_tl267275267480_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e267273267475_)))
                                                    (_hd267274267478_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e267273267475_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd267274267478_))
                                                    (let ((_e267276267483_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd267274267478_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e267276267483_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl267275267480_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl267269267464_))
                          (let ((_e267277267486_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl267269267464_))))
                            (let ((_tl267279267491_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e267277267486_)))
                                  (_hd267278267489_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e267277267486_))))
                              (___kont273366273367_
                               _tl267279267491_
                               _hd267278267489_)))
                          (___kont273372273373_
                           _tl267269267464_
                           _hd267268267462_))
                      (___kont273372273373_ _tl267269267464_ _hd267268267462_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e267276267483_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl267275267480_))
                          (___kont273368273369_ _tl267269267464_)
                          (___kont273372273373_
                           _tl267269267464_
                           _hd267268267462_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl267275267480_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl267269267464_))
                              (let ((_e267303267379_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl267269267464_))))
                                (let ((_tl267305267384_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e267303267379_)))
                                      (_hd267304267382_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e267303267379_))))
                                  (___match273471273472_
                                   _e267267267459_
                                   _hd267268267462_
                                   _tl267269267464_
                                   _e267270267467_
                                   _hd267271267470_
                                   _tl267272267472_
                                   _e267273267475_
                                   _hd267274267478_
                                   _tl267275267480_
                                   _e267303267379_
                                   _hd267304267382_
                                   _tl267305267384_)))
                              (___kont273372273373_
                               _tl267269267464_
                               _hd267268267462_))
                          (___kont273372273373_
                           _tl267269267464_
                           _hd267268267462_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl267275267480_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl267269267464_))
                                                            (let ((_e267303267379_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl267269267464_))))
                      (let ((_tl267305267384_
                             (let ()
                               (declare (not safe))
                               (##cdr _e267303267379_)))
                            (_hd267304267382_
                             (let ()
                               (declare (not safe))
                               (##car _e267303267379_))))
                        (___match273471273472_
                         _e267267267459_
                         _hd267268267462_
                         _tl267269267464_
                         _e267270267467_
                         _hd267271267470_
                         _tl267272267472_
                         _e267273267475_
                         _hd267274267478_
                         _tl267275267480_
                         _e267303267379_
                         _hd267304267382_
                         _tl267305267384_)))
                    (___kont273372273373_ _tl267269267464_ _hd267268267462_))
                (___kont273372273373_ _tl267269267464_ _hd267268267462_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont273372273373_
                                             _tl267269267464_
                                             _hd267268267462_))
                                        (___kont273372273373_
                                         _tl267269267464_
                                         _hd267268267462_))
                                    (___kont273372273373_
                                     _tl267269267464_
                                     _hd267268267462_))))
                            (___kont273372273373_
                             _tl267269267464_
                             _hd267268267462_))))
                    (let () (declare (not safe)) (_g267262267322_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self267246_ _stx267247_ _args267248_)
        (let () (declare (not safe)) (gxc#xform-call% _stx267247_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
