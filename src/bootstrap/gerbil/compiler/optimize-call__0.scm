(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1707846536)
  (begin
    (define gxc#&optimize-call
      (make-promise
       (lambda ()
         (let ((_tbl278564_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp283423 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl278564_ __tmp283423))
           (let ()
             (declare (not safe))
             (table-set! _tbl278564_ '%#call gxc#optimize-call%))
           _tbl278564_))))
    (define gxc#apply-optimize-call
      (lambda (_stx278547_ . _args278549_)
        (let ((__tmp283425
               (lambda ()
                 (declare (not safe))
                 (if (null? _args278549_)
                     (gxc#compile-e__0 _stx278547_)
                     (let ((_arg1278554_ (car _args278549_))
                           (_rest278556_ (cdr _args278549_)))
                       (if (null? _rest278556_)
                           (gxc#compile-e__1 _stx278547_ _arg1278554_)
                           (let ((_arg2278559_ (car _rest278556_))
                                 (_rest278561_ (cdr _rest278556_)))
                             (if (null? _rest278561_)
                                 (gxc#compile-e__2
                                  _stx278547_
                                  _arg1278554_
                                  _arg2278559_)
                                 (apply gxc#compile-e
                                        _stx278547_
                                        _arg1278554_
                                        _arg2278559_
                                        _rest278561_))))))))
              (__tmp283424 (force gxc#&optimize-call)))
          (declare (not safe))
          (call-with-parameters
           __tmp283425
           gxc#current-compile-methods
           __tmp283424))))
    (define gxc#optimize-call%
      (lambda (_stx278402_)
        (let* ((___stx283173283174_ _stx278402_)
               (_g278405278425_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx283173283174_)))))
          (let ((___kont283175283176_
                 (lambda (_L278469_ _L278470_)
                   (let* ((_rator-id278488_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L278470_)))
                          (_rator-type278490_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id278488_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type278490_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp283426
                                  (##structure-ref
                                   _rator-type278490_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id278488_
                              '" => "
                              _rator-type278490_
                              '" "
                              __tmp283426))
                           (let ((_optimized278493_
                                  (let ((__method283421
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type278490_
                                            'optimize-call))))
                                    (if __method283421
                                        (__method283421
                                         _rator-type278490_
                                         _stx278402_
                                         _L278469_)
                                        (error '"Missing method"
                                               _rator-type278490_
                                               'optimize-call)))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type278490_))
                                 _optimized278493_
                                 (let* ((___stx283155283156_ _optimized278493_)
                                        (_g278496278506_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx283155283156_)))))
                                   (let ((___kont283157283158_
                                          (lambda (_L278526_)
                                            (let ((__tmp283427
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L278526_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp283427
                                               _stx278402_))))
                                         (___kont283159283160_
                                          (lambda () _optimized278493_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx283155283156_))
                                         (let ((_e278501278518_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx283155283156_))))
                                           (let ((_tl278499278523_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e278501278518_)))
                                                 (_hd278500278521_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e278501278518_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd278500278521_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd278500278521_))
                                                     (___kont283157283158_
                                                      _tl278499278523_)
                                                     (___kont283159283160_))
                                                 (___kont283159283160_))))
                                         (___kont283159283160_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type278490_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx278402_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx278402_
                                _rator-type278490_)))))))
                (___kont283177283178_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _stx278402_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx283173283174_))
                (let ((_e278411278437_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx283173283174_))))
                  (let ((_tl278409278442_
                         (let () (declare (not safe)) (##cdr _e278411278437_)))
                        (_hd278410278440_
                         (let ()
                           (declare (not safe))
                           (##car _e278411278437_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl278409278442_))
                        (let ((_e278414278445_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl278409278442_))))
                          (let ((_tl278412278450_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e278414278445_)))
                                (_hd278413278448_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e278414278445_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd278413278448_))
                                (let ((_e278417278453_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd278413278448_))))
                                  (let ((_tl278415278458_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e278417278453_)))
                                        (_hd278416278456_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e278417278453_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd278416278456_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd278416278456_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl278415278458_))
                                                (let ((_e278420278461_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl278415278458_))))
                                                  (let ((_tl278418278466_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e278420278461_)))
                                                        (_hd278419278464_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e278420278461_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl278418278466_))
                                                        (___kont283175283176_
                                                         _tl278412278450_
                                                         _hd278419278464_)
                                                        (___kont283177283178_))))
                                                (___kont283177283178_))
                                            (___kont283177283178_))
                                        (___kont283177283178_))))
                                (___kont283177283178_))))
                        (___kont283177283178_))))
                (___kont283177283178_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self278356_ _stx278357_ _args278358_)
        (let* ((_g278360278370_
                (lambda (_g278361278367_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g278361278367_))))
               (_g278359278399_
                (lambda (_g278361278373_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g278361278373_))
                      (let ((_e278365278375_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g278361278373_))))
                        (let ((_hd278364278378_
                               (let ()
                                 (declare (not safe))
                                 (##car _e278365278375_)))
                              (_tl278363278380_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e278365278375_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl278363278380_))
                              ((lambda (_L278383_)
                                 (let* ((_klass278394_
                                         (let ((__tmp283428
                                                (##structure-ref
                                                 _self278356_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx278357_
                                            __tmp283428)))
                                        (_object278396_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L278383_))))
                                   (if (##structure-ref
                                        _klass278394_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp283444
                                              (let ((__tmp283445
                                                     (let ((__tmp283447
                                                            (let ((__tmp283448
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp283449
                                  (##structure-ref
                                   _klass278394_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp283449 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp283448)))
                   (__tmp283446
                    (let () (declare (not safe)) (cons _object278396_ '()))))
               (declare (not safe))
               (cons __tmp283447 __tmp283446))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp283445))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp283444
                                          _stx278357_))
                                       (if (##structure-ref
                                            _klass278394_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp283438
                                                  (let ((__tmp283439
                                                         (let ((__tmp283441
                                                                (let ((__tmp283442
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp283443
                                      (##structure-ref
                                       _klass278394_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp283443 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp283442)))
                       (__tmp283440
                        (let ()
                          (declare (not safe))
                          (cons _object278396_ '()))))
                   (declare (not safe))
                   (cons __tmp283441 __tmp283440))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp283439))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp283438
                                              _stx278357_))
                                           (let ((__tmp283429
                                                  (let ((__tmp283430
                                                         (let ((__tmp283436
                                                                (let ((__tmp283437
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp283437)))
                       (__tmp283431
                        (let ((__tmp283433
                               (let ((__tmp283434
                                      (let ((__tmp283435
                                             (##structure-ref
                                              _self278356_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp283435 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp283434)))
                              (__tmp283432
                               (let ()
                                 (declare (not safe))
                                 (cons _object278396_ '()))))
                          (declare (not safe))
                          (cons __tmp283433 __tmp283432))))
                   (declare (not safe))
                   (cons __tmp283436 __tmp283431))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp283430))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp283429
                                              _stx278357_))))))
                               _hd278364278378_)
                              (let ()
                                (declare (not safe))
                                (_g278360278370_ _g278361278373_)))))
                      (let ()
                        (declare (not safe))
                        (_g278360278370_ _g278361278373_))))))
          (declare (not safe))
          (_g278359278399_ _args278358_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__t283134)
        (let ((__id283135
               (let ((__tmp283136
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t283134 'id))))
                 (if __tmp283136 __tmp283136 (error '"Unknown slot" 'id)))))
          (lambda (_self278356_ _stx278357_ _args278358_)
            (let* ((_g278360278370_
                    (lambda (_g278361278367_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g278361278367_))))
                   (_g278359278399_
                    (lambda (_g278361278373_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g278361278373_))
                          (let ((_e278365278375_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g278361278373_))))
                            (let ((_hd278364278378_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e278365278375_)))
                                  (_tl278363278380_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e278365278375_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl278363278380_))
                                  ((lambda (_L278383_)
                                     (let* ((_klass278394_
                                             (let ((__tmp283450
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self278356_
                                                       __id283135
                                                       __t283134
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx278357_
                                                __tmp283450)))
                                            (_object278396_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L278383_))))
                                       (if (##structure-ref
                                            _klass278394_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp283466
                                                  (let ((__tmp283467
                                                         (let ((__tmp283469
                                                                (let ((__tmp283470
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp283471
                                      (##structure-ref
                                       _klass278394_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp283471 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp283470)))
                       (__tmp283468
                        (let ()
                          (declare (not safe))
                          (cons _object278396_ '()))))
                   (declare (not safe))
                   (cons __tmp283469 __tmp283468))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp283467))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp283466
                                              _stx278357_))
                                           (if (##structure-ref
                                                _klass278394_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp283460
                                                      (let ((__tmp283461
                                                             (let ((__tmp283463
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp283464
                                   (let ((__tmp283465
                                          (##structure-ref
                                           _klass278394_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp283465 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp283464)))
                           (__tmp283462
                            (let ()
                              (declare (not safe))
                              (cons _object278396_ '()))))
                       (declare (not safe))
                       (cons __tmp283463 __tmp283462))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp283461))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp283460
                                                  _stx278357_))
                                               (let ((__tmp283451
                                                      (let ((__tmp283452
                                                             (let ((__tmp283458
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp283459
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp283459)))
                           (__tmp283453
                            (let ((__tmp283455
                                   (let ((__tmp283456
                                          (let ((__tmp283457
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self278356_
                                                    __id283135
                                                    __t283134
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp283457 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp283456)))
                                  (__tmp283454
                                   (let ()
                                     (declare (not safe))
                                     (cons _object278396_ '()))))
                              (declare (not safe))
                              (cons __tmp283455 __tmp283454))))
                       (declare (not safe))
                       (cons __tmp283458 __tmp283453))))
                (declare (not safe))
                (cons '%#call __tmp283452))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp283451
                                                  _stx278357_))))))
                                   _hd278364278378_)
                                  (let ()
                                    (declare (not safe))
                                    (_g278360278370_ _g278361278373_)))))
                          (let ()
                            (declare (not safe))
                            (_g278360278370_ _g278361278373_))))))
              (declare (not safe))
              (_g278359278399_ _args278358_))))))
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
      (lambda (_self278076_ _stx278077_ _args278078_)
        (let* ((_klass278080_
                (let ((__tmp283472
                       (##structure-ref _self278076_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx278077_ __tmp283472)))
               (_fields278082_
                (length (##structure-ref _klass278080_ '5 gxc#!class::t '#f)))
               (_args278084_ (map gxc#compile-e _args278078_))
               (_inline-make-object278086_
                (let ((__tmp283473
                       (let ((__tmp283479
                              (let ((__tmp283480
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp283480)))
                             (__tmp283474
                              (let ((__tmp283476
                                     (let ((__tmp283477
                                            (let ((__tmp283478
                                                   (##structure-ref
                                                    _self278076_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp283478 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp283477)))
                                    (__tmp283475
                                     (make-list _fields278082_ '(%#quote #f))))
                                (declare (not safe))
                                (cons __tmp283476 __tmp283475))))
                         (declare (not safe))
                         (cons __tmp283479 __tmp283474))))
                  (declare (not safe))
                  (cons '%#call __tmp283473))))
          (let ((_$e278089_
                 (##structure-ref _klass278080_ '6 gxc#!class::t '#f)))
            (if _$e278089_
                ((lambda (_ctor278092_)
                   (let ((_$obj278094_
                          (let ((__tmp283580 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp283580)))
                         (_ctor-impl278095_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass278080_
                             _ctor278092_))))
                     (let ((__tmp283581
                            (let ((__tmp283582
                                   (let ((__tmp283650
                                          (let ((__tmp283651
                                                 (let ((__tmp283653
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj278094_
                                                                '())))
                                                       (__tmp283652
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object278086_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp283653
                                                         __tmp283652))))
                                            (declare (not safe))
                                            (cons __tmp283651 '())))
                                         (__tmp283583
                                          (let ((__tmp283584
                                                 (let ((__tmp283585
                                                        (let ((__tmp283589
                                                               (if _ctor-impl278095_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp283644
                                  (let ((__tmp283648
                                         (let ((__tmp283649
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl278095_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp283649)))
                                        (__tmp283645
                                         (let ((__tmp283646
                                                (let ((__tmp283647
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj278094_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp283647))))
                                           (declare (not safe))
                                           (cons __tmp283646 _args278084_))))
                                    (declare (not safe))
                                    (cons __tmp283648 __tmp283645))))
                             (declare (not safe))
                             (cons '%#call __tmp283644))
                           (let* ((_$ctor278097_
                                   (let ((__tmp283590 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp283590)))
                                  (__tmp283591
                                   (let ((__tmp283626
                                          (let ((__tmp283627
                                                 (let ((__tmp283643
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor278097_
                                                                '())))
                                                       (__tmp283628
                                                        (let ((__tmp283629
                                                               (let ((__tmp283630
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp283641
                                     (let ((__tmp283642
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp283642)))
                                    (__tmp283631
                                     (let ((__tmp283638
                                            (let ((__tmp283639
                                                   (let ((__tmp283640
                                                          (##structure-ref
                                                           _self278076_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp283640 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp283639)))
                                           (__tmp283632
                                            (let ((__tmp283636
                                                   (let ((__tmp283637
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj278094_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp283637)))
                                                  (__tmp283633
                                                   (let ((__tmp283634
                                                          (let ((__tmp283635
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _ctor278092_ '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp283635))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp283634 '()))))
                                              (declare (not safe))
                                              (cons __tmp283636 __tmp283633))))
                                       (declare (not safe))
                                       (cons __tmp283638 __tmp283632))))
                                (declare (not safe))
                                (cons __tmp283641 __tmp283631))))
                         (declare (not safe))
                         (cons '%#call __tmp283630))))
                  (declare (not safe))
                  (cons __tmp283629 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp283643
                                                         __tmp283628))))
                                            (declare (not safe))
                                            (cons __tmp283627 '())))
                                         (__tmp283592
                                          (let ((__tmp283593
                                                 (let ((__tmp283594
                                                        (let ((__tmp283624
                                                               (let ((__tmp283625
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor278097_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp283625)))
                      (__tmp283595
                       (let ((__tmp283617
                              (let ((__tmp283618
                                     (let ((__tmp283622
                                            (let ((__tmp283623
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor278097_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp283623)))
                                           (__tmp283619
                                            (let ((__tmp283620
                                                   (let ((__tmp283621
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj278094_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp283621))))
                                              (declare (not safe))
                                              (cons __tmp283620
                                                    _args278084_))))
                                       (declare (not safe))
                                       (cons __tmp283622 __tmp283619))))
                                (declare (not safe))
                                (cons '%#call __tmp283618)))
                             (__tmp283596
                              (let ((__tmp283597
                                     (let ((__tmp283598
                                            (let ((__tmp283615
                                                   (let ((__tmp283616
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp283616)))
                                                  (__tmp283599
                                                   (let ((__tmp283613
                                                          (let ((__tmp283614
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp283614)))
                 (__tmp283600
                  (let ((__tmp283611
                         (let ((__tmp283612
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp283612)))
                        (__tmp283601
                         (let ((__tmp283608
                                (let ((__tmp283609
                                       (let ((__tmp283610
                                              (##structure-ref
                                               _self278076_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp283610 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp283609)))
                               (__tmp283602
                                (let ((__tmp283606
                                       (let ((__tmp283607
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp283607)))
                                      (__tmp283603
                                       (let ((__tmp283604
                                              (let ((__tmp283605
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor278092_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp283605))))
                                         (declare (not safe))
                                         (cons __tmp283604 '()))))
                                  (declare (not safe))
                                  (cons __tmp283606 __tmp283603))))
                           (declare (not safe))
                           (cons __tmp283608 __tmp283602))))
                    (declare (not safe))
                    (cons __tmp283611 __tmp283601))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp283613
                                                           __tmp283600))))
                                              (declare (not safe))
                                              (cons __tmp283615 __tmp283599))))
                                       (declare (not safe))
                                       (cons '%#call __tmp283598))))
                                (declare (not safe))
                                (cons __tmp283597 '()))))
                         (declare (not safe))
                         (cons __tmp283617 __tmp283596))))
                  (declare (not safe))
                  (cons __tmp283624 __tmp283595))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp283594))))
                                            (declare (not safe))
                                            (cons __tmp283593 '()))))
                                     (declare (not safe))
                                     (cons __tmp283626 __tmp283592))))
                             (declare (not safe))
                             (cons '%#let-values __tmp283591))))
                      (__tmp283586
                       (let ((__tmp283587
                              (let ((__tmp283588
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj278094_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp283588))))
                         (declare (not safe))
                         (cons __tmp283587 '()))))
                  (declare (not safe))
                  (cons __tmp283589 __tmp283586))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp283585))))
                                            (declare (not safe))
                                            (cons __tmp283584 '()))))
                                     (declare (not safe))
                                     (cons __tmp283650 __tmp283583))))
                              (declare (not safe))
                              (cons '%#let-values __tmp283582))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp283581 _stx278077_))))
                 _$e278089_)
                (let ((_$e278099_
                       (##structure-ref _klass278080_ '9 gxc#!class::t '#f)))
                  (if _$e278099_
                      ((lambda (_metaclass278102_)
                         (let* ((_$obj278104_
                                 (let ((__tmp283542 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp283542)))
                                (_metakons278106_
                                 (let ((__tmp283543
                                        (let ()
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           _stx278077_
                                           _metaclass278102_))))
                                   (declare (not safe))
                                   (gxc#!class-lookup-method
                                    __tmp283543
                                    'instance-init!))))
                           (let ((__tmp283544
                                  (let ((__tmp283545
                                         (let ((__tmp283576
                                                (let ((__tmp283577
                                                       (let ((__tmp283579
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj278104_ '())))
                     (__tmp283578
                      (let ()
                        (declare (not safe))
                        (cons _inline-make-object278086_ '()))))
                 (declare (not safe))
                 (cons __tmp283579 __tmp283578))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp283577 '())))
                                               (__tmp283546
                                                (let ((__tmp283547
                                                       (let ((__tmp283548
                                                              (let ((__tmp283552
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if _metakons278106_
                                 (let ((__tmp283566
                                        (let ((__tmp283574
                                               (let ((__tmp283575
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metakons278106_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp283575)))
                                              (__tmp283567
                                               (let ((__tmp283571
                                                      (let ((__tmp283572
                                                             (let ((__tmp283573
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self278076_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp283573 '()))))
                (declare (not safe))
                (cons '%#ref __tmp283572)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp283568
                                                      (let ((__tmp283569
                                                             (let ((__tmp283570
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _$obj278104_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp283570))))
                (declare (not safe))
                (cons __tmp283569 _args278084_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp283571
                                                       __tmp283568))))
                                          (declare (not safe))
                                          (cons __tmp283574 __tmp283567))))
                                   (declare (not safe))
                                   (cons '%#call __tmp283566))
                                 (let ((__tmp283553
                                        (let ((__tmp283564
                                               (let ((__tmp283565
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'call-method
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp283565)))
                                              (__tmp283554
                                               (let ((__tmp283561
                                                      (let ((__tmp283562
                                                             (let ((__tmp283563
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self278076_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp283563 '()))))
                (declare (not safe))
                (cons '%#ref __tmp283562)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp283555
                                                      (let ((__tmp283559
                                                             (let ((__tmp283560
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'instance-init! '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp283560)))
                    (__tmp283556
                     (let ((__tmp283557
                            (let ((__tmp283558
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj278104_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp283558))))
                       (declare (not safe))
                       (cons __tmp283557 _args278084_))))
                (declare (not safe))
                (cons __tmp283559 __tmp283556))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp283561
                                                       __tmp283555))))
                                          (declare (not safe))
                                          (cons __tmp283564 __tmp283554))))
                                   (declare (not safe))
                                   (cons '%#call __tmp283553))))
                            (__tmp283549
                             (let ((__tmp283550
                                    (let ((__tmp283551
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj278104_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp283551))))
                               (declare (not safe))
                               (cons __tmp283550 '()))))
                        (declare (not safe))
                        (cons __tmp283552 __tmp283549))))
                 (declare (not safe))
                 (cons '%#begin __tmp283548))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp283547 '()))))
                                           (declare (not safe))
                                           (cons __tmp283576 __tmp283546))))
                                    (declare (not safe))
                                    (cons '%#let-values __tmp283545))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp283544 _stx278077_))))
                       _$e278099_)
                      (if (##structure-ref _klass278080_ '7 gxc#!class::t '#f)
                          (if (fx= (length _args278084_) _fields278082_)
                              (let ((__tmp283534
                                     (let ((__tmp283535
                                            (let ((__tmp283540
                                                   (let ((__tmp283541
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp283541)))
                                                  (__tmp283536
                                                   (let ((__tmp283537
                                                          (let ((__tmp283538
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp283539
                                (##structure-ref
                                 _self278076_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp283539 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp283538))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp283537
                                                           _args278084_))))
                                              (declare (not safe))
                                              (cons __tmp283540 __tmp283536))))
                                       (declare (not safe))
                                       (cons '%#call __tmp283535))))
                                (declare (not safe))
                                (gxc#xform-wrap-source
                                 __tmp283534
                                 _stx278077_))
                              (let ((__tmp283533
                                     (##structure-ref
                                      _self278076_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                    (__tmp283532
                                     (length (##structure-ref
                                              _klass278080_
                                              '5
                                              gxc#!class::t
                                              '#f))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"illegal struct constructor application; arity mismatch"
                                 _stx278077_
                                 __tmp283533
                                 __tmp283532)))
                          (let ((_$obj278109_
                                 (let ((__tmp283481 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp283481))))
                            (let _lp278111_ ((_rest278113_ _args278084_)
                                             (_initializers278114_ '()))
                              (let* ((___stx283211283212_ _rest278113_)
                                     (_g278118278139_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx283211283212_)))))
                                (let ((___kont283213283214_
                                       (lambda (_L278193_ _L278194_ _L278195_)
                                         (let* ((_slot278226_
                                                 (keyword->symbol
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e _L278195_))))
                                                (_off278228_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass278080_
                                                    _slot278226_))))
                                           (if _off278228_
                                               (let ((__tmp283483
                                                      (let ((__tmp283484
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off278228_ _L278194_))))
                (declare (not safe))
                (cons __tmp283484 _initializers278114_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp278111_
                                                  _L278193_
                                                  __tmp283483))
                                               (let ((__tmp283482
                                                      (##structure-ref
                                                       _self278076_
                                                       '1
                                                       gxc#!type::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"unknown slot"
                                                  _stx278077_
                                                  __tmp283482
                                                  _slot278226_))))))
                                      (___kont283215283216_
                                       (lambda ()
                                         (let ((__tmp283485
                                                (let ((__tmp283486
                                                       (let ((__tmp283509
                                                              (let ((__tmp283510
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp283512
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj278109_ '())))
                                   (__tmp283511
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object278086_ '()))))
                               (declare (not safe))
                               (cons __tmp283512 __tmp283511))))
                        (declare (not safe))
                        (cons __tmp283510 '())))
                     (__tmp283487
                      (let ((__tmp283488
                             (let ((__tmp283489
                                    (let ((__tmp283506
                                           (let ((__tmp283507
                                                  (let ((__tmp283508
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj278109_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp283508))))
                                             (declare (not safe))
                                             (cons __tmp283507 '())))
                                          (__tmp283490
                                           (let ((__tmp283491
                                                  (lambda (_i278153_ _r278154_)
                                                    (let ((__tmp283492
                                                           (let ((__tmp283493
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp283503
                                 (let ((__tmp283504
                                        (let ((__tmp283505
                                               (##structure-ref
                                                _self278076_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp283505 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp283504)))
                                (__tmp283494
                                 (let ((__tmp283500
                                        (let ((__tmp283501
                                               (let ((__tmp283502
                                                      (car _i278153_)))
                                                 (declare (not safe))
                                                 (cons __tmp283502 '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp283501)))
                                       (__tmp283495
                                        (let ((__tmp283498
                                               (let ((__tmp283499
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _$obj278109_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp283499)))
                                              (__tmp283496
                                               (let ((__tmp283497
                                                      (cdr _i278153_)))
                                                 (declare (not safe))
                                                 (cons __tmp283497 '()))))
                                          (declare (not safe))
                                          (cons __tmp283498 __tmp283496))))
                                   (declare (not safe))
                                   (cons __tmp283500 __tmp283495))))
                            (declare (not safe))
                            (cons __tmp283503 __tmp283494))))
                     (declare (not safe))
                     (cons '%#struct-unchecked-set! __tmp283493))))
              (declare (not safe))
              (cons __tmp283492 _r278154_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (foldl1 __tmp283491
                                                     '()
                                                     _initializers278114_))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp283506 __tmp283490))))
                               (declare (not safe))
                               (cons '%#begin __tmp283489))))
                        (declare (not safe))
                        (cons __tmp283488 '()))))
                 (declare (not safe))
                 (cons __tmp283509 __tmp283487))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp283486))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp283485
                                            _stx278077_))))
                                      (___kont283217283218_
                                       (lambda ()
                                         (let ((__tmp283513
                                                (let ((__tmp283514
                                                       (let ((__tmp283528
                                                              (let ((__tmp283529
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp283531
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj278109_ '())))
                                   (__tmp283530
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object278086_ '()))))
                               (declare (not safe))
                               (cons __tmp283531 __tmp283530))))
                        (declare (not safe))
                        (cons __tmp283529 '())))
                     (__tmp283515
                      (let ((__tmp283516
                             (let ((__tmp283517
                                    (let ((__tmp283521
                                           (let ((__tmp283522
                                                  (let ((__tmp283526
                                                         (let ((__tmp283527
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'class-instance-init! '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp283527)))
                (__tmp283523
                 (let ((__tmp283524
                        (let ((__tmp283525
                               (let ()
                                 (declare (not safe))
                                 (cons _$obj278109_ '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp283525))))
                   (declare (not safe))
                   (cons __tmp283524 _args278084_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp283526
                                                          __tmp283523))))
                                             (declare (not safe))
                                             (cons '%#call __tmp283522)))
                                          (__tmp283518
                                           (let ((__tmp283519
                                                  (let ((__tmp283520
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj278109_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp283520))))
                                             (declare (not safe))
                                             (cons __tmp283519 '()))))
                                      (declare (not safe))
                                      (cons __tmp283521 __tmp283518))))
                               (declare (not safe))
                               (cons '%#begin __tmp283517))))
                        (declare (not safe))
                        (cons __tmp283516 '()))))
                 (declare (not safe))
                 (cons __tmp283528 __tmp283515))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp283514))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp283513
                                            _stx278077_)))))
                                  (let* ((_g278116278156_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   ___stx283211283212_))
                                                (___kont283215283216_)
                                                (___kont283217283218_))))
                                         (___match283248283249_
                                          (lambda (_e278125278161_
                                                   _hd278124278164_
                                                   _tl278123278166_
                                                   _e278128278169_
                                                   _hd278127278172_
                                                   _tl278126278174_
                                                   _e278131278177_
                                                   _hd278130278180_
                                                   _tl278129278182_
                                                   _e278134278185_
                                                   _hd278133278188_
                                                   _tl278132278190_)
                                            (let ((_L278193_ _tl278132278190_)
                                                  (_L278194_ _hd278133278188_)
                                                  (_L278195_ _hd278130278180_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-keyword?
                                                     _L278195_))
                                                  (___kont283213283214_
                                                   _L278193_
                                                   _L278194_
                                                   _L278195_)
                                                  (___kont283217283218_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx283211283212_))
                                        (let ((_e278125278161_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx283211283212_))))
                                          (let ((_tl278123278166_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e278125278161_)))
                                                (_hd278124278164_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e278125278161_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd278124278164_))
                                                (let ((_e278128278169_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd278124278164_))))
                                                  (let ((_tl278126278174_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e278128278169_)))
                                                        (_hd278127278172_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e278128278169_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd278127278172_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#quote
                                                               _hd278127278172_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl278126278174_))
                        (let ((_e278131278177_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl278126278174_))))
                          (let ((_tl278129278182_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e278131278177_)))
                                (_hd278130278180_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e278131278177_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl278129278182_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl278123278166_))
                                    (let ((_e278134278185_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl278123278166_))))
                                      (let ((_tl278132278190_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e278134278185_)))
                                            (_hd278133278188_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e278134278185_))))
                                        (___match283248283249_
                                         _e278125278161_
                                         _hd278124278164_
                                         _tl278123278166_
                                         _e278128278169_
                                         _hd278127278172_
                                         _tl278126278174_
                                         _e278131278177_
                                         _hd278130278180_
                                         _tl278129278182_
                                         _e278134278185_
                                         _hd278133278188_
                                         _tl278132278190_)))
                                    (___kont283217283218_))
                                (___kont283217283218_))))
                        (___kont283217283218_))
                    (___kont283217283218_))
                (___kont283217283218_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont283217283218_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g278116278156_))))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__t283137)
        (let ((__id283138
               (let ((__tmp283139
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t283137 'id))))
                 (if __tmp283139 __tmp283139 (error '"Unknown slot" 'id)))))
          (lambda (_self278076_ _stx278077_ _args278078_)
            (let* ((_klass278080_
                    (let ((__tmp283654
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self278076_
                              __id283138
                              __t283137
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx278077_ __tmp283654)))
                   (_fields278082_
                    (length (##structure-ref
                             _klass278080_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args278084_ (map gxc#compile-e _args278078_))
                   (_inline-make-object278086_
                    (let ((__tmp283655
                           (let ((__tmp283661
                                  (let ((__tmp283662
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp283662)))
                                 (__tmp283656
                                  (let ((__tmp283658
                                         (let ((__tmp283659
                                                (let ((__tmp283660
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self278076_
                                                          __id283138
                                                          __t283137
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp283660 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp283659)))
                                        (__tmp283657
                                         (make-list
                                          _fields278082_
                                          '(%#quote #f))))
                                    (declare (not safe))
                                    (cons __tmp283658 __tmp283657))))
                             (declare (not safe))
                             (cons __tmp283661 __tmp283656))))
                      (declare (not safe))
                      (cons '%#call __tmp283655))))
              (let ((_$e278089_
                     (##structure-ref _klass278080_ '6 gxc#!class::t '#f)))
                (if _$e278089_
                    ((lambda (_ctor278092_)
                       (let ((_$obj278094_
                              (let ((__tmp283762 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp283762)))
                             (_ctor-impl278095_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass278080_
                                 _ctor278092_))))
                         (let ((__tmp283763
                                (let ((__tmp283764
                                       (let ((__tmp283832
                                              (let ((__tmp283833
                                                     (let ((__tmp283835
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj278094_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp283834
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object278086_ '()))))
               (declare (not safe))
               (cons __tmp283835 __tmp283834))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp283833 '())))
                                             (__tmp283765
                                              (let ((__tmp283766
                                                     (let ((__tmp283767
                                                            (let ((__tmp283771
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl278095_
                               (let ((__tmp283826
                                      (let ((__tmp283830
                                             (let ((__tmp283831
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl278095_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp283831)))
                                            (__tmp283827
                                             (let ((__tmp283828
                                                    (let ((__tmp283829
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj278094_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp283829))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp283828
                                                     _args278084_))))
                                        (declare (not safe))
                                        (cons __tmp283830 __tmp283827))))
                                 (declare (not safe))
                                 (cons '%#call __tmp283826))
                               (let* ((_$ctor278097_
                                       (let ((__tmp283772
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp283772)))
                                      (__tmp283773
                                       (let ((__tmp283808
                                              (let ((__tmp283809
                                                     (let ((__tmp283825
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor278097_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp283810
                    (let ((__tmp283811
                           (let ((__tmp283812
                                  (let ((__tmp283823
                                         (let ((__tmp283824
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp283824)))
                                        (__tmp283813
                                         (let ((__tmp283820
                                                (let ((__tmp283821
                                                       (let ((__tmp283822
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self278076_
                         __id283138
                         __t283137
                         '#f))))
                 (declare (not safe))
                 (cons __tmp283822 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp283821)))
                                               (__tmp283814
                                                (let ((__tmp283818
                                                       (let ((__tmp283819
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj278094_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp283819)))
              (__tmp283815
               (let ((__tmp283816
                      (let ((__tmp283817
                             (let ()
                               (declare (not safe))
                               (cons _ctor278092_ '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp283817))))
                 (declare (not safe))
                 (cons __tmp283816 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp283818
                                                        __tmp283815))))
                                           (declare (not safe))
                                           (cons __tmp283820 __tmp283814))))
                                    (declare (not safe))
                                    (cons __tmp283823 __tmp283813))))
                             (declare (not safe))
                             (cons '%#call __tmp283812))))
                      (declare (not safe))
                      (cons __tmp283811 '()))))
               (declare (not safe))
               (cons __tmp283825 __tmp283810))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp283809 '())))
                                             (__tmp283774
                                              (let ((__tmp283775
                                                     (let ((__tmp283776
                                                            (let ((__tmp283806
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp283807
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor278097_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp283807)))
                          (__tmp283777
                           (let ((__tmp283799
                                  (let ((__tmp283800
                                         (let ((__tmp283804
                                                (let ((__tmp283805
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor278097_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp283805)))
                                               (__tmp283801
                                                (let ((__tmp283802
                                                       (let ((__tmp283803
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj278094_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp283803))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp283802
                                                        _args278084_))))
                                           (declare (not safe))
                                           (cons __tmp283804 __tmp283801))))
                                    (declare (not safe))
                                    (cons '%#call __tmp283800)))
                                 (__tmp283778
                                  (let ((__tmp283779
                                         (let ((__tmp283780
                                                (let ((__tmp283797
                                                       (let ((__tmp283798
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp283798)))
              (__tmp283781
               (let ((__tmp283795
                      (let ((__tmp283796
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp283796)))
                     (__tmp283782
                      (let ((__tmp283793
                             (let ((__tmp283794
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp283794)))
                            (__tmp283783
                             (let ((__tmp283790
                                    (let ((__tmp283791
                                           (let ((__tmp283792
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self278076_
                                                     __id283138
                                                     __t283137
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp283792 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp283791)))
                                   (__tmp283784
                                    (let ((__tmp283788
                                           (let ((__tmp283789
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp283789)))
                                          (__tmp283785
                                           (let ((__tmp283786
                                                  (let ((__tmp283787
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor278092_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp283787))))
                                             (declare (not safe))
                                             (cons __tmp283786 '()))))
                                      (declare (not safe))
                                      (cons __tmp283788 __tmp283785))))
                               (declare (not safe))
                               (cons __tmp283790 __tmp283784))))
                        (declare (not safe))
                        (cons __tmp283793 __tmp283783))))
                 (declare (not safe))
                 (cons __tmp283795 __tmp283782))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp283797
                                                        __tmp283781))))
                                           (declare (not safe))
                                           (cons '%#call __tmp283780))))
                                    (declare (not safe))
                                    (cons __tmp283779 '()))))
                             (declare (not safe))
                             (cons __tmp283799 __tmp283778))))
                      (declare (not safe))
                      (cons __tmp283806 __tmp283777))))
               (declare (not safe))
               (cons '%#if __tmp283776))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp283775 '()))))
                                         (declare (not safe))
                                         (cons __tmp283808 __tmp283774))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp283773))))
                          (__tmp283768
                           (let ((__tmp283769
                                  (let ((__tmp283770
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj278094_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp283770))))
                             (declare (not safe))
                             (cons __tmp283769 '()))))
                      (declare (not safe))
                      (cons __tmp283771 __tmp283768))))
               (declare (not safe))
               (cons '%#begin __tmp283767))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp283766 '()))))
                                         (declare (not safe))
                                         (cons __tmp283832 __tmp283765))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp283764))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp283763 _stx278077_))))
                     _$e278089_)
                    (let ((_$e278099_
                           (##structure-ref
                            _klass278080_
                            '9
                            gxc#!class::t
                            '#f)))
                      (if _$e278099_
                          ((lambda (_metaclass278102_)
                             (let* ((_$obj278104_
                                     (let ((__tmp283724 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp283724)))
                                    (_metakons278106_
                                     (let ((__tmp283725
                                            (let ()
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               _stx278077_
                                               _metaclass278102_))))
                                       (declare (not safe))
                                       (gxc#!class-lookup-method
                                        __tmp283725
                                        'instance-init!))))
                               (let ((__tmp283726
                                      (let ((__tmp283727
                                             (let ((__tmp283758
                                                    (let ((__tmp283759
                                                           (let ((__tmp283761
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj278104_ '())))
                         (__tmp283760
                          (let ()
                            (declare (not safe))
                            (cons _inline-make-object278086_ '()))))
                     (declare (not safe))
                     (cons __tmp283761 __tmp283760))))
              (declare (not safe))
              (cons __tmp283759 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp283728
                                                    (let ((__tmp283729
                                                           (let ((__tmp283730
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp283734
                                 (if _metakons278106_
                                     (let ((__tmp283748
                                            (let ((__tmp283756
                                                   (let ((__tmp283757
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _metakons278106_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp283757)))
                                                  (__tmp283749
                                                   (let ((__tmp283753
                                                          (let ((__tmp283754
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp283755
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self278076_
                                   __id283138
                                   __t283137
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp283755 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp283754)))
                 (__tmp283750
                  (let ((__tmp283751
                         (let ((__tmp283752
                                (let ()
                                  (declare (not safe))
                                  (cons _$obj278104_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp283752))))
                    (declare (not safe))
                    (cons __tmp283751 _args278084_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp283753
                                                           __tmp283750))))
                                              (declare (not safe))
                                              (cons __tmp283756 __tmp283749))))
                                       (declare (not safe))
                                       (cons '%#call __tmp283748))
                                     (let ((__tmp283735
                                            (let ((__tmp283746
                                                   (let ((__tmp283747
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'call-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp283747)))
                                                  (__tmp283736
                                                   (let ((__tmp283743
                                                          (let ((__tmp283744
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp283745
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self278076_
                                   __id283138
                                   __t283137
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp283745 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp283744)))
                 (__tmp283737
                  (let ((__tmp283741
                         (let ((__tmp283742
                                (let ()
                                  (declare (not safe))
                                  (cons 'instance-init! '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp283742)))
                        (__tmp283738
                         (let ((__tmp283739
                                (let ((__tmp283740
                                       (let ()
                                         (declare (not safe))
                                         (cons _$obj278104_ '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp283740))))
                           (declare (not safe))
                           (cons __tmp283739 _args278084_))))
                    (declare (not safe))
                    (cons __tmp283741 __tmp283738))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp283743
                                                           __tmp283737))))
                                              (declare (not safe))
                                              (cons __tmp283746 __tmp283736))))
                                       (declare (not safe))
                                       (cons '%#call __tmp283735))))
                                (__tmp283731
                                 (let ((__tmp283732
                                        (let ((__tmp283733
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$obj278104_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp283733))))
                                   (declare (not safe))
                                   (cons __tmp283732 '()))))
                            (declare (not safe))
                            (cons __tmp283734 __tmp283731))))
                     (declare (not safe))
                     (cons '%#begin __tmp283730))))
              (declare (not safe))
              (cons __tmp283729 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp283758
                                                     __tmp283728))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp283727))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp283726
                                  _stx278077_))))
                           _$e278099_)
                          (if (##structure-ref
                               _klass278080_
                               '7
                               gxc#!class::t
                               '#f)
                              (if (fx= (length _args278084_) _fields278082_)
                                  (let ((__tmp283716
                                         (let ((__tmp283717
                                                (let ((__tmp283722
                                                       (let ((__tmp283723
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '##structure '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp283723)))
              (__tmp283718
               (let ((__tmp283719
                      (let ((__tmp283720
                             (let ((__tmp283721
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self278076_
                                       __id283138
                                       __t283137
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp283721 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp283720))))
                 (declare (not safe))
                 (cons __tmp283719 _args278084_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp283722
                                                        __tmp283718))))
                                           (declare (not safe))
                                           (cons '%#call __tmp283717))))
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp283716
                                     _stx278077_))
                                  (let ((__tmp283715
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _self278076_
                                            __id283138
                                            __t283137
                                            '#f)))
                                        (__tmp283714
                                         (length (##structure-ref
                                                  _klass278080_
                                                  '5
                                                  gxc#!class::t
                                                  '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _stx278077_
                                     __tmp283715
                                     __tmp283714)))
                              (let ((_$obj278109_
                                     (let ((__tmp283663 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp283663))))
                                (let _lp278111_ ((_rest278113_ _args278084_)
                                                 (_initializers278114_ '()))
                                  (let* ((___stx283253283254_ _rest278113_)
                                         (_g278118278139_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               ___stx283253283254_)))))
                                    (let ((___kont283255283256_
                                           (lambda (_L278193_
                                                    _L278194_
                                                    _L278195_)
                                             (let* ((_slot278226_
                                                     (keyword->symbol
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L278195_))))
                                                    (_off278228_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass278080_
                                                        _slot278226_))))
                                               (if _off278228_
                                                   (let ((__tmp283665
                                                          (let ((__tmp283666
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _off278228_ _L278194_))))
                    (declare (not safe))
                    (cons __tmp283666 _initializers278114_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp278111_
                                                      _L278193_
                                                      __tmp283665))
                                                   (let ((__tmp283664
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _self278076_
                                                             __id283138
                                                             __t283137
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"unknown slot"
                                                      _stx278077_
                                                      __tmp283664
                                                      _slot278226_))))))
                                          (___kont283257283258_
                                           (lambda ()
                                             (let ((__tmp283667
                                                    (let ((__tmp283668
                                                           (let ((__tmp283691
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp283692
                                 (let ((__tmp283694
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj278109_ '())))
                                       (__tmp283693
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object278086_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp283694 __tmp283693))))
                            (declare (not safe))
                            (cons __tmp283692 '())))
                         (__tmp283669
                          (let ((__tmp283670
                                 (let ((__tmp283671
                                        (let ((__tmp283688
                                               (let ((__tmp283689
                                                      (let ((__tmp283690
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj278109_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp283690))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp283689 '())))
                                              (__tmp283672
                                               (let ((__tmp283673
                                                      (lambda (_i278153_
                                                               _r278154_)
                                                        (let ((__tmp283674
                                                               (let ((__tmp283675
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp283685
                                     (let ((__tmp283686
                                            (let ((__tmp283687
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self278076_
                                                      __id283138
                                                      __t283137
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp283687 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp283686)))
                                    (__tmp283676
                                     (let ((__tmp283682
                                            (let ((__tmp283683
                                                   (let ((__tmp283684
                                                          (car _i278153_)))
                                                     (declare (not safe))
                                                     (cons __tmp283684 '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp283683)))
                                           (__tmp283677
                                            (let ((__tmp283680
                                                   (let ((__tmp283681
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj278109_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp283681)))
                                                  (__tmp283678
                                                   (let ((__tmp283679
                                                          (cdr _i278153_)))
                                                     (declare (not safe))
                                                     (cons __tmp283679 '()))))
                                              (declare (not safe))
                                              (cons __tmp283680 __tmp283678))))
                                       (declare (not safe))
                                       (cons __tmp283682 __tmp283677))))
                                (declare (not safe))
                                (cons __tmp283685 __tmp283676))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp283675))))
                  (declare (not safe))
                  (cons __tmp283674 _r278154_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl1 __tmp283673
                                                         '()
                                                         _initializers278114_))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp283688
                                                  __tmp283672))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp283671))))
                            (declare (not safe))
                            (cons __tmp283670 '()))))
                     (declare (not safe))
                     (cons __tmp283691 __tmp283669))))
              (declare (not safe))
              (cons '%#let-values __tmp283668))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp283667
                                                _stx278077_))))
                                          (___kont283259283260_
                                           (lambda ()
                                             (let ((__tmp283695
                                                    (let ((__tmp283696
                                                           (let ((__tmp283710
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp283711
                                 (let ((__tmp283713
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj278109_ '())))
                                       (__tmp283712
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object278086_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp283713 __tmp283712))))
                            (declare (not safe))
                            (cons __tmp283711 '())))
                         (__tmp283697
                          (let ((__tmp283698
                                 (let ((__tmp283699
                                        (let ((__tmp283703
                                               (let ((__tmp283704
                                                      (let ((__tmp283708
                                                             (let ((__tmp283709
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'class-instance-init! '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp283709)))
                    (__tmp283705
                     (let ((__tmp283706
                            (let ((__tmp283707
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj278109_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp283707))))
                       (declare (not safe))
                       (cons __tmp283706 _args278084_))))
                (declare (not safe))
                (cons __tmp283708 __tmp283705))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp283704)))
                                              (__tmp283700
                                               (let ((__tmp283701
                                                      (let ((__tmp283702
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj278109_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp283702))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp283701 '()))))
                                          (declare (not safe))
                                          (cons __tmp283703 __tmp283700))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp283699))))
                            (declare (not safe))
                            (cons __tmp283698 '()))))
                     (declare (not safe))
                     (cons __tmp283710 __tmp283697))))
              (declare (not safe))
              (cons '%#let-values __tmp283696))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp283695
                                                _stx278077_)))))
                                      (let* ((_g278116278156_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       ___stx283253283254_))
                                                    (___kont283257283258_)
                                                    (___kont283259283260_))))
                                             (___match283290283291_
                                              (lambda (_e278125278161_
                                                       _hd278124278164_
                                                       _tl278123278166_
                                                       _e278128278169_
                                                       _hd278127278172_
                                                       _tl278126278174_
                                                       _e278131278177_
                                                       _hd278130278180_
                                                       _tl278129278182_
                                                       _e278134278185_
                                                       _hd278133278188_
                                                       _tl278132278190_)
                                                (let ((_L278193_
                                                       _tl278132278190_)
                                                      (_L278194_
                                                       _hd278133278188_)
                                                      (_L278195_
                                                       _hd278130278180_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-keyword?
                                                         _L278195_))
                                                      (___kont283255283256_
                                                       _L278193_
                                                       _L278194_
                                                       _L278195_)
                                                      (___kont283259283260_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               ___stx283253283254_))
                                            (let ((_e278125278161_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      ___stx283253283254_))))
                                              (let ((_tl278123278166_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e278125278161_)))
                                                    (_hd278124278164_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e278125278161_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd278124278164_))
                                                    (let ((_e278128278169_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd278124278164_))))
                                                      (let ((_tl278126278174_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e278128278169_)))
                    (_hd278127278172_
                     (let () (declare (not safe)) (##car _e278128278169_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd278127278172_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd278127278172_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl278126278174_))
                            (let ((_e278131278177_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl278126278174_))))
                              (let ((_tl278129278182_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e278131278177_)))
                                    (_hd278130278180_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e278131278177_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl278129278182_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl278123278166_))
                                        (let ((_e278134278185_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl278123278166_))))
                                          (let ((_tl278132278190_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e278134278185_)))
                                                (_hd278133278188_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e278134278185_))))
                                            (___match283290283291_
                                             _e278125278161_
                                             _hd278124278164_
                                             _tl278123278166_
                                             _e278128278169_
                                             _hd278127278172_
                                             _tl278126278174_
                                             _e278131278177_
                                             _hd278130278180_
                                             _tl278129278182_
                                             _e278134278185_
                                             _hd278133278188_
                                             _tl278132278190_)))
                                        (___kont283259283260_))
                                    (___kont283259283260_))))
                            (___kont283259283260_))
                        (___kont283259283260_))
                    (___kont283259283260_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont283259283260_))))
                                            (let ()
                                              (declare (not safe))
                                              (_g278116278156_))))))))))))))))))
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
      (lambda (_self277899_ _stx277900_ _args277901_)
        (let* ((_g277903277913_
                (lambda (_g277904277910_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g277904277910_))))
               (_g277902277951_
                (lambda (_g277904277916_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g277904277916_))
                      (let ((_e277908277918_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g277904277916_))))
                        (let ((_hd277907277921_
                               (let ()
                                 (declare (not safe))
                                 (##car _e277908277918_)))
                              (_tl277906277923_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e277908277918_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl277906277923_))
                              ((lambda (_L277926_)
                                 (let* ((_klass277937_
                                         (let ((__tmp283836
                                                (##structure-ref
                                                 _self277899_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx277900_
                                            __tmp283836)))
                                        (_field277939_
                                         (let ((__tmp283837
                                                (##structure-ref
                                                 _self277899_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass277937_
                                            __tmp283837)))
                                        (_object277941_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L277926_))))
                                   (if (##structure-ref
                                        _klass277937_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp283914
                                              (let ((__tmp283923
                                                     (if (##structure-ref
                                                          _self277899_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp283915
                                                     (let ((__tmp283920
                                                            (let ((__tmp283921
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp283922
                                  (##structure-ref
                                   _self277899_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp283922 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp283921)))
                   (__tmp283916
                    (let ((__tmp283918
                           (let ((__tmp283919
                                  (let ()
                                    (declare (not safe))
                                    (cons _field277939_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp283919)))
                          (__tmp283917
                           (let ()
                             (declare (not safe))
                             (cons _object277941_ '()))))
                      (declare (not safe))
                      (cons __tmp283918 __tmp283917))))
               (declare (not safe))
               (cons __tmp283920 __tmp283916))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp283923
                                                      __tmp283915))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp283914
                                          _stx277900_))
                                       (if (##structure-ref
                                            _klass277937_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp283904
                                                  (let ((__tmp283913
                                                         (if (##structure-ref
                                                              _self277899_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp283905
                                                         (let ((__tmp283910
                                                                (let ((__tmp283911
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp283912
                                      (##structure-ref
                                       _self277899_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp283912 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp283911)))
                       (__tmp283906
                        (let ((__tmp283908
                               (let ((__tmp283909
                                      (let ()
                                        (declare (not safe))
                                        (cons _field277939_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp283909)))
                              (__tmp283907
                               (let ()
                                 (declare (not safe))
                                 (cons _object277941_ '()))))
                          (declare (not safe))
                          (cons __tmp283908 __tmp283907))))
                   (declare (not safe))
                   (cons __tmp283910 __tmp283906))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp283913
                                                          __tmp283905))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp283904
                                              _stx277900_))
                                           (let ((_$e277944_
                                                  (let ((__tmp283838
                                                         (##structure-ref
                                                          _self277899_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass277937_
                                                     __tmp283838))))
                                             (if _$e277944_
                                                 ((lambda (_klass277947_)
                                                    (let ((__tmp283894
                                                           (let ((__tmp283903
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self277899_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp283895
                          (let ((__tmp283900
                                 (let ((__tmp283901
                                        (let ((__tmp283902
                                               (##structure-ref
                                                _self277899_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp283902 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp283901)))
                                (__tmp283896
                                 (let ((__tmp283898
                                        (let ((__tmp283899
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field277939_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp283899)))
                                       (__tmp283897
                                        (let ()
                                          (declare (not safe))
                                          (cons _object277941_ '()))))
                                   (declare (not safe))
                                   (cons __tmp283898 __tmp283897))))
                            (declare (not safe))
                            (cons __tmp283900 __tmp283896))))
                     (declare (not safe))
                     (cons __tmp283903 __tmp283895))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp283894 _stx277900_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e277944_)
                                                 (if (##structure-ref
                                                      _self277899_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp283848
                                                            (let* ((_$obj277949_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp283849 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp283849)))
                           (__tmp283850
                            (let ((__tmp283890
                                   (let ((__tmp283891
                                          (let ((__tmp283893
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj277949_ '())))
                                                (__tmp283892
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object277941_ '()))))
                                            (declare (not safe))
                                            (cons __tmp283893 __tmp283892))))
                                     (declare (not safe))
                                     (cons __tmp283891 '())))
                                  (__tmp283851
                                   (let ((__tmp283852
                                          (let ((__tmp283853
                                                 (let ((__tmp283882
                                                        (let ((__tmp283883
                                                               (let ((__tmp283887
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp283888
                                     (let ((__tmp283889
                                            (##structure-ref
                                             _klass277937_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp283889 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp283888)))
                             (__tmp283884
                              (let ((__tmp283885
                                     (let ((__tmp283886
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj277949_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp283886))))
                                (declare (not safe))
                                (cons __tmp283885 '()))))
                         (declare (not safe))
                         (cons __tmp283887 __tmp283884))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp283883)))
               (__tmp283854
                (let ((__tmp283871
                       (let ((__tmp283872
                              (let ((__tmp283879
                                     (let ((__tmp283880
                                            (let ((__tmp283881
                                                   (##structure-ref
                                                    _self277899_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp283881 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp283880)))
                                    (__tmp283873
                                     (let ((__tmp283877
                                            (let ((__tmp283878
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field277939_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp283878)))
                                           (__tmp283874
                                            (let ((__tmp283875
                                                   (let ((__tmp283876
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj277949_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp283876))))
                                              (declare (not safe))
                                              (cons __tmp283875 '()))))
                                       (declare (not safe))
                                       (cons __tmp283877 __tmp283874))))
                                (declare (not safe))
                                (cons __tmp283879 __tmp283873))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp283872)))
                      (__tmp283855
                       (let ((__tmp283856
                              (let ((__tmp283857
                                     (let ((__tmp283869
                                            (let ((__tmp283870
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp283870)))
                                           (__tmp283858
                                            (let ((__tmp283866
                                                   (let ((__tmp283867
                                                          (let ((__tmp283868
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self277899_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp283868 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp283867)))
                                                  (__tmp283859
                                                   (let ((__tmp283864
                                                          (let ((__tmp283865
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj277949_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp283865)))
                 (__tmp283860
                  (let ((__tmp283861
                         (let ((__tmp283862
                                (let ((__tmp283863
                                       (##structure-ref
                                        _self277899_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp283863 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp283862))))
                    (declare (not safe))
                    (cons __tmp283861 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp283864
                                                           __tmp283860))))
                                              (declare (not safe))
                                              (cons __tmp283866 __tmp283859))))
                                       (declare (not safe))
                                       (cons __tmp283869 __tmp283858))))
                                (declare (not safe))
                                (cons '%#call __tmp283857))))
                         (declare (not safe))
                         (cons __tmp283856 '()))))
                  (declare (not safe))
                  (cons __tmp283871 __tmp283855))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp283882
                                                         __tmp283854))))
                                            (declare (not safe))
                                            (cons '%#if __tmp283853))))
                                     (declare (not safe))
                                     (cons __tmp283852 '()))))
                              (declare (not safe))
                              (cons __tmp283890 __tmp283851))))
                      (declare (not safe))
                      (cons '%#let-values __tmp283850))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp283848 _stx277900_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp283839
                                                            (let ((__tmp283840
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp283846
                                  (let ((__tmp283847
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp283847)))
                                 (__tmp283841
                                  (let ((__tmp283842
                                         (let ((__tmp283843
                                                (let ((__tmp283844
                                                       (let ((__tmp283845
                                                              (##structure-ref
                                                               _self277899_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp283845
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp283844))))
                                           (declare (not safe))
                                           (cons __tmp283843 '()))))
                                    (declare (not safe))
                                    (cons _object277941_ __tmp283842))))
                             (declare (not safe))
                             (cons __tmp283846 __tmp283841))))
                      (declare (not safe))
                      (cons '%#call __tmp283840))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp283839 _stx277900_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd277907277921_)
                              (let ()
                                (declare (not safe))
                                (_g277903277913_ _g277904277916_)))))
                      (let ()
                        (declare (not safe))
                        (_g277903277913_ _g277904277916_))))))
          (declare (not safe))
          (_g277902277951_ _args277901_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__t283140)
        (let ((__id283141
               (let ((__tmp283144
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t283140 'id))))
                 (if __tmp283144 __tmp283144 (error '"Unknown slot" 'id))))
              (__slot283142
               (let ((__tmp283145
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t283140 'slot))))
                 (if __tmp283145 __tmp283145 (error '"Unknown slot" 'slot))))
              (__checked?283143
               (let ((__tmp283146
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t283140 'checked?))))
                 (if __tmp283146
                     __tmp283146
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self277899_ _stx277900_ _args277901_)
            (let* ((_g277903277913_
                    (lambda (_g277904277910_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g277904277910_))))
                   (_g277902277951_
                    (lambda (_g277904277916_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g277904277916_))
                          (let ((_e277908277918_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g277904277916_))))
                            (let ((_hd277907277921_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e277908277918_)))
                                  (_tl277906277923_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e277908277918_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl277906277923_))
                                  ((lambda (_L277926_)
                                     (let* ((_klass277937_
                                             (let ((__tmp283924
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self277899_
                                                       __id283141
                                                       __t283140
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx277900_
                                                __tmp283924)))
                                            (_field277939_
                                             (let ((__tmp283925
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self277899_
                                                       __slot283142
                                                       __t283140
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass277937_
                                                __tmp283925)))
                                            (_object277941_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L277926_))))
                                       (if (##structure-ref
                                            _klass277937_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp284002
                                                  (let ((__tmp284011
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self277899_
                        __checked?283143
                        __t283140
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp284003
                 (let ((__tmp284008
                        (let ((__tmp284009
                               (let ((__tmp284010
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self277899_
                                         __id283141
                                         __t283140
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp284010 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp284009)))
                       (__tmp284004
                        (let ((__tmp284006
                               (let ((__tmp284007
                                      (let ()
                                        (declare (not safe))
                                        (cons _field277939_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp284007)))
                              (__tmp284005
                               (let ()
                                 (declare (not safe))
                                 (cons _object277941_ '()))))
                          (declare (not safe))
                          (cons __tmp284006 __tmp284005))))
                   (declare (not safe))
                   (cons __tmp284008 __tmp284004))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp284011
                                                          __tmp284003))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp284002
                                              _stx277900_))
                                           (if (##structure-ref
                                                _klass277937_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp283992
                                                      (let ((__tmp284001
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self277899_
                            __checked?283143
                            __t283140
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp283993
                     (let ((__tmp283998
                            (let ((__tmp283999
                                   (let ((__tmp284000
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self277899_
                                             __id283141
                                             __t283140
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp284000 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp283999)))
                           (__tmp283994
                            (let ((__tmp283996
                                   (let ((__tmp283997
                                          (let ()
                                            (declare (not safe))
                                            (cons _field277939_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp283997)))
                                  (__tmp283995
                                   (let ()
                                     (declare (not safe))
                                     (cons _object277941_ '()))))
                              (declare (not safe))
                              (cons __tmp283996 __tmp283995))))
                       (declare (not safe))
                       (cons __tmp283998 __tmp283994))))
                (declare (not safe))
                (cons __tmp284001 __tmp283993))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp283992
                                                  _stx277900_))
                                               (let ((_$e277944_
                                                      (let ((__tmp283926
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self277899_
                        __slot283142
                        __t283140
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass277937_ __tmp283926))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e277944_
                                                     ((lambda (_klass277947_)
                                                        (let ((__tmp283982
                                                               (let ((__tmp283991
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self277899_
                                     __checked?283143
                                     __t283140
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp283983
                              (let ((__tmp283988
                                     (let ((__tmp283989
                                            (let ((__tmp283990
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self277899_
                                                      __id283141
                                                      __t283140
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp283990 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp283989)))
                                    (__tmp283984
                                     (let ((__tmp283986
                                            (let ((__tmp283987
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field277939_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp283987)))
                                           (__tmp283985
                                            (let ()
                                              (declare (not safe))
                                              (cons _object277941_ '()))))
                                       (declare (not safe))
                                       (cons __tmp283986 __tmp283985))))
                                (declare (not safe))
                                (cons __tmp283988 __tmp283984))))
                         (declare (not safe))
                         (cons __tmp283991 __tmp283983))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp283982 _stx277900_)))
              _$e277944_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self277899_
                                                            __checked?283143
                                                            __t283140
                                                            '#f))
                                                         (let ((__tmp283936
                                                                (let* ((_$obj277949_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp283937 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp283937)))
                               (__tmp283938
                                (let ((__tmp283978
                                       (let ((__tmp283979
                                              (let ((__tmp283981
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj277949_
                                                             '())))
                                                    (__tmp283980
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object277941_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp283981
                                                      __tmp283980))))
                                         (declare (not safe))
                                         (cons __tmp283979 '())))
                                      (__tmp283939
                                       (let ((__tmp283940
                                              (let ((__tmp283941
                                                     (let ((__tmp283970
                                                            (let ((__tmp283971
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp283975
                                  (let ((__tmp283976
                                         (let ((__tmp283977
                                                (##structure-ref
                                                 _klass277937_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp283977 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp283976)))
                                 (__tmp283972
                                  (let ((__tmp283973
                                         (let ((__tmp283974
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj277949_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp283974))))
                                    (declare (not safe))
                                    (cons __tmp283973 '()))))
                             (declare (not safe))
                             (cons __tmp283975 __tmp283972))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp283971)))
                   (__tmp283942
                    (let ((__tmp283959
                           (let ((__tmp283960
                                  (let ((__tmp283967
                                         (let ((__tmp283968
                                                (let ((__tmp283969
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self277899_
                                                          __id283141
                                                          __t283140
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp283969 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp283968)))
                                        (__tmp283961
                                         (let ((__tmp283965
                                                (let ((__tmp283966
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field277939_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp283966)))
                                               (__tmp283962
                                                (let ((__tmp283963
                                                       (let ((__tmp283964
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj277949_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp283964))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp283963 '()))))
                                           (declare (not safe))
                                           (cons __tmp283965 __tmp283962))))
                                    (declare (not safe))
                                    (cons __tmp283967 __tmp283961))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp283960)))
                          (__tmp283943
                           (let ((__tmp283944
                                  (let ((__tmp283945
                                         (let ((__tmp283957
                                                (let ((__tmp283958
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp283958)))
                                               (__tmp283946
                                                (let ((__tmp283954
                                                       (let ((__tmp283955
                                                              (let ((__tmp283956
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self277899_
                                __id283141
                                __t283140
                                '#f))))
                        (declare (not safe))
                        (cons __tmp283956 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp283955)))
              (__tmp283947
               (let ((__tmp283952
                      (let ((__tmp283953
                             (let ()
                               (declare (not safe))
                               (cons _$obj277949_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp283953)))
                     (__tmp283948
                      (let ((__tmp283949
                             (let ((__tmp283950
                                    (let ((__tmp283951
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self277899_
                                              __slot283142
                                              __t283140
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp283951 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp283950))))
                        (declare (not safe))
                        (cons __tmp283949 '()))))
                 (declare (not safe))
                 (cons __tmp283952 __tmp283948))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp283954
                                                        __tmp283947))))
                                           (declare (not safe))
                                           (cons __tmp283957 __tmp283946))))
                                    (declare (not safe))
                                    (cons '%#call __tmp283945))))
                             (declare (not safe))
                             (cons __tmp283944 '()))))
                      (declare (not safe))
                      (cons __tmp283959 __tmp283943))))
               (declare (not safe))
               (cons __tmp283970 __tmp283942))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp283941))))
                                         (declare (not safe))
                                         (cons __tmp283940 '()))))
                                  (declare (not safe))
                                  (cons __tmp283978 __tmp283939))))
                          (declare (not safe))
                          (cons '%#let-values __tmp283938))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp283936 _stx277900_))
                 (let ((__tmp283927
                        (let ((__tmp283928
                               (let ((__tmp283934
                                      (let ((__tmp283935
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp283935)))
                                     (__tmp283929
                                      (let ((__tmp283930
                                             (let ((__tmp283931
                                                    (let ((__tmp283932
                                                           (let ((__tmp283933
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self277899_
                             __slot283142
                             __t283140
                             '#f))))
                     (declare (not safe))
                     (cons __tmp283933 '()))))
              (declare (not safe))
              (cons '%#quote __tmp283932))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp283931 '()))))
                                        (declare (not safe))
                                        (cons _object277941_ __tmp283930))))
                                 (declare (not safe))
                                 (cons __tmp283934 __tmp283929))))
                          (declare (not safe))
                          (cons '%#call __tmp283928))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp283927 _stx277900_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd277907277921_)
                                  (let ()
                                    (declare (not safe))
                                    (_g277903277913_ _g277904277916_)))))
                          (let ()
                            (declare (not safe))
                            (_g277903277913_ _g277904277916_))))))
              (declare (not safe))
              (_g277902277951_ _args277901_))))))
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
      (lambda (_self277704_ _stx277705_ _args277706_)
        (let* ((_g277708277722_
                (lambda (_g277709277719_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g277709277719_))))
               (_g277707277774_
                (lambda (_g277709277725_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g277709277725_))
                      (let ((_e277714277727_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g277709277725_))))
                        (let ((_hd277713277730_
                               (let ()
                                 (declare (not safe))
                                 (##car _e277714277727_)))
                              (_tl277712277732_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e277714277727_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl277712277732_))
                              (let ((_e277717277735_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl277712277732_))))
                                (let ((_hd277716277738_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e277717277735_)))
                                      (_tl277715277740_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e277717277735_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl277715277740_))
                                      ((lambda (_L277743_ _L277744_)
                                         (let* ((_klass277758_
                                                 (let ((__tmp284012
                                                        (##structure-ref
                                                         _self277704_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx277705_
                                                    __tmp284012)))
                                                (_field277760_
                                                 (let ((__tmp284013
                                                        (##structure-ref
                                                         _self277704_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass277758_
                                                    __tmp284013)))
                                                (_object277762_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L277744_)))
                                                (_value277764_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L277743_))))
                                           (if (##structure-ref
                                                _klass277758_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp284095
                                                      (let ((__tmp284105
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self277704_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp284096
                     (let ((__tmp284102
                            (let ((__tmp284103
                                   (let ((__tmp284104
                                          (##structure-ref
                                           _self277704_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp284104 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp284103)))
                           (__tmp284097
                            (let ((__tmp284100
                                   (let ((__tmp284101
                                          (let ()
                                            (declare (not safe))
                                            (cons _field277760_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp284101)))
                                  (__tmp284098
                                   (let ((__tmp284099
                                          (let ()
                                            (declare (not safe))
                                            (cons _value277764_ '()))))
                                     (declare (not safe))
                                     (cons _object277762_ __tmp284099))))
                              (declare (not safe))
                              (cons __tmp284100 __tmp284098))))
                       (declare (not safe))
                       (cons __tmp284102 __tmp284097))))
                (declare (not safe))
                (cons __tmp284105 __tmp284096))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp284095
                                                  _stx277705_))
                                               (if (##structure-ref
                                                    _klass277758_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp284084
                                                          (let ((__tmp284094
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self277704_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp284085
                         (let ((__tmp284091
                                (let ((__tmp284092
                                       (let ((__tmp284093
                                              (##structure-ref
                                               _self277704_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp284093 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp284092)))
                               (__tmp284086
                                (let ((__tmp284089
                                       (let ((__tmp284090
                                              (let ()
                                                (declare (not safe))
                                                (cons _field277760_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp284090)))
                                      (__tmp284087
                                       (let ((__tmp284088
                                              (let ()
                                                (declare (not safe))
                                                (cons _value277764_ '()))))
                                         (declare (not safe))
                                         (cons _object277762_ __tmp284088))))
                                  (declare (not safe))
                                  (cons __tmp284089 __tmp284087))))
                           (declare (not safe))
                           (cons __tmp284091 __tmp284086))))
                    (declare (not safe))
                    (cons __tmp284094 __tmp284085))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp284084
                                                      _stx277705_))
                                                   (let ((_$e277767_
                                                          (let ((__tmp284014
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self277704_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass277758_ __tmp284014))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e277767_
                                                         ((lambda (_klass277770_)
                                                            (let ((__tmp284073
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp284083
                                  (if (##structure-ref
                                       _self277704_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp284074
                                  (let ((__tmp284080
                                         (let ((__tmp284081
                                                (let ((__tmp284082
                                                       (##structure-ref
                                                        _self277704_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp284082 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp284081)))
                                        (__tmp284075
                                         (let ((__tmp284078
                                                (let ((__tmp284079
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field277760_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp284079)))
                                               (__tmp284076
                                                (let ((__tmp284077
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value277764_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object277762_
                                                        __tmp284077))))
                                           (declare (not safe))
                                           (cons __tmp284078 __tmp284076))))
                                    (declare (not safe))
                                    (cons __tmp284080 __tmp284075))))
                             (declare (not safe))
                             (cons __tmp284083 __tmp284074))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp284073 _stx277705_)))
                  _$e277767_)
                 (if (##structure-ref _self277704_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp284025
                            (let* ((_$obj277772_
                                    (let ((__tmp284026 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp284026)))
                                   (__tmp284027
                                    (let ((__tmp284069
                                           (let ((__tmp284070
                                                  (let ((__tmp284072
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj277772_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp284071
                 (let () (declare (not safe)) (cons _object277762_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp284072
                                                          __tmp284071))))
                                             (declare (not safe))
                                             (cons __tmp284070 '())))
                                          (__tmp284028
                                           (let ((__tmp284029
                                                  (let ((__tmp284030
                                                         (let ((__tmp284061
                                                                (let ((__tmp284062
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp284066
                                      (let ((__tmp284067
                                             (let ((__tmp284068
                                                    (##structure-ref
                                                     _klass277758_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp284068 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp284067)))
                                     (__tmp284063
                                      (let ((__tmp284064
                                             (let ((__tmp284065
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj277772_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp284065))))
                                        (declare (not safe))
                                        (cons __tmp284064 '()))))
                                 (declare (not safe))
                                 (cons __tmp284066 __tmp284063))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp284062)))
                       (__tmp284031
                        (let ((__tmp284049
                               (let ((__tmp284050
                                      (let ((__tmp284058
                                             (let ((__tmp284059
                                                    (let ((__tmp284060
                                                           (##structure-ref
                                                            _self277704_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp284060 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp284059)))
                                            (__tmp284051
                                             (let ((__tmp284056
                                                    (let ((__tmp284057
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field277760_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp284057)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp284052
                                                    (let ((__tmp284054
                                                           (let ((__tmp284055
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj277772_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp284055)))
                  (__tmp284053
                   (let () (declare (not safe)) (cons _value277764_ '()))))
              (declare (not safe))
              (cons __tmp284054 __tmp284053))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp284056
                                                     __tmp284052))))
                                        (declare (not safe))
                                        (cons __tmp284058 __tmp284051))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp284050)))
                              (__tmp284032
                               (let ((__tmp284033
                                      (let ((__tmp284034
                                             (let ((__tmp284047
                                                    (let ((__tmp284048
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp284048)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp284035
                                                    (let ((__tmp284044
                                                           (let ((__tmp284045
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp284046
                                 (##structure-ref
                                  _self277704_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp284046 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp284045)))
                  (__tmp284036
                   (let ((__tmp284042
                          (let ((__tmp284043
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj277772_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp284043)))
                         (__tmp284037
                          (let ((__tmp284039
                                 (let ((__tmp284040
                                        (let ((__tmp284041
                                               (##structure-ref
                                                _self277704_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp284041 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp284040)))
                                (__tmp284038
                                 (let ()
                                   (declare (not safe))
                                   (cons _value277764_ '()))))
                            (declare (not safe))
                            (cons __tmp284039 __tmp284038))))
                     (declare (not safe))
                     (cons __tmp284042 __tmp284037))))
              (declare (not safe))
              (cons __tmp284044 __tmp284036))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp284047
                                                     __tmp284035))))
                                        (declare (not safe))
                                        (cons '%#call __tmp284034))))
                                 (declare (not safe))
                                 (cons __tmp284033 '()))))
                          (declare (not safe))
                          (cons __tmp284049 __tmp284032))))
                   (declare (not safe))
                   (cons __tmp284061 __tmp284031))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp284030))))
                                             (declare (not safe))
                                             (cons __tmp284029 '()))))
                                      (declare (not safe))
                                      (cons __tmp284069 __tmp284028))))
                              (declare (not safe))
                              (cons '%#let-values __tmp284027))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp284025 _stx277705_))
                     (let ((__tmp284015
                            (let ((__tmp284016
                                   (let ((__tmp284023
                                          (let ((__tmp284024
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp284024)))
                                         (__tmp284017
                                          (let ((__tmp284018
                                                 (let ((__tmp284020
                                                        (let ((__tmp284021
                                                               (let ((__tmp284022
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self277704_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp284022 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp284021)))
               (__tmp284019
                (let () (declare (not safe)) (cons _value277764_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp284020
                                                         __tmp284019))))
                                            (declare (not safe))
                                            (cons _object277762_
                                                  __tmp284018))))
                                     (declare (not safe))
                                     (cons __tmp284023 __tmp284017))))
                              (declare (not safe))
                              (cons '%#call __tmp284016))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp284015 _stx277705_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd277716277738_
                                       _hd277713277730_)
                                      (let ()
                                        (declare (not safe))
                                        (_g277708277722_ _g277709277725_)))))
                              (let ()
                                (declare (not safe))
                                (_g277708277722_ _g277709277725_)))))
                      (let ()
                        (declare (not safe))
                        (_g277708277722_ _g277709277725_))))))
          (declare (not safe))
          (_g277707277774_ _args277706_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__t283147)
        (let ((__id283148
               (let ((__tmp283151
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t283147 'id))))
                 (if __tmp283151 __tmp283151 (error '"Unknown slot" 'id))))
              (__slot283149
               (let ((__tmp283152
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t283147 'slot))))
                 (if __tmp283152 __tmp283152 (error '"Unknown slot" 'slot))))
              (__checked?283150
               (let ((__tmp283153
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t283147 'checked?))))
                 (if __tmp283153
                     __tmp283153
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self277704_ _stx277705_ _args277706_)
            (let* ((_g277708277722_
                    (lambda (_g277709277719_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g277709277719_))))
                   (_g277707277774_
                    (lambda (_g277709277725_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g277709277725_))
                          (let ((_e277714277727_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g277709277725_))))
                            (let ((_hd277713277730_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e277714277727_)))
                                  (_tl277712277732_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e277714277727_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl277712277732_))
                                  (let ((_e277717277735_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl277712277732_))))
                                    (let ((_hd277716277738_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e277717277735_)))
                                          (_tl277715277740_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e277717277735_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl277715277740_))
                                          ((lambda (_L277743_ _L277744_)
                                             (let* ((_klass277758_
                                                     (let ((__tmp284106
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self277704_
                                                               __id283148
                                                               __t283147
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx277705_
                                                        __tmp284106)))
                                                    (_field277760_
                                                     (let ((__tmp284107
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self277704_
                                                               __slot283149
                                                               __t283147
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass277758_
                                                        __tmp284107)))
                                                    (_object277762_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L277744_)))
                                                    (_value277764_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L277743_))))
                                               (if (##structure-ref
                                                    _klass277758_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp284189
                                                          (let ((__tmp284199
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self277704_
                                __checked?283150
                                __t283147
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp284190
                         (let ((__tmp284196
                                (let ((__tmp284197
                                       (let ((__tmp284198
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self277704_
                                                 __id283148
                                                 __t283147
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp284198 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp284197)))
                               (__tmp284191
                                (let ((__tmp284194
                                       (let ((__tmp284195
                                              (let ()
                                                (declare (not safe))
                                                (cons _field277760_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp284195)))
                                      (__tmp284192
                                       (let ((__tmp284193
                                              (let ()
                                                (declare (not safe))
                                                (cons _value277764_ '()))))
                                         (declare (not safe))
                                         (cons _object277762_ __tmp284193))))
                                  (declare (not safe))
                                  (cons __tmp284194 __tmp284192))))
                           (declare (not safe))
                           (cons __tmp284196 __tmp284191))))
                    (declare (not safe))
                    (cons __tmp284199 __tmp284190))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp284189
                                                      _stx277705_))
                                                   (if (##structure-ref
                                                        _klass277758_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp284178
                                                              (let ((__tmp284188
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self277704_
                                    __checked?283150
                                    __t283147
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp284179
                             (let ((__tmp284185
                                    (let ((__tmp284186
                                           (let ((__tmp284187
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self277704_
                                                     __id283148
                                                     __t283147
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp284187 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp284186)))
                                   (__tmp284180
                                    (let ((__tmp284183
                                           (let ((__tmp284184
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field277760_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp284184)))
                                          (__tmp284181
                                           (let ((__tmp284182
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value277764_ '()))))
                                             (declare (not safe))
                                             (cons _object277762_
                                                   __tmp284182))))
                                      (declare (not safe))
                                      (cons __tmp284183 __tmp284181))))
                               (declare (not safe))
                               (cons __tmp284185 __tmp284180))))
                        (declare (not safe))
                        (cons __tmp284188 __tmp284179))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp284178 _stx277705_))
               (let ((_$e277767_
                      (let ((__tmp284108
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self277704_
                                __slot283149
                                __t283147
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass277758_
                         __tmp284108))))
                 (if _$e277767_
                     ((lambda (_klass277770_)
                        (let ((__tmp284167
                               (let ((__tmp284177
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self277704_
                                             __checked?283150
                                             __t283147
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp284168
                                      (let ((__tmp284174
                                             (let ((__tmp284175
                                                    (let ((__tmp284176
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self277704_
                                                              __id283148
                                                              __t283147
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp284176 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp284175)))
                                            (__tmp284169
                                             (let ((__tmp284172
                                                    (let ((__tmp284173
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field277760_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp284173)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp284170
                                                    (let ((__tmp284171
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value277764_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object277762_ __tmp284171))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp284172
                                                     __tmp284170))))
                                        (declare (not safe))
                                        (cons __tmp284174 __tmp284169))))
                                 (declare (not safe))
                                 (cons __tmp284177 __tmp284168))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp284167 _stx277705_)))
                      _$e277767_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self277704_
                            __checked?283150
                            __t283147
                            '#f))
                         (let ((__tmp284119
                                (let* ((_$obj277772_
                                        (let ((__tmp284120 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp284120)))
                                       (__tmp284121
                                        (let ((__tmp284163
                                               (let ((__tmp284164
                                                      (let ((__tmp284166
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj277772_ '())))
                    (__tmp284165
                     (let () (declare (not safe)) (cons _object277762_ '()))))
                (declare (not safe))
                (cons __tmp284166 __tmp284165))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp284164 '())))
                                              (__tmp284122
                                               (let ((__tmp284123
                                                      (let ((__tmp284124
                                                             (let ((__tmp284155
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp284156
                                   (let ((__tmp284160
                                          (let ((__tmp284161
                                                 (let ((__tmp284162
                                                        (##structure-ref
                                                         _klass277758_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp284162 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp284161)))
                                         (__tmp284157
                                          (let ((__tmp284158
                                                 (let ((__tmp284159
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj277772_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp284159))))
                                            (declare (not safe))
                                            (cons __tmp284158 '()))))
                                     (declare (not safe))
                                     (cons __tmp284160 __tmp284157))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp284156)))
                           (__tmp284125
                            (let ((__tmp284143
                                   (let ((__tmp284144
                                          (let ((__tmp284152
                                                 (let ((__tmp284153
                                                        (let ((__tmp284154
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self277704_
                          __id283148
                          __t283147
                          '#f))))
                  (declare (not safe))
                  (cons __tmp284154 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp284153)))
                                                (__tmp284145
                                                 (let ((__tmp284150
                                                        (let ((__tmp284151
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field277760_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp284151)))
               (__tmp284146
                (let ((__tmp284148
                       (let ((__tmp284149
                              (let ()
                                (declare (not safe))
                                (cons _$obj277772_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp284149)))
                      (__tmp284147
                       (let () (declare (not safe)) (cons _value277764_ '()))))
                  (declare (not safe))
                  (cons __tmp284148 __tmp284147))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp284150
                                                         __tmp284146))))
                                            (declare (not safe))
                                            (cons __tmp284152 __tmp284145))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp284144)))
                                  (__tmp284126
                                   (let ((__tmp284127
                                          (let ((__tmp284128
                                                 (let ((__tmp284141
                                                        (let ((__tmp284142
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp284142)))
               (__tmp284129
                (let ((__tmp284138
                       (let ((__tmp284139
                              (let ((__tmp284140
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self277704_
                                        __id283148
                                        __t283147
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp284140 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp284139)))
                      (__tmp284130
                       (let ((__tmp284136
                              (let ((__tmp284137
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj277772_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp284137)))
                             (__tmp284131
                              (let ((__tmp284133
                                     (let ((__tmp284134
                                            (let ((__tmp284135
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self277704_
                                                      __slot283149
                                                      __t283147
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp284135 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp284134)))
                                    (__tmp284132
                                     (let ()
                                       (declare (not safe))
                                       (cons _value277764_ '()))))
                                (declare (not safe))
                                (cons __tmp284133 __tmp284132))))
                         (declare (not safe))
                         (cons __tmp284136 __tmp284131))))
                  (declare (not safe))
                  (cons __tmp284138 __tmp284130))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp284141
                                                         __tmp284129))))
                                            (declare (not safe))
                                            (cons '%#call __tmp284128))))
                                     (declare (not safe))
                                     (cons __tmp284127 '()))))
                              (declare (not safe))
                              (cons __tmp284143 __tmp284126))))
                       (declare (not safe))
                       (cons __tmp284155 __tmp284125))))
                (declare (not safe))
                (cons '%#if __tmp284124))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp284123 '()))))
                                          (declare (not safe))
                                          (cons __tmp284163 __tmp284122))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp284121))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp284119 _stx277705_))
                         (let ((__tmp284109
                                (let ((__tmp284110
                                       (let ((__tmp284117
                                              (let ((__tmp284118
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp284118)))
                                             (__tmp284111
                                              (let ((__tmp284112
                                                     (let ((__tmp284114
                                                            (let ((__tmp284115
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp284116
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self277704_
                                     __slot283149
                                     __t283147
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp284116 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp284115)))
                   (__tmp284113
                    (let () (declare (not safe)) (cons _value277764_ '()))))
               (declare (not safe))
               (cons __tmp284114 __tmp284113))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object277762_
                                                      __tmp284112))))
                                         (declare (not safe))
                                         (cons __tmp284117 __tmp284111))))
                                  (declare (not safe))
                                  (cons '%#call __tmp284110))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp284109
                            _stx277705_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd277716277738_
                                           _hd277713277730_)
                                          (let ()
                                            (declare (not safe))
                                            (_g277708277722_
                                             _g277709277725_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g277708277722_ _g277709277725_)))))
                          (let ()
                            (declare (not safe))
                            (_g277708277722_ _g277709277725_))))))
              (declare (not safe))
              (_g277707277774_ _args277706_))))))
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
      (lambda (_self277538_ _stx277539_ _args277540_)
        (let* ((_self277541277550_ _self277538_)
               (_E277543277554_
                (lambda () (error '"No clause matching" _self277541277550_)))
               (_K277544277561_
                (lambda (_inline277557_ _dispatch277558_ _arity277559_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self277538_ _args277540_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx277539_
                         _arity277559_)))
                  (if _inline277557_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp284205
                               (let ((__tmp284206
                                      (_inline277557_ _stx277539_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp284206
                                  _stx277539_))))
                          (declare (not safe))
                          (gxc#compile-e__0 __tmp284205)))
                      (if _dispatch277558_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch277558_))
                            (let ((__tmp284200
                                   (let ((__tmp284201
                                          (let ((__tmp284202
                                                 (let ((__tmp284203
                                                        (let ((__tmp284204
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch277558_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp284204))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp284203
                                                         _args277540_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp284202))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp284201
                                      _stx277539_))))
                              (declare (not safe))
                              (gxc#compile-e__0 __tmp284200)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _stx277539_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self277541277550_ 'gxc#!lambda::t))
              (let* ((_e277545277564_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self277541277550_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e277546277567_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self277541277550_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity277570_ _e277546277567_)
                     (_e277547277572_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self277541277550_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch277575_ _e277547277572_)
                     (_e277548277577_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self277541277550_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline277580_ _e277548277577_))
                (declare (not safe))
                (_K277544277561_
                 _inline277580_
                 _dispatch277575_
                 _arity277570_))
              (let () (declare (not safe)) (_E277543277554_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self277377_ _stx277378_ _args277379_)
        (let* ((_self277380277387_ _self277377_)
               (_E277382277391_
                (lambda () (error '"No clause matching" _self277380277387_)))
               (_K277383277405_
                (lambda (_clauses277394_)
                  (let ((_$e277400_
                         (let ((__tmp284207
                                (lambda (_g277395277397_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g277395277397_
                                     _args277379_)))))
                           (declare (not safe))
                           (find __tmp284207 _clauses277394_))))
                    (if _$e277400_
                        ((lambda (_clause277403_)
                           (let ((__method283422
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause277403_
                                     'optimize-call))))
                             (if __method283422
                                 (__method283422
                                  _clause277403_
                                  _stx277378_
                                  _args277379_)
                                 (error '"Missing method"
                                        _clause277403_
                                        'optimize-call))))
                         _$e277400_)
                        (let ((__tmp284208
                               (map gxc#!lambda-arity _clauses277394_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx277378_
                           __tmp284208)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self277380277387_
                 'gxc#!case-lambda::t))
              (let* ((_e277384277408_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self277380277387_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e277385277411_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self277380277387_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses277414_ _e277385277411_))
                (declare (not safe))
                (_K277383277405_ _clauses277414_))
              (let () (declare (not safe)) (_E277382277391_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self277191_ _args277192_)
        (let* ((_self277193277200_ _self277191_)
               (_E277195277204_
                (lambda () (error '"No clause matching" _self277193277200_)))
               (_K277196277244_
                (lambda (_arity277207_)
                  (let* ((_arity277208277217_ _arity277207_)
                         (_E277211277221_
                          (lambda ()
                            (error '"No clause matching"
                                   _arity277208277217_))))
                    (let ((_K277215277241_
                           (lambda ()
                             (fx= (length _args277192_) _arity277207_)))
                          (_K277212277227_
                           (lambda (_arity277225_)
                             (fx>= (length _args277192_) _arity277225_))))
                      (let ((_try-match277210277237_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity277208277217_))
                                   (let ((_tl277214277232_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity277208277217_)))
                                         (_hd277213277230_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity277208277217_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl277214277232_))
                                         (let ((_arity277235_
                                                _hd277213277230_))
                                           (declare (not safe))
                                           (_K277212277227_ _arity277235_))
                                         (let ()
                                           (declare (not safe))
                                           (_E277211277221_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E277211277221_))))))
                        (if (fixnum? _arity277208277217_)
                            (let () (declare (not safe)) (_K277215277241_))
                            (let ()
                              (declare (not safe))
                              (_try-match277210277237_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self277193277200_ 'gxc#!lambda::t))
              (let* ((_e277197277247_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self277193277200_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e277198277250_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self277193277200_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity277253_ _e277198277250_))
                (declare (not safe))
                (_K277196277244_ _arity277253_))
              (let () (declare (not safe)) (_E277195277204_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self277076_ _stx277077_ _args277078_)
        (let* ((_self277079277087_ _self277076_)
               (_E277081277091_
                (lambda () (error '"No clause matching" _self277079277087_)))
               (_K277082277175_
                (lambda (_dispatch277094_ _table277095_)
                  (let* ((_g277096277105_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch277094_)))
                         (_else277098277113_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch277094_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _stx277077_))))
                         (_K277100277159_
                          (lambda (_main277116_ _keys277117_)
                            (let ((_g284209_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx277077_
                                      _args277078_))))
                              (begin
                                (let ((_g284210_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g284209_)
                                             (##vector-length _g284209_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g284210_ 2)))
                                      (error "Context expects 2 values"
                                             _g284210_)))
                                (let ((_pargs277119_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g284209_ 0)))
                                      (_kwargs277120_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g284209_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main277116_))
                                    (if _table277095_
                                        (let ((_xargs277127_
                                               (map (lambda (_key277122_)
                                                      (let ((_$e277124_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _key277122_ _kwargs277120_))))
                (if _$e277124_ (values _$e277124_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys277117_)))
                                          (for-each
                                           (lambda (_kw277129_)
                                             (if (memq (car _kw277129_)
                                                       _keys277117_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx277077_
                                                    _keys277117_
                                                    _kw277129_))))
                                           _kwargs277120_)
                                          (let ((__tmp284262
                                                 (let ((__tmp284263
                                                        (let ((__tmp284264
                                                               (let ((__tmp284269
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp284270
                                     (let ()
                                       (declare (not safe))
                                       (cons _main277116_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp284270)))
                             (__tmp284265
                              (let ((__tmp284267
                                     (let ((__tmp284268
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp284268)))
                                    (__tmp284266
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs277119_
                                               _xargs277127_))))
                                (declare (not safe))
                                (cons __tmp284267 __tmp284266))))
                         (declare (not safe))
                         (cons __tmp284269 __tmp284265))))
                  (declare (not safe))
                  (cons '%#call __tmp284264))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp284263
                                                    _stx277077_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0 __tmp284262)))
                                        (let* ((_kwt277131_
                                                (let ((__tmp284211
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp284211)))
                                               (_kwvars277134_
                                                (map (lambda (_g284212_)
                                                       (let ((__tmp284213
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp284213)))
                                                     _kwargs277120_))
                                               (_kwbind277139_
                                                (map (lambda (_kw277136_
                                                              _kwvar277137_)
                                                       (let ((__tmp284216
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar277137_ '())))
                     (__tmp284214
                      (let ((__tmp284215 (cdr _kw277136_)))
                        (declare (not safe))
                        (cons __tmp284215 '()))))
                 (declare (not safe))
                 (cons __tmp284216 __tmp284214)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs277120_
                                                     _kwvars277134_))
                                               (_kwset277144_
                                                (map (lambda (_kw277141_
                                                              _kwvar277142_)
                                                       (let ((__tmp284217
                                                              (let ((__tmp284218
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp284226
                                    (let ((__tmp284227
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt277131_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp284227)))
                                   (__tmp284219
                                    (let ((__tmp284223
                                           (let ((__tmp284224
                                                  (let ((__tmp284225
                                                         (car _kw277141_)))
                                                    (declare (not safe))
                                                    (cons __tmp284225 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp284224)))
                                          (__tmp284220
                                           (let ((__tmp284221
                                                  (let ((__tmp284222
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar277142_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp284222))))
                                             (declare (not safe))
                                             (cons __tmp284221 '()))))
                                      (declare (not safe))
                                      (cons __tmp284223 __tmp284220))))
                               (declare (not safe))
                               (cons __tmp284226 __tmp284219))))
                        (declare (not safe))
                        (cons '(%#ref hash-put!) __tmp284218))))
                 (declare (not safe))
                 (cons '%#call __tmp284217)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs277120_
                                                     _kwvars277134_))
                                               (_xkwargs277149_
                                                (map (lambda (_kw277146_
                                                              _kwvar277147_)
                                                       (let ((__tmp284230
                                                              (car _kw277146_))
                                                             (__tmp284228
                                                              (let ((__tmp284229
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar277147_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp284229))))
                 (declare (not safe))
                 (cons __tmp284230 __tmp284228)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs277120_
                                                     _kwvars277134_))
                                               (_xargs277156_
                                                (map (lambda (_key277151_)
                                                       (let ((_$e277153_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq _key277151_ _xkwargs277149_))))
                 (if _$e277153_ (values _$e277153_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys277117_)))
                                          (let ((__tmp284231
                                                 (let ((__tmp284232
                                                        (let ((__tmp284233
                                                               (let ((__tmp284234
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp284235
                                     (let ((__tmp284236
                                            (let ((__tmp284250
                                                   (let ((__tmp284251
                                                          (let ((__tmp284261
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt277131_ '())))
                        (__tmp284252
                         (let ((__tmp284253
                                (let ((__tmp284254
                                       (let ((__tmp284255
                                              (let ((__tmp284256
                                                     (let ((__tmp284257
                                                            (let ((__tmp284258
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp284259
                                  (let ((__tmp284260 (length _kwargs277120_)))
                                    (declare (not safe))
                                    (cons __tmp284260 '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp284259))))
                      (declare (not safe))
                      (cons __tmp284258 '()))))
               (declare (not safe))
               (cons '(%#quote size:) __tmp284257))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-hash-table-eq)
                                                      __tmp284256))))
                                         (declare (not safe))
                                         (cons '%#call __tmp284255))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp284254
                                   _stx277077_))))
                           (declare (not safe))
                           (cons __tmp284253 '()))))
                    (declare (not safe))
                    (cons __tmp284261 __tmp284252))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp284251 '())))
                                                  (__tmp284237
                                                   (let ((__tmp284238
                                                          (let ((__tmp284239
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp284240
                                (let ((__tmp284241
                                       (let ((__tmp284242
                                              (let ((__tmp284243
                                                     (let ((__tmp284248
                                                            (let ((__tmp284249
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main277116_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp284249)))
                   (__tmp284244
                    (let ((__tmp284246
                           (let ((__tmp284247
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt277131_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp284247)))
                          (__tmp284245
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs277119_ _xargs277156_))))
                      (declare (not safe))
                      (cons __tmp284246 __tmp284245))))
               (declare (not safe))
               (cons __tmp284248 __tmp284244))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp284243))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp284242
                                          _stx277077_))))
                                  (declare (not safe))
                                  (cons __tmp284241 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp284240 _kwset277144_))))
                    (declare (not safe))
                    (cons '%#begin __tmp284239))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp284238 '()))))
                                              (declare (not safe))
                                              (cons __tmp284250 __tmp284237))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp284236))))
                                (declare (not safe))
                                (cons __tmp284235 '()))))
                         (declare (not safe))
                         (cons _kwbind277139_ __tmp284234))))
                  (declare (not safe))
                  (cons '%#let-values __tmp284233))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp284232
                                                    _stx277077_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0
                                             __tmp284231)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g277096277105_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e277101277162_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g277096277105_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e277102277165_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g277096277105_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys277168_ _e277102277165_)
                               (_e277103277170_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g277096277105_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main277173_ _e277103277170_))
                          (declare (not safe))
                          (_K277100277159_ _main277173_ _keys277168_))
                        (let () (declare (not safe)) (_else277098277113_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self277079277087_
                 'gxc#!kw-lambda::t))
              (let* ((_e277083277178_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self277079277087_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e277084277181_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self277079277087_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table277184_ _e277084277181_)
                     (_e277085277186_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self277079277087_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch277189_ _e277085277186_))
                (declare (not safe))
                (_K277082277175_ _dispatch277189_ _table277184_))
              (let () (declare (not safe)) (_E277081277091_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx276689_ _args276690_)
        (let _lp276692_ ((_rest276694_ _args276690_)
                         (_pargs276695_ '())
                         (_kwargs276696_ '()))
          (let* ((___stx283304283305_ _rest276694_)
                 (_g276702276754_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx283304283305_)))))
            (let ((___kont283306283307_
                   (lambda (_L276933_ _L276934_)
                     (let ((__tmp284271
                            (let ()
                              (declare (not safe))
                              (cons _L276934_ _pargs276695_))))
                       (declare (not safe))
                       (_lp276692_ _L276933_ __tmp284271 _kwargs276696_))))
                  (___kont283308283309_
                   (lambda (_L276879_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L276879_ _pargs276695_))
                             (reverse _kwargs276696_))))
                  (___kont283310283311_
                   (lambda (_L276826_ _L276827_ _L276828_)
                     (let ((_kw276845_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L276828_))))
                       (if (assq _kw276845_ _kwargs276696_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx276689_
                              _kw276845_))
                           (let ((__tmp284272
                                  (let ((__tmp284273
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw276845_ _L276827_))))
                                    (declare (not safe))
                                    (cons __tmp284273 _kwargs276696_))))
                             (declare (not safe))
                             (_lp276692_
                              _L276826_
                              _pargs276695_
                              __tmp284272))))))
                  (___kont283312283313_
                   (lambda (_L276774_ _L276775_)
                     (let ((__tmp284274
                            (let ()
                              (declare (not safe))
                              (cons _L276775_ _pargs276695_))))
                       (declare (not safe))
                       (_lp276692_ _L276774_ __tmp284274 _kwargs276696_))))
                  (___kont283314283315_
                   (lambda ()
                     (values (reverse _pargs276695_)
                             (reverse _kwargs276696_)))))
              (let* ((_g276701276761_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx283304283305_))
                            (___kont283314283315_)
                            (let () (declare (not safe)) (_g276702276754_)))))
                     (___match283411283412_
                      (lambda (_e276735276794_
                               _hd276734276797_
                               _tl276733276799_
                               _e276738276802_
                               _hd276737276805_
                               _tl276736276807_
                               _e276741276810_
                               _hd276740276813_
                               _tl276739276815_
                               _e276744276818_
                               _hd276743276821_
                               _tl276742276823_)
                        (let ((_L276826_ _tl276742276823_)
                              (_L276827_ _hd276743276821_)
                              (_L276828_ _hd276740276813_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L276828_))
                              (___kont283310283311_
                               _L276826_
                               _L276827_
                               _L276828_)
                              (___kont283312283313_
                               _tl276733276799_
                               _hd276734276797_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx283304283305_))
                    (let ((_e276708276898_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx283304283305_))))
                      (let ((_tl276706276903_
                             (let ()
                               (declare (not safe))
                               (##cdr _e276708276898_)))
                            (_hd276707276901_
                             (let ()
                               (declare (not safe))
                               (##car _e276708276898_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd276707276901_))
                            (let ((_e276711276906_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd276707276901_))))
                              (let ((_tl276709276911_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e276711276906_)))
                                    (_hd276710276909_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e276711276906_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd276710276909_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd276710276909_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl276709276911_))
                                            (let ((_e276714276914_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl276709276911_))))
                                              (let ((_tl276712276919_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e276714276914_)))
                                                    (_hd276713276917_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e276714276914_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd276713276917_))
                                                    (let ((_e276715276922_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd276713276917_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e276715276922_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl276712276919_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl276706276903_))
                          (let ((_e276718276925_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl276706276903_))))
                            (let ((_tl276716276930_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e276718276925_)))
                                  (_hd276717276928_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e276718276925_))))
                              (___kont283306283307_
                               _tl276716276930_
                               _hd276717276928_)))
                          (___kont283312283313_
                           _tl276706276903_
                           _hd276707276901_))
                      (___kont283312283313_ _tl276706276903_ _hd276707276901_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e276715276922_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl276712276919_))
                          (___kont283308283309_ _tl276706276903_)
                          (___kont283312283313_
                           _tl276706276903_
                           _hd276707276901_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl276712276919_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl276706276903_))
                              (let ((_e276744276818_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl276706276903_))))
                                (let ((_tl276742276823_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e276744276818_)))
                                      (_hd276743276821_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e276744276818_))))
                                  (___match283411283412_
                                   _e276708276898_
                                   _hd276707276901_
                                   _tl276706276903_
                                   _e276711276906_
                                   _hd276710276909_
                                   _tl276709276911_
                                   _e276714276914_
                                   _hd276713276917_
                                   _tl276712276919_
                                   _e276744276818_
                                   _hd276743276821_
                                   _tl276742276823_)))
                              (___kont283312283313_
                               _tl276706276903_
                               _hd276707276901_))
                          (___kont283312283313_
                           _tl276706276903_
                           _hd276707276901_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl276712276919_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl276706276903_))
                                                            (let ((_e276744276818_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl276706276903_))))
                      (let ((_tl276742276823_
                             (let ()
                               (declare (not safe))
                               (##cdr _e276744276818_)))
                            (_hd276743276821_
                             (let ()
                               (declare (not safe))
                               (##car _e276744276818_))))
                        (___match283411283412_
                         _e276708276898_
                         _hd276707276901_
                         _tl276706276903_
                         _e276711276906_
                         _hd276710276909_
                         _tl276709276911_
                         _e276714276914_
                         _hd276713276917_
                         _tl276712276919_
                         _e276744276818_
                         _hd276743276821_
                         _tl276742276823_)))
                    (___kont283312283313_ _tl276706276903_ _hd276707276901_))
                (___kont283312283313_ _tl276706276903_ _hd276707276901_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont283312283313_
                                             _tl276706276903_
                                             _hd276707276901_))
                                        (___kont283312283313_
                                         _tl276706276903_
                                         _hd276707276901_))
                                    (___kont283312283313_
                                     _tl276706276903_
                                     _hd276707276901_))))
                            (___kont283312283313_
                             _tl276706276903_
                             _hd276707276901_))))
                    (let () (declare (not safe)) (_g276701276761_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self276685_ _stx276686_ _args276687_)
        (let () (declare (not safe)) (gxc#xform-call% _stx276686_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
