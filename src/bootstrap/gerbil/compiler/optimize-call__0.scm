(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1707841985)
  (begin
    (define gxc#&optimize-call
      (make-promise
       (lambda ()
         (let ((_tbl278560_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp283419 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl278560_ __tmp283419))
           (let ()
             (declare (not safe))
             (table-set! _tbl278560_ '%#call gxc#optimize-call%))
           _tbl278560_))))
    (define gxc#apply-optimize-call
      (lambda (_stx278543_ . _args278545_)
        (let ((__tmp283421
               (lambda ()
                 (declare (not safe))
                 (if (null? _args278545_)
                     (gxc#compile-e__0 _stx278543_)
                     (let ((_arg1278550_ (car _args278545_))
                           (_rest278552_ (cdr _args278545_)))
                       (if (null? _rest278552_)
                           (gxc#compile-e__1 _stx278543_ _arg1278550_)
                           (let ((_arg2278555_ (car _rest278552_))
                                 (_rest278557_ (cdr _rest278552_)))
                             (if (null? _rest278557_)
                                 (gxc#compile-e__2
                                  _stx278543_
                                  _arg1278550_
                                  _arg2278555_)
                                 (apply gxc#compile-e
                                        _stx278543_
                                        _arg1278550_
                                        _arg2278555_
                                        _rest278557_))))))))
              (__tmp283420 (force gxc#&optimize-call)))
          (declare (not safe))
          (call-with-parameters
           __tmp283421
           gxc#current-compile-methods
           __tmp283420))))
    (define gxc#optimize-call%
      (lambda (_stx278398_)
        (let* ((___stx283169283170_ _stx278398_)
               (_g278401278421_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx283169283170_)))))
          (let ((___kont283171283172_
                 (lambda (_L278465_ _L278466_)
                   (let* ((_rator-id278484_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L278466_)))
                          (_rator-type278486_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id278484_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type278486_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp283422
                                  (##structure-ref
                                   _rator-type278486_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id278484_
                              '" => "
                              _rator-type278486_
                              '" "
                              __tmp283422))
                           (let ((_optimized278489_
                                  (let ((__method283417
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type278486_
                                            'optimize-call))))
                                    (if __method283417
                                        (__method283417
                                         _rator-type278486_
                                         _stx278398_
                                         _L278465_)
                                        (error '"Missing method"
                                               _rator-type278486_
                                               'optimize-call)))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type278486_))
                                 _optimized278489_
                                 (let* ((___stx283151283152_ _optimized278489_)
                                        (_g278492278502_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx283151283152_)))))
                                   (let ((___kont283153283154_
                                          (lambda (_L278522_)
                                            (let ((__tmp283423
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L278522_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp283423
                                               _stx278398_))))
                                         (___kont283155283156_
                                          (lambda () _optimized278489_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx283151283152_))
                                         (let ((_e278497278514_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx283151283152_))))
                                           (let ((_tl278495278519_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e278497278514_)))
                                                 (_hd278496278517_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e278497278514_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd278496278517_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd278496278517_))
                                                     (___kont283153283154_
                                                      _tl278495278519_)
                                                     (___kont283155283156_))
                                                 (___kont283155283156_))))
                                         (___kont283155283156_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type278486_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx278398_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx278398_
                                _rator-type278486_)))))))
                (___kont283173283174_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _stx278398_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx283169283170_))
                (let ((_e278407278433_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx283169283170_))))
                  (let ((_tl278405278438_
                         (let () (declare (not safe)) (##cdr _e278407278433_)))
                        (_hd278406278436_
                         (let ()
                           (declare (not safe))
                           (##car _e278407278433_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl278405278438_))
                        (let ((_e278410278441_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl278405278438_))))
                          (let ((_tl278408278446_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e278410278441_)))
                                (_hd278409278444_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e278410278441_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd278409278444_))
                                (let ((_e278413278449_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd278409278444_))))
                                  (let ((_tl278411278454_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e278413278449_)))
                                        (_hd278412278452_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e278413278449_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd278412278452_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd278412278452_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl278411278454_))
                                                (let ((_e278416278457_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl278411278454_))))
                                                  (let ((_tl278414278462_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e278416278457_)))
                                                        (_hd278415278460_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e278416278457_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl278414278462_))
                                                        (___kont283171283172_
                                                         _tl278408278446_
                                                         _hd278415278460_)
                                                        (___kont283173283174_))))
                                                (___kont283173283174_))
                                            (___kont283173283174_))
                                        (___kont283173283174_))))
                                (___kont283173283174_))))
                        (___kont283173283174_))))
                (___kont283173283174_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self278352_ _stx278353_ _args278354_)
        (let* ((_g278356278366_
                (lambda (_g278357278363_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g278357278363_))))
               (_g278355278395_
                (lambda (_g278357278369_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g278357278369_))
                      (let ((_e278361278371_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g278357278369_))))
                        (let ((_hd278360278374_
                               (let ()
                                 (declare (not safe))
                                 (##car _e278361278371_)))
                              (_tl278359278376_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e278361278371_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl278359278376_))
                              ((lambda (_L278379_)
                                 (let* ((_klass278390_
                                         (let ((__tmp283424
                                                (##structure-ref
                                                 _self278352_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx278353_
                                            __tmp283424)))
                                        (_object278392_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L278379_))))
                                   (if (##structure-ref
                                        _klass278390_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp283440
                                              (let ((__tmp283441
                                                     (let ((__tmp283443
                                                            (let ((__tmp283444
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp283445
                                  (##structure-ref
                                   _klass278390_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp283445 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp283444)))
                   (__tmp283442
                    (let () (declare (not safe)) (cons _object278392_ '()))))
               (declare (not safe))
               (cons __tmp283443 __tmp283442))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp283441))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp283440
                                          _stx278353_))
                                       (if (##structure-ref
                                            _klass278390_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp283434
                                                  (let ((__tmp283435
                                                         (let ((__tmp283437
                                                                (let ((__tmp283438
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp283439
                                      (##structure-ref
                                       _klass278390_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp283439 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp283438)))
                       (__tmp283436
                        (let ()
                          (declare (not safe))
                          (cons _object278392_ '()))))
                   (declare (not safe))
                   (cons __tmp283437 __tmp283436))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp283435))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp283434
                                              _stx278353_))
                                           (let ((__tmp283425
                                                  (let ((__tmp283426
                                                         (let ((__tmp283432
                                                                (let ((__tmp283433
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp283433)))
                       (__tmp283427
                        (let ((__tmp283429
                               (let ((__tmp283430
                                      (let ((__tmp283431
                                             (##structure-ref
                                              _self278352_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp283431 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp283430)))
                              (__tmp283428
                               (let ()
                                 (declare (not safe))
                                 (cons _object278392_ '()))))
                          (declare (not safe))
                          (cons __tmp283429 __tmp283428))))
                   (declare (not safe))
                   (cons __tmp283432 __tmp283427))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp283426))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp283425
                                              _stx278353_))))))
                               _hd278360278374_)
                              (let ()
                                (declare (not safe))
                                (_g278356278366_ _g278357278369_)))))
                      (let ()
                        (declare (not safe))
                        (_g278356278366_ _g278357278369_))))))
          (declare (not safe))
          (_g278355278395_ _args278354_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__t283130)
        (let ((__id283131
               (let ((__tmp283132
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t283130 'id))))
                 (if __tmp283132 __tmp283132 (error '"Unknown slot" 'id)))))
          (lambda (_self278352_ _stx278353_ _args278354_)
            (let* ((_g278356278366_
                    (lambda (_g278357278363_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g278357278363_))))
                   (_g278355278395_
                    (lambda (_g278357278369_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g278357278369_))
                          (let ((_e278361278371_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g278357278369_))))
                            (let ((_hd278360278374_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e278361278371_)))
                                  (_tl278359278376_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e278361278371_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl278359278376_))
                                  ((lambda (_L278379_)
                                     (let* ((_klass278390_
                                             (let ((__tmp283446
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self278352_
                                                       __id283131
                                                       __t283130
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx278353_
                                                __tmp283446)))
                                            (_object278392_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L278379_))))
                                       (if (##structure-ref
                                            _klass278390_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp283462
                                                  (let ((__tmp283463
                                                         (let ((__tmp283465
                                                                (let ((__tmp283466
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp283467
                                      (##structure-ref
                                       _klass278390_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp283467 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp283466)))
                       (__tmp283464
                        (let ()
                          (declare (not safe))
                          (cons _object278392_ '()))))
                   (declare (not safe))
                   (cons __tmp283465 __tmp283464))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp283463))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp283462
                                              _stx278353_))
                                           (if (##structure-ref
                                                _klass278390_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp283456
                                                      (let ((__tmp283457
                                                             (let ((__tmp283459
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp283460
                                   (let ((__tmp283461
                                          (##structure-ref
                                           _klass278390_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp283461 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp283460)))
                           (__tmp283458
                            (let ()
                              (declare (not safe))
                              (cons _object278392_ '()))))
                       (declare (not safe))
                       (cons __tmp283459 __tmp283458))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp283457))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp283456
                                                  _stx278353_))
                                               (let ((__tmp283447
                                                      (let ((__tmp283448
                                                             (let ((__tmp283454
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp283455
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp283455)))
                           (__tmp283449
                            (let ((__tmp283451
                                   (let ((__tmp283452
                                          (let ((__tmp283453
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self278352_
                                                    __id283131
                                                    __t283130
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp283453 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp283452)))
                                  (__tmp283450
                                   (let ()
                                     (declare (not safe))
                                     (cons _object278392_ '()))))
                              (declare (not safe))
                              (cons __tmp283451 __tmp283450))))
                       (declare (not safe))
                       (cons __tmp283454 __tmp283449))))
                (declare (not safe))
                (cons '%#call __tmp283448))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp283447
                                                  _stx278353_))))))
                                   _hd278360278374_)
                                  (let ()
                                    (declare (not safe))
                                    (_g278356278366_ _g278357278369_)))))
                          (let ()
                            (declare (not safe))
                            (_g278356278366_ _g278357278369_))))))
              (declare (not safe))
              (_g278355278395_ _args278354_))))))
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
      (lambda (_self278072_ _stx278073_ _args278074_)
        (let* ((_klass278076_
                (let ((__tmp283468
                       (##structure-ref _self278072_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx278073_ __tmp283468)))
               (_fields278078_
                (length (##structure-ref _klass278076_ '5 gxc#!class::t '#f)))
               (_args278080_ (map gxc#compile-e _args278074_))
               (_inline-make-object278082_
                (let ((__tmp283469
                       (let ((__tmp283475
                              (let ((__tmp283476
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp283476)))
                             (__tmp283470
                              (let ((__tmp283472
                                     (let ((__tmp283473
                                            (let ((__tmp283474
                                                   (##structure-ref
                                                    _self278072_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp283474 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp283473)))
                                    (__tmp283471
                                     (make-list _fields278078_ '(%#quote #f))))
                                (declare (not safe))
                                (cons __tmp283472 __tmp283471))))
                         (declare (not safe))
                         (cons __tmp283475 __tmp283470))))
                  (declare (not safe))
                  (cons '%#call __tmp283469))))
          (let ((_$e278085_
                 (##structure-ref _klass278076_ '6 gxc#!class::t '#f)))
            (if _$e278085_
                ((lambda (_ctor278088_)
                   (let ((_$obj278090_
                          (let ((__tmp283576 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp283576)))
                         (_ctor-impl278091_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass278076_
                             _ctor278088_))))
                     (let ((__tmp283577
                            (let ((__tmp283578
                                   (let ((__tmp283646
                                          (let ((__tmp283647
                                                 (let ((__tmp283649
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj278090_
                                                                '())))
                                                       (__tmp283648
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object278082_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp283649
                                                         __tmp283648))))
                                            (declare (not safe))
                                            (cons __tmp283647 '())))
                                         (__tmp283579
                                          (let ((__tmp283580
                                                 (let ((__tmp283581
                                                        (let ((__tmp283585
                                                               (if _ctor-impl278091_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp283640
                                  (let ((__tmp283644
                                         (let ((__tmp283645
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl278091_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp283645)))
                                        (__tmp283641
                                         (let ((__tmp283642
                                                (let ((__tmp283643
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj278090_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp283643))))
                                           (declare (not safe))
                                           (cons __tmp283642 _args278080_))))
                                    (declare (not safe))
                                    (cons __tmp283644 __tmp283641))))
                             (declare (not safe))
                             (cons '%#call __tmp283640))
                           (let* ((_$ctor278093_
                                   (let ((__tmp283586 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp283586)))
                                  (__tmp283587
                                   (let ((__tmp283622
                                          (let ((__tmp283623
                                                 (let ((__tmp283639
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor278093_
                                                                '())))
                                                       (__tmp283624
                                                        (let ((__tmp283625
                                                               (let ((__tmp283626
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp283637
                                     (let ((__tmp283638
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp283638)))
                                    (__tmp283627
                                     (let ((__tmp283634
                                            (let ((__tmp283635
                                                   (let ((__tmp283636
                                                          (##structure-ref
                                                           _self278072_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp283636 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp283635)))
                                           (__tmp283628
                                            (let ((__tmp283632
                                                   (let ((__tmp283633
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj278090_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp283633)))
                                                  (__tmp283629
                                                   (let ((__tmp283630
                                                          (let ((__tmp283631
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _ctor278088_ '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp283631))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp283630 '()))))
                                              (declare (not safe))
                                              (cons __tmp283632 __tmp283629))))
                                       (declare (not safe))
                                       (cons __tmp283634 __tmp283628))))
                                (declare (not safe))
                                (cons __tmp283637 __tmp283627))))
                         (declare (not safe))
                         (cons '%#call __tmp283626))))
                  (declare (not safe))
                  (cons __tmp283625 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp283639
                                                         __tmp283624))))
                                            (declare (not safe))
                                            (cons __tmp283623 '())))
                                         (__tmp283588
                                          (let ((__tmp283589
                                                 (let ((__tmp283590
                                                        (let ((__tmp283620
                                                               (let ((__tmp283621
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor278093_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp283621)))
                      (__tmp283591
                       (let ((__tmp283613
                              (let ((__tmp283614
                                     (let ((__tmp283618
                                            (let ((__tmp283619
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor278093_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp283619)))
                                           (__tmp283615
                                            (let ((__tmp283616
                                                   (let ((__tmp283617
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj278090_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp283617))))
                                              (declare (not safe))
                                              (cons __tmp283616
                                                    _args278080_))))
                                       (declare (not safe))
                                       (cons __tmp283618 __tmp283615))))
                                (declare (not safe))
                                (cons '%#call __tmp283614)))
                             (__tmp283592
                              (let ((__tmp283593
                                     (let ((__tmp283594
                                            (let ((__tmp283611
                                                   (let ((__tmp283612
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp283612)))
                                                  (__tmp283595
                                                   (let ((__tmp283609
                                                          (let ((__tmp283610
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp283610)))
                 (__tmp283596
                  (let ((__tmp283607
                         (let ((__tmp283608
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp283608)))
                        (__tmp283597
                         (let ((__tmp283604
                                (let ((__tmp283605
                                       (let ((__tmp283606
                                              (##structure-ref
                                               _self278072_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp283606 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp283605)))
                               (__tmp283598
                                (let ((__tmp283602
                                       (let ((__tmp283603
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp283603)))
                                      (__tmp283599
                                       (let ((__tmp283600
                                              (let ((__tmp283601
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor278088_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp283601))))
                                         (declare (not safe))
                                         (cons __tmp283600 '()))))
                                  (declare (not safe))
                                  (cons __tmp283602 __tmp283599))))
                           (declare (not safe))
                           (cons __tmp283604 __tmp283598))))
                    (declare (not safe))
                    (cons __tmp283607 __tmp283597))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp283609
                                                           __tmp283596))))
                                              (declare (not safe))
                                              (cons __tmp283611 __tmp283595))))
                                       (declare (not safe))
                                       (cons '%#call __tmp283594))))
                                (declare (not safe))
                                (cons __tmp283593 '()))))
                         (declare (not safe))
                         (cons __tmp283613 __tmp283592))))
                  (declare (not safe))
                  (cons __tmp283620 __tmp283591))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp283590))))
                                            (declare (not safe))
                                            (cons __tmp283589 '()))))
                                     (declare (not safe))
                                     (cons __tmp283622 __tmp283588))))
                             (declare (not safe))
                             (cons '%#let-values __tmp283587))))
                      (__tmp283582
                       (let ((__tmp283583
                              (let ((__tmp283584
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj278090_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp283584))))
                         (declare (not safe))
                         (cons __tmp283583 '()))))
                  (declare (not safe))
                  (cons __tmp283585 __tmp283582))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp283581))))
                                            (declare (not safe))
                                            (cons __tmp283580 '()))))
                                     (declare (not safe))
                                     (cons __tmp283646 __tmp283579))))
                              (declare (not safe))
                              (cons '%#let-values __tmp283578))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp283577 _stx278073_))))
                 _$e278085_)
                (let ((_$e278095_
                       (##structure-ref _klass278076_ '9 gxc#!class::t '#f)))
                  (if _$e278095_
                      ((lambda (_metaclass278098_)
                         (let* ((_$obj278100_
                                 (let ((__tmp283538 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp283538)))
                                (_metakons278102_
                                 (let ((__tmp283539
                                        (let ()
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           _stx278073_
                                           _metaclass278098_))))
                                   (declare (not safe))
                                   (gxc#!class-lookup-method
                                    __tmp283539
                                    'instance-init!))))
                           (let ((__tmp283540
                                  (let ((__tmp283541
                                         (let ((__tmp283572
                                                (let ((__tmp283573
                                                       (let ((__tmp283575
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj278100_ '())))
                     (__tmp283574
                      (let ()
                        (declare (not safe))
                        (cons _inline-make-object278082_ '()))))
                 (declare (not safe))
                 (cons __tmp283575 __tmp283574))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp283573 '())))
                                               (__tmp283542
                                                (let ((__tmp283543
                                                       (let ((__tmp283544
                                                              (let ((__tmp283548
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if _metakons278102_
                                 (let ((__tmp283562
                                        (let ((__tmp283570
                                               (let ((__tmp283571
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metakons278102_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp283571)))
                                              (__tmp283563
                                               (let ((__tmp283567
                                                      (let ((__tmp283568
                                                             (let ((__tmp283569
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self278072_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp283569 '()))))
                (declare (not safe))
                (cons '%#ref __tmp283568)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp283564
                                                      (let ((__tmp283565
                                                             (let ((__tmp283566
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _$obj278100_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp283566))))
                (declare (not safe))
                (cons __tmp283565 _args278080_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp283567
                                                       __tmp283564))))
                                          (declare (not safe))
                                          (cons __tmp283570 __tmp283563))))
                                   (declare (not safe))
                                   (cons '%#call __tmp283562))
                                 (let ((__tmp283549
                                        (let ((__tmp283560
                                               (let ((__tmp283561
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'call-method
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp283561)))
                                              (__tmp283550
                                               (let ((__tmp283557
                                                      (let ((__tmp283558
                                                             (let ((__tmp283559
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self278072_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp283559 '()))))
                (declare (not safe))
                (cons '%#ref __tmp283558)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp283551
                                                      (let ((__tmp283555
                                                             (let ((__tmp283556
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'instance-init! '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp283556)))
                    (__tmp283552
                     (let ((__tmp283553
                            (let ((__tmp283554
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj278100_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp283554))))
                       (declare (not safe))
                       (cons __tmp283553 _args278080_))))
                (declare (not safe))
                (cons __tmp283555 __tmp283552))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp283557
                                                       __tmp283551))))
                                          (declare (not safe))
                                          (cons __tmp283560 __tmp283550))))
                                   (declare (not safe))
                                   (cons '%#call __tmp283549))))
                            (__tmp283545
                             (let ((__tmp283546
                                    (let ((__tmp283547
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj278100_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp283547))))
                               (declare (not safe))
                               (cons __tmp283546 '()))))
                        (declare (not safe))
                        (cons __tmp283548 __tmp283545))))
                 (declare (not safe))
                 (cons '%#begin __tmp283544))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp283543 '()))))
                                           (declare (not safe))
                                           (cons __tmp283572 __tmp283542))))
                                    (declare (not safe))
                                    (cons '%#let-values __tmp283541))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp283540 _stx278073_))))
                       _$e278095_)
                      (if (##structure-ref _klass278076_ '7 gxc#!class::t '#f)
                          (if (fx= (length _args278080_) _fields278078_)
                              (let ((__tmp283530
                                     (let ((__tmp283531
                                            (let ((__tmp283536
                                                   (let ((__tmp283537
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp283537)))
                                                  (__tmp283532
                                                   (let ((__tmp283533
                                                          (let ((__tmp283534
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp283535
                                (##structure-ref
                                 _self278072_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp283535 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp283534))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp283533
                                                           _args278080_))))
                                              (declare (not safe))
                                              (cons __tmp283536 __tmp283532))))
                                       (declare (not safe))
                                       (cons '%#call __tmp283531))))
                                (declare (not safe))
                                (gxc#xform-wrap-source
                                 __tmp283530
                                 _stx278073_))
                              (let ((__tmp283529
                                     (##structure-ref
                                      _self278072_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                    (__tmp283528
                                     (length (##structure-ref
                                              _klass278076_
                                              '5
                                              gxc#!class::t
                                              '#f))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"illegal struct constructor application; arity mismatch"
                                 _stx278073_
                                 __tmp283529
                                 __tmp283528)))
                          (let ((_$obj278105_
                                 (let ((__tmp283477 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp283477))))
                            (let _lp278107_ ((_rest278109_ _args278080_)
                                             (_initializers278110_ '()))
                              (let* ((___stx283207283208_ _rest278109_)
                                     (_g278114278135_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx283207283208_)))))
                                (let ((___kont283209283210_
                                       (lambda (_L278189_ _L278190_ _L278191_)
                                         (let* ((_slot278222_
                                                 (keyword->symbol
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e _L278191_))))
                                                (_off278224_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass278076_
                                                    _slot278222_))))
                                           (if _off278224_
                                               (let ((__tmp283479
                                                      (let ((__tmp283480
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off278224_ _L278190_))))
                (declare (not safe))
                (cons __tmp283480 _initializers278110_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp278107_
                                                  _L278189_
                                                  __tmp283479))
                                               (let ((__tmp283478
                                                      (##structure-ref
                                                       _self278072_
                                                       '1
                                                       gxc#!type::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"unknown slot"
                                                  _stx278073_
                                                  __tmp283478
                                                  _slot278222_))))))
                                      (___kont283211283212_
                                       (lambda ()
                                         (let ((__tmp283481
                                                (let ((__tmp283482
                                                       (let ((__tmp283505
                                                              (let ((__tmp283506
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp283508
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj278105_ '())))
                                   (__tmp283507
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object278082_ '()))))
                               (declare (not safe))
                               (cons __tmp283508 __tmp283507))))
                        (declare (not safe))
                        (cons __tmp283506 '())))
                     (__tmp283483
                      (let ((__tmp283484
                             (let ((__tmp283485
                                    (let ((__tmp283502
                                           (let ((__tmp283503
                                                  (let ((__tmp283504
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj278105_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp283504))))
                                             (declare (not safe))
                                             (cons __tmp283503 '())))
                                          (__tmp283486
                                           (let ((__tmp283487
                                                  (lambda (_i278149_ _r278150_)
                                                    (let ((__tmp283488
                                                           (let ((__tmp283489
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp283499
                                 (let ((__tmp283500
                                        (let ((__tmp283501
                                               (##structure-ref
                                                _self278072_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp283501 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp283500)))
                                (__tmp283490
                                 (let ((__tmp283496
                                        (let ((__tmp283497
                                               (let ((__tmp283498
                                                      (car _i278149_)))
                                                 (declare (not safe))
                                                 (cons __tmp283498 '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp283497)))
                                       (__tmp283491
                                        (let ((__tmp283494
                                               (let ((__tmp283495
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _$obj278105_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp283495)))
                                              (__tmp283492
                                               (let ((__tmp283493
                                                      (cdr _i278149_)))
                                                 (declare (not safe))
                                                 (cons __tmp283493 '()))))
                                          (declare (not safe))
                                          (cons __tmp283494 __tmp283492))))
                                   (declare (not safe))
                                   (cons __tmp283496 __tmp283491))))
                            (declare (not safe))
                            (cons __tmp283499 __tmp283490))))
                     (declare (not safe))
                     (cons '%#struct-unchecked-set! __tmp283489))))
              (declare (not safe))
              (cons __tmp283488 _r278150_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (foldl1 __tmp283487
                                                     '()
                                                     _initializers278110_))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp283502 __tmp283486))))
                               (declare (not safe))
                               (cons '%#begin __tmp283485))))
                        (declare (not safe))
                        (cons __tmp283484 '()))))
                 (declare (not safe))
                 (cons __tmp283505 __tmp283483))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp283482))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp283481
                                            _stx278073_))))
                                      (___kont283213283214_
                                       (lambda ()
                                         (let ((__tmp283509
                                                (let ((__tmp283510
                                                       (let ((__tmp283524
                                                              (let ((__tmp283525
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp283527
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj278105_ '())))
                                   (__tmp283526
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object278082_ '()))))
                               (declare (not safe))
                               (cons __tmp283527 __tmp283526))))
                        (declare (not safe))
                        (cons __tmp283525 '())))
                     (__tmp283511
                      (let ((__tmp283512
                             (let ((__tmp283513
                                    (let ((__tmp283517
                                           (let ((__tmp283518
                                                  (let ((__tmp283522
                                                         (let ((__tmp283523
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'class-instance-init! '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp283523)))
                (__tmp283519
                 (let ((__tmp283520
                        (let ((__tmp283521
                               (let ()
                                 (declare (not safe))
                                 (cons _$obj278105_ '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp283521))))
                   (declare (not safe))
                   (cons __tmp283520 _args278080_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp283522
                                                          __tmp283519))))
                                             (declare (not safe))
                                             (cons '%#call __tmp283518)))
                                          (__tmp283514
                                           (let ((__tmp283515
                                                  (let ((__tmp283516
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj278105_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp283516))))
                                             (declare (not safe))
                                             (cons __tmp283515 '()))))
                                      (declare (not safe))
                                      (cons __tmp283517 __tmp283514))))
                               (declare (not safe))
                               (cons '%#begin __tmp283513))))
                        (declare (not safe))
                        (cons __tmp283512 '()))))
                 (declare (not safe))
                 (cons __tmp283524 __tmp283511))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp283510))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp283509
                                            _stx278073_)))))
                                  (let* ((_g278112278152_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   ___stx283207283208_))
                                                (___kont283211283212_)
                                                (___kont283213283214_))))
                                         (___match283244283245_
                                          (lambda (_e278121278157_
                                                   _hd278120278160_
                                                   _tl278119278162_
                                                   _e278124278165_
                                                   _hd278123278168_
                                                   _tl278122278170_
                                                   _e278127278173_
                                                   _hd278126278176_
                                                   _tl278125278178_
                                                   _e278130278181_
                                                   _hd278129278184_
                                                   _tl278128278186_)
                                            (let ((_L278189_ _tl278128278186_)
                                                  (_L278190_ _hd278129278184_)
                                                  (_L278191_ _hd278126278176_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-keyword?
                                                     _L278191_))
                                                  (___kont283209283210_
                                                   _L278189_
                                                   _L278190_
                                                   _L278191_)
                                                  (___kont283213283214_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx283207283208_))
                                        (let ((_e278121278157_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx283207283208_))))
                                          (let ((_tl278119278162_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e278121278157_)))
                                                (_hd278120278160_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e278121278157_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd278120278160_))
                                                (let ((_e278124278165_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd278120278160_))))
                                                  (let ((_tl278122278170_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e278124278165_)))
                                                        (_hd278123278168_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e278124278165_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd278123278168_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#quote
                                                               _hd278123278168_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl278122278170_))
                        (let ((_e278127278173_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl278122278170_))))
                          (let ((_tl278125278178_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e278127278173_)))
                                (_hd278126278176_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e278127278173_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl278125278178_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl278119278162_))
                                    (let ((_e278130278181_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl278119278162_))))
                                      (let ((_tl278128278186_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e278130278181_)))
                                            (_hd278129278184_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e278130278181_))))
                                        (___match283244283245_
                                         _e278121278157_
                                         _hd278120278160_
                                         _tl278119278162_
                                         _e278124278165_
                                         _hd278123278168_
                                         _tl278122278170_
                                         _e278127278173_
                                         _hd278126278176_
                                         _tl278125278178_
                                         _e278130278181_
                                         _hd278129278184_
                                         _tl278128278186_)))
                                    (___kont283213283214_))
                                (___kont283213283214_))))
                        (___kont283213283214_))
                    (___kont283213283214_))
                (___kont283213283214_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont283213283214_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g278112278152_))))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__t283133)
        (let ((__id283134
               (let ((__tmp283135
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t283133 'id))))
                 (if __tmp283135 __tmp283135 (error '"Unknown slot" 'id)))))
          (lambda (_self278072_ _stx278073_ _args278074_)
            (let* ((_klass278076_
                    (let ((__tmp283650
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self278072_
                              __id283134
                              __t283133
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx278073_ __tmp283650)))
                   (_fields278078_
                    (length (##structure-ref
                             _klass278076_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args278080_ (map gxc#compile-e _args278074_))
                   (_inline-make-object278082_
                    (let ((__tmp283651
                           (let ((__tmp283657
                                  (let ((__tmp283658
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp283658)))
                                 (__tmp283652
                                  (let ((__tmp283654
                                         (let ((__tmp283655
                                                (let ((__tmp283656
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self278072_
                                                          __id283134
                                                          __t283133
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp283656 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp283655)))
                                        (__tmp283653
                                         (make-list
                                          _fields278078_
                                          '(%#quote #f))))
                                    (declare (not safe))
                                    (cons __tmp283654 __tmp283653))))
                             (declare (not safe))
                             (cons __tmp283657 __tmp283652))))
                      (declare (not safe))
                      (cons '%#call __tmp283651))))
              (let ((_$e278085_
                     (##structure-ref _klass278076_ '6 gxc#!class::t '#f)))
                (if _$e278085_
                    ((lambda (_ctor278088_)
                       (let ((_$obj278090_
                              (let ((__tmp283758 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp283758)))
                             (_ctor-impl278091_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass278076_
                                 _ctor278088_))))
                         (let ((__tmp283759
                                (let ((__tmp283760
                                       (let ((__tmp283828
                                              (let ((__tmp283829
                                                     (let ((__tmp283831
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj278090_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp283830
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object278082_ '()))))
               (declare (not safe))
               (cons __tmp283831 __tmp283830))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp283829 '())))
                                             (__tmp283761
                                              (let ((__tmp283762
                                                     (let ((__tmp283763
                                                            (let ((__tmp283767
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl278091_
                               (let ((__tmp283822
                                      (let ((__tmp283826
                                             (let ((__tmp283827
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl278091_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp283827)))
                                            (__tmp283823
                                             (let ((__tmp283824
                                                    (let ((__tmp283825
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj278090_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp283825))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp283824
                                                     _args278080_))))
                                        (declare (not safe))
                                        (cons __tmp283826 __tmp283823))))
                                 (declare (not safe))
                                 (cons '%#call __tmp283822))
                               (let* ((_$ctor278093_
                                       (let ((__tmp283768
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp283768)))
                                      (__tmp283769
                                       (let ((__tmp283804
                                              (let ((__tmp283805
                                                     (let ((__tmp283821
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor278093_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp283806
                    (let ((__tmp283807
                           (let ((__tmp283808
                                  (let ((__tmp283819
                                         (let ((__tmp283820
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp283820)))
                                        (__tmp283809
                                         (let ((__tmp283816
                                                (let ((__tmp283817
                                                       (let ((__tmp283818
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self278072_
                         __id283134
                         __t283133
                         '#f))))
                 (declare (not safe))
                 (cons __tmp283818 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp283817)))
                                               (__tmp283810
                                                (let ((__tmp283814
                                                       (let ((__tmp283815
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj278090_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp283815)))
              (__tmp283811
               (let ((__tmp283812
                      (let ((__tmp283813
                             (let ()
                               (declare (not safe))
                               (cons _ctor278088_ '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp283813))))
                 (declare (not safe))
                 (cons __tmp283812 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp283814
                                                        __tmp283811))))
                                           (declare (not safe))
                                           (cons __tmp283816 __tmp283810))))
                                    (declare (not safe))
                                    (cons __tmp283819 __tmp283809))))
                             (declare (not safe))
                             (cons '%#call __tmp283808))))
                      (declare (not safe))
                      (cons __tmp283807 '()))))
               (declare (not safe))
               (cons __tmp283821 __tmp283806))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp283805 '())))
                                             (__tmp283770
                                              (let ((__tmp283771
                                                     (let ((__tmp283772
                                                            (let ((__tmp283802
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp283803
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor278093_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp283803)))
                          (__tmp283773
                           (let ((__tmp283795
                                  (let ((__tmp283796
                                         (let ((__tmp283800
                                                (let ((__tmp283801
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor278093_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp283801)))
                                               (__tmp283797
                                                (let ((__tmp283798
                                                       (let ((__tmp283799
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj278090_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp283799))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp283798
                                                        _args278080_))))
                                           (declare (not safe))
                                           (cons __tmp283800 __tmp283797))))
                                    (declare (not safe))
                                    (cons '%#call __tmp283796)))
                                 (__tmp283774
                                  (let ((__tmp283775
                                         (let ((__tmp283776
                                                (let ((__tmp283793
                                                       (let ((__tmp283794
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp283794)))
              (__tmp283777
               (let ((__tmp283791
                      (let ((__tmp283792
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp283792)))
                     (__tmp283778
                      (let ((__tmp283789
                             (let ((__tmp283790
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp283790)))
                            (__tmp283779
                             (let ((__tmp283786
                                    (let ((__tmp283787
                                           (let ((__tmp283788
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self278072_
                                                     __id283134
                                                     __t283133
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp283788 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp283787)))
                                   (__tmp283780
                                    (let ((__tmp283784
                                           (let ((__tmp283785
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp283785)))
                                          (__tmp283781
                                           (let ((__tmp283782
                                                  (let ((__tmp283783
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor278088_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp283783))))
                                             (declare (not safe))
                                             (cons __tmp283782 '()))))
                                      (declare (not safe))
                                      (cons __tmp283784 __tmp283781))))
                               (declare (not safe))
                               (cons __tmp283786 __tmp283780))))
                        (declare (not safe))
                        (cons __tmp283789 __tmp283779))))
                 (declare (not safe))
                 (cons __tmp283791 __tmp283778))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp283793
                                                        __tmp283777))))
                                           (declare (not safe))
                                           (cons '%#call __tmp283776))))
                                    (declare (not safe))
                                    (cons __tmp283775 '()))))
                             (declare (not safe))
                             (cons __tmp283795 __tmp283774))))
                      (declare (not safe))
                      (cons __tmp283802 __tmp283773))))
               (declare (not safe))
               (cons '%#if __tmp283772))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp283771 '()))))
                                         (declare (not safe))
                                         (cons __tmp283804 __tmp283770))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp283769))))
                          (__tmp283764
                           (let ((__tmp283765
                                  (let ((__tmp283766
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj278090_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp283766))))
                             (declare (not safe))
                             (cons __tmp283765 '()))))
                      (declare (not safe))
                      (cons __tmp283767 __tmp283764))))
               (declare (not safe))
               (cons '%#begin __tmp283763))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp283762 '()))))
                                         (declare (not safe))
                                         (cons __tmp283828 __tmp283761))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp283760))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp283759 _stx278073_))))
                     _$e278085_)
                    (let ((_$e278095_
                           (##structure-ref
                            _klass278076_
                            '9
                            gxc#!class::t
                            '#f)))
                      (if _$e278095_
                          ((lambda (_metaclass278098_)
                             (let* ((_$obj278100_
                                     (let ((__tmp283720 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp283720)))
                                    (_metakons278102_
                                     (let ((__tmp283721
                                            (let ()
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               _stx278073_
                                               _metaclass278098_))))
                                       (declare (not safe))
                                       (gxc#!class-lookup-method
                                        __tmp283721
                                        'instance-init!))))
                               (let ((__tmp283722
                                      (let ((__tmp283723
                                             (let ((__tmp283754
                                                    (let ((__tmp283755
                                                           (let ((__tmp283757
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj278100_ '())))
                         (__tmp283756
                          (let ()
                            (declare (not safe))
                            (cons _inline-make-object278082_ '()))))
                     (declare (not safe))
                     (cons __tmp283757 __tmp283756))))
              (declare (not safe))
              (cons __tmp283755 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp283724
                                                    (let ((__tmp283725
                                                           (let ((__tmp283726
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp283730
                                 (if _metakons278102_
                                     (let ((__tmp283744
                                            (let ((__tmp283752
                                                   (let ((__tmp283753
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _metakons278102_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp283753)))
                                                  (__tmp283745
                                                   (let ((__tmp283749
                                                          (let ((__tmp283750
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp283751
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self278072_
                                   __id283134
                                   __t283133
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp283751 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp283750)))
                 (__tmp283746
                  (let ((__tmp283747
                         (let ((__tmp283748
                                (let ()
                                  (declare (not safe))
                                  (cons _$obj278100_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp283748))))
                    (declare (not safe))
                    (cons __tmp283747 _args278080_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp283749
                                                           __tmp283746))))
                                              (declare (not safe))
                                              (cons __tmp283752 __tmp283745))))
                                       (declare (not safe))
                                       (cons '%#call __tmp283744))
                                     (let ((__tmp283731
                                            (let ((__tmp283742
                                                   (let ((__tmp283743
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'call-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp283743)))
                                                  (__tmp283732
                                                   (let ((__tmp283739
                                                          (let ((__tmp283740
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp283741
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self278072_
                                   __id283134
                                   __t283133
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp283741 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp283740)))
                 (__tmp283733
                  (let ((__tmp283737
                         (let ((__tmp283738
                                (let ()
                                  (declare (not safe))
                                  (cons 'instance-init! '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp283738)))
                        (__tmp283734
                         (let ((__tmp283735
                                (let ((__tmp283736
                                       (let ()
                                         (declare (not safe))
                                         (cons _$obj278100_ '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp283736))))
                           (declare (not safe))
                           (cons __tmp283735 _args278080_))))
                    (declare (not safe))
                    (cons __tmp283737 __tmp283734))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp283739
                                                           __tmp283733))))
                                              (declare (not safe))
                                              (cons __tmp283742 __tmp283732))))
                                       (declare (not safe))
                                       (cons '%#call __tmp283731))))
                                (__tmp283727
                                 (let ((__tmp283728
                                        (let ((__tmp283729
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$obj278100_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp283729))))
                                   (declare (not safe))
                                   (cons __tmp283728 '()))))
                            (declare (not safe))
                            (cons __tmp283730 __tmp283727))))
                     (declare (not safe))
                     (cons '%#begin __tmp283726))))
              (declare (not safe))
              (cons __tmp283725 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp283754
                                                     __tmp283724))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp283723))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp283722
                                  _stx278073_))))
                           _$e278095_)
                          (if (##structure-ref
                               _klass278076_
                               '7
                               gxc#!class::t
                               '#f)
                              (if (fx= (length _args278080_) _fields278078_)
                                  (let ((__tmp283712
                                         (let ((__tmp283713
                                                (let ((__tmp283718
                                                       (let ((__tmp283719
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '##structure '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp283719)))
              (__tmp283714
               (let ((__tmp283715
                      (let ((__tmp283716
                             (let ((__tmp283717
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self278072_
                                       __id283134
                                       __t283133
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp283717 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp283716))))
                 (declare (not safe))
                 (cons __tmp283715 _args278080_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp283718
                                                        __tmp283714))))
                                           (declare (not safe))
                                           (cons '%#call __tmp283713))))
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp283712
                                     _stx278073_))
                                  (let ((__tmp283711
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _self278072_
                                            __id283134
                                            __t283133
                                            '#f)))
                                        (__tmp283710
                                         (length (##structure-ref
                                                  _klass278076_
                                                  '5
                                                  gxc#!class::t
                                                  '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _stx278073_
                                     __tmp283711
                                     __tmp283710)))
                              (let ((_$obj278105_
                                     (let ((__tmp283659 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp283659))))
                                (let _lp278107_ ((_rest278109_ _args278080_)
                                                 (_initializers278110_ '()))
                                  (let* ((___stx283249283250_ _rest278109_)
                                         (_g278114278135_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               ___stx283249283250_)))))
                                    (let ((___kont283251283252_
                                           (lambda (_L278189_
                                                    _L278190_
                                                    _L278191_)
                                             (let* ((_slot278222_
                                                     (keyword->symbol
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L278191_))))
                                                    (_off278224_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass278076_
                                                        _slot278222_))))
                                               (if _off278224_
                                                   (let ((__tmp283661
                                                          (let ((__tmp283662
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _off278224_ _L278190_))))
                    (declare (not safe))
                    (cons __tmp283662 _initializers278110_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp278107_
                                                      _L278189_
                                                      __tmp283661))
                                                   (let ((__tmp283660
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _self278072_
                                                             __id283134
                                                             __t283133
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"unknown slot"
                                                      _stx278073_
                                                      __tmp283660
                                                      _slot278222_))))))
                                          (___kont283253283254_
                                           (lambda ()
                                             (let ((__tmp283663
                                                    (let ((__tmp283664
                                                           (let ((__tmp283687
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp283688
                                 (let ((__tmp283690
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj278105_ '())))
                                       (__tmp283689
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object278082_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp283690 __tmp283689))))
                            (declare (not safe))
                            (cons __tmp283688 '())))
                         (__tmp283665
                          (let ((__tmp283666
                                 (let ((__tmp283667
                                        (let ((__tmp283684
                                               (let ((__tmp283685
                                                      (let ((__tmp283686
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj278105_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp283686))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp283685 '())))
                                              (__tmp283668
                                               (let ((__tmp283669
                                                      (lambda (_i278149_
                                                               _r278150_)
                                                        (let ((__tmp283670
                                                               (let ((__tmp283671
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp283681
                                     (let ((__tmp283682
                                            (let ((__tmp283683
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self278072_
                                                      __id283134
                                                      __t283133
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp283683 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp283682)))
                                    (__tmp283672
                                     (let ((__tmp283678
                                            (let ((__tmp283679
                                                   (let ((__tmp283680
                                                          (car _i278149_)))
                                                     (declare (not safe))
                                                     (cons __tmp283680 '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp283679)))
                                           (__tmp283673
                                            (let ((__tmp283676
                                                   (let ((__tmp283677
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj278105_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp283677)))
                                                  (__tmp283674
                                                   (let ((__tmp283675
                                                          (cdr _i278149_)))
                                                     (declare (not safe))
                                                     (cons __tmp283675 '()))))
                                              (declare (not safe))
                                              (cons __tmp283676 __tmp283674))))
                                       (declare (not safe))
                                       (cons __tmp283678 __tmp283673))))
                                (declare (not safe))
                                (cons __tmp283681 __tmp283672))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp283671))))
                  (declare (not safe))
                  (cons __tmp283670 _r278150_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl1 __tmp283669
                                                         '()
                                                         _initializers278110_))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp283684
                                                  __tmp283668))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp283667))))
                            (declare (not safe))
                            (cons __tmp283666 '()))))
                     (declare (not safe))
                     (cons __tmp283687 __tmp283665))))
              (declare (not safe))
              (cons '%#let-values __tmp283664))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp283663
                                                _stx278073_))))
                                          (___kont283255283256_
                                           (lambda ()
                                             (let ((__tmp283691
                                                    (let ((__tmp283692
                                                           (let ((__tmp283706
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp283707
                                 (let ((__tmp283709
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj278105_ '())))
                                       (__tmp283708
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object278082_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp283709 __tmp283708))))
                            (declare (not safe))
                            (cons __tmp283707 '())))
                         (__tmp283693
                          (let ((__tmp283694
                                 (let ((__tmp283695
                                        (let ((__tmp283699
                                               (let ((__tmp283700
                                                      (let ((__tmp283704
                                                             (let ((__tmp283705
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'class-instance-init! '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp283705)))
                    (__tmp283701
                     (let ((__tmp283702
                            (let ((__tmp283703
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj278105_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp283703))))
                       (declare (not safe))
                       (cons __tmp283702 _args278080_))))
                (declare (not safe))
                (cons __tmp283704 __tmp283701))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp283700)))
                                              (__tmp283696
                                               (let ((__tmp283697
                                                      (let ((__tmp283698
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj278105_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp283698))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp283697 '()))))
                                          (declare (not safe))
                                          (cons __tmp283699 __tmp283696))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp283695))))
                            (declare (not safe))
                            (cons __tmp283694 '()))))
                     (declare (not safe))
                     (cons __tmp283706 __tmp283693))))
              (declare (not safe))
              (cons '%#let-values __tmp283692))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp283691
                                                _stx278073_)))))
                                      (let* ((_g278112278152_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       ___stx283249283250_))
                                                    (___kont283253283254_)
                                                    (___kont283255283256_))))
                                             (___match283286283287_
                                              (lambda (_e278121278157_
                                                       _hd278120278160_
                                                       _tl278119278162_
                                                       _e278124278165_
                                                       _hd278123278168_
                                                       _tl278122278170_
                                                       _e278127278173_
                                                       _hd278126278176_
                                                       _tl278125278178_
                                                       _e278130278181_
                                                       _hd278129278184_
                                                       _tl278128278186_)
                                                (let ((_L278189_
                                                       _tl278128278186_)
                                                      (_L278190_
                                                       _hd278129278184_)
                                                      (_L278191_
                                                       _hd278126278176_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-keyword?
                                                         _L278191_))
                                                      (___kont283251283252_
                                                       _L278189_
                                                       _L278190_
                                                       _L278191_)
                                                      (___kont283255283256_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               ___stx283249283250_))
                                            (let ((_e278121278157_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      ___stx283249283250_))))
                                              (let ((_tl278119278162_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e278121278157_)))
                                                    (_hd278120278160_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e278121278157_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd278120278160_))
                                                    (let ((_e278124278165_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd278120278160_))))
                                                      (let ((_tl278122278170_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e278124278165_)))
                    (_hd278123278168_
                     (let () (declare (not safe)) (##car _e278124278165_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd278123278168_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd278123278168_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl278122278170_))
                            (let ((_e278127278173_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl278122278170_))))
                              (let ((_tl278125278178_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e278127278173_)))
                                    (_hd278126278176_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e278127278173_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl278125278178_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl278119278162_))
                                        (let ((_e278130278181_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl278119278162_))))
                                          (let ((_tl278128278186_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e278130278181_)))
                                                (_hd278129278184_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e278130278181_))))
                                            (___match283286283287_
                                             _e278121278157_
                                             _hd278120278160_
                                             _tl278119278162_
                                             _e278124278165_
                                             _hd278123278168_
                                             _tl278122278170_
                                             _e278127278173_
                                             _hd278126278176_
                                             _tl278125278178_
                                             _e278130278181_
                                             _hd278129278184_
                                             _tl278128278186_)))
                                        (___kont283255283256_))
                                    (___kont283255283256_))))
                            (___kont283255283256_))
                        (___kont283255283256_))
                    (___kont283255283256_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont283255283256_))))
                                            (let ()
                                              (declare (not safe))
                                              (_g278112278152_))))))))))))))))))
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
      (lambda (_self277895_ _stx277896_ _args277897_)
        (let* ((_g277899277909_
                (lambda (_g277900277906_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g277900277906_))))
               (_g277898277947_
                (lambda (_g277900277912_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g277900277912_))
                      (let ((_e277904277914_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g277900277912_))))
                        (let ((_hd277903277917_
                               (let ()
                                 (declare (not safe))
                                 (##car _e277904277914_)))
                              (_tl277902277919_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e277904277914_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl277902277919_))
                              ((lambda (_L277922_)
                                 (let* ((_klass277933_
                                         (let ((__tmp283832
                                                (##structure-ref
                                                 _self277895_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx277896_
                                            __tmp283832)))
                                        (_field277935_
                                         (let ((__tmp283833
                                                (##structure-ref
                                                 _self277895_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass277933_
                                            __tmp283833)))
                                        (_object277937_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L277922_))))
                                   (if (##structure-ref
                                        _klass277933_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp283910
                                              (let ((__tmp283919
                                                     (if (##structure-ref
                                                          _self277895_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp283911
                                                     (let ((__tmp283916
                                                            (let ((__tmp283917
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp283918
                                  (##structure-ref
                                   _self277895_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp283918 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp283917)))
                   (__tmp283912
                    (let ((__tmp283914
                           (let ((__tmp283915
                                  (let ()
                                    (declare (not safe))
                                    (cons _field277935_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp283915)))
                          (__tmp283913
                           (let ()
                             (declare (not safe))
                             (cons _object277937_ '()))))
                      (declare (not safe))
                      (cons __tmp283914 __tmp283913))))
               (declare (not safe))
               (cons __tmp283916 __tmp283912))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp283919
                                                      __tmp283911))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp283910
                                          _stx277896_))
                                       (if (##structure-ref
                                            _klass277933_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp283900
                                                  (let ((__tmp283909
                                                         (if (##structure-ref
                                                              _self277895_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp283901
                                                         (let ((__tmp283906
                                                                (let ((__tmp283907
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp283908
                                      (##structure-ref
                                       _self277895_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp283908 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp283907)))
                       (__tmp283902
                        (let ((__tmp283904
                               (let ((__tmp283905
                                      (let ()
                                        (declare (not safe))
                                        (cons _field277935_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp283905)))
                              (__tmp283903
                               (let ()
                                 (declare (not safe))
                                 (cons _object277937_ '()))))
                          (declare (not safe))
                          (cons __tmp283904 __tmp283903))))
                   (declare (not safe))
                   (cons __tmp283906 __tmp283902))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp283909
                                                          __tmp283901))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp283900
                                              _stx277896_))
                                           (let ((_$e277940_
                                                  (let ((__tmp283834
                                                         (##structure-ref
                                                          _self277895_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass277933_
                                                     __tmp283834))))
                                             (if _$e277940_
                                                 ((lambda (_klass277943_)
                                                    (let ((__tmp283890
                                                           (let ((__tmp283899
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self277895_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp283891
                          (let ((__tmp283896
                                 (let ((__tmp283897
                                        (let ((__tmp283898
                                               (##structure-ref
                                                _self277895_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp283898 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp283897)))
                                (__tmp283892
                                 (let ((__tmp283894
                                        (let ((__tmp283895
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field277935_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp283895)))
                                       (__tmp283893
                                        (let ()
                                          (declare (not safe))
                                          (cons _object277937_ '()))))
                                   (declare (not safe))
                                   (cons __tmp283894 __tmp283893))))
                            (declare (not safe))
                            (cons __tmp283896 __tmp283892))))
                     (declare (not safe))
                     (cons __tmp283899 __tmp283891))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp283890 _stx277896_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e277940_)
                                                 (if (##structure-ref
                                                      _self277895_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp283844
                                                            (let* ((_$obj277945_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp283845 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp283845)))
                           (__tmp283846
                            (let ((__tmp283886
                                   (let ((__tmp283887
                                          (let ((__tmp283889
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj277945_ '())))
                                                (__tmp283888
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object277937_ '()))))
                                            (declare (not safe))
                                            (cons __tmp283889 __tmp283888))))
                                     (declare (not safe))
                                     (cons __tmp283887 '())))
                                  (__tmp283847
                                   (let ((__tmp283848
                                          (let ((__tmp283849
                                                 (let ((__tmp283878
                                                        (let ((__tmp283879
                                                               (let ((__tmp283883
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp283884
                                     (let ((__tmp283885
                                            (##structure-ref
                                             _klass277933_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp283885 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp283884)))
                             (__tmp283880
                              (let ((__tmp283881
                                     (let ((__tmp283882
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj277945_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp283882))))
                                (declare (not safe))
                                (cons __tmp283881 '()))))
                         (declare (not safe))
                         (cons __tmp283883 __tmp283880))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp283879)))
               (__tmp283850
                (let ((__tmp283867
                       (let ((__tmp283868
                              (let ((__tmp283875
                                     (let ((__tmp283876
                                            (let ((__tmp283877
                                                   (##structure-ref
                                                    _self277895_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp283877 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp283876)))
                                    (__tmp283869
                                     (let ((__tmp283873
                                            (let ((__tmp283874
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field277935_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp283874)))
                                           (__tmp283870
                                            (let ((__tmp283871
                                                   (let ((__tmp283872
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj277945_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp283872))))
                                              (declare (not safe))
                                              (cons __tmp283871 '()))))
                                       (declare (not safe))
                                       (cons __tmp283873 __tmp283870))))
                                (declare (not safe))
                                (cons __tmp283875 __tmp283869))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp283868)))
                      (__tmp283851
                       (let ((__tmp283852
                              (let ((__tmp283853
                                     (let ((__tmp283865
                                            (let ((__tmp283866
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp283866)))
                                           (__tmp283854
                                            (let ((__tmp283862
                                                   (let ((__tmp283863
                                                          (let ((__tmp283864
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self277895_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp283864 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp283863)))
                                                  (__tmp283855
                                                   (let ((__tmp283860
                                                          (let ((__tmp283861
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj277945_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp283861)))
                 (__tmp283856
                  (let ((__tmp283857
                         (let ((__tmp283858
                                (let ((__tmp283859
                                       (##structure-ref
                                        _self277895_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp283859 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp283858))))
                    (declare (not safe))
                    (cons __tmp283857 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp283860
                                                           __tmp283856))))
                                              (declare (not safe))
                                              (cons __tmp283862 __tmp283855))))
                                       (declare (not safe))
                                       (cons __tmp283865 __tmp283854))))
                                (declare (not safe))
                                (cons '%#call __tmp283853))))
                         (declare (not safe))
                         (cons __tmp283852 '()))))
                  (declare (not safe))
                  (cons __tmp283867 __tmp283851))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp283878
                                                         __tmp283850))))
                                            (declare (not safe))
                                            (cons '%#if __tmp283849))))
                                     (declare (not safe))
                                     (cons __tmp283848 '()))))
                              (declare (not safe))
                              (cons __tmp283886 __tmp283847))))
                      (declare (not safe))
                      (cons '%#let-values __tmp283846))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp283844 _stx277896_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp283835
                                                            (let ((__tmp283836
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp283842
                                  (let ((__tmp283843
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp283843)))
                                 (__tmp283837
                                  (let ((__tmp283838
                                         (let ((__tmp283839
                                                (let ((__tmp283840
                                                       (let ((__tmp283841
                                                              (##structure-ref
                                                               _self277895_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp283841
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp283840))))
                                           (declare (not safe))
                                           (cons __tmp283839 '()))))
                                    (declare (not safe))
                                    (cons _object277937_ __tmp283838))))
                             (declare (not safe))
                             (cons __tmp283842 __tmp283837))))
                      (declare (not safe))
                      (cons '%#call __tmp283836))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp283835 _stx277896_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd277903277917_)
                              (let ()
                                (declare (not safe))
                                (_g277899277909_ _g277900277912_)))))
                      (let ()
                        (declare (not safe))
                        (_g277899277909_ _g277900277912_))))))
          (declare (not safe))
          (_g277898277947_ _args277897_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__t283136)
        (let ((__slot283137
               (let ((__tmp283140
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t283136 'slot))))
                 (if __tmp283140 __tmp283140 (error '"Unknown slot" 'slot))))
              (__checked?283138
               (let ((__tmp283141
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t283136 'checked?))))
                 (if __tmp283141
                     __tmp283141
                     (error '"Unknown slot" 'checked?))))
              (__id283139
               (let ((__tmp283142
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t283136 'id))))
                 (if __tmp283142 __tmp283142 (error '"Unknown slot" 'id)))))
          (lambda (_self277895_ _stx277896_ _args277897_)
            (let* ((_g277899277909_
                    (lambda (_g277900277906_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g277900277906_))))
                   (_g277898277947_
                    (lambda (_g277900277912_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g277900277912_))
                          (let ((_e277904277914_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g277900277912_))))
                            (let ((_hd277903277917_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e277904277914_)))
                                  (_tl277902277919_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e277904277914_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl277902277919_))
                                  ((lambda (_L277922_)
                                     (let* ((_klass277933_
                                             (let ((__tmp283920
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self277895_
                                                       __id283139
                                                       __t283136
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx277896_
                                                __tmp283920)))
                                            (_field277935_
                                             (let ((__tmp283921
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self277895_
                                                       __slot283137
                                                       __t283136
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass277933_
                                                __tmp283921)))
                                            (_object277937_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L277922_))))
                                       (if (##structure-ref
                                            _klass277933_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp283998
                                                  (let ((__tmp284007
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self277895_
                        __checked?283138
                        __t283136
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp283999
                 (let ((__tmp284004
                        (let ((__tmp284005
                               (let ((__tmp284006
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self277895_
                                         __id283139
                                         __t283136
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp284006 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp284005)))
                       (__tmp284000
                        (let ((__tmp284002
                               (let ((__tmp284003
                                      (let ()
                                        (declare (not safe))
                                        (cons _field277935_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp284003)))
                              (__tmp284001
                               (let ()
                                 (declare (not safe))
                                 (cons _object277937_ '()))))
                          (declare (not safe))
                          (cons __tmp284002 __tmp284001))))
                   (declare (not safe))
                   (cons __tmp284004 __tmp284000))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp284007
                                                          __tmp283999))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp283998
                                              _stx277896_))
                                           (if (##structure-ref
                                                _klass277933_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp283988
                                                      (let ((__tmp283997
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self277895_
                            __checked?283138
                            __t283136
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp283989
                     (let ((__tmp283994
                            (let ((__tmp283995
                                   (let ((__tmp283996
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self277895_
                                             __id283139
                                             __t283136
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp283996 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp283995)))
                           (__tmp283990
                            (let ((__tmp283992
                                   (let ((__tmp283993
                                          (let ()
                                            (declare (not safe))
                                            (cons _field277935_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp283993)))
                                  (__tmp283991
                                   (let ()
                                     (declare (not safe))
                                     (cons _object277937_ '()))))
                              (declare (not safe))
                              (cons __tmp283992 __tmp283991))))
                       (declare (not safe))
                       (cons __tmp283994 __tmp283990))))
                (declare (not safe))
                (cons __tmp283997 __tmp283989))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp283988
                                                  _stx277896_))
                                               (let ((_$e277940_
                                                      (let ((__tmp283922
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self277895_
                        __slot283137
                        __t283136
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass277933_ __tmp283922))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e277940_
                                                     ((lambda (_klass277943_)
                                                        (let ((__tmp283978
                                                               (let ((__tmp283987
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self277895_
                                     __checked?283138
                                     __t283136
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp283979
                              (let ((__tmp283984
                                     (let ((__tmp283985
                                            (let ((__tmp283986
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self277895_
                                                      __id283139
                                                      __t283136
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp283986 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp283985)))
                                    (__tmp283980
                                     (let ((__tmp283982
                                            (let ((__tmp283983
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field277935_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp283983)))
                                           (__tmp283981
                                            (let ()
                                              (declare (not safe))
                                              (cons _object277937_ '()))))
                                       (declare (not safe))
                                       (cons __tmp283982 __tmp283981))))
                                (declare (not safe))
                                (cons __tmp283984 __tmp283980))))
                         (declare (not safe))
                         (cons __tmp283987 __tmp283979))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp283978 _stx277896_)))
              _$e277940_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self277895_
                                                            __checked?283138
                                                            __t283136
                                                            '#f))
                                                         (let ((__tmp283932
                                                                (let* ((_$obj277945_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp283933 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp283933)))
                               (__tmp283934
                                (let ((__tmp283974
                                       (let ((__tmp283975
                                              (let ((__tmp283977
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj277945_
                                                             '())))
                                                    (__tmp283976
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object277937_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp283977
                                                      __tmp283976))))
                                         (declare (not safe))
                                         (cons __tmp283975 '())))
                                      (__tmp283935
                                       (let ((__tmp283936
                                              (let ((__tmp283937
                                                     (let ((__tmp283966
                                                            (let ((__tmp283967
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp283971
                                  (let ((__tmp283972
                                         (let ((__tmp283973
                                                (##structure-ref
                                                 _klass277933_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp283973 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp283972)))
                                 (__tmp283968
                                  (let ((__tmp283969
                                         (let ((__tmp283970
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj277945_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp283970))))
                                    (declare (not safe))
                                    (cons __tmp283969 '()))))
                             (declare (not safe))
                             (cons __tmp283971 __tmp283968))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp283967)))
                   (__tmp283938
                    (let ((__tmp283955
                           (let ((__tmp283956
                                  (let ((__tmp283963
                                         (let ((__tmp283964
                                                (let ((__tmp283965
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self277895_
                                                          __id283139
                                                          __t283136
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp283965 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp283964)))
                                        (__tmp283957
                                         (let ((__tmp283961
                                                (let ((__tmp283962
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field277935_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp283962)))
                                               (__tmp283958
                                                (let ((__tmp283959
                                                       (let ((__tmp283960
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj277945_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp283960))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp283959 '()))))
                                           (declare (not safe))
                                           (cons __tmp283961 __tmp283958))))
                                    (declare (not safe))
                                    (cons __tmp283963 __tmp283957))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp283956)))
                          (__tmp283939
                           (let ((__tmp283940
                                  (let ((__tmp283941
                                         (let ((__tmp283953
                                                (let ((__tmp283954
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp283954)))
                                               (__tmp283942
                                                (let ((__tmp283950
                                                       (let ((__tmp283951
                                                              (let ((__tmp283952
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self277895_
                                __id283139
                                __t283136
                                '#f))))
                        (declare (not safe))
                        (cons __tmp283952 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp283951)))
              (__tmp283943
               (let ((__tmp283948
                      (let ((__tmp283949
                             (let ()
                               (declare (not safe))
                               (cons _$obj277945_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp283949)))
                     (__tmp283944
                      (let ((__tmp283945
                             (let ((__tmp283946
                                    (let ((__tmp283947
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self277895_
                                              __slot283137
                                              __t283136
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp283947 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp283946))))
                        (declare (not safe))
                        (cons __tmp283945 '()))))
                 (declare (not safe))
                 (cons __tmp283948 __tmp283944))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp283950
                                                        __tmp283943))))
                                           (declare (not safe))
                                           (cons __tmp283953 __tmp283942))))
                                    (declare (not safe))
                                    (cons '%#call __tmp283941))))
                             (declare (not safe))
                             (cons __tmp283940 '()))))
                      (declare (not safe))
                      (cons __tmp283955 __tmp283939))))
               (declare (not safe))
               (cons __tmp283966 __tmp283938))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp283937))))
                                         (declare (not safe))
                                         (cons __tmp283936 '()))))
                                  (declare (not safe))
                                  (cons __tmp283974 __tmp283935))))
                          (declare (not safe))
                          (cons '%#let-values __tmp283934))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp283932 _stx277896_))
                 (let ((__tmp283923
                        (let ((__tmp283924
                               (let ((__tmp283930
                                      (let ((__tmp283931
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp283931)))
                                     (__tmp283925
                                      (let ((__tmp283926
                                             (let ((__tmp283927
                                                    (let ((__tmp283928
                                                           (let ((__tmp283929
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self277895_
                             __slot283137
                             __t283136
                             '#f))))
                     (declare (not safe))
                     (cons __tmp283929 '()))))
              (declare (not safe))
              (cons '%#quote __tmp283928))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp283927 '()))))
                                        (declare (not safe))
                                        (cons _object277937_ __tmp283926))))
                                 (declare (not safe))
                                 (cons __tmp283930 __tmp283925))))
                          (declare (not safe))
                          (cons '%#call __tmp283924))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp283923 _stx277896_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd277903277917_)
                                  (let ()
                                    (declare (not safe))
                                    (_g277899277909_ _g277900277912_)))))
                          (let ()
                            (declare (not safe))
                            (_g277899277909_ _g277900277912_))))))
              (declare (not safe))
              (_g277898277947_ _args277897_))))))
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
      (lambda (_self277700_ _stx277701_ _args277702_)
        (let* ((_g277704277718_
                (lambda (_g277705277715_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g277705277715_))))
               (_g277703277770_
                (lambda (_g277705277721_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g277705277721_))
                      (let ((_e277710277723_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g277705277721_))))
                        (let ((_hd277709277726_
                               (let ()
                                 (declare (not safe))
                                 (##car _e277710277723_)))
                              (_tl277708277728_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e277710277723_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl277708277728_))
                              (let ((_e277713277731_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl277708277728_))))
                                (let ((_hd277712277734_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e277713277731_)))
                                      (_tl277711277736_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e277713277731_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl277711277736_))
                                      ((lambda (_L277739_ _L277740_)
                                         (let* ((_klass277754_
                                                 (let ((__tmp284008
                                                        (##structure-ref
                                                         _self277700_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx277701_
                                                    __tmp284008)))
                                                (_field277756_
                                                 (let ((__tmp284009
                                                        (##structure-ref
                                                         _self277700_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass277754_
                                                    __tmp284009)))
                                                (_object277758_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L277740_)))
                                                (_value277760_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L277739_))))
                                           (if (##structure-ref
                                                _klass277754_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp284091
                                                      (let ((__tmp284101
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self277700_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp284092
                     (let ((__tmp284098
                            (let ((__tmp284099
                                   (let ((__tmp284100
                                          (##structure-ref
                                           _self277700_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp284100 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp284099)))
                           (__tmp284093
                            (let ((__tmp284096
                                   (let ((__tmp284097
                                          (let ()
                                            (declare (not safe))
                                            (cons _field277756_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp284097)))
                                  (__tmp284094
                                   (let ((__tmp284095
                                          (let ()
                                            (declare (not safe))
                                            (cons _value277760_ '()))))
                                     (declare (not safe))
                                     (cons _object277758_ __tmp284095))))
                              (declare (not safe))
                              (cons __tmp284096 __tmp284094))))
                       (declare (not safe))
                       (cons __tmp284098 __tmp284093))))
                (declare (not safe))
                (cons __tmp284101 __tmp284092))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp284091
                                                  _stx277701_))
                                               (if (##structure-ref
                                                    _klass277754_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp284080
                                                          (let ((__tmp284090
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self277700_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp284081
                         (let ((__tmp284087
                                (let ((__tmp284088
                                       (let ((__tmp284089
                                              (##structure-ref
                                               _self277700_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp284089 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp284088)))
                               (__tmp284082
                                (let ((__tmp284085
                                       (let ((__tmp284086
                                              (let ()
                                                (declare (not safe))
                                                (cons _field277756_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp284086)))
                                      (__tmp284083
                                       (let ((__tmp284084
                                              (let ()
                                                (declare (not safe))
                                                (cons _value277760_ '()))))
                                         (declare (not safe))
                                         (cons _object277758_ __tmp284084))))
                                  (declare (not safe))
                                  (cons __tmp284085 __tmp284083))))
                           (declare (not safe))
                           (cons __tmp284087 __tmp284082))))
                    (declare (not safe))
                    (cons __tmp284090 __tmp284081))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp284080
                                                      _stx277701_))
                                                   (let ((_$e277763_
                                                          (let ((__tmp284010
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self277700_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass277754_ __tmp284010))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e277763_
                                                         ((lambda (_klass277766_)
                                                            (let ((__tmp284069
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp284079
                                  (if (##structure-ref
                                       _self277700_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp284070
                                  (let ((__tmp284076
                                         (let ((__tmp284077
                                                (let ((__tmp284078
                                                       (##structure-ref
                                                        _self277700_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp284078 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp284077)))
                                        (__tmp284071
                                         (let ((__tmp284074
                                                (let ((__tmp284075
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field277756_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp284075)))
                                               (__tmp284072
                                                (let ((__tmp284073
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value277760_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object277758_
                                                        __tmp284073))))
                                           (declare (not safe))
                                           (cons __tmp284074 __tmp284072))))
                                    (declare (not safe))
                                    (cons __tmp284076 __tmp284071))))
                             (declare (not safe))
                             (cons __tmp284079 __tmp284070))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp284069 _stx277701_)))
                  _$e277763_)
                 (if (##structure-ref _self277700_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp284021
                            (let* ((_$obj277768_
                                    (let ((__tmp284022 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp284022)))
                                   (__tmp284023
                                    (let ((__tmp284065
                                           (let ((__tmp284066
                                                  (let ((__tmp284068
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj277768_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp284067
                 (let () (declare (not safe)) (cons _object277758_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp284068
                                                          __tmp284067))))
                                             (declare (not safe))
                                             (cons __tmp284066 '())))
                                          (__tmp284024
                                           (let ((__tmp284025
                                                  (let ((__tmp284026
                                                         (let ((__tmp284057
                                                                (let ((__tmp284058
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp284062
                                      (let ((__tmp284063
                                             (let ((__tmp284064
                                                    (##structure-ref
                                                     _klass277754_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp284064 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp284063)))
                                     (__tmp284059
                                      (let ((__tmp284060
                                             (let ((__tmp284061
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj277768_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp284061))))
                                        (declare (not safe))
                                        (cons __tmp284060 '()))))
                                 (declare (not safe))
                                 (cons __tmp284062 __tmp284059))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp284058)))
                       (__tmp284027
                        (let ((__tmp284045
                               (let ((__tmp284046
                                      (let ((__tmp284054
                                             (let ((__tmp284055
                                                    (let ((__tmp284056
                                                           (##structure-ref
                                                            _self277700_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp284056 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp284055)))
                                            (__tmp284047
                                             (let ((__tmp284052
                                                    (let ((__tmp284053
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field277756_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp284053)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp284048
                                                    (let ((__tmp284050
                                                           (let ((__tmp284051
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj277768_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp284051)))
                  (__tmp284049
                   (let () (declare (not safe)) (cons _value277760_ '()))))
              (declare (not safe))
              (cons __tmp284050 __tmp284049))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp284052
                                                     __tmp284048))))
                                        (declare (not safe))
                                        (cons __tmp284054 __tmp284047))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp284046)))
                              (__tmp284028
                               (let ((__tmp284029
                                      (let ((__tmp284030
                                             (let ((__tmp284043
                                                    (let ((__tmp284044
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp284044)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp284031
                                                    (let ((__tmp284040
                                                           (let ((__tmp284041
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp284042
                                 (##structure-ref
                                  _self277700_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp284042 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp284041)))
                  (__tmp284032
                   (let ((__tmp284038
                          (let ((__tmp284039
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj277768_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp284039)))
                         (__tmp284033
                          (let ((__tmp284035
                                 (let ((__tmp284036
                                        (let ((__tmp284037
                                               (##structure-ref
                                                _self277700_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp284037 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp284036)))
                                (__tmp284034
                                 (let ()
                                   (declare (not safe))
                                   (cons _value277760_ '()))))
                            (declare (not safe))
                            (cons __tmp284035 __tmp284034))))
                     (declare (not safe))
                     (cons __tmp284038 __tmp284033))))
              (declare (not safe))
              (cons __tmp284040 __tmp284032))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp284043
                                                     __tmp284031))))
                                        (declare (not safe))
                                        (cons '%#call __tmp284030))))
                                 (declare (not safe))
                                 (cons __tmp284029 '()))))
                          (declare (not safe))
                          (cons __tmp284045 __tmp284028))))
                   (declare (not safe))
                   (cons __tmp284057 __tmp284027))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp284026))))
                                             (declare (not safe))
                                             (cons __tmp284025 '()))))
                                      (declare (not safe))
                                      (cons __tmp284065 __tmp284024))))
                              (declare (not safe))
                              (cons '%#let-values __tmp284023))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp284021 _stx277701_))
                     (let ((__tmp284011
                            (let ((__tmp284012
                                   (let ((__tmp284019
                                          (let ((__tmp284020
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp284020)))
                                         (__tmp284013
                                          (let ((__tmp284014
                                                 (let ((__tmp284016
                                                        (let ((__tmp284017
                                                               (let ((__tmp284018
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self277700_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp284018 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp284017)))
               (__tmp284015
                (let () (declare (not safe)) (cons _value277760_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp284016
                                                         __tmp284015))))
                                            (declare (not safe))
                                            (cons _object277758_
                                                  __tmp284014))))
                                     (declare (not safe))
                                     (cons __tmp284019 __tmp284013))))
                              (declare (not safe))
                              (cons '%#call __tmp284012))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp284011 _stx277701_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd277712277734_
                                       _hd277709277726_)
                                      (let ()
                                        (declare (not safe))
                                        (_g277704277718_ _g277705277721_)))))
                              (let ()
                                (declare (not safe))
                                (_g277704277718_ _g277705277721_)))))
                      (let ()
                        (declare (not safe))
                        (_g277704277718_ _g277705277721_))))))
          (declare (not safe))
          (_g277703277770_ _args277702_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__t283143)
        (let ((__slot283144
               (let ((__tmp283147
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t283143 'slot))))
                 (if __tmp283147 __tmp283147 (error '"Unknown slot" 'slot))))
              (__checked?283145
               (let ((__tmp283148
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t283143 'checked?))))
                 (if __tmp283148
                     __tmp283148
                     (error '"Unknown slot" 'checked?))))
              (__id283146
               (let ((__tmp283149
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t283143 'id))))
                 (if __tmp283149 __tmp283149 (error '"Unknown slot" 'id)))))
          (lambda (_self277700_ _stx277701_ _args277702_)
            (let* ((_g277704277718_
                    (lambda (_g277705277715_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g277705277715_))))
                   (_g277703277770_
                    (lambda (_g277705277721_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g277705277721_))
                          (let ((_e277710277723_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g277705277721_))))
                            (let ((_hd277709277726_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e277710277723_)))
                                  (_tl277708277728_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e277710277723_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl277708277728_))
                                  (let ((_e277713277731_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl277708277728_))))
                                    (let ((_hd277712277734_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e277713277731_)))
                                          (_tl277711277736_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e277713277731_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl277711277736_))
                                          ((lambda (_L277739_ _L277740_)
                                             (let* ((_klass277754_
                                                     (let ((__tmp284102
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self277700_
                                                               __id283146
                                                               __t283143
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx277701_
                                                        __tmp284102)))
                                                    (_field277756_
                                                     (let ((__tmp284103
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self277700_
                                                               __slot283144
                                                               __t283143
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass277754_
                                                        __tmp284103)))
                                                    (_object277758_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L277740_)))
                                                    (_value277760_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L277739_))))
                                               (if (##structure-ref
                                                    _klass277754_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp284185
                                                          (let ((__tmp284195
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self277700_
                                __checked?283145
                                __t283143
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp284186
                         (let ((__tmp284192
                                (let ((__tmp284193
                                       (let ((__tmp284194
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self277700_
                                                 __id283146
                                                 __t283143
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp284194 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp284193)))
                               (__tmp284187
                                (let ((__tmp284190
                                       (let ((__tmp284191
                                              (let ()
                                                (declare (not safe))
                                                (cons _field277756_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp284191)))
                                      (__tmp284188
                                       (let ((__tmp284189
                                              (let ()
                                                (declare (not safe))
                                                (cons _value277760_ '()))))
                                         (declare (not safe))
                                         (cons _object277758_ __tmp284189))))
                                  (declare (not safe))
                                  (cons __tmp284190 __tmp284188))))
                           (declare (not safe))
                           (cons __tmp284192 __tmp284187))))
                    (declare (not safe))
                    (cons __tmp284195 __tmp284186))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp284185
                                                      _stx277701_))
                                                   (if (##structure-ref
                                                        _klass277754_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp284174
                                                              (let ((__tmp284184
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self277700_
                                    __checked?283145
                                    __t283143
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp284175
                             (let ((__tmp284181
                                    (let ((__tmp284182
                                           (let ((__tmp284183
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self277700_
                                                     __id283146
                                                     __t283143
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp284183 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp284182)))
                                   (__tmp284176
                                    (let ((__tmp284179
                                           (let ((__tmp284180
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field277756_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp284180)))
                                          (__tmp284177
                                           (let ((__tmp284178
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value277760_ '()))))
                                             (declare (not safe))
                                             (cons _object277758_
                                                   __tmp284178))))
                                      (declare (not safe))
                                      (cons __tmp284179 __tmp284177))))
                               (declare (not safe))
                               (cons __tmp284181 __tmp284176))))
                        (declare (not safe))
                        (cons __tmp284184 __tmp284175))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp284174 _stx277701_))
               (let ((_$e277763_
                      (let ((__tmp284104
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self277700_
                                __slot283144
                                __t283143
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass277754_
                         __tmp284104))))
                 (if _$e277763_
                     ((lambda (_klass277766_)
                        (let ((__tmp284163
                               (let ((__tmp284173
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self277700_
                                             __checked?283145
                                             __t283143
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp284164
                                      (let ((__tmp284170
                                             (let ((__tmp284171
                                                    (let ((__tmp284172
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self277700_
                                                              __id283146
                                                              __t283143
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp284172 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp284171)))
                                            (__tmp284165
                                             (let ((__tmp284168
                                                    (let ((__tmp284169
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field277756_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp284169)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp284166
                                                    (let ((__tmp284167
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value277760_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object277758_ __tmp284167))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp284168
                                                     __tmp284166))))
                                        (declare (not safe))
                                        (cons __tmp284170 __tmp284165))))
                                 (declare (not safe))
                                 (cons __tmp284173 __tmp284164))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp284163 _stx277701_)))
                      _$e277763_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self277700_
                            __checked?283145
                            __t283143
                            '#f))
                         (let ((__tmp284115
                                (let* ((_$obj277768_
                                        (let ((__tmp284116 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp284116)))
                                       (__tmp284117
                                        (let ((__tmp284159
                                               (let ((__tmp284160
                                                      (let ((__tmp284162
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj277768_ '())))
                    (__tmp284161
                     (let () (declare (not safe)) (cons _object277758_ '()))))
                (declare (not safe))
                (cons __tmp284162 __tmp284161))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp284160 '())))
                                              (__tmp284118
                                               (let ((__tmp284119
                                                      (let ((__tmp284120
                                                             (let ((__tmp284151
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp284152
                                   (let ((__tmp284156
                                          (let ((__tmp284157
                                                 (let ((__tmp284158
                                                        (##structure-ref
                                                         _klass277754_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp284158 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp284157)))
                                         (__tmp284153
                                          (let ((__tmp284154
                                                 (let ((__tmp284155
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj277768_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp284155))))
                                            (declare (not safe))
                                            (cons __tmp284154 '()))))
                                     (declare (not safe))
                                     (cons __tmp284156 __tmp284153))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp284152)))
                           (__tmp284121
                            (let ((__tmp284139
                                   (let ((__tmp284140
                                          (let ((__tmp284148
                                                 (let ((__tmp284149
                                                        (let ((__tmp284150
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self277700_
                          __id283146
                          __t283143
                          '#f))))
                  (declare (not safe))
                  (cons __tmp284150 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp284149)))
                                                (__tmp284141
                                                 (let ((__tmp284146
                                                        (let ((__tmp284147
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field277756_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp284147)))
               (__tmp284142
                (let ((__tmp284144
                       (let ((__tmp284145
                              (let ()
                                (declare (not safe))
                                (cons _$obj277768_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp284145)))
                      (__tmp284143
                       (let () (declare (not safe)) (cons _value277760_ '()))))
                  (declare (not safe))
                  (cons __tmp284144 __tmp284143))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp284146
                                                         __tmp284142))))
                                            (declare (not safe))
                                            (cons __tmp284148 __tmp284141))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp284140)))
                                  (__tmp284122
                                   (let ((__tmp284123
                                          (let ((__tmp284124
                                                 (let ((__tmp284137
                                                        (let ((__tmp284138
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp284138)))
               (__tmp284125
                (let ((__tmp284134
                       (let ((__tmp284135
                              (let ((__tmp284136
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self277700_
                                        __id283146
                                        __t283143
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp284136 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp284135)))
                      (__tmp284126
                       (let ((__tmp284132
                              (let ((__tmp284133
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj277768_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp284133)))
                             (__tmp284127
                              (let ((__tmp284129
                                     (let ((__tmp284130
                                            (let ((__tmp284131
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self277700_
                                                      __slot283144
                                                      __t283143
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp284131 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp284130)))
                                    (__tmp284128
                                     (let ()
                                       (declare (not safe))
                                       (cons _value277760_ '()))))
                                (declare (not safe))
                                (cons __tmp284129 __tmp284128))))
                         (declare (not safe))
                         (cons __tmp284132 __tmp284127))))
                  (declare (not safe))
                  (cons __tmp284134 __tmp284126))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp284137
                                                         __tmp284125))))
                                            (declare (not safe))
                                            (cons '%#call __tmp284124))))
                                     (declare (not safe))
                                     (cons __tmp284123 '()))))
                              (declare (not safe))
                              (cons __tmp284139 __tmp284122))))
                       (declare (not safe))
                       (cons __tmp284151 __tmp284121))))
                (declare (not safe))
                (cons '%#if __tmp284120))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp284119 '()))))
                                          (declare (not safe))
                                          (cons __tmp284159 __tmp284118))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp284117))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp284115 _stx277701_))
                         (let ((__tmp284105
                                (let ((__tmp284106
                                       (let ((__tmp284113
                                              (let ((__tmp284114
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp284114)))
                                             (__tmp284107
                                              (let ((__tmp284108
                                                     (let ((__tmp284110
                                                            (let ((__tmp284111
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp284112
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self277700_
                                     __slot283144
                                     __t283143
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp284112 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp284111)))
                   (__tmp284109
                    (let () (declare (not safe)) (cons _value277760_ '()))))
               (declare (not safe))
               (cons __tmp284110 __tmp284109))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object277758_
                                                      __tmp284108))))
                                         (declare (not safe))
                                         (cons __tmp284113 __tmp284107))))
                                  (declare (not safe))
                                  (cons '%#call __tmp284106))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp284105
                            _stx277701_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd277712277734_
                                           _hd277709277726_)
                                          (let ()
                                            (declare (not safe))
                                            (_g277704277718_
                                             _g277705277721_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g277704277718_ _g277705277721_)))))
                          (let ()
                            (declare (not safe))
                            (_g277704277718_ _g277705277721_))))))
              (declare (not safe))
              (_g277703277770_ _args277702_))))))
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
      (lambda (_self277534_ _stx277535_ _args277536_)
        (let* ((_self277537277546_ _self277534_)
               (_E277539277550_
                (lambda () (error '"No clause matching" _self277537277546_)))
               (_K277540277557_
                (lambda (_inline277553_ _dispatch277554_ _arity277555_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self277534_ _args277536_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx277535_
                         _arity277555_)))
                  (if _inline277553_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp284201
                               (let ((__tmp284202
                                      (_inline277553_ _stx277535_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp284202
                                  _stx277535_))))
                          (declare (not safe))
                          (gxc#compile-e__0 __tmp284201)))
                      (if _dispatch277554_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch277554_))
                            (let ((__tmp284196
                                   (let ((__tmp284197
                                          (let ((__tmp284198
                                                 (let ((__tmp284199
                                                        (let ((__tmp284200
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch277554_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp284200))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp284199
                                                         _args277536_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp284198))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp284197
                                      _stx277535_))))
                              (declare (not safe))
                              (gxc#compile-e__0 __tmp284196)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _stx277535_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self277537277546_ 'gxc#!lambda::t))
              (let* ((_e277541277560_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self277537277546_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e277542277563_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self277537277546_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity277566_ _e277542277563_)
                     (_e277543277568_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self277537277546_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch277571_ _e277543277568_)
                     (_e277544277573_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self277537277546_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline277576_ _e277544277573_))
                (declare (not safe))
                (_K277540277557_
                 _inline277576_
                 _dispatch277571_
                 _arity277566_))
              (let () (declare (not safe)) (_E277539277550_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self277373_ _stx277374_ _args277375_)
        (let* ((_self277376277383_ _self277373_)
               (_E277378277387_
                (lambda () (error '"No clause matching" _self277376277383_)))
               (_K277379277401_
                (lambda (_clauses277390_)
                  (let ((_$e277396_
                         (let ((__tmp284203
                                (lambda (_g277391277393_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g277391277393_
                                     _args277375_)))))
                           (declare (not safe))
                           (find __tmp284203 _clauses277390_))))
                    (if _$e277396_
                        ((lambda (_clause277399_)
                           (let ((__method283418
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause277399_
                                     'optimize-call))))
                             (if __method283418
                                 (__method283418
                                  _clause277399_
                                  _stx277374_
                                  _args277375_)
                                 (error '"Missing method"
                                        _clause277399_
                                        'optimize-call))))
                         _$e277396_)
                        (let ((__tmp284204
                               (map gxc#!lambda-arity _clauses277390_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx277374_
                           __tmp284204)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self277376277383_
                 'gxc#!case-lambda::t))
              (let* ((_e277380277404_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self277376277383_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e277381277407_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self277376277383_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses277410_ _e277381277407_))
                (declare (not safe))
                (_K277379277401_ _clauses277410_))
              (let () (declare (not safe)) (_E277378277387_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self277187_ _args277188_)
        (let* ((_self277189277196_ _self277187_)
               (_E277191277200_
                (lambda () (error '"No clause matching" _self277189277196_)))
               (_K277192277240_
                (lambda (_arity277203_)
                  (let* ((_arity277204277213_ _arity277203_)
                         (_E277207277217_
                          (lambda ()
                            (error '"No clause matching"
                                   _arity277204277213_))))
                    (let ((_K277211277237_
                           (lambda ()
                             (fx= (length _args277188_) _arity277203_)))
                          (_K277208277223_
                           (lambda (_arity277221_)
                             (fx>= (length _args277188_) _arity277221_))))
                      (let ((_try-match277206277233_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity277204277213_))
                                   (let ((_tl277210277228_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity277204277213_)))
                                         (_hd277209277226_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity277204277213_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl277210277228_))
                                         (let ((_arity277231_
                                                _hd277209277226_))
                                           (declare (not safe))
                                           (_K277208277223_ _arity277231_))
                                         (let ()
                                           (declare (not safe))
                                           (_E277207277217_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E277207277217_))))))
                        (if (fixnum? _arity277204277213_)
                            (let () (declare (not safe)) (_K277211277237_))
                            (let ()
                              (declare (not safe))
                              (_try-match277206277233_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self277189277196_ 'gxc#!lambda::t))
              (let* ((_e277193277243_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self277189277196_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e277194277246_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self277189277196_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity277249_ _e277194277246_))
                (declare (not safe))
                (_K277192277240_ _arity277249_))
              (let () (declare (not safe)) (_E277191277200_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self277072_ _stx277073_ _args277074_)
        (let* ((_self277075277083_ _self277072_)
               (_E277077277087_
                (lambda () (error '"No clause matching" _self277075277083_)))
               (_K277078277171_
                (lambda (_dispatch277090_ _table277091_)
                  (let* ((_g277092277101_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch277090_)))
                         (_else277094277109_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch277090_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _stx277073_))))
                         (_K277096277155_
                          (lambda (_main277112_ _keys277113_)
                            (let ((_g284205_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx277073_
                                      _args277074_))))
                              (begin
                                (let ((_g284206_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g284205_)
                                             (##vector-length _g284205_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g284206_ 2)))
                                      (error "Context expects 2 values"
                                             _g284206_)))
                                (let ((_pargs277115_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g284205_ 0)))
                                      (_kwargs277116_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g284205_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main277112_))
                                    (if _table277091_
                                        (let ((_xargs277123_
                                               (map (lambda (_key277118_)
                                                      (let ((_$e277120_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _key277118_ _kwargs277116_))))
                (if _$e277120_ (values _$e277120_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys277113_)))
                                          (for-each
                                           (lambda (_kw277125_)
                                             (if (memq (car _kw277125_)
                                                       _keys277113_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx277073_
                                                    _keys277113_
                                                    _kw277125_))))
                                           _kwargs277116_)
                                          (let ((__tmp284258
                                                 (let ((__tmp284259
                                                        (let ((__tmp284260
                                                               (let ((__tmp284265
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp284266
                                     (let ()
                                       (declare (not safe))
                                       (cons _main277112_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp284266)))
                             (__tmp284261
                              (let ((__tmp284263
                                     (let ((__tmp284264
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp284264)))
                                    (__tmp284262
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs277115_
                                               _xargs277123_))))
                                (declare (not safe))
                                (cons __tmp284263 __tmp284262))))
                         (declare (not safe))
                         (cons __tmp284265 __tmp284261))))
                  (declare (not safe))
                  (cons '%#call __tmp284260))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp284259
                                                    _stx277073_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0 __tmp284258)))
                                        (let* ((_kwt277127_
                                                (let ((__tmp284207
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp284207)))
                                               (_kwvars277130_
                                                (map (lambda (_g284208_)
                                                       (let ((__tmp284209
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp284209)))
                                                     _kwargs277116_))
                                               (_kwbind277135_
                                                (map (lambda (_kw277132_
                                                              _kwvar277133_)
                                                       (let ((__tmp284212
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar277133_ '())))
                     (__tmp284210
                      (let ((__tmp284211 (cdr _kw277132_)))
                        (declare (not safe))
                        (cons __tmp284211 '()))))
                 (declare (not safe))
                 (cons __tmp284212 __tmp284210)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs277116_
                                                     _kwvars277130_))
                                               (_kwset277140_
                                                (map (lambda (_kw277137_
                                                              _kwvar277138_)
                                                       (let ((__tmp284213
                                                              (let ((__tmp284214
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp284222
                                    (let ((__tmp284223
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt277127_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp284223)))
                                   (__tmp284215
                                    (let ((__tmp284219
                                           (let ((__tmp284220
                                                  (let ((__tmp284221
                                                         (car _kw277137_)))
                                                    (declare (not safe))
                                                    (cons __tmp284221 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp284220)))
                                          (__tmp284216
                                           (let ((__tmp284217
                                                  (let ((__tmp284218
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar277138_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp284218))))
                                             (declare (not safe))
                                             (cons __tmp284217 '()))))
                                      (declare (not safe))
                                      (cons __tmp284219 __tmp284216))))
                               (declare (not safe))
                               (cons __tmp284222 __tmp284215))))
                        (declare (not safe))
                        (cons '(%#ref hash-put!) __tmp284214))))
                 (declare (not safe))
                 (cons '%#call __tmp284213)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs277116_
                                                     _kwvars277130_))
                                               (_xkwargs277145_
                                                (map (lambda (_kw277142_
                                                              _kwvar277143_)
                                                       (let ((__tmp284226
                                                              (car _kw277142_))
                                                             (__tmp284224
                                                              (let ((__tmp284225
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar277143_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp284225))))
                 (declare (not safe))
                 (cons __tmp284226 __tmp284224)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs277116_
                                                     _kwvars277130_))
                                               (_xargs277152_
                                                (map (lambda (_key277147_)
                                                       (let ((_$e277149_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq _key277147_ _xkwargs277145_))))
                 (if _$e277149_ (values _$e277149_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys277113_)))
                                          (let ((__tmp284227
                                                 (let ((__tmp284228
                                                        (let ((__tmp284229
                                                               (let ((__tmp284230
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp284231
                                     (let ((__tmp284232
                                            (let ((__tmp284246
                                                   (let ((__tmp284247
                                                          (let ((__tmp284257
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt277127_ '())))
                        (__tmp284248
                         (let ((__tmp284249
                                (let ((__tmp284250
                                       (let ((__tmp284251
                                              (let ((__tmp284252
                                                     (let ((__tmp284253
                                                            (let ((__tmp284254
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp284255
                                  (let ((__tmp284256 (length _kwargs277116_)))
                                    (declare (not safe))
                                    (cons __tmp284256 '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp284255))))
                      (declare (not safe))
                      (cons __tmp284254 '()))))
               (declare (not safe))
               (cons '(%#quote size:) __tmp284253))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-hash-table-eq)
                                                      __tmp284252))))
                                         (declare (not safe))
                                         (cons '%#call __tmp284251))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp284250
                                   _stx277073_))))
                           (declare (not safe))
                           (cons __tmp284249 '()))))
                    (declare (not safe))
                    (cons __tmp284257 __tmp284248))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp284247 '())))
                                                  (__tmp284233
                                                   (let ((__tmp284234
                                                          (let ((__tmp284235
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp284236
                                (let ((__tmp284237
                                       (let ((__tmp284238
                                              (let ((__tmp284239
                                                     (let ((__tmp284244
                                                            (let ((__tmp284245
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main277112_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp284245)))
                   (__tmp284240
                    (let ((__tmp284242
                           (let ((__tmp284243
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt277127_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp284243)))
                          (__tmp284241
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs277115_ _xargs277152_))))
                      (declare (not safe))
                      (cons __tmp284242 __tmp284241))))
               (declare (not safe))
               (cons __tmp284244 __tmp284240))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp284239))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp284238
                                          _stx277073_))))
                                  (declare (not safe))
                                  (cons __tmp284237 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp284236 _kwset277140_))))
                    (declare (not safe))
                    (cons '%#begin __tmp284235))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp284234 '()))))
                                              (declare (not safe))
                                              (cons __tmp284246 __tmp284233))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp284232))))
                                (declare (not safe))
                                (cons __tmp284231 '()))))
                         (declare (not safe))
                         (cons _kwbind277135_ __tmp284230))))
                  (declare (not safe))
                  (cons '%#let-values __tmp284229))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp284228
                                                    _stx277073_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0
                                             __tmp284227)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g277092277101_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e277097277158_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g277092277101_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e277098277161_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g277092277101_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys277164_ _e277098277161_)
                               (_e277099277166_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g277092277101_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main277169_ _e277099277166_))
                          (declare (not safe))
                          (_K277096277155_ _main277169_ _keys277164_))
                        (let () (declare (not safe)) (_else277094277109_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self277075277083_
                 'gxc#!kw-lambda::t))
              (let* ((_e277079277174_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self277075277083_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e277080277177_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self277075277083_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table277180_ _e277080277177_)
                     (_e277081277182_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self277075277083_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch277185_ _e277081277182_))
                (declare (not safe))
                (_K277078277171_ _dispatch277185_ _table277180_))
              (let () (declare (not safe)) (_E277077277087_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx276685_ _args276686_)
        (let _lp276688_ ((_rest276690_ _args276686_)
                         (_pargs276691_ '())
                         (_kwargs276692_ '()))
          (let* ((___stx283300283301_ _rest276690_)
                 (_g276698276750_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx283300283301_)))))
            (let ((___kont283302283303_
                   (lambda (_L276929_ _L276930_)
                     (let ((__tmp284267
                            (let ()
                              (declare (not safe))
                              (cons _L276930_ _pargs276691_))))
                       (declare (not safe))
                       (_lp276688_ _L276929_ __tmp284267 _kwargs276692_))))
                  (___kont283304283305_
                   (lambda (_L276875_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L276875_ _pargs276691_))
                             (reverse _kwargs276692_))))
                  (___kont283306283307_
                   (lambda (_L276822_ _L276823_ _L276824_)
                     (let ((_kw276841_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L276824_))))
                       (if (assq _kw276841_ _kwargs276692_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx276685_
                              _kw276841_))
                           (let ((__tmp284268
                                  (let ((__tmp284269
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw276841_ _L276823_))))
                                    (declare (not safe))
                                    (cons __tmp284269 _kwargs276692_))))
                             (declare (not safe))
                             (_lp276688_
                              _L276822_
                              _pargs276691_
                              __tmp284268))))))
                  (___kont283308283309_
                   (lambda (_L276770_ _L276771_)
                     (let ((__tmp284270
                            (let ()
                              (declare (not safe))
                              (cons _L276771_ _pargs276691_))))
                       (declare (not safe))
                       (_lp276688_ _L276770_ __tmp284270 _kwargs276692_))))
                  (___kont283310283311_
                   (lambda ()
                     (values (reverse _pargs276691_)
                             (reverse _kwargs276692_)))))
              (let* ((_g276697276757_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx283300283301_))
                            (___kont283310283311_)
                            (let () (declare (not safe)) (_g276698276750_)))))
                     (___match283407283408_
                      (lambda (_e276731276790_
                               _hd276730276793_
                               _tl276729276795_
                               _e276734276798_
                               _hd276733276801_
                               _tl276732276803_
                               _e276737276806_
                               _hd276736276809_
                               _tl276735276811_
                               _e276740276814_
                               _hd276739276817_
                               _tl276738276819_)
                        (let ((_L276822_ _tl276738276819_)
                              (_L276823_ _hd276739276817_)
                              (_L276824_ _hd276736276809_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L276824_))
                              (___kont283306283307_
                               _L276822_
                               _L276823_
                               _L276824_)
                              (___kont283308283309_
                               _tl276729276795_
                               _hd276730276793_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx283300283301_))
                    (let ((_e276704276894_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx283300283301_))))
                      (let ((_tl276702276899_
                             (let ()
                               (declare (not safe))
                               (##cdr _e276704276894_)))
                            (_hd276703276897_
                             (let ()
                               (declare (not safe))
                               (##car _e276704276894_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd276703276897_))
                            (let ((_e276707276902_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd276703276897_))))
                              (let ((_tl276705276907_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e276707276902_)))
                                    (_hd276706276905_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e276707276902_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd276706276905_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd276706276905_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl276705276907_))
                                            (let ((_e276710276910_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl276705276907_))))
                                              (let ((_tl276708276915_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e276710276910_)))
                                                    (_hd276709276913_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e276710276910_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd276709276913_))
                                                    (let ((_e276711276918_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd276709276913_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e276711276918_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl276708276915_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl276702276899_))
                          (let ((_e276714276921_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl276702276899_))))
                            (let ((_tl276712276926_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e276714276921_)))
                                  (_hd276713276924_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e276714276921_))))
                              (___kont283302283303_
                               _tl276712276926_
                               _hd276713276924_)))
                          (___kont283308283309_
                           _tl276702276899_
                           _hd276703276897_))
                      (___kont283308283309_ _tl276702276899_ _hd276703276897_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e276711276918_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl276708276915_))
                          (___kont283304283305_ _tl276702276899_)
                          (___kont283308283309_
                           _tl276702276899_
                           _hd276703276897_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl276708276915_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl276702276899_))
                              (let ((_e276740276814_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl276702276899_))))
                                (let ((_tl276738276819_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e276740276814_)))
                                      (_hd276739276817_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e276740276814_))))
                                  (___match283407283408_
                                   _e276704276894_
                                   _hd276703276897_
                                   _tl276702276899_
                                   _e276707276902_
                                   _hd276706276905_
                                   _tl276705276907_
                                   _e276710276910_
                                   _hd276709276913_
                                   _tl276708276915_
                                   _e276740276814_
                                   _hd276739276817_
                                   _tl276738276819_)))
                              (___kont283308283309_
                               _tl276702276899_
                               _hd276703276897_))
                          (___kont283308283309_
                           _tl276702276899_
                           _hd276703276897_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl276708276915_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl276702276899_))
                                                            (let ((_e276740276814_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl276702276899_))))
                      (let ((_tl276738276819_
                             (let ()
                               (declare (not safe))
                               (##cdr _e276740276814_)))
                            (_hd276739276817_
                             (let ()
                               (declare (not safe))
                               (##car _e276740276814_))))
                        (___match283407283408_
                         _e276704276894_
                         _hd276703276897_
                         _tl276702276899_
                         _e276707276902_
                         _hd276706276905_
                         _tl276705276907_
                         _e276710276910_
                         _hd276709276913_
                         _tl276708276915_
                         _e276740276814_
                         _hd276739276817_
                         _tl276738276819_)))
                    (___kont283308283309_ _tl276702276899_ _hd276703276897_))
                (___kont283308283309_ _tl276702276899_ _hd276703276897_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont283308283309_
                                             _tl276702276899_
                                             _hd276703276897_))
                                        (___kont283308283309_
                                         _tl276702276899_
                                         _hd276703276897_))
                                    (___kont283308283309_
                                     _tl276702276899_
                                     _hd276703276897_))))
                            (___kont283308283309_
                             _tl276702276899_
                             _hd276703276897_))))
                    (let () (declare (not safe)) (_g276697276757_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self276681_ _stx276682_ _args276683_)
        (let () (declare (not safe)) (gxc#xform-call% _stx276682_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
