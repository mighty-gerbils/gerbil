(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1707847734)
  (begin
    (define gxc#&optimize-call
      (make-promise
       (lambda ()
         (let ((_tbl278565_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp283424 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl278565_ __tmp283424))
           (let ()
             (declare (not safe))
             (table-set! _tbl278565_ '%#call gxc#optimize-call%))
           _tbl278565_))))
    (define gxc#apply-optimize-call
      (lambda (_stx278548_ . _args278550_)
        (let ((__tmp283426
               (lambda ()
                 (declare (not safe))
                 (if (null? _args278550_)
                     (gxc#compile-e__0 _stx278548_)
                     (let ((_arg1278555_ (car _args278550_))
                           (_rest278557_ (cdr _args278550_)))
                       (if (null? _rest278557_)
                           (gxc#compile-e__1 _stx278548_ _arg1278555_)
                           (let ((_arg2278560_ (car _rest278557_))
                                 (_rest278562_ (cdr _rest278557_)))
                             (if (null? _rest278562_)
                                 (gxc#compile-e__2
                                  _stx278548_
                                  _arg1278555_
                                  _arg2278560_)
                                 (apply gxc#compile-e
                                        _stx278548_
                                        _arg1278555_
                                        _arg2278560_
                                        _rest278562_))))))))
              (__tmp283425 (force gxc#&optimize-call)))
          (declare (not safe))
          (call-with-parameters
           __tmp283426
           gxc#current-compile-methods
           __tmp283425))))
    (define gxc#optimize-call%
      (lambda (_stx278403_)
        (let* ((___stx283174283175_ _stx278403_)
               (_g278406278426_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx283174283175_)))))
          (let ((___kont283176283177_
                 (lambda (_L278470_ _L278471_)
                   (let* ((_rator-id278489_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L278471_)))
                          (_rator-type278491_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id278489_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type278491_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp283427
                                  (##structure-ref
                                   _rator-type278491_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id278489_
                              '" => "
                              _rator-type278491_
                              '" "
                              __tmp283427))
                           (let ((_optimized278494_
                                  (let ((__method283422
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type278491_
                                            'optimize-call))))
                                    (if __method283422
                                        (__method283422
                                         _rator-type278491_
                                         _stx278403_
                                         _L278470_)
                                        (error '"Missing method"
                                               _rator-type278491_
                                               'optimize-call)))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type278491_))
                                 _optimized278494_
                                 (let* ((___stx283156283157_ _optimized278494_)
                                        (_g278497278507_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx283156283157_)))))
                                   (let ((___kont283158283159_
                                          (lambda (_L278527_)
                                            (let ((__tmp283428
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L278527_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp283428
                                               _stx278403_))))
                                         (___kont283160283161_
                                          (lambda () _optimized278494_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx283156283157_))
                                         (let ((_e278502278519_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx283156283157_))))
                                           (let ((_tl278500278524_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e278502278519_)))
                                                 (_hd278501278522_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e278502278519_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd278501278522_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd278501278522_))
                                                     (___kont283158283159_
                                                      _tl278500278524_)
                                                     (___kont283160283161_))
                                                 (___kont283160283161_))))
                                         (___kont283160283161_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type278491_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx278403_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx278403_
                                _rator-type278491_)))))))
                (___kont283178283179_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _stx278403_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx283174283175_))
                (let ((_e278412278438_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx283174283175_))))
                  (let ((_tl278410278443_
                         (let () (declare (not safe)) (##cdr _e278412278438_)))
                        (_hd278411278441_
                         (let ()
                           (declare (not safe))
                           (##car _e278412278438_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl278410278443_))
                        (let ((_e278415278446_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl278410278443_))))
                          (let ((_tl278413278451_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e278415278446_)))
                                (_hd278414278449_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e278415278446_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd278414278449_))
                                (let ((_e278418278454_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd278414278449_))))
                                  (let ((_tl278416278459_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e278418278454_)))
                                        (_hd278417278457_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e278418278454_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd278417278457_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd278417278457_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl278416278459_))
                                                (let ((_e278421278462_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl278416278459_))))
                                                  (let ((_tl278419278467_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e278421278462_)))
                                                        (_hd278420278465_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e278421278462_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl278419278467_))
                                                        (___kont283176283177_
                                                         _tl278413278451_
                                                         _hd278420278465_)
                                                        (___kont283178283179_))))
                                                (___kont283178283179_))
                                            (___kont283178283179_))
                                        (___kont283178283179_))))
                                (___kont283178283179_))))
                        (___kont283178283179_))))
                (___kont283178283179_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self278357_ _stx278358_ _args278359_)
        (let* ((_g278361278371_
                (lambda (_g278362278368_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g278362278368_))))
               (_g278360278400_
                (lambda (_g278362278374_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g278362278374_))
                      (let ((_e278366278376_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g278362278374_))))
                        (let ((_hd278365278379_
                               (let ()
                                 (declare (not safe))
                                 (##car _e278366278376_)))
                              (_tl278364278381_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e278366278376_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl278364278381_))
                              ((lambda (_L278384_)
                                 (let* ((_klass278395_
                                         (let ((__tmp283429
                                                (##structure-ref
                                                 _self278357_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx278358_
                                            __tmp283429)))
                                        (_object278397_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L278384_))))
                                   (if (##structure-ref
                                        _klass278395_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp283445
                                              (let ((__tmp283446
                                                     (let ((__tmp283448
                                                            (let ((__tmp283449
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp283450
                                  (##structure-ref
                                   _klass278395_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp283450 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp283449)))
                   (__tmp283447
                    (let () (declare (not safe)) (cons _object278397_ '()))))
               (declare (not safe))
               (cons __tmp283448 __tmp283447))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp283446))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp283445
                                          _stx278358_))
                                       (if (##structure-ref
                                            _klass278395_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp283439
                                                  (let ((__tmp283440
                                                         (let ((__tmp283442
                                                                (let ((__tmp283443
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp283444
                                      (##structure-ref
                                       _klass278395_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp283444 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp283443)))
                       (__tmp283441
                        (let ()
                          (declare (not safe))
                          (cons _object278397_ '()))))
                   (declare (not safe))
                   (cons __tmp283442 __tmp283441))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp283440))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp283439
                                              _stx278358_))
                                           (let ((__tmp283430
                                                  (let ((__tmp283431
                                                         (let ((__tmp283437
                                                                (let ((__tmp283438
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp283438)))
                       (__tmp283432
                        (let ((__tmp283434
                               (let ((__tmp283435
                                      (let ((__tmp283436
                                             (##structure-ref
                                              _self278357_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp283436 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp283435)))
                              (__tmp283433
                               (let ()
                                 (declare (not safe))
                                 (cons _object278397_ '()))))
                          (declare (not safe))
                          (cons __tmp283434 __tmp283433))))
                   (declare (not safe))
                   (cons __tmp283437 __tmp283432))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp283431))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp283430
                                              _stx278358_))))))
                               _hd278365278379_)
                              (let ()
                                (declare (not safe))
                                (_g278361278371_ _g278362278374_)))))
                      (let ()
                        (declare (not safe))
                        (_g278361278371_ _g278362278374_))))))
          (declare (not safe))
          (_g278360278400_ _args278359_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__t283135)
        (let ((__id283136
               (let ((__tmp283137
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t283135 'id))))
                 (if __tmp283137 __tmp283137 (error '"Unknown slot" 'id)))))
          (lambda (_self278357_ _stx278358_ _args278359_)
            (let* ((_g278361278371_
                    (lambda (_g278362278368_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g278362278368_))))
                   (_g278360278400_
                    (lambda (_g278362278374_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g278362278374_))
                          (let ((_e278366278376_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g278362278374_))))
                            (let ((_hd278365278379_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e278366278376_)))
                                  (_tl278364278381_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e278366278376_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl278364278381_))
                                  ((lambda (_L278384_)
                                     (let* ((_klass278395_
                                             (let ((__tmp283451
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self278357_
                                                       __id283136
                                                       __t283135
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx278358_
                                                __tmp283451)))
                                            (_object278397_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L278384_))))
                                       (if (##structure-ref
                                            _klass278395_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp283467
                                                  (let ((__tmp283468
                                                         (let ((__tmp283470
                                                                (let ((__tmp283471
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp283472
                                      (##structure-ref
                                       _klass278395_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp283472 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp283471)))
                       (__tmp283469
                        (let ()
                          (declare (not safe))
                          (cons _object278397_ '()))))
                   (declare (not safe))
                   (cons __tmp283470 __tmp283469))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp283468))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp283467
                                              _stx278358_))
                                           (if (##structure-ref
                                                _klass278395_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp283461
                                                      (let ((__tmp283462
                                                             (let ((__tmp283464
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp283465
                                   (let ((__tmp283466
                                          (##structure-ref
                                           _klass278395_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp283466 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp283465)))
                           (__tmp283463
                            (let ()
                              (declare (not safe))
                              (cons _object278397_ '()))))
                       (declare (not safe))
                       (cons __tmp283464 __tmp283463))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp283462))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp283461
                                                  _stx278358_))
                                               (let ((__tmp283452
                                                      (let ((__tmp283453
                                                             (let ((__tmp283459
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp283460
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp283460)))
                           (__tmp283454
                            (let ((__tmp283456
                                   (let ((__tmp283457
                                          (let ((__tmp283458
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self278357_
                                                    __id283136
                                                    __t283135
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp283458 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp283457)))
                                  (__tmp283455
                                   (let ()
                                     (declare (not safe))
                                     (cons _object278397_ '()))))
                              (declare (not safe))
                              (cons __tmp283456 __tmp283455))))
                       (declare (not safe))
                       (cons __tmp283459 __tmp283454))))
                (declare (not safe))
                (cons '%#call __tmp283453))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp283452
                                                  _stx278358_))))))
                                   _hd278365278379_)
                                  (let ()
                                    (declare (not safe))
                                    (_g278361278371_ _g278362278374_)))))
                          (let ()
                            (declare (not safe))
                            (_g278361278371_ _g278362278374_))))))
              (declare (not safe))
              (_g278360278400_ _args278359_))))))
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
      (lambda (_self278077_ _stx278078_ _args278079_)
        (let* ((_klass278081_
                (let ((__tmp283473
                       (##structure-ref _self278077_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx278078_ __tmp283473)))
               (_fields278083_
                (length (##structure-ref _klass278081_ '5 gxc#!class::t '#f)))
               (_args278085_ (map gxc#compile-e _args278079_))
               (_inline-make-object278087_
                (let ((__tmp283474
                       (let ((__tmp283480
                              (let ((__tmp283481
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp283481)))
                             (__tmp283475
                              (let ((__tmp283477
                                     (let ((__tmp283478
                                            (let ((__tmp283479
                                                   (##structure-ref
                                                    _self278077_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp283479 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp283478)))
                                    (__tmp283476
                                     (make-list _fields278083_ '(%#quote #f))))
                                (declare (not safe))
                                (cons __tmp283477 __tmp283476))))
                         (declare (not safe))
                         (cons __tmp283480 __tmp283475))))
                  (declare (not safe))
                  (cons '%#call __tmp283474))))
          (let ((_$e278090_
                 (##structure-ref _klass278081_ '6 gxc#!class::t '#f)))
            (if _$e278090_
                ((lambda (_ctor278093_)
                   (let ((_$obj278095_
                          (let ((__tmp283581 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp283581)))
                         (_ctor-impl278096_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass278081_
                             _ctor278093_))))
                     (let ((__tmp283582
                            (let ((__tmp283583
                                   (let ((__tmp283651
                                          (let ((__tmp283652
                                                 (let ((__tmp283654
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj278095_
                                                                '())))
                                                       (__tmp283653
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object278087_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp283654
                                                         __tmp283653))))
                                            (declare (not safe))
                                            (cons __tmp283652 '())))
                                         (__tmp283584
                                          (let ((__tmp283585
                                                 (let ((__tmp283586
                                                        (let ((__tmp283590
                                                               (if _ctor-impl278096_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp283645
                                  (let ((__tmp283649
                                         (let ((__tmp283650
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl278096_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp283650)))
                                        (__tmp283646
                                         (let ((__tmp283647
                                                (let ((__tmp283648
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj278095_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp283648))))
                                           (declare (not safe))
                                           (cons __tmp283647 _args278085_))))
                                    (declare (not safe))
                                    (cons __tmp283649 __tmp283646))))
                             (declare (not safe))
                             (cons '%#call __tmp283645))
                           (let* ((_$ctor278098_
                                   (let ((__tmp283591 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp283591)))
                                  (__tmp283592
                                   (let ((__tmp283627
                                          (let ((__tmp283628
                                                 (let ((__tmp283644
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor278098_
                                                                '())))
                                                       (__tmp283629
                                                        (let ((__tmp283630
                                                               (let ((__tmp283631
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp283642
                                     (let ((__tmp283643
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp283643)))
                                    (__tmp283632
                                     (let ((__tmp283639
                                            (let ((__tmp283640
                                                   (let ((__tmp283641
                                                          (##structure-ref
                                                           _self278077_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp283641 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp283640)))
                                           (__tmp283633
                                            (let ((__tmp283637
                                                   (let ((__tmp283638
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj278095_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp283638)))
                                                  (__tmp283634
                                                   (let ((__tmp283635
                                                          (let ((__tmp283636
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _ctor278093_ '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp283636))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp283635 '()))))
                                              (declare (not safe))
                                              (cons __tmp283637 __tmp283634))))
                                       (declare (not safe))
                                       (cons __tmp283639 __tmp283633))))
                                (declare (not safe))
                                (cons __tmp283642 __tmp283632))))
                         (declare (not safe))
                         (cons '%#call __tmp283631))))
                  (declare (not safe))
                  (cons __tmp283630 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp283644
                                                         __tmp283629))))
                                            (declare (not safe))
                                            (cons __tmp283628 '())))
                                         (__tmp283593
                                          (let ((__tmp283594
                                                 (let ((__tmp283595
                                                        (let ((__tmp283625
                                                               (let ((__tmp283626
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor278098_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp283626)))
                      (__tmp283596
                       (let ((__tmp283618
                              (let ((__tmp283619
                                     (let ((__tmp283623
                                            (let ((__tmp283624
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor278098_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp283624)))
                                           (__tmp283620
                                            (let ((__tmp283621
                                                   (let ((__tmp283622
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj278095_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp283622))))
                                              (declare (not safe))
                                              (cons __tmp283621
                                                    _args278085_))))
                                       (declare (not safe))
                                       (cons __tmp283623 __tmp283620))))
                                (declare (not safe))
                                (cons '%#call __tmp283619)))
                             (__tmp283597
                              (let ((__tmp283598
                                     (let ((__tmp283599
                                            (let ((__tmp283616
                                                   (let ((__tmp283617
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp283617)))
                                                  (__tmp283600
                                                   (let ((__tmp283614
                                                          (let ((__tmp283615
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp283615)))
                 (__tmp283601
                  (let ((__tmp283612
                         (let ((__tmp283613
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp283613)))
                        (__tmp283602
                         (let ((__tmp283609
                                (let ((__tmp283610
                                       (let ((__tmp283611
                                              (##structure-ref
                                               _self278077_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp283611 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp283610)))
                               (__tmp283603
                                (let ((__tmp283607
                                       (let ((__tmp283608
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp283608)))
                                      (__tmp283604
                                       (let ((__tmp283605
                                              (let ((__tmp283606
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor278093_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp283606))))
                                         (declare (not safe))
                                         (cons __tmp283605 '()))))
                                  (declare (not safe))
                                  (cons __tmp283607 __tmp283604))))
                           (declare (not safe))
                           (cons __tmp283609 __tmp283603))))
                    (declare (not safe))
                    (cons __tmp283612 __tmp283602))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp283614
                                                           __tmp283601))))
                                              (declare (not safe))
                                              (cons __tmp283616 __tmp283600))))
                                       (declare (not safe))
                                       (cons '%#call __tmp283599))))
                                (declare (not safe))
                                (cons __tmp283598 '()))))
                         (declare (not safe))
                         (cons __tmp283618 __tmp283597))))
                  (declare (not safe))
                  (cons __tmp283625 __tmp283596))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp283595))))
                                            (declare (not safe))
                                            (cons __tmp283594 '()))))
                                     (declare (not safe))
                                     (cons __tmp283627 __tmp283593))))
                             (declare (not safe))
                             (cons '%#let-values __tmp283592))))
                      (__tmp283587
                       (let ((__tmp283588
                              (let ((__tmp283589
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj278095_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp283589))))
                         (declare (not safe))
                         (cons __tmp283588 '()))))
                  (declare (not safe))
                  (cons __tmp283590 __tmp283587))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp283586))))
                                            (declare (not safe))
                                            (cons __tmp283585 '()))))
                                     (declare (not safe))
                                     (cons __tmp283651 __tmp283584))))
                              (declare (not safe))
                              (cons '%#let-values __tmp283583))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp283582 _stx278078_))))
                 _$e278090_)
                (let ((_$e278100_
                       (##structure-ref _klass278081_ '9 gxc#!class::t '#f)))
                  (if _$e278100_
                      ((lambda (_metaclass278103_)
                         (let* ((_$obj278105_
                                 (let ((__tmp283543 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp283543)))
                                (_metakons278107_
                                 (let ((__tmp283544
                                        (let ()
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           _stx278078_
                                           _metaclass278103_))))
                                   (declare (not safe))
                                   (gxc#!class-lookup-method
                                    __tmp283544
                                    'instance-init!))))
                           (let ((__tmp283545
                                  (let ((__tmp283546
                                         (let ((__tmp283577
                                                (let ((__tmp283578
                                                       (let ((__tmp283580
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj278105_ '())))
                     (__tmp283579
                      (let ()
                        (declare (not safe))
                        (cons _inline-make-object278087_ '()))))
                 (declare (not safe))
                 (cons __tmp283580 __tmp283579))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp283578 '())))
                                               (__tmp283547
                                                (let ((__tmp283548
                                                       (let ((__tmp283549
                                                              (let ((__tmp283553
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if _metakons278107_
                                 (let ((__tmp283567
                                        (let ((__tmp283575
                                               (let ((__tmp283576
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metakons278107_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp283576)))
                                              (__tmp283568
                                               (let ((__tmp283572
                                                      (let ((__tmp283573
                                                             (let ((__tmp283574
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self278077_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp283574 '()))))
                (declare (not safe))
                (cons '%#ref __tmp283573)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp283569
                                                      (let ((__tmp283570
                                                             (let ((__tmp283571
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _$obj278105_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp283571))))
                (declare (not safe))
                (cons __tmp283570 _args278085_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp283572
                                                       __tmp283569))))
                                          (declare (not safe))
                                          (cons __tmp283575 __tmp283568))))
                                   (declare (not safe))
                                   (cons '%#call __tmp283567))
                                 (let ((__tmp283554
                                        (let ((__tmp283565
                                               (let ((__tmp283566
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'call-method
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp283566)))
                                              (__tmp283555
                                               (let ((__tmp283562
                                                      (let ((__tmp283563
                                                             (let ((__tmp283564
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self278077_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp283564 '()))))
                (declare (not safe))
                (cons '%#ref __tmp283563)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp283556
                                                      (let ((__tmp283560
                                                             (let ((__tmp283561
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'instance-init! '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp283561)))
                    (__tmp283557
                     (let ((__tmp283558
                            (let ((__tmp283559
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj278105_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp283559))))
                       (declare (not safe))
                       (cons __tmp283558 _args278085_))))
                (declare (not safe))
                (cons __tmp283560 __tmp283557))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp283562
                                                       __tmp283556))))
                                          (declare (not safe))
                                          (cons __tmp283565 __tmp283555))))
                                   (declare (not safe))
                                   (cons '%#call __tmp283554))))
                            (__tmp283550
                             (let ((__tmp283551
                                    (let ((__tmp283552
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj278105_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp283552))))
                               (declare (not safe))
                               (cons __tmp283551 '()))))
                        (declare (not safe))
                        (cons __tmp283553 __tmp283550))))
                 (declare (not safe))
                 (cons '%#begin __tmp283549))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp283548 '()))))
                                           (declare (not safe))
                                           (cons __tmp283577 __tmp283547))))
                                    (declare (not safe))
                                    (cons '%#let-values __tmp283546))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp283545 _stx278078_))))
                       _$e278100_)
                      (if (##structure-ref _klass278081_ '7 gxc#!class::t '#f)
                          (if (fx= (length _args278085_) _fields278083_)
                              (let ((__tmp283535
                                     (let ((__tmp283536
                                            (let ((__tmp283541
                                                   (let ((__tmp283542
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp283542)))
                                                  (__tmp283537
                                                   (let ((__tmp283538
                                                          (let ((__tmp283539
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp283540
                                (##structure-ref
                                 _self278077_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp283540 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp283539))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp283538
                                                           _args278085_))))
                                              (declare (not safe))
                                              (cons __tmp283541 __tmp283537))))
                                       (declare (not safe))
                                       (cons '%#call __tmp283536))))
                                (declare (not safe))
                                (gxc#xform-wrap-source
                                 __tmp283535
                                 _stx278078_))
                              (let ((__tmp283534
                                     (##structure-ref
                                      _self278077_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                    (__tmp283533
                                     (length (##structure-ref
                                              _klass278081_
                                              '5
                                              gxc#!class::t
                                              '#f))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"illegal struct constructor application; arity mismatch"
                                 _stx278078_
                                 __tmp283534
                                 __tmp283533)))
                          (let ((_$obj278110_
                                 (let ((__tmp283482 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp283482))))
                            (let _lp278112_ ((_rest278114_ _args278085_)
                                             (_initializers278115_ '()))
                              (let* ((___stx283212283213_ _rest278114_)
                                     (_g278119278140_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx283212283213_)))))
                                (let ((___kont283214283215_
                                       (lambda (_L278194_ _L278195_ _L278196_)
                                         (let* ((_slot278227_
                                                 (keyword->symbol
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e _L278196_))))
                                                (_off278229_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass278081_
                                                    _slot278227_))))
                                           (if _off278229_
                                               (let ((__tmp283484
                                                      (let ((__tmp283485
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off278229_ _L278195_))))
                (declare (not safe))
                (cons __tmp283485 _initializers278115_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp278112_
                                                  _L278194_
                                                  __tmp283484))
                                               (let ((__tmp283483
                                                      (##structure-ref
                                                       _self278077_
                                                       '1
                                                       gxc#!type::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"unknown slot"
                                                  _stx278078_
                                                  __tmp283483
                                                  _slot278227_))))))
                                      (___kont283216283217_
                                       (lambda ()
                                         (let ((__tmp283486
                                                (let ((__tmp283487
                                                       (let ((__tmp283510
                                                              (let ((__tmp283511
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp283513
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj278110_ '())))
                                   (__tmp283512
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object278087_ '()))))
                               (declare (not safe))
                               (cons __tmp283513 __tmp283512))))
                        (declare (not safe))
                        (cons __tmp283511 '())))
                     (__tmp283488
                      (let ((__tmp283489
                             (let ((__tmp283490
                                    (let ((__tmp283507
                                           (let ((__tmp283508
                                                  (let ((__tmp283509
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj278110_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp283509))))
                                             (declare (not safe))
                                             (cons __tmp283508 '())))
                                          (__tmp283491
                                           (let ((__tmp283492
                                                  (lambda (_i278154_ _r278155_)
                                                    (let ((__tmp283493
                                                           (let ((__tmp283494
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp283504
                                 (let ((__tmp283505
                                        (let ((__tmp283506
                                               (##structure-ref
                                                _self278077_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp283506 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp283505)))
                                (__tmp283495
                                 (let ((__tmp283501
                                        (let ((__tmp283502
                                               (let ((__tmp283503
                                                      (car _i278154_)))
                                                 (declare (not safe))
                                                 (cons __tmp283503 '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp283502)))
                                       (__tmp283496
                                        (let ((__tmp283499
                                               (let ((__tmp283500
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _$obj278110_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp283500)))
                                              (__tmp283497
                                               (let ((__tmp283498
                                                      (cdr _i278154_)))
                                                 (declare (not safe))
                                                 (cons __tmp283498 '()))))
                                          (declare (not safe))
                                          (cons __tmp283499 __tmp283497))))
                                   (declare (not safe))
                                   (cons __tmp283501 __tmp283496))))
                            (declare (not safe))
                            (cons __tmp283504 __tmp283495))))
                     (declare (not safe))
                     (cons '%#struct-unchecked-set! __tmp283494))))
              (declare (not safe))
              (cons __tmp283493 _r278155_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (foldl1 __tmp283492
                                                     '()
                                                     _initializers278115_))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp283507 __tmp283491))))
                               (declare (not safe))
                               (cons '%#begin __tmp283490))))
                        (declare (not safe))
                        (cons __tmp283489 '()))))
                 (declare (not safe))
                 (cons __tmp283510 __tmp283488))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp283487))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp283486
                                            _stx278078_))))
                                      (___kont283218283219_
                                       (lambda ()
                                         (let ((__tmp283514
                                                (let ((__tmp283515
                                                       (let ((__tmp283529
                                                              (let ((__tmp283530
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp283532
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj278110_ '())))
                                   (__tmp283531
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object278087_ '()))))
                               (declare (not safe))
                               (cons __tmp283532 __tmp283531))))
                        (declare (not safe))
                        (cons __tmp283530 '())))
                     (__tmp283516
                      (let ((__tmp283517
                             (let ((__tmp283518
                                    (let ((__tmp283522
                                           (let ((__tmp283523
                                                  (let ((__tmp283527
                                                         (let ((__tmp283528
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'class-instance-init! '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp283528)))
                (__tmp283524
                 (let ((__tmp283525
                        (let ((__tmp283526
                               (let ()
                                 (declare (not safe))
                                 (cons _$obj278110_ '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp283526))))
                   (declare (not safe))
                   (cons __tmp283525 _args278085_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp283527
                                                          __tmp283524))))
                                             (declare (not safe))
                                             (cons '%#call __tmp283523)))
                                          (__tmp283519
                                           (let ((__tmp283520
                                                  (let ((__tmp283521
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj278110_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp283521))))
                                             (declare (not safe))
                                             (cons __tmp283520 '()))))
                                      (declare (not safe))
                                      (cons __tmp283522 __tmp283519))))
                               (declare (not safe))
                               (cons '%#begin __tmp283518))))
                        (declare (not safe))
                        (cons __tmp283517 '()))))
                 (declare (not safe))
                 (cons __tmp283529 __tmp283516))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp283515))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp283514
                                            _stx278078_)))))
                                  (let* ((_g278117278157_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   ___stx283212283213_))
                                                (___kont283216283217_)
                                                (___kont283218283219_))))
                                         (___match283249283250_
                                          (lambda (_e278126278162_
                                                   _hd278125278165_
                                                   _tl278124278167_
                                                   _e278129278170_
                                                   _hd278128278173_
                                                   _tl278127278175_
                                                   _e278132278178_
                                                   _hd278131278181_
                                                   _tl278130278183_
                                                   _e278135278186_
                                                   _hd278134278189_
                                                   _tl278133278191_)
                                            (let ((_L278194_ _tl278133278191_)
                                                  (_L278195_ _hd278134278189_)
                                                  (_L278196_ _hd278131278181_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-keyword?
                                                     _L278196_))
                                                  (___kont283214283215_
                                                   _L278194_
                                                   _L278195_
                                                   _L278196_)
                                                  (___kont283218283219_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx283212283213_))
                                        (let ((_e278126278162_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx283212283213_))))
                                          (let ((_tl278124278167_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e278126278162_)))
                                                (_hd278125278165_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e278126278162_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd278125278165_))
                                                (let ((_e278129278170_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd278125278165_))))
                                                  (let ((_tl278127278175_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e278129278170_)))
                                                        (_hd278128278173_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e278129278170_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd278128278173_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#quote
                                                               _hd278128278173_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl278127278175_))
                        (let ((_e278132278178_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl278127278175_))))
                          (let ((_tl278130278183_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e278132278178_)))
                                (_hd278131278181_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e278132278178_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl278130278183_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl278124278167_))
                                    (let ((_e278135278186_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl278124278167_))))
                                      (let ((_tl278133278191_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e278135278186_)))
                                            (_hd278134278189_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e278135278186_))))
                                        (___match283249283250_
                                         _e278126278162_
                                         _hd278125278165_
                                         _tl278124278167_
                                         _e278129278170_
                                         _hd278128278173_
                                         _tl278127278175_
                                         _e278132278178_
                                         _hd278131278181_
                                         _tl278130278183_
                                         _e278135278186_
                                         _hd278134278189_
                                         _tl278133278191_)))
                                    (___kont283218283219_))
                                (___kont283218283219_))))
                        (___kont283218283219_))
                    (___kont283218283219_))
                (___kont283218283219_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont283218283219_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g278117278157_))))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__t283138)
        (let ((__id283139
               (let ((__tmp283140
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t283138 'id))))
                 (if __tmp283140 __tmp283140 (error '"Unknown slot" 'id)))))
          (lambda (_self278077_ _stx278078_ _args278079_)
            (let* ((_klass278081_
                    (let ((__tmp283655
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self278077_
                              __id283139
                              __t283138
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx278078_ __tmp283655)))
                   (_fields278083_
                    (length (##structure-ref
                             _klass278081_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args278085_ (map gxc#compile-e _args278079_))
                   (_inline-make-object278087_
                    (let ((__tmp283656
                           (let ((__tmp283662
                                  (let ((__tmp283663
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp283663)))
                                 (__tmp283657
                                  (let ((__tmp283659
                                         (let ((__tmp283660
                                                (let ((__tmp283661
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self278077_
                                                          __id283139
                                                          __t283138
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp283661 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp283660)))
                                        (__tmp283658
                                         (make-list
                                          _fields278083_
                                          '(%#quote #f))))
                                    (declare (not safe))
                                    (cons __tmp283659 __tmp283658))))
                             (declare (not safe))
                             (cons __tmp283662 __tmp283657))))
                      (declare (not safe))
                      (cons '%#call __tmp283656))))
              (let ((_$e278090_
                     (##structure-ref _klass278081_ '6 gxc#!class::t '#f)))
                (if _$e278090_
                    ((lambda (_ctor278093_)
                       (let ((_$obj278095_
                              (let ((__tmp283763 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp283763)))
                             (_ctor-impl278096_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass278081_
                                 _ctor278093_))))
                         (let ((__tmp283764
                                (let ((__tmp283765
                                       (let ((__tmp283833
                                              (let ((__tmp283834
                                                     (let ((__tmp283836
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj278095_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp283835
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object278087_ '()))))
               (declare (not safe))
               (cons __tmp283836 __tmp283835))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp283834 '())))
                                             (__tmp283766
                                              (let ((__tmp283767
                                                     (let ((__tmp283768
                                                            (let ((__tmp283772
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl278096_
                               (let ((__tmp283827
                                      (let ((__tmp283831
                                             (let ((__tmp283832
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl278096_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp283832)))
                                            (__tmp283828
                                             (let ((__tmp283829
                                                    (let ((__tmp283830
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj278095_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp283830))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp283829
                                                     _args278085_))))
                                        (declare (not safe))
                                        (cons __tmp283831 __tmp283828))))
                                 (declare (not safe))
                                 (cons '%#call __tmp283827))
                               (let* ((_$ctor278098_
                                       (let ((__tmp283773
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp283773)))
                                      (__tmp283774
                                       (let ((__tmp283809
                                              (let ((__tmp283810
                                                     (let ((__tmp283826
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor278098_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp283811
                    (let ((__tmp283812
                           (let ((__tmp283813
                                  (let ((__tmp283824
                                         (let ((__tmp283825
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp283825)))
                                        (__tmp283814
                                         (let ((__tmp283821
                                                (let ((__tmp283822
                                                       (let ((__tmp283823
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self278077_
                         __id283139
                         __t283138
                         '#f))))
                 (declare (not safe))
                 (cons __tmp283823 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp283822)))
                                               (__tmp283815
                                                (let ((__tmp283819
                                                       (let ((__tmp283820
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj278095_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp283820)))
              (__tmp283816
               (let ((__tmp283817
                      (let ((__tmp283818
                             (let ()
                               (declare (not safe))
                               (cons _ctor278093_ '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp283818))))
                 (declare (not safe))
                 (cons __tmp283817 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp283819
                                                        __tmp283816))))
                                           (declare (not safe))
                                           (cons __tmp283821 __tmp283815))))
                                    (declare (not safe))
                                    (cons __tmp283824 __tmp283814))))
                             (declare (not safe))
                             (cons '%#call __tmp283813))))
                      (declare (not safe))
                      (cons __tmp283812 '()))))
               (declare (not safe))
               (cons __tmp283826 __tmp283811))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp283810 '())))
                                             (__tmp283775
                                              (let ((__tmp283776
                                                     (let ((__tmp283777
                                                            (let ((__tmp283807
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp283808
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor278098_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp283808)))
                          (__tmp283778
                           (let ((__tmp283800
                                  (let ((__tmp283801
                                         (let ((__tmp283805
                                                (let ((__tmp283806
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor278098_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp283806)))
                                               (__tmp283802
                                                (let ((__tmp283803
                                                       (let ((__tmp283804
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj278095_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp283804))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp283803
                                                        _args278085_))))
                                           (declare (not safe))
                                           (cons __tmp283805 __tmp283802))))
                                    (declare (not safe))
                                    (cons '%#call __tmp283801)))
                                 (__tmp283779
                                  (let ((__tmp283780
                                         (let ((__tmp283781
                                                (let ((__tmp283798
                                                       (let ((__tmp283799
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp283799)))
              (__tmp283782
               (let ((__tmp283796
                      (let ((__tmp283797
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp283797)))
                     (__tmp283783
                      (let ((__tmp283794
                             (let ((__tmp283795
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp283795)))
                            (__tmp283784
                             (let ((__tmp283791
                                    (let ((__tmp283792
                                           (let ((__tmp283793
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self278077_
                                                     __id283139
                                                     __t283138
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp283793 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp283792)))
                                   (__tmp283785
                                    (let ((__tmp283789
                                           (let ((__tmp283790
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp283790)))
                                          (__tmp283786
                                           (let ((__tmp283787
                                                  (let ((__tmp283788
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor278093_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp283788))))
                                             (declare (not safe))
                                             (cons __tmp283787 '()))))
                                      (declare (not safe))
                                      (cons __tmp283789 __tmp283786))))
                               (declare (not safe))
                               (cons __tmp283791 __tmp283785))))
                        (declare (not safe))
                        (cons __tmp283794 __tmp283784))))
                 (declare (not safe))
                 (cons __tmp283796 __tmp283783))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp283798
                                                        __tmp283782))))
                                           (declare (not safe))
                                           (cons '%#call __tmp283781))))
                                    (declare (not safe))
                                    (cons __tmp283780 '()))))
                             (declare (not safe))
                             (cons __tmp283800 __tmp283779))))
                      (declare (not safe))
                      (cons __tmp283807 __tmp283778))))
               (declare (not safe))
               (cons '%#if __tmp283777))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp283776 '()))))
                                         (declare (not safe))
                                         (cons __tmp283809 __tmp283775))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp283774))))
                          (__tmp283769
                           (let ((__tmp283770
                                  (let ((__tmp283771
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj278095_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp283771))))
                             (declare (not safe))
                             (cons __tmp283770 '()))))
                      (declare (not safe))
                      (cons __tmp283772 __tmp283769))))
               (declare (not safe))
               (cons '%#begin __tmp283768))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp283767 '()))))
                                         (declare (not safe))
                                         (cons __tmp283833 __tmp283766))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp283765))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp283764 _stx278078_))))
                     _$e278090_)
                    (let ((_$e278100_
                           (##structure-ref
                            _klass278081_
                            '9
                            gxc#!class::t
                            '#f)))
                      (if _$e278100_
                          ((lambda (_metaclass278103_)
                             (let* ((_$obj278105_
                                     (let ((__tmp283725 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp283725)))
                                    (_metakons278107_
                                     (let ((__tmp283726
                                            (let ()
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               _stx278078_
                                               _metaclass278103_))))
                                       (declare (not safe))
                                       (gxc#!class-lookup-method
                                        __tmp283726
                                        'instance-init!))))
                               (let ((__tmp283727
                                      (let ((__tmp283728
                                             (let ((__tmp283759
                                                    (let ((__tmp283760
                                                           (let ((__tmp283762
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj278105_ '())))
                         (__tmp283761
                          (let ()
                            (declare (not safe))
                            (cons _inline-make-object278087_ '()))))
                     (declare (not safe))
                     (cons __tmp283762 __tmp283761))))
              (declare (not safe))
              (cons __tmp283760 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp283729
                                                    (let ((__tmp283730
                                                           (let ((__tmp283731
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp283735
                                 (if _metakons278107_
                                     (let ((__tmp283749
                                            (let ((__tmp283757
                                                   (let ((__tmp283758
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _metakons278107_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp283758)))
                                                  (__tmp283750
                                                   (let ((__tmp283754
                                                          (let ((__tmp283755
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp283756
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self278077_
                                   __id283139
                                   __t283138
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp283756 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp283755)))
                 (__tmp283751
                  (let ((__tmp283752
                         (let ((__tmp283753
                                (let ()
                                  (declare (not safe))
                                  (cons _$obj278105_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp283753))))
                    (declare (not safe))
                    (cons __tmp283752 _args278085_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp283754
                                                           __tmp283751))))
                                              (declare (not safe))
                                              (cons __tmp283757 __tmp283750))))
                                       (declare (not safe))
                                       (cons '%#call __tmp283749))
                                     (let ((__tmp283736
                                            (let ((__tmp283747
                                                   (let ((__tmp283748
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'call-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp283748)))
                                                  (__tmp283737
                                                   (let ((__tmp283744
                                                          (let ((__tmp283745
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp283746
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self278077_
                                   __id283139
                                   __t283138
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp283746 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp283745)))
                 (__tmp283738
                  (let ((__tmp283742
                         (let ((__tmp283743
                                (let ()
                                  (declare (not safe))
                                  (cons 'instance-init! '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp283743)))
                        (__tmp283739
                         (let ((__tmp283740
                                (let ((__tmp283741
                                       (let ()
                                         (declare (not safe))
                                         (cons _$obj278105_ '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp283741))))
                           (declare (not safe))
                           (cons __tmp283740 _args278085_))))
                    (declare (not safe))
                    (cons __tmp283742 __tmp283739))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp283744
                                                           __tmp283738))))
                                              (declare (not safe))
                                              (cons __tmp283747 __tmp283737))))
                                       (declare (not safe))
                                       (cons '%#call __tmp283736))))
                                (__tmp283732
                                 (let ((__tmp283733
                                        (let ((__tmp283734
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$obj278105_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp283734))))
                                   (declare (not safe))
                                   (cons __tmp283733 '()))))
                            (declare (not safe))
                            (cons __tmp283735 __tmp283732))))
                     (declare (not safe))
                     (cons '%#begin __tmp283731))))
              (declare (not safe))
              (cons __tmp283730 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp283759
                                                     __tmp283729))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp283728))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp283727
                                  _stx278078_))))
                           _$e278100_)
                          (if (##structure-ref
                               _klass278081_
                               '7
                               gxc#!class::t
                               '#f)
                              (if (fx= (length _args278085_) _fields278083_)
                                  (let ((__tmp283717
                                         (let ((__tmp283718
                                                (let ((__tmp283723
                                                       (let ((__tmp283724
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '##structure '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp283724)))
              (__tmp283719
               (let ((__tmp283720
                      (let ((__tmp283721
                             (let ((__tmp283722
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self278077_
                                       __id283139
                                       __t283138
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp283722 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp283721))))
                 (declare (not safe))
                 (cons __tmp283720 _args278085_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp283723
                                                        __tmp283719))))
                                           (declare (not safe))
                                           (cons '%#call __tmp283718))))
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp283717
                                     _stx278078_))
                                  (let ((__tmp283716
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _self278077_
                                            __id283139
                                            __t283138
                                            '#f)))
                                        (__tmp283715
                                         (length (##structure-ref
                                                  _klass278081_
                                                  '5
                                                  gxc#!class::t
                                                  '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _stx278078_
                                     __tmp283716
                                     __tmp283715)))
                              (let ((_$obj278110_
                                     (let ((__tmp283664 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp283664))))
                                (let _lp278112_ ((_rest278114_ _args278085_)
                                                 (_initializers278115_ '()))
                                  (let* ((___stx283254283255_ _rest278114_)
                                         (_g278119278140_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               ___stx283254283255_)))))
                                    (let ((___kont283256283257_
                                           (lambda (_L278194_
                                                    _L278195_
                                                    _L278196_)
                                             (let* ((_slot278227_
                                                     (keyword->symbol
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L278196_))))
                                                    (_off278229_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass278081_
                                                        _slot278227_))))
                                               (if _off278229_
                                                   (let ((__tmp283666
                                                          (let ((__tmp283667
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _off278229_ _L278195_))))
                    (declare (not safe))
                    (cons __tmp283667 _initializers278115_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp278112_
                                                      _L278194_
                                                      __tmp283666))
                                                   (let ((__tmp283665
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _self278077_
                                                             __id283139
                                                             __t283138
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"unknown slot"
                                                      _stx278078_
                                                      __tmp283665
                                                      _slot278227_))))))
                                          (___kont283258283259_
                                           (lambda ()
                                             (let ((__tmp283668
                                                    (let ((__tmp283669
                                                           (let ((__tmp283692
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp283693
                                 (let ((__tmp283695
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj278110_ '())))
                                       (__tmp283694
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object278087_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp283695 __tmp283694))))
                            (declare (not safe))
                            (cons __tmp283693 '())))
                         (__tmp283670
                          (let ((__tmp283671
                                 (let ((__tmp283672
                                        (let ((__tmp283689
                                               (let ((__tmp283690
                                                      (let ((__tmp283691
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj278110_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp283691))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp283690 '())))
                                              (__tmp283673
                                               (let ((__tmp283674
                                                      (lambda (_i278154_
                                                               _r278155_)
                                                        (let ((__tmp283675
                                                               (let ((__tmp283676
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp283686
                                     (let ((__tmp283687
                                            (let ((__tmp283688
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self278077_
                                                      __id283139
                                                      __t283138
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp283688 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp283687)))
                                    (__tmp283677
                                     (let ((__tmp283683
                                            (let ((__tmp283684
                                                   (let ((__tmp283685
                                                          (car _i278154_)))
                                                     (declare (not safe))
                                                     (cons __tmp283685 '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp283684)))
                                           (__tmp283678
                                            (let ((__tmp283681
                                                   (let ((__tmp283682
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj278110_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp283682)))
                                                  (__tmp283679
                                                   (let ((__tmp283680
                                                          (cdr _i278154_)))
                                                     (declare (not safe))
                                                     (cons __tmp283680 '()))))
                                              (declare (not safe))
                                              (cons __tmp283681 __tmp283679))))
                                       (declare (not safe))
                                       (cons __tmp283683 __tmp283678))))
                                (declare (not safe))
                                (cons __tmp283686 __tmp283677))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp283676))))
                  (declare (not safe))
                  (cons __tmp283675 _r278155_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl1 __tmp283674
                                                         '()
                                                         _initializers278115_))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp283689
                                                  __tmp283673))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp283672))))
                            (declare (not safe))
                            (cons __tmp283671 '()))))
                     (declare (not safe))
                     (cons __tmp283692 __tmp283670))))
              (declare (not safe))
              (cons '%#let-values __tmp283669))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp283668
                                                _stx278078_))))
                                          (___kont283260283261_
                                           (lambda ()
                                             (let ((__tmp283696
                                                    (let ((__tmp283697
                                                           (let ((__tmp283711
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp283712
                                 (let ((__tmp283714
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj278110_ '())))
                                       (__tmp283713
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object278087_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp283714 __tmp283713))))
                            (declare (not safe))
                            (cons __tmp283712 '())))
                         (__tmp283698
                          (let ((__tmp283699
                                 (let ((__tmp283700
                                        (let ((__tmp283704
                                               (let ((__tmp283705
                                                      (let ((__tmp283709
                                                             (let ((__tmp283710
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'class-instance-init! '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp283710)))
                    (__tmp283706
                     (let ((__tmp283707
                            (let ((__tmp283708
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj278110_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp283708))))
                       (declare (not safe))
                       (cons __tmp283707 _args278085_))))
                (declare (not safe))
                (cons __tmp283709 __tmp283706))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp283705)))
                                              (__tmp283701
                                               (let ((__tmp283702
                                                      (let ((__tmp283703
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj278110_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp283703))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp283702 '()))))
                                          (declare (not safe))
                                          (cons __tmp283704 __tmp283701))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp283700))))
                            (declare (not safe))
                            (cons __tmp283699 '()))))
                     (declare (not safe))
                     (cons __tmp283711 __tmp283698))))
              (declare (not safe))
              (cons '%#let-values __tmp283697))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp283696
                                                _stx278078_)))))
                                      (let* ((_g278117278157_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       ___stx283254283255_))
                                                    (___kont283258283259_)
                                                    (___kont283260283261_))))
                                             (___match283291283292_
                                              (lambda (_e278126278162_
                                                       _hd278125278165_
                                                       _tl278124278167_
                                                       _e278129278170_
                                                       _hd278128278173_
                                                       _tl278127278175_
                                                       _e278132278178_
                                                       _hd278131278181_
                                                       _tl278130278183_
                                                       _e278135278186_
                                                       _hd278134278189_
                                                       _tl278133278191_)
                                                (let ((_L278194_
                                                       _tl278133278191_)
                                                      (_L278195_
                                                       _hd278134278189_)
                                                      (_L278196_
                                                       _hd278131278181_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-keyword?
                                                         _L278196_))
                                                      (___kont283256283257_
                                                       _L278194_
                                                       _L278195_
                                                       _L278196_)
                                                      (___kont283260283261_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               ___stx283254283255_))
                                            (let ((_e278126278162_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      ___stx283254283255_))))
                                              (let ((_tl278124278167_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e278126278162_)))
                                                    (_hd278125278165_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e278126278162_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd278125278165_))
                                                    (let ((_e278129278170_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd278125278165_))))
                                                      (let ((_tl278127278175_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e278129278170_)))
                    (_hd278128278173_
                     (let () (declare (not safe)) (##car _e278129278170_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd278128278173_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd278128278173_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl278127278175_))
                            (let ((_e278132278178_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl278127278175_))))
                              (let ((_tl278130278183_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e278132278178_)))
                                    (_hd278131278181_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e278132278178_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl278130278183_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl278124278167_))
                                        (let ((_e278135278186_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl278124278167_))))
                                          (let ((_tl278133278191_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e278135278186_)))
                                                (_hd278134278189_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e278135278186_))))
                                            (___match283291283292_
                                             _e278126278162_
                                             _hd278125278165_
                                             _tl278124278167_
                                             _e278129278170_
                                             _hd278128278173_
                                             _tl278127278175_
                                             _e278132278178_
                                             _hd278131278181_
                                             _tl278130278183_
                                             _e278135278186_
                                             _hd278134278189_
                                             _tl278133278191_)))
                                        (___kont283260283261_))
                                    (___kont283260283261_))))
                            (___kont283260283261_))
                        (___kont283260283261_))
                    (___kont283260283261_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont283260283261_))))
                                            (let ()
                                              (declare (not safe))
                                              (_g278117278157_))))))))))))))))))
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
      (lambda (_self277900_ _stx277901_ _args277902_)
        (let* ((_g277904277914_
                (lambda (_g277905277911_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g277905277911_))))
               (_g277903277952_
                (lambda (_g277905277917_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g277905277917_))
                      (let ((_e277909277919_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g277905277917_))))
                        (let ((_hd277908277922_
                               (let ()
                                 (declare (not safe))
                                 (##car _e277909277919_)))
                              (_tl277907277924_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e277909277919_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl277907277924_))
                              ((lambda (_L277927_)
                                 (let* ((_klass277938_
                                         (let ((__tmp283837
                                                (##structure-ref
                                                 _self277900_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx277901_
                                            __tmp283837)))
                                        (_field277940_
                                         (let ((__tmp283838
                                                (##structure-ref
                                                 _self277900_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass277938_
                                            __tmp283838)))
                                        (_object277942_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L277927_))))
                                   (if (##structure-ref
                                        _klass277938_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp283915
                                              (let ((__tmp283924
                                                     (if (##structure-ref
                                                          _self277900_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp283916
                                                     (let ((__tmp283921
                                                            (let ((__tmp283922
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp283923
                                  (##structure-ref
                                   _self277900_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp283923 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp283922)))
                   (__tmp283917
                    (let ((__tmp283919
                           (let ((__tmp283920
                                  (let ()
                                    (declare (not safe))
                                    (cons _field277940_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp283920)))
                          (__tmp283918
                           (let ()
                             (declare (not safe))
                             (cons _object277942_ '()))))
                      (declare (not safe))
                      (cons __tmp283919 __tmp283918))))
               (declare (not safe))
               (cons __tmp283921 __tmp283917))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp283924
                                                      __tmp283916))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp283915
                                          _stx277901_))
                                       (if (##structure-ref
                                            _klass277938_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp283905
                                                  (let ((__tmp283914
                                                         (if (##structure-ref
                                                              _self277900_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp283906
                                                         (let ((__tmp283911
                                                                (let ((__tmp283912
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp283913
                                      (##structure-ref
                                       _self277900_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp283913 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp283912)))
                       (__tmp283907
                        (let ((__tmp283909
                               (let ((__tmp283910
                                      (let ()
                                        (declare (not safe))
                                        (cons _field277940_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp283910)))
                              (__tmp283908
                               (let ()
                                 (declare (not safe))
                                 (cons _object277942_ '()))))
                          (declare (not safe))
                          (cons __tmp283909 __tmp283908))))
                   (declare (not safe))
                   (cons __tmp283911 __tmp283907))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp283914
                                                          __tmp283906))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp283905
                                              _stx277901_))
                                           (let ((_$e277945_
                                                  (let ((__tmp283839
                                                         (##structure-ref
                                                          _self277900_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass277938_
                                                     __tmp283839))))
                                             (if _$e277945_
                                                 ((lambda (_klass277948_)
                                                    (let ((__tmp283895
                                                           (let ((__tmp283904
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self277900_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp283896
                          (let ((__tmp283901
                                 (let ((__tmp283902
                                        (let ((__tmp283903
                                               (##structure-ref
                                                _self277900_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp283903 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp283902)))
                                (__tmp283897
                                 (let ((__tmp283899
                                        (let ((__tmp283900
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field277940_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp283900)))
                                       (__tmp283898
                                        (let ()
                                          (declare (not safe))
                                          (cons _object277942_ '()))))
                                   (declare (not safe))
                                   (cons __tmp283899 __tmp283898))))
                            (declare (not safe))
                            (cons __tmp283901 __tmp283897))))
                     (declare (not safe))
                     (cons __tmp283904 __tmp283896))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp283895 _stx277901_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e277945_)
                                                 (if (##structure-ref
                                                      _self277900_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp283849
                                                            (let* ((_$obj277950_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp283850 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp283850)))
                           (__tmp283851
                            (let ((__tmp283891
                                   (let ((__tmp283892
                                          (let ((__tmp283894
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj277950_ '())))
                                                (__tmp283893
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object277942_ '()))))
                                            (declare (not safe))
                                            (cons __tmp283894 __tmp283893))))
                                     (declare (not safe))
                                     (cons __tmp283892 '())))
                                  (__tmp283852
                                   (let ((__tmp283853
                                          (let ((__tmp283854
                                                 (let ((__tmp283883
                                                        (let ((__tmp283884
                                                               (let ((__tmp283888
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp283889
                                     (let ((__tmp283890
                                            (##structure-ref
                                             _klass277938_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp283890 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp283889)))
                             (__tmp283885
                              (let ((__tmp283886
                                     (let ((__tmp283887
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj277950_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp283887))))
                                (declare (not safe))
                                (cons __tmp283886 '()))))
                         (declare (not safe))
                         (cons __tmp283888 __tmp283885))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp283884)))
               (__tmp283855
                (let ((__tmp283872
                       (let ((__tmp283873
                              (let ((__tmp283880
                                     (let ((__tmp283881
                                            (let ((__tmp283882
                                                   (##structure-ref
                                                    _self277900_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp283882 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp283881)))
                                    (__tmp283874
                                     (let ((__tmp283878
                                            (let ((__tmp283879
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field277940_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp283879)))
                                           (__tmp283875
                                            (let ((__tmp283876
                                                   (let ((__tmp283877
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj277950_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp283877))))
                                              (declare (not safe))
                                              (cons __tmp283876 '()))))
                                       (declare (not safe))
                                       (cons __tmp283878 __tmp283875))))
                                (declare (not safe))
                                (cons __tmp283880 __tmp283874))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp283873)))
                      (__tmp283856
                       (let ((__tmp283857
                              (let ((__tmp283858
                                     (let ((__tmp283870
                                            (let ((__tmp283871
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp283871)))
                                           (__tmp283859
                                            (let ((__tmp283867
                                                   (let ((__tmp283868
                                                          (let ((__tmp283869
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self277900_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp283869 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp283868)))
                                                  (__tmp283860
                                                   (let ((__tmp283865
                                                          (let ((__tmp283866
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj277950_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp283866)))
                 (__tmp283861
                  (let ((__tmp283862
                         (let ((__tmp283863
                                (let ((__tmp283864
                                       (##structure-ref
                                        _self277900_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp283864 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp283863))))
                    (declare (not safe))
                    (cons __tmp283862 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp283865
                                                           __tmp283861))))
                                              (declare (not safe))
                                              (cons __tmp283867 __tmp283860))))
                                       (declare (not safe))
                                       (cons __tmp283870 __tmp283859))))
                                (declare (not safe))
                                (cons '%#call __tmp283858))))
                         (declare (not safe))
                         (cons __tmp283857 '()))))
                  (declare (not safe))
                  (cons __tmp283872 __tmp283856))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp283883
                                                         __tmp283855))))
                                            (declare (not safe))
                                            (cons '%#if __tmp283854))))
                                     (declare (not safe))
                                     (cons __tmp283853 '()))))
                              (declare (not safe))
                              (cons __tmp283891 __tmp283852))))
                      (declare (not safe))
                      (cons '%#let-values __tmp283851))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp283849 _stx277901_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp283840
                                                            (let ((__tmp283841
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp283847
                                  (let ((__tmp283848
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp283848)))
                                 (__tmp283842
                                  (let ((__tmp283843
                                         (let ((__tmp283844
                                                (let ((__tmp283845
                                                       (let ((__tmp283846
                                                              (##structure-ref
                                                               _self277900_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp283846
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp283845))))
                                           (declare (not safe))
                                           (cons __tmp283844 '()))))
                                    (declare (not safe))
                                    (cons _object277942_ __tmp283843))))
                             (declare (not safe))
                             (cons __tmp283847 __tmp283842))))
                      (declare (not safe))
                      (cons '%#call __tmp283841))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp283840 _stx277901_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd277908277922_)
                              (let ()
                                (declare (not safe))
                                (_g277904277914_ _g277905277917_)))))
                      (let ()
                        (declare (not safe))
                        (_g277904277914_ _g277905277917_))))))
          (declare (not safe))
          (_g277903277952_ _args277902_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__t283141)
        (let ((__id283142
               (let ((__tmp283145
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t283141 'id))))
                 (if __tmp283145 __tmp283145 (error '"Unknown slot" 'id))))
              (__slot283143
               (let ((__tmp283146
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t283141 'slot))))
                 (if __tmp283146 __tmp283146 (error '"Unknown slot" 'slot))))
              (__checked?283144
               (let ((__tmp283147
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t283141 'checked?))))
                 (if __tmp283147
                     __tmp283147
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self277900_ _stx277901_ _args277902_)
            (let* ((_g277904277914_
                    (lambda (_g277905277911_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g277905277911_))))
                   (_g277903277952_
                    (lambda (_g277905277917_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g277905277917_))
                          (let ((_e277909277919_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g277905277917_))))
                            (let ((_hd277908277922_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e277909277919_)))
                                  (_tl277907277924_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e277909277919_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl277907277924_))
                                  ((lambda (_L277927_)
                                     (let* ((_klass277938_
                                             (let ((__tmp283925
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self277900_
                                                       __id283142
                                                       __t283141
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx277901_
                                                __tmp283925)))
                                            (_field277940_
                                             (let ((__tmp283926
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self277900_
                                                       __slot283143
                                                       __t283141
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass277938_
                                                __tmp283926)))
                                            (_object277942_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L277927_))))
                                       (if (##structure-ref
                                            _klass277938_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp284003
                                                  (let ((__tmp284012
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self277900_
                        __checked?283144
                        __t283141
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp284004
                 (let ((__tmp284009
                        (let ((__tmp284010
                               (let ((__tmp284011
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self277900_
                                         __id283142
                                         __t283141
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp284011 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp284010)))
                       (__tmp284005
                        (let ((__tmp284007
                               (let ((__tmp284008
                                      (let ()
                                        (declare (not safe))
                                        (cons _field277940_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp284008)))
                              (__tmp284006
                               (let ()
                                 (declare (not safe))
                                 (cons _object277942_ '()))))
                          (declare (not safe))
                          (cons __tmp284007 __tmp284006))))
                   (declare (not safe))
                   (cons __tmp284009 __tmp284005))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp284012
                                                          __tmp284004))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp284003
                                              _stx277901_))
                                           (if (##structure-ref
                                                _klass277938_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp283993
                                                      (let ((__tmp284002
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self277900_
                            __checked?283144
                            __t283141
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp283994
                     (let ((__tmp283999
                            (let ((__tmp284000
                                   (let ((__tmp284001
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self277900_
                                             __id283142
                                             __t283141
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp284001 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp284000)))
                           (__tmp283995
                            (let ((__tmp283997
                                   (let ((__tmp283998
                                          (let ()
                                            (declare (not safe))
                                            (cons _field277940_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp283998)))
                                  (__tmp283996
                                   (let ()
                                     (declare (not safe))
                                     (cons _object277942_ '()))))
                              (declare (not safe))
                              (cons __tmp283997 __tmp283996))))
                       (declare (not safe))
                       (cons __tmp283999 __tmp283995))))
                (declare (not safe))
                (cons __tmp284002 __tmp283994))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp283993
                                                  _stx277901_))
                                               (let ((_$e277945_
                                                      (let ((__tmp283927
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self277900_
                        __slot283143
                        __t283141
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass277938_ __tmp283927))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e277945_
                                                     ((lambda (_klass277948_)
                                                        (let ((__tmp283983
                                                               (let ((__tmp283992
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self277900_
                                     __checked?283144
                                     __t283141
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp283984
                              (let ((__tmp283989
                                     (let ((__tmp283990
                                            (let ((__tmp283991
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self277900_
                                                      __id283142
                                                      __t283141
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp283991 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp283990)))
                                    (__tmp283985
                                     (let ((__tmp283987
                                            (let ((__tmp283988
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field277940_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp283988)))
                                           (__tmp283986
                                            (let ()
                                              (declare (not safe))
                                              (cons _object277942_ '()))))
                                       (declare (not safe))
                                       (cons __tmp283987 __tmp283986))))
                                (declare (not safe))
                                (cons __tmp283989 __tmp283985))))
                         (declare (not safe))
                         (cons __tmp283992 __tmp283984))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp283983 _stx277901_)))
              _$e277945_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self277900_
                                                            __checked?283144
                                                            __t283141
                                                            '#f))
                                                         (let ((__tmp283937
                                                                (let* ((_$obj277950_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp283938 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp283938)))
                               (__tmp283939
                                (let ((__tmp283979
                                       (let ((__tmp283980
                                              (let ((__tmp283982
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj277950_
                                                             '())))
                                                    (__tmp283981
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object277942_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp283982
                                                      __tmp283981))))
                                         (declare (not safe))
                                         (cons __tmp283980 '())))
                                      (__tmp283940
                                       (let ((__tmp283941
                                              (let ((__tmp283942
                                                     (let ((__tmp283971
                                                            (let ((__tmp283972
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp283976
                                  (let ((__tmp283977
                                         (let ((__tmp283978
                                                (##structure-ref
                                                 _klass277938_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp283978 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp283977)))
                                 (__tmp283973
                                  (let ((__tmp283974
                                         (let ((__tmp283975
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj277950_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp283975))))
                                    (declare (not safe))
                                    (cons __tmp283974 '()))))
                             (declare (not safe))
                             (cons __tmp283976 __tmp283973))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp283972)))
                   (__tmp283943
                    (let ((__tmp283960
                           (let ((__tmp283961
                                  (let ((__tmp283968
                                         (let ((__tmp283969
                                                (let ((__tmp283970
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self277900_
                                                          __id283142
                                                          __t283141
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp283970 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp283969)))
                                        (__tmp283962
                                         (let ((__tmp283966
                                                (let ((__tmp283967
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field277940_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp283967)))
                                               (__tmp283963
                                                (let ((__tmp283964
                                                       (let ((__tmp283965
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj277950_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp283965))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp283964 '()))))
                                           (declare (not safe))
                                           (cons __tmp283966 __tmp283963))))
                                    (declare (not safe))
                                    (cons __tmp283968 __tmp283962))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp283961)))
                          (__tmp283944
                           (let ((__tmp283945
                                  (let ((__tmp283946
                                         (let ((__tmp283958
                                                (let ((__tmp283959
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp283959)))
                                               (__tmp283947
                                                (let ((__tmp283955
                                                       (let ((__tmp283956
                                                              (let ((__tmp283957
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self277900_
                                __id283142
                                __t283141
                                '#f))))
                        (declare (not safe))
                        (cons __tmp283957 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp283956)))
              (__tmp283948
               (let ((__tmp283953
                      (let ((__tmp283954
                             (let ()
                               (declare (not safe))
                               (cons _$obj277950_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp283954)))
                     (__tmp283949
                      (let ((__tmp283950
                             (let ((__tmp283951
                                    (let ((__tmp283952
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self277900_
                                              __slot283143
                                              __t283141
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp283952 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp283951))))
                        (declare (not safe))
                        (cons __tmp283950 '()))))
                 (declare (not safe))
                 (cons __tmp283953 __tmp283949))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp283955
                                                        __tmp283948))))
                                           (declare (not safe))
                                           (cons __tmp283958 __tmp283947))))
                                    (declare (not safe))
                                    (cons '%#call __tmp283946))))
                             (declare (not safe))
                             (cons __tmp283945 '()))))
                      (declare (not safe))
                      (cons __tmp283960 __tmp283944))))
               (declare (not safe))
               (cons __tmp283971 __tmp283943))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp283942))))
                                         (declare (not safe))
                                         (cons __tmp283941 '()))))
                                  (declare (not safe))
                                  (cons __tmp283979 __tmp283940))))
                          (declare (not safe))
                          (cons '%#let-values __tmp283939))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp283937 _stx277901_))
                 (let ((__tmp283928
                        (let ((__tmp283929
                               (let ((__tmp283935
                                      (let ((__tmp283936
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp283936)))
                                     (__tmp283930
                                      (let ((__tmp283931
                                             (let ((__tmp283932
                                                    (let ((__tmp283933
                                                           (let ((__tmp283934
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self277900_
                             __slot283143
                             __t283141
                             '#f))))
                     (declare (not safe))
                     (cons __tmp283934 '()))))
              (declare (not safe))
              (cons '%#quote __tmp283933))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp283932 '()))))
                                        (declare (not safe))
                                        (cons _object277942_ __tmp283931))))
                                 (declare (not safe))
                                 (cons __tmp283935 __tmp283930))))
                          (declare (not safe))
                          (cons '%#call __tmp283929))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp283928 _stx277901_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd277908277922_)
                                  (let ()
                                    (declare (not safe))
                                    (_g277904277914_ _g277905277917_)))))
                          (let ()
                            (declare (not safe))
                            (_g277904277914_ _g277905277917_))))))
              (declare (not safe))
              (_g277903277952_ _args277902_))))))
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
      (lambda (_self277705_ _stx277706_ _args277707_)
        (let* ((_g277709277723_
                (lambda (_g277710277720_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g277710277720_))))
               (_g277708277775_
                (lambda (_g277710277726_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g277710277726_))
                      (let ((_e277715277728_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g277710277726_))))
                        (let ((_hd277714277731_
                               (let ()
                                 (declare (not safe))
                                 (##car _e277715277728_)))
                              (_tl277713277733_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e277715277728_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl277713277733_))
                              (let ((_e277718277736_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl277713277733_))))
                                (let ((_hd277717277739_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e277718277736_)))
                                      (_tl277716277741_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e277718277736_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl277716277741_))
                                      ((lambda (_L277744_ _L277745_)
                                         (let* ((_klass277759_
                                                 (let ((__tmp284013
                                                        (##structure-ref
                                                         _self277705_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx277706_
                                                    __tmp284013)))
                                                (_field277761_
                                                 (let ((__tmp284014
                                                        (##structure-ref
                                                         _self277705_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass277759_
                                                    __tmp284014)))
                                                (_object277763_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L277745_)))
                                                (_value277765_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L277744_))))
                                           (if (##structure-ref
                                                _klass277759_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp284096
                                                      (let ((__tmp284106
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self277705_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp284097
                     (let ((__tmp284103
                            (let ((__tmp284104
                                   (let ((__tmp284105
                                          (##structure-ref
                                           _self277705_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp284105 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp284104)))
                           (__tmp284098
                            (let ((__tmp284101
                                   (let ((__tmp284102
                                          (let ()
                                            (declare (not safe))
                                            (cons _field277761_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp284102)))
                                  (__tmp284099
                                   (let ((__tmp284100
                                          (let ()
                                            (declare (not safe))
                                            (cons _value277765_ '()))))
                                     (declare (not safe))
                                     (cons _object277763_ __tmp284100))))
                              (declare (not safe))
                              (cons __tmp284101 __tmp284099))))
                       (declare (not safe))
                       (cons __tmp284103 __tmp284098))))
                (declare (not safe))
                (cons __tmp284106 __tmp284097))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp284096
                                                  _stx277706_))
                                               (if (##structure-ref
                                                    _klass277759_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp284085
                                                          (let ((__tmp284095
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self277705_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp284086
                         (let ((__tmp284092
                                (let ((__tmp284093
                                       (let ((__tmp284094
                                              (##structure-ref
                                               _self277705_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp284094 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp284093)))
                               (__tmp284087
                                (let ((__tmp284090
                                       (let ((__tmp284091
                                              (let ()
                                                (declare (not safe))
                                                (cons _field277761_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp284091)))
                                      (__tmp284088
                                       (let ((__tmp284089
                                              (let ()
                                                (declare (not safe))
                                                (cons _value277765_ '()))))
                                         (declare (not safe))
                                         (cons _object277763_ __tmp284089))))
                                  (declare (not safe))
                                  (cons __tmp284090 __tmp284088))))
                           (declare (not safe))
                           (cons __tmp284092 __tmp284087))))
                    (declare (not safe))
                    (cons __tmp284095 __tmp284086))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp284085
                                                      _stx277706_))
                                                   (let ((_$e277768_
                                                          (let ((__tmp284015
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self277705_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass277759_ __tmp284015))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e277768_
                                                         ((lambda (_klass277771_)
                                                            (let ((__tmp284074
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp284084
                                  (if (##structure-ref
                                       _self277705_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp284075
                                  (let ((__tmp284081
                                         (let ((__tmp284082
                                                (let ((__tmp284083
                                                       (##structure-ref
                                                        _self277705_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp284083 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp284082)))
                                        (__tmp284076
                                         (let ((__tmp284079
                                                (let ((__tmp284080
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field277761_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp284080)))
                                               (__tmp284077
                                                (let ((__tmp284078
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value277765_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object277763_
                                                        __tmp284078))))
                                           (declare (not safe))
                                           (cons __tmp284079 __tmp284077))))
                                    (declare (not safe))
                                    (cons __tmp284081 __tmp284076))))
                             (declare (not safe))
                             (cons __tmp284084 __tmp284075))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp284074 _stx277706_)))
                  _$e277768_)
                 (if (##structure-ref _self277705_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp284026
                            (let* ((_$obj277773_
                                    (let ((__tmp284027 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp284027)))
                                   (__tmp284028
                                    (let ((__tmp284070
                                           (let ((__tmp284071
                                                  (let ((__tmp284073
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj277773_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp284072
                 (let () (declare (not safe)) (cons _object277763_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp284073
                                                          __tmp284072))))
                                             (declare (not safe))
                                             (cons __tmp284071 '())))
                                          (__tmp284029
                                           (let ((__tmp284030
                                                  (let ((__tmp284031
                                                         (let ((__tmp284062
                                                                (let ((__tmp284063
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp284067
                                      (let ((__tmp284068
                                             (let ((__tmp284069
                                                    (##structure-ref
                                                     _klass277759_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp284069 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp284068)))
                                     (__tmp284064
                                      (let ((__tmp284065
                                             (let ((__tmp284066
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj277773_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp284066))))
                                        (declare (not safe))
                                        (cons __tmp284065 '()))))
                                 (declare (not safe))
                                 (cons __tmp284067 __tmp284064))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp284063)))
                       (__tmp284032
                        (let ((__tmp284050
                               (let ((__tmp284051
                                      (let ((__tmp284059
                                             (let ((__tmp284060
                                                    (let ((__tmp284061
                                                           (##structure-ref
                                                            _self277705_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp284061 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp284060)))
                                            (__tmp284052
                                             (let ((__tmp284057
                                                    (let ((__tmp284058
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field277761_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp284058)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp284053
                                                    (let ((__tmp284055
                                                           (let ((__tmp284056
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj277773_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp284056)))
                  (__tmp284054
                   (let () (declare (not safe)) (cons _value277765_ '()))))
              (declare (not safe))
              (cons __tmp284055 __tmp284054))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp284057
                                                     __tmp284053))))
                                        (declare (not safe))
                                        (cons __tmp284059 __tmp284052))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp284051)))
                              (__tmp284033
                               (let ((__tmp284034
                                      (let ((__tmp284035
                                             (let ((__tmp284048
                                                    (let ((__tmp284049
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp284049)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp284036
                                                    (let ((__tmp284045
                                                           (let ((__tmp284046
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp284047
                                 (##structure-ref
                                  _self277705_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp284047 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp284046)))
                  (__tmp284037
                   (let ((__tmp284043
                          (let ((__tmp284044
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj277773_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp284044)))
                         (__tmp284038
                          (let ((__tmp284040
                                 (let ((__tmp284041
                                        (let ((__tmp284042
                                               (##structure-ref
                                                _self277705_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp284042 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp284041)))
                                (__tmp284039
                                 (let ()
                                   (declare (not safe))
                                   (cons _value277765_ '()))))
                            (declare (not safe))
                            (cons __tmp284040 __tmp284039))))
                     (declare (not safe))
                     (cons __tmp284043 __tmp284038))))
              (declare (not safe))
              (cons __tmp284045 __tmp284037))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp284048
                                                     __tmp284036))))
                                        (declare (not safe))
                                        (cons '%#call __tmp284035))))
                                 (declare (not safe))
                                 (cons __tmp284034 '()))))
                          (declare (not safe))
                          (cons __tmp284050 __tmp284033))))
                   (declare (not safe))
                   (cons __tmp284062 __tmp284032))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp284031))))
                                             (declare (not safe))
                                             (cons __tmp284030 '()))))
                                      (declare (not safe))
                                      (cons __tmp284070 __tmp284029))))
                              (declare (not safe))
                              (cons '%#let-values __tmp284028))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp284026 _stx277706_))
                     (let ((__tmp284016
                            (let ((__tmp284017
                                   (let ((__tmp284024
                                          (let ((__tmp284025
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp284025)))
                                         (__tmp284018
                                          (let ((__tmp284019
                                                 (let ((__tmp284021
                                                        (let ((__tmp284022
                                                               (let ((__tmp284023
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self277705_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp284023 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp284022)))
               (__tmp284020
                (let () (declare (not safe)) (cons _value277765_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp284021
                                                         __tmp284020))))
                                            (declare (not safe))
                                            (cons _object277763_
                                                  __tmp284019))))
                                     (declare (not safe))
                                     (cons __tmp284024 __tmp284018))))
                              (declare (not safe))
                              (cons '%#call __tmp284017))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp284016 _stx277706_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd277717277739_
                                       _hd277714277731_)
                                      (let ()
                                        (declare (not safe))
                                        (_g277709277723_ _g277710277726_)))))
                              (let ()
                                (declare (not safe))
                                (_g277709277723_ _g277710277726_)))))
                      (let ()
                        (declare (not safe))
                        (_g277709277723_ _g277710277726_))))))
          (declare (not safe))
          (_g277708277775_ _args277707_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__t283148)
        (let ((__id283149
               (let ((__tmp283152
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t283148 'id))))
                 (if __tmp283152 __tmp283152 (error '"Unknown slot" 'id))))
              (__slot283150
               (let ((__tmp283153
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t283148 'slot))))
                 (if __tmp283153 __tmp283153 (error '"Unknown slot" 'slot))))
              (__checked?283151
               (let ((__tmp283154
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t283148 'checked?))))
                 (if __tmp283154
                     __tmp283154
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self277705_ _stx277706_ _args277707_)
            (let* ((_g277709277723_
                    (lambda (_g277710277720_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g277710277720_))))
                   (_g277708277775_
                    (lambda (_g277710277726_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g277710277726_))
                          (let ((_e277715277728_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g277710277726_))))
                            (let ((_hd277714277731_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e277715277728_)))
                                  (_tl277713277733_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e277715277728_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl277713277733_))
                                  (let ((_e277718277736_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl277713277733_))))
                                    (let ((_hd277717277739_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e277718277736_)))
                                          (_tl277716277741_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e277718277736_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl277716277741_))
                                          ((lambda (_L277744_ _L277745_)
                                             (let* ((_klass277759_
                                                     (let ((__tmp284107
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self277705_
                                                               __id283149
                                                               __t283148
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx277706_
                                                        __tmp284107)))
                                                    (_field277761_
                                                     (let ((__tmp284108
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self277705_
                                                               __slot283150
                                                               __t283148
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass277759_
                                                        __tmp284108)))
                                                    (_object277763_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L277745_)))
                                                    (_value277765_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L277744_))))
                                               (if (##structure-ref
                                                    _klass277759_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp284190
                                                          (let ((__tmp284200
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self277705_
                                __checked?283151
                                __t283148
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp284191
                         (let ((__tmp284197
                                (let ((__tmp284198
                                       (let ((__tmp284199
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self277705_
                                                 __id283149
                                                 __t283148
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp284199 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp284198)))
                               (__tmp284192
                                (let ((__tmp284195
                                       (let ((__tmp284196
                                              (let ()
                                                (declare (not safe))
                                                (cons _field277761_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp284196)))
                                      (__tmp284193
                                       (let ((__tmp284194
                                              (let ()
                                                (declare (not safe))
                                                (cons _value277765_ '()))))
                                         (declare (not safe))
                                         (cons _object277763_ __tmp284194))))
                                  (declare (not safe))
                                  (cons __tmp284195 __tmp284193))))
                           (declare (not safe))
                           (cons __tmp284197 __tmp284192))))
                    (declare (not safe))
                    (cons __tmp284200 __tmp284191))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp284190
                                                      _stx277706_))
                                                   (if (##structure-ref
                                                        _klass277759_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp284179
                                                              (let ((__tmp284189
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self277705_
                                    __checked?283151
                                    __t283148
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp284180
                             (let ((__tmp284186
                                    (let ((__tmp284187
                                           (let ((__tmp284188
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self277705_
                                                     __id283149
                                                     __t283148
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp284188 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp284187)))
                                   (__tmp284181
                                    (let ((__tmp284184
                                           (let ((__tmp284185
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field277761_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp284185)))
                                          (__tmp284182
                                           (let ((__tmp284183
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value277765_ '()))))
                                             (declare (not safe))
                                             (cons _object277763_
                                                   __tmp284183))))
                                      (declare (not safe))
                                      (cons __tmp284184 __tmp284182))))
                               (declare (not safe))
                               (cons __tmp284186 __tmp284181))))
                        (declare (not safe))
                        (cons __tmp284189 __tmp284180))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp284179 _stx277706_))
               (let ((_$e277768_
                      (let ((__tmp284109
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self277705_
                                __slot283150
                                __t283148
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass277759_
                         __tmp284109))))
                 (if _$e277768_
                     ((lambda (_klass277771_)
                        (let ((__tmp284168
                               (let ((__tmp284178
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self277705_
                                             __checked?283151
                                             __t283148
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp284169
                                      (let ((__tmp284175
                                             (let ((__tmp284176
                                                    (let ((__tmp284177
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self277705_
                                                              __id283149
                                                              __t283148
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp284177 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp284176)))
                                            (__tmp284170
                                             (let ((__tmp284173
                                                    (let ((__tmp284174
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field277761_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp284174)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp284171
                                                    (let ((__tmp284172
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value277765_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object277763_ __tmp284172))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp284173
                                                     __tmp284171))))
                                        (declare (not safe))
                                        (cons __tmp284175 __tmp284170))))
                                 (declare (not safe))
                                 (cons __tmp284178 __tmp284169))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp284168 _stx277706_)))
                      _$e277768_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self277705_
                            __checked?283151
                            __t283148
                            '#f))
                         (let ((__tmp284120
                                (let* ((_$obj277773_
                                        (let ((__tmp284121 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp284121)))
                                       (__tmp284122
                                        (let ((__tmp284164
                                               (let ((__tmp284165
                                                      (let ((__tmp284167
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj277773_ '())))
                    (__tmp284166
                     (let () (declare (not safe)) (cons _object277763_ '()))))
                (declare (not safe))
                (cons __tmp284167 __tmp284166))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp284165 '())))
                                              (__tmp284123
                                               (let ((__tmp284124
                                                      (let ((__tmp284125
                                                             (let ((__tmp284156
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp284157
                                   (let ((__tmp284161
                                          (let ((__tmp284162
                                                 (let ((__tmp284163
                                                        (##structure-ref
                                                         _klass277759_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp284163 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp284162)))
                                         (__tmp284158
                                          (let ((__tmp284159
                                                 (let ((__tmp284160
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj277773_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp284160))))
                                            (declare (not safe))
                                            (cons __tmp284159 '()))))
                                     (declare (not safe))
                                     (cons __tmp284161 __tmp284158))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp284157)))
                           (__tmp284126
                            (let ((__tmp284144
                                   (let ((__tmp284145
                                          (let ((__tmp284153
                                                 (let ((__tmp284154
                                                        (let ((__tmp284155
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self277705_
                          __id283149
                          __t283148
                          '#f))))
                  (declare (not safe))
                  (cons __tmp284155 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp284154)))
                                                (__tmp284146
                                                 (let ((__tmp284151
                                                        (let ((__tmp284152
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field277761_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp284152)))
               (__tmp284147
                (let ((__tmp284149
                       (let ((__tmp284150
                              (let ()
                                (declare (not safe))
                                (cons _$obj277773_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp284150)))
                      (__tmp284148
                       (let () (declare (not safe)) (cons _value277765_ '()))))
                  (declare (not safe))
                  (cons __tmp284149 __tmp284148))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp284151
                                                         __tmp284147))))
                                            (declare (not safe))
                                            (cons __tmp284153 __tmp284146))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp284145)))
                                  (__tmp284127
                                   (let ((__tmp284128
                                          (let ((__tmp284129
                                                 (let ((__tmp284142
                                                        (let ((__tmp284143
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp284143)))
               (__tmp284130
                (let ((__tmp284139
                       (let ((__tmp284140
                              (let ((__tmp284141
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self277705_
                                        __id283149
                                        __t283148
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp284141 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp284140)))
                      (__tmp284131
                       (let ((__tmp284137
                              (let ((__tmp284138
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj277773_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp284138)))
                             (__tmp284132
                              (let ((__tmp284134
                                     (let ((__tmp284135
                                            (let ((__tmp284136
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self277705_
                                                      __slot283150
                                                      __t283148
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp284136 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp284135)))
                                    (__tmp284133
                                     (let ()
                                       (declare (not safe))
                                       (cons _value277765_ '()))))
                                (declare (not safe))
                                (cons __tmp284134 __tmp284133))))
                         (declare (not safe))
                         (cons __tmp284137 __tmp284132))))
                  (declare (not safe))
                  (cons __tmp284139 __tmp284131))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp284142
                                                         __tmp284130))))
                                            (declare (not safe))
                                            (cons '%#call __tmp284129))))
                                     (declare (not safe))
                                     (cons __tmp284128 '()))))
                              (declare (not safe))
                              (cons __tmp284144 __tmp284127))))
                       (declare (not safe))
                       (cons __tmp284156 __tmp284126))))
                (declare (not safe))
                (cons '%#if __tmp284125))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp284124 '()))))
                                          (declare (not safe))
                                          (cons __tmp284164 __tmp284123))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp284122))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp284120 _stx277706_))
                         (let ((__tmp284110
                                (let ((__tmp284111
                                       (let ((__tmp284118
                                              (let ((__tmp284119
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp284119)))
                                             (__tmp284112
                                              (let ((__tmp284113
                                                     (let ((__tmp284115
                                                            (let ((__tmp284116
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp284117
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self277705_
                                     __slot283150
                                     __t283148
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp284117 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp284116)))
                   (__tmp284114
                    (let () (declare (not safe)) (cons _value277765_ '()))))
               (declare (not safe))
               (cons __tmp284115 __tmp284114))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object277763_
                                                      __tmp284113))))
                                         (declare (not safe))
                                         (cons __tmp284118 __tmp284112))))
                                  (declare (not safe))
                                  (cons '%#call __tmp284111))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp284110
                            _stx277706_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd277717277739_
                                           _hd277714277731_)
                                          (let ()
                                            (declare (not safe))
                                            (_g277709277723_
                                             _g277710277726_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g277709277723_ _g277710277726_)))))
                          (let ()
                            (declare (not safe))
                            (_g277709277723_ _g277710277726_))))))
              (declare (not safe))
              (_g277708277775_ _args277707_))))))
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
      (lambda (_self277539_ _stx277540_ _args277541_)
        (let* ((_self277542277551_ _self277539_)
               (_E277544277555_
                (lambda () (error '"No clause matching" _self277542277551_)))
               (_K277545277562_
                (lambda (_inline277558_ _dispatch277559_ _arity277560_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self277539_ _args277541_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx277540_
                         _arity277560_)))
                  (if _inline277558_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp284206
                               (let ((__tmp284207
                                      (_inline277558_ _stx277540_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp284207
                                  _stx277540_))))
                          (declare (not safe))
                          (gxc#compile-e__0 __tmp284206)))
                      (if _dispatch277559_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch277559_))
                            (let ((__tmp284201
                                   (let ((__tmp284202
                                          (let ((__tmp284203
                                                 (let ((__tmp284204
                                                        (let ((__tmp284205
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch277559_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp284205))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp284204
                                                         _args277541_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp284203))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp284202
                                      _stx277540_))))
                              (declare (not safe))
                              (gxc#compile-e__0 __tmp284201)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _stx277540_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self277542277551_ 'gxc#!lambda::t))
              (let* ((_e277546277565_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self277542277551_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e277547277568_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self277542277551_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity277571_ _e277547277568_)
                     (_e277548277573_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self277542277551_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch277576_ _e277548277573_)
                     (_e277549277578_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self277542277551_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline277581_ _e277549277578_))
                (declare (not safe))
                (_K277545277562_
                 _inline277581_
                 _dispatch277576_
                 _arity277571_))
              (let () (declare (not safe)) (_E277544277555_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self277378_ _stx277379_ _args277380_)
        (let* ((_self277381277388_ _self277378_)
               (_E277383277392_
                (lambda () (error '"No clause matching" _self277381277388_)))
               (_K277384277406_
                (lambda (_clauses277395_)
                  (let ((_$e277401_
                         (let ((__tmp284208
                                (lambda (_g277396277398_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g277396277398_
                                     _args277380_)))))
                           (declare (not safe))
                           (find __tmp284208 _clauses277395_))))
                    (if _$e277401_
                        ((lambda (_clause277404_)
                           (let ((__method283423
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause277404_
                                     'optimize-call))))
                             (if __method283423
                                 (__method283423
                                  _clause277404_
                                  _stx277379_
                                  _args277380_)
                                 (error '"Missing method"
                                        _clause277404_
                                        'optimize-call))))
                         _$e277401_)
                        (let ((__tmp284209
                               (map gxc#!lambda-arity _clauses277395_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx277379_
                           __tmp284209)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self277381277388_
                 'gxc#!case-lambda::t))
              (let* ((_e277385277409_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self277381277388_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e277386277412_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self277381277388_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses277415_ _e277386277412_))
                (declare (not safe))
                (_K277384277406_ _clauses277415_))
              (let () (declare (not safe)) (_E277383277392_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self277192_ _args277193_)
        (let* ((_self277194277201_ _self277192_)
               (_E277196277205_
                (lambda () (error '"No clause matching" _self277194277201_)))
               (_K277197277245_
                (lambda (_arity277208_)
                  (let* ((_arity277209277218_ _arity277208_)
                         (_E277212277222_
                          (lambda ()
                            (error '"No clause matching"
                                   _arity277209277218_))))
                    (let ((_K277216277242_
                           (lambda ()
                             (fx= (length _args277193_) _arity277208_)))
                          (_K277213277228_
                           (lambda (_arity277226_)
                             (fx>= (length _args277193_) _arity277226_))))
                      (let ((_try-match277211277238_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity277209277218_))
                                   (let ((_tl277215277233_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity277209277218_)))
                                         (_hd277214277231_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity277209277218_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl277215277233_))
                                         (let ((_arity277236_
                                                _hd277214277231_))
                                           (declare (not safe))
                                           (_K277213277228_ _arity277236_))
                                         (let ()
                                           (declare (not safe))
                                           (_E277212277222_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E277212277222_))))))
                        (if (fixnum? _arity277209277218_)
                            (let () (declare (not safe)) (_K277216277242_))
                            (let ()
                              (declare (not safe))
                              (_try-match277211277238_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self277194277201_ 'gxc#!lambda::t))
              (let* ((_e277198277248_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self277194277201_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e277199277251_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self277194277201_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity277254_ _e277199277251_))
                (declare (not safe))
                (_K277197277245_ _arity277254_))
              (let () (declare (not safe)) (_E277196277205_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self277077_ _stx277078_ _args277079_)
        (let* ((_self277080277088_ _self277077_)
               (_E277082277092_
                (lambda () (error '"No clause matching" _self277080277088_)))
               (_K277083277176_
                (lambda (_dispatch277095_ _table277096_)
                  (let* ((_g277097277106_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch277095_)))
                         (_else277099277114_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch277095_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _stx277078_))))
                         (_K277101277160_
                          (lambda (_main277117_ _keys277118_)
                            (let ((_g284210_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx277078_
                                      _args277079_))))
                              (begin
                                (let ((_g284211_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g284210_)
                                             (##vector-length _g284210_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g284211_ 2)))
                                      (error "Context expects 2 values"
                                             _g284211_)))
                                (let ((_pargs277120_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g284210_ 0)))
                                      (_kwargs277121_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g284210_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main277117_))
                                    (if _table277096_
                                        (let ((_xargs277128_
                                               (map (lambda (_key277123_)
                                                      (let ((_$e277125_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _key277123_ _kwargs277121_))))
                (if _$e277125_ (values _$e277125_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys277118_)))
                                          (for-each
                                           (lambda (_kw277130_)
                                             (if (memq (car _kw277130_)
                                                       _keys277118_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx277078_
                                                    _keys277118_
                                                    _kw277130_))))
                                           _kwargs277121_)
                                          (let ((__tmp284263
                                                 (let ((__tmp284264
                                                        (let ((__tmp284265
                                                               (let ((__tmp284270
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp284271
                                     (let ()
                                       (declare (not safe))
                                       (cons _main277117_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp284271)))
                             (__tmp284266
                              (let ((__tmp284268
                                     (let ((__tmp284269
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp284269)))
                                    (__tmp284267
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs277120_
                                               _xargs277128_))))
                                (declare (not safe))
                                (cons __tmp284268 __tmp284267))))
                         (declare (not safe))
                         (cons __tmp284270 __tmp284266))))
                  (declare (not safe))
                  (cons '%#call __tmp284265))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp284264
                                                    _stx277078_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0 __tmp284263)))
                                        (let* ((_kwt277132_
                                                (let ((__tmp284212
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp284212)))
                                               (_kwvars277135_
                                                (map (lambda (_g284213_)
                                                       (let ((__tmp284214
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp284214)))
                                                     _kwargs277121_))
                                               (_kwbind277140_
                                                (map (lambda (_kw277137_
                                                              _kwvar277138_)
                                                       (let ((__tmp284217
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar277138_ '())))
                     (__tmp284215
                      (let ((__tmp284216 (cdr _kw277137_)))
                        (declare (not safe))
                        (cons __tmp284216 '()))))
                 (declare (not safe))
                 (cons __tmp284217 __tmp284215)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs277121_
                                                     _kwvars277135_))
                                               (_kwset277145_
                                                (map (lambda (_kw277142_
                                                              _kwvar277143_)
                                                       (let ((__tmp284218
                                                              (let ((__tmp284219
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp284227
                                    (let ((__tmp284228
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt277132_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp284228)))
                                   (__tmp284220
                                    (let ((__tmp284224
                                           (let ((__tmp284225
                                                  (let ((__tmp284226
                                                         (car _kw277142_)))
                                                    (declare (not safe))
                                                    (cons __tmp284226 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp284225)))
                                          (__tmp284221
                                           (let ((__tmp284222
                                                  (let ((__tmp284223
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar277143_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp284223))))
                                             (declare (not safe))
                                             (cons __tmp284222 '()))))
                                      (declare (not safe))
                                      (cons __tmp284224 __tmp284221))))
                               (declare (not safe))
                               (cons __tmp284227 __tmp284220))))
                        (declare (not safe))
                        (cons '(%#ref hash-put!) __tmp284219))))
                 (declare (not safe))
                 (cons '%#call __tmp284218)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs277121_
                                                     _kwvars277135_))
                                               (_xkwargs277150_
                                                (map (lambda (_kw277147_
                                                              _kwvar277148_)
                                                       (let ((__tmp284231
                                                              (car _kw277147_))
                                                             (__tmp284229
                                                              (let ((__tmp284230
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar277148_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp284230))))
                 (declare (not safe))
                 (cons __tmp284231 __tmp284229)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs277121_
                                                     _kwvars277135_))
                                               (_xargs277157_
                                                (map (lambda (_key277152_)
                                                       (let ((_$e277154_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq _key277152_ _xkwargs277150_))))
                 (if _$e277154_ (values _$e277154_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys277118_)))
                                          (let ((__tmp284232
                                                 (let ((__tmp284233
                                                        (let ((__tmp284234
                                                               (let ((__tmp284235
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp284236
                                     (let ((__tmp284237
                                            (let ((__tmp284251
                                                   (let ((__tmp284252
                                                          (let ((__tmp284262
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt277132_ '())))
                        (__tmp284253
                         (let ((__tmp284254
                                (let ((__tmp284255
                                       (let ((__tmp284256
                                              (let ((__tmp284257
                                                     (let ((__tmp284258
                                                            (let ((__tmp284259
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp284260
                                  (let ((__tmp284261 (length _kwargs277121_)))
                                    (declare (not safe))
                                    (cons __tmp284261 '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp284260))))
                      (declare (not safe))
                      (cons __tmp284259 '()))))
               (declare (not safe))
               (cons '(%#quote size:) __tmp284258))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-hash-table-eq)
                                                      __tmp284257))))
                                         (declare (not safe))
                                         (cons '%#call __tmp284256))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp284255
                                   _stx277078_))))
                           (declare (not safe))
                           (cons __tmp284254 '()))))
                    (declare (not safe))
                    (cons __tmp284262 __tmp284253))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp284252 '())))
                                                  (__tmp284238
                                                   (let ((__tmp284239
                                                          (let ((__tmp284240
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp284241
                                (let ((__tmp284242
                                       (let ((__tmp284243
                                              (let ((__tmp284244
                                                     (let ((__tmp284249
                                                            (let ((__tmp284250
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main277117_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp284250)))
                   (__tmp284245
                    (let ((__tmp284247
                           (let ((__tmp284248
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt277132_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp284248)))
                          (__tmp284246
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs277120_ _xargs277157_))))
                      (declare (not safe))
                      (cons __tmp284247 __tmp284246))))
               (declare (not safe))
               (cons __tmp284249 __tmp284245))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp284244))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp284243
                                          _stx277078_))))
                                  (declare (not safe))
                                  (cons __tmp284242 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp284241 _kwset277145_))))
                    (declare (not safe))
                    (cons '%#begin __tmp284240))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp284239 '()))))
                                              (declare (not safe))
                                              (cons __tmp284251 __tmp284238))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp284237))))
                                (declare (not safe))
                                (cons __tmp284236 '()))))
                         (declare (not safe))
                         (cons _kwbind277140_ __tmp284235))))
                  (declare (not safe))
                  (cons '%#let-values __tmp284234))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp284233
                                                    _stx277078_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0
                                             __tmp284232)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g277097277106_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e277102277163_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g277097277106_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e277103277166_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g277097277106_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys277169_ _e277103277166_)
                               (_e277104277171_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g277097277106_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main277174_ _e277104277171_))
                          (declare (not safe))
                          (_K277101277160_ _main277174_ _keys277169_))
                        (let () (declare (not safe)) (_else277099277114_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self277080277088_
                 'gxc#!kw-lambda::t))
              (let* ((_e277084277179_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self277080277088_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e277085277182_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self277080277088_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table277185_ _e277085277182_)
                     (_e277086277187_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self277080277088_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch277190_ _e277086277187_))
                (declare (not safe))
                (_K277083277176_ _dispatch277190_ _table277185_))
              (let () (declare (not safe)) (_E277082277092_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx276690_ _args276691_)
        (let _lp276693_ ((_rest276695_ _args276691_)
                         (_pargs276696_ '())
                         (_kwargs276697_ '()))
          (let* ((___stx283305283306_ _rest276695_)
                 (_g276703276755_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx283305283306_)))))
            (let ((___kont283307283308_
                   (lambda (_L276934_ _L276935_)
                     (let ((__tmp284272
                            (let ()
                              (declare (not safe))
                              (cons _L276935_ _pargs276696_))))
                       (declare (not safe))
                       (_lp276693_ _L276934_ __tmp284272 _kwargs276697_))))
                  (___kont283309283310_
                   (lambda (_L276880_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L276880_ _pargs276696_))
                             (reverse _kwargs276697_))))
                  (___kont283311283312_
                   (lambda (_L276827_ _L276828_ _L276829_)
                     (let ((_kw276846_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L276829_))))
                       (if (assq _kw276846_ _kwargs276697_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx276690_
                              _kw276846_))
                           (let ((__tmp284273
                                  (let ((__tmp284274
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw276846_ _L276828_))))
                                    (declare (not safe))
                                    (cons __tmp284274 _kwargs276697_))))
                             (declare (not safe))
                             (_lp276693_
                              _L276827_
                              _pargs276696_
                              __tmp284273))))))
                  (___kont283313283314_
                   (lambda (_L276775_ _L276776_)
                     (let ((__tmp284275
                            (let ()
                              (declare (not safe))
                              (cons _L276776_ _pargs276696_))))
                       (declare (not safe))
                       (_lp276693_ _L276775_ __tmp284275 _kwargs276697_))))
                  (___kont283315283316_
                   (lambda ()
                     (values (reverse _pargs276696_)
                             (reverse _kwargs276697_)))))
              (let* ((_g276702276762_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx283305283306_))
                            (___kont283315283316_)
                            (let () (declare (not safe)) (_g276703276755_)))))
                     (___match283412283413_
                      (lambda (_e276736276795_
                               _hd276735276798_
                               _tl276734276800_
                               _e276739276803_
                               _hd276738276806_
                               _tl276737276808_
                               _e276742276811_
                               _hd276741276814_
                               _tl276740276816_
                               _e276745276819_
                               _hd276744276822_
                               _tl276743276824_)
                        (let ((_L276827_ _tl276743276824_)
                              (_L276828_ _hd276744276822_)
                              (_L276829_ _hd276741276814_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L276829_))
                              (___kont283311283312_
                               _L276827_
                               _L276828_
                               _L276829_)
                              (___kont283313283314_
                               _tl276734276800_
                               _hd276735276798_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx283305283306_))
                    (let ((_e276709276899_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx283305283306_))))
                      (let ((_tl276707276904_
                             (let ()
                               (declare (not safe))
                               (##cdr _e276709276899_)))
                            (_hd276708276902_
                             (let ()
                               (declare (not safe))
                               (##car _e276709276899_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd276708276902_))
                            (let ((_e276712276907_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd276708276902_))))
                              (let ((_tl276710276912_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e276712276907_)))
                                    (_hd276711276910_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e276712276907_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd276711276910_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd276711276910_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl276710276912_))
                                            (let ((_e276715276915_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl276710276912_))))
                                              (let ((_tl276713276920_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e276715276915_)))
                                                    (_hd276714276918_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e276715276915_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd276714276918_))
                                                    (let ((_e276716276923_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd276714276918_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e276716276923_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl276713276920_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl276707276904_))
                          (let ((_e276719276926_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl276707276904_))))
                            (let ((_tl276717276931_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e276719276926_)))
                                  (_hd276718276929_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e276719276926_))))
                              (___kont283307283308_
                               _tl276717276931_
                               _hd276718276929_)))
                          (___kont283313283314_
                           _tl276707276904_
                           _hd276708276902_))
                      (___kont283313283314_ _tl276707276904_ _hd276708276902_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e276716276923_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl276713276920_))
                          (___kont283309283310_ _tl276707276904_)
                          (___kont283313283314_
                           _tl276707276904_
                           _hd276708276902_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl276713276920_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl276707276904_))
                              (let ((_e276745276819_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl276707276904_))))
                                (let ((_tl276743276824_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e276745276819_)))
                                      (_hd276744276822_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e276745276819_))))
                                  (___match283412283413_
                                   _e276709276899_
                                   _hd276708276902_
                                   _tl276707276904_
                                   _e276712276907_
                                   _hd276711276910_
                                   _tl276710276912_
                                   _e276715276915_
                                   _hd276714276918_
                                   _tl276713276920_
                                   _e276745276819_
                                   _hd276744276822_
                                   _tl276743276824_)))
                              (___kont283313283314_
                               _tl276707276904_
                               _hd276708276902_))
                          (___kont283313283314_
                           _tl276707276904_
                           _hd276708276902_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl276713276920_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl276707276904_))
                                                            (let ((_e276745276819_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl276707276904_))))
                      (let ((_tl276743276824_
                             (let ()
                               (declare (not safe))
                               (##cdr _e276745276819_)))
                            (_hd276744276822_
                             (let ()
                               (declare (not safe))
                               (##car _e276745276819_))))
                        (___match283412283413_
                         _e276709276899_
                         _hd276708276902_
                         _tl276707276904_
                         _e276712276907_
                         _hd276711276910_
                         _tl276710276912_
                         _e276715276915_
                         _hd276714276918_
                         _tl276713276920_
                         _e276745276819_
                         _hd276744276822_
                         _tl276743276824_)))
                    (___kont283313283314_ _tl276707276904_ _hd276708276902_))
                (___kont283313283314_ _tl276707276904_ _hd276708276902_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont283313283314_
                                             _tl276707276904_
                                             _hd276708276902_))
                                        (___kont283313283314_
                                         _tl276707276904_
                                         _hd276708276902_))
                                    (___kont283313283314_
                                     _tl276707276904_
                                     _hd276708276902_))))
                            (___kont283313283314_
                             _tl276707276904_
                             _hd276708276902_))))
                    (let () (declare (not safe)) (_g276702276762_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self276686_ _stx276687_ _args276688_)
        (let () (declare (not safe)) (gxc#xform-call% _stx276687_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
