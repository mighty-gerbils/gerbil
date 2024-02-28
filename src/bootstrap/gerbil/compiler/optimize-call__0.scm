(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1709111640)
  (begin
    (define gxc#&optimize-call
      (make-promise
       (lambda ()
         (let ((_tbl152169_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp152464 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-merge! _tbl152169_ __tmp152464))
           (let ()
             (declare (not safe))
             (hash-put! _tbl152169_ '%#call gxc#optimize-call%))
           _tbl152169_))))
    (define gxc#apply-optimize-call
      (lambda (_stx152152_ . _args152154_)
        (let ((__tmp152466
               (lambda ()
                 (declare (not safe))
                 (if (null? _args152154_)
                     (gxc#compile-e__0 _stx152152_)
                     (let ((_arg1152159_ (car _args152154_))
                           (_rest152161_ (cdr _args152154_)))
                       (if (null? _rest152161_)
                           (gxc#compile-e__1 _stx152152_ _arg1152159_)
                           (let ((_arg2152164_ (car _rest152161_))
                                 (_rest152166_ (cdr _rest152161_)))
                             (if (null? _rest152166_)
                                 (gxc#compile-e__2
                                  _stx152152_
                                  _arg1152159_
                                  _arg2152164_)
                                 (apply gxc#compile-e
                                        _stx152152_
                                        _arg1152159_
                                        _arg2152164_
                                        _rest152166_))))))))
              (__tmp152465 (force gxc#&optimize-call)))
          (declare (not safe))
          (call-with-parameters
           __tmp152466
           gxc#current-compile-methods
           __tmp152465))))
    (define gxc#optimize-call%
      (lambda (_stx152007_)
        (let* ((___stx152214152215_ _stx152007_)
               (_g152010152030_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx152214152215_)))))
          (let ((___kont152216152217_
                 (lambda (_L152074_ _L152075_)
                   (let* ((_rator-id152093_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L152075_)))
                          (_rator-type152095_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id152093_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type152095_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp152467
                                  (##structure-ref
                                   _rator-type152095_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id152093_
                              '" => "
                              _rator-type152095_
                              '" "
                              __tmp152467))
                           (let ((_optimized152098_
                                  (let ((__method152462
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type152095_
                                            'optimize-call))))
                                    (if __method152462
                                        (__method152462
                                         _rator-type152095_
                                         _stx152007_
                                         _L152074_)
                                        (let ()
                                          (declare (not safe))
                                          (error '"Missing method"
                                                 _rator-type152095_
                                                 'optimize-call))))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type152095_))
                                 _optimized152098_
                                 (let* ((___stx152196152197_ _optimized152098_)
                                        (_g152101152111_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx152196152197_)))))
                                   (let ((___kont152198152199_
                                          (lambda (_L152131_)
                                            (let ((__tmp152468
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L152131_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp152468
                                               _stx152007_))))
                                         (___kont152200152201_
                                          (lambda () _optimized152098_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx152196152197_))
                                         (let ((_e152106152123_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx152196152197_))))
                                           (let ((_tl152104152128_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e152106152123_)))
                                                 (_hd152105152126_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e152106152123_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd152105152126_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd152105152126_))
                                                     (___kont152198152199_
                                                      _tl152104152128_)
                                                     (___kont152200152201_))
                                                 (___kont152200152201_))))
                                         (___kont152200152201_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type152095_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx152007_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx152007_
                                _rator-type152095_)))))))
                (___kont152218152219_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _stx152007_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx152214152215_))
                (let ((_e152016152042_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx152214152215_))))
                  (let ((_tl152014152047_
                         (let () (declare (not safe)) (##cdr _e152016152042_)))
                        (_hd152015152045_
                         (let ()
                           (declare (not safe))
                           (##car _e152016152042_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl152014152047_))
                        (let ((_e152019152050_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl152014152047_))))
                          (let ((_tl152017152055_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e152019152050_)))
                                (_hd152018152053_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e152019152050_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd152018152053_))
                                (let ((_e152022152058_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd152018152053_))))
                                  (let ((_tl152020152063_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e152022152058_)))
                                        (_hd152021152061_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e152022152058_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd152021152061_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd152021152061_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl152020152063_))
                                                (let ((_e152025152066_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl152020152063_))))
                                                  (let ((_tl152023152071_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e152025152066_)))
                                                        (_hd152024152069_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e152025152066_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl152023152071_))
                                                        (___kont152216152217_
                                                         _tl152017152055_
                                                         _hd152024152069_)
                                                        (___kont152218152219_))))
                                                (___kont152218152219_))
                                            (___kont152218152219_))
                                        (___kont152218152219_))))
                                (___kont152218152219_))))
                        (___kont152218152219_))))
                (___kont152218152219_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self151961_ _stx151962_ _args151963_)
        (let* ((_g151965151975_
                (lambda (_g151966151972_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g151966151972_))))
               (_g151964152004_
                (lambda (_g151966151978_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g151966151978_))
                      (let ((_e151970151980_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g151966151978_))))
                        (let ((_hd151969151983_
                               (let ()
                                 (declare (not safe))
                                 (##car _e151970151980_)))
                              (_tl151968151985_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e151970151980_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl151968151985_))
                              ((lambda (_L151988_)
                                 (let* ((_klass151999_
                                         (let ((__tmp152469
                                                (##structure-ref
                                                 _self151961_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx151962_
                                            __tmp152469)))
                                        (_object152001_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L151988_))))
                                   (if (##structure-ref
                                        _klass151999_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp152485
                                              (let ((__tmp152486
                                                     (let ((__tmp152488
                                                            (let ((__tmp152489
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152490
                                  (##structure-ref
                                   _klass151999_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp152490 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp152489)))
                   (__tmp152487
                    (let () (declare (not safe)) (cons _object152001_ '()))))
               (declare (not safe))
               (cons __tmp152488 __tmp152487))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp152486))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp152485
                                          _stx151962_))
                                       (if (##structure-ref
                                            _klass151999_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp152479
                                                  (let ((__tmp152480
                                                         (let ((__tmp152482
                                                                (let ((__tmp152483
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp152484
                                      (##structure-ref
                                       _klass151999_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp152484 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp152483)))
                       (__tmp152481
                        (let ()
                          (declare (not safe))
                          (cons _object152001_ '()))))
                   (declare (not safe))
                   (cons __tmp152482 __tmp152481))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp152480))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152479
                                              _stx151962_))
                                           (let ((__tmp152470
                                                  (let ((__tmp152471
                                                         (let ((__tmp152477
                                                                (let ((__tmp152478
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp152478)))
                       (__tmp152472
                        (let ((__tmp152474
                               (let ((__tmp152475
                                      (let ((__tmp152476
                                             (##structure-ref
                                              _self151961_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp152476 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp152475)))
                              (__tmp152473
                               (let ()
                                 (declare (not safe))
                                 (cons _object152001_ '()))))
                          (declare (not safe))
                          (cons __tmp152474 __tmp152473))))
                   (declare (not safe))
                   (cons __tmp152477 __tmp152472))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp152471))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152470
                                              _stx151962_))))))
                               _hd151969151983_)
                              (let ()
                                (declare (not safe))
                                (_g151965151975_ _g151966151978_)))))
                      (let ()
                        (declare (not safe))
                        (_g151965151975_ _g151966151978_))))))
          (declare (not safe))
          (_g151964152004_ _args151963_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__klass152171 __method-table152172)
        (let ((__id152173
               (let ((__slot152174
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152171 'id))))
                 (if __slot152174
                     __slot152174
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self151961_ _stx151962_ _args151963_)
            (let* ((_g151965151975_
                    (lambda (_g151966151972_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g151966151972_))))
                   (_g151964152004_
                    (lambda (_g151966151978_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g151966151978_))
                          (let ((_e151970151980_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g151966151978_))))
                            (let ((_hd151969151983_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e151970151980_)))
                                  (_tl151968151985_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e151970151980_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl151968151985_))
                                  ((lambda (_L151988_)
                                     (let* ((_klass151999_
                                             (let ((__tmp152491
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self151961_
                                                       __id152173
                                                       __klass152171
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx151962_
                                                __tmp152491)))
                                            (_object152001_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L151988_))))
                                       (if (##structure-ref
                                            _klass151999_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp152507
                                                  (let ((__tmp152508
                                                         (let ((__tmp152510
                                                                (let ((__tmp152511
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp152512
                                      (##structure-ref
                                       _klass151999_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp152512 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp152511)))
                       (__tmp152509
                        (let ()
                          (declare (not safe))
                          (cons _object152001_ '()))))
                   (declare (not safe))
                   (cons __tmp152510 __tmp152509))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp152508))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152507
                                              _stx151962_))
                                           (if (##structure-ref
                                                _klass151999_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp152501
                                                      (let ((__tmp152502
                                                             (let ((__tmp152504
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp152505
                                   (let ((__tmp152506
                                          (##structure-ref
                                           _klass151999_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp152506 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp152505)))
                           (__tmp152503
                            (let ()
                              (declare (not safe))
                              (cons _object152001_ '()))))
                       (declare (not safe))
                       (cons __tmp152504 __tmp152503))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp152502))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp152501
                                                  _stx151962_))
                                               (let ((__tmp152492
                                                      (let ((__tmp152493
                                                             (let ((__tmp152499
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp152500
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp152500)))
                           (__tmp152494
                            (let ((__tmp152496
                                   (let ((__tmp152497
                                          (let ((__tmp152498
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self151961_
                                                    __id152173
                                                    __klass152171
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp152498 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp152497)))
                                  (__tmp152495
                                   (let ()
                                     (declare (not safe))
                                     (cons _object152001_ '()))))
                              (declare (not safe))
                              (cons __tmp152496 __tmp152495))))
                       (declare (not safe))
                       (cons __tmp152499 __tmp152494))))
                (declare (not safe))
                (cons '%#call __tmp152493))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp152492
                                                  _stx151962_))))))
                                   _hd151969151983_)
                                  (let ()
                                    (declare (not safe))
                                    (_g151965151975_ _g151966151978_)))))
                          (let ()
                            (declare (not safe))
                            (_g151965151975_ _g151966151978_))))))
              (declare (not safe))
              (_g151964152004_ _args151963_))))))
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
      (lambda (_self151681_ _stx151682_ _args151683_)
        (let* ((_klass151685_
                (let ((__tmp152513
                       (##structure-ref _self151681_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx151682_ __tmp152513)))
               (_fields151687_
                (length (##structure-ref _klass151685_ '5 gxc#!class::t '#f)))
               (_args151689_ (map gxc#compile-e _args151683_))
               (_inline-make-object151691_
                (let ((__tmp152514
                       (let ((__tmp152520
                              (let ((__tmp152521
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp152521)))
                             (__tmp152515
                              (let ((__tmp152517
                                     (let ((__tmp152518
                                            (let ((__tmp152519
                                                   (##structure-ref
                                                    _self151681_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp152519 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152518)))
                                    (__tmp152516
                                     (let ()
                                       (declare (not safe))
                                       (make-list__%
                                        _fields151687_
                                        '(%#quote #f)))))
                                (declare (not safe))
                                (cons __tmp152517 __tmp152516))))
                         (declare (not safe))
                         (cons __tmp152520 __tmp152515))))
                  (declare (not safe))
                  (cons '%#call __tmp152514))))
          (let ((_$e151694_
                 (##structure-ref _klass151685_ '6 gxc#!class::t '#f)))
            (if _$e151694_
                ((lambda (_ctor151697_)
                   (let ((_$obj151699_
                          (let ((__tmp152621 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp152621)))
                         (_ctor-impl151700_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass151685_
                             _ctor151697_))))
                     (let ((__tmp152622
                            (let ((__tmp152623
                                   (let ((__tmp152691
                                          (let ((__tmp152692
                                                 (let ((__tmp152694
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj151699_
                                                                '())))
                                                       (__tmp152693
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object151691_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp152694
                                                         __tmp152693))))
                                            (declare (not safe))
                                            (cons __tmp152692 '())))
                                         (__tmp152624
                                          (let ((__tmp152625
                                                 (let ((__tmp152626
                                                        (let ((__tmp152630
                                                               (if _ctor-impl151700_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152685
                                  (let ((__tmp152689
                                         (let ((__tmp152690
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl151700_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp152690)))
                                        (__tmp152686
                                         (let ((__tmp152687
                                                (let ((__tmp152688
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj151699_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp152688))))
                                           (declare (not safe))
                                           (cons __tmp152687 _args151689_))))
                                    (declare (not safe))
                                    (cons __tmp152689 __tmp152686))))
                             (declare (not safe))
                             (cons '%#call __tmp152685))
                           (let* ((_$ctor151702_
                                   (let ((__tmp152631 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp152631)))
                                  (__tmp152632
                                   (let ((__tmp152667
                                          (let ((__tmp152668
                                                 (let ((__tmp152684
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor151702_
                                                                '())))
                                                       (__tmp152669
                                                        (let ((__tmp152670
                                                               (let ((__tmp152671
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp152682
                                     (let ((__tmp152683
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152683)))
                                    (__tmp152672
                                     (let ((__tmp152679
                                            (let ((__tmp152680
                                                   (let ((__tmp152681
                                                          (##structure-ref
                                                           _self151681_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp152681 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp152680)))
                                           (__tmp152673
                                            (let ((__tmp152677
                                                   (let ((__tmp152678
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj151699_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152678)))
                                                  (__tmp152674
                                                   (let ((__tmp152675
                                                          (let ((__tmp152676
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _ctor151697_ '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp152676))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152675 '()))))
                                              (declare (not safe))
                                              (cons __tmp152677 __tmp152674))))
                                       (declare (not safe))
                                       (cons __tmp152679 __tmp152673))))
                                (declare (not safe))
                                (cons __tmp152682 __tmp152672))))
                         (declare (not safe))
                         (cons '%#call __tmp152671))))
                  (declare (not safe))
                  (cons __tmp152670 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp152684
                                                         __tmp152669))))
                                            (declare (not safe))
                                            (cons __tmp152668 '())))
                                         (__tmp152633
                                          (let ((__tmp152634
                                                 (let ((__tmp152635
                                                        (let ((__tmp152665
                                                               (let ((__tmp152666
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor151702_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp152666)))
                      (__tmp152636
                       (let ((__tmp152658
                              (let ((__tmp152659
                                     (let ((__tmp152663
                                            (let ((__tmp152664
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor151702_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp152664)))
                                           (__tmp152660
                                            (let ((__tmp152661
                                                   (let ((__tmp152662
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj151699_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152662))))
                                              (declare (not safe))
                                              (cons __tmp152661
                                                    _args151689_))))
                                       (declare (not safe))
                                       (cons __tmp152663 __tmp152660))))
                                (declare (not safe))
                                (cons '%#call __tmp152659)))
                             (__tmp152637
                              (let ((__tmp152638
                                     (let ((__tmp152639
                                            (let ((__tmp152656
                                                   (let ((__tmp152657
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152657)))
                                                  (__tmp152640
                                                   (let ((__tmp152654
                                                          (let ((__tmp152655
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp152655)))
                 (__tmp152641
                  (let ((__tmp152652
                         (let ((__tmp152653
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp152653)))
                        (__tmp152642
                         (let ((__tmp152649
                                (let ((__tmp152650
                                       (let ((__tmp152651
                                              (##structure-ref
                                               _self151681_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp152651 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp152650)))
                               (__tmp152643
                                (let ((__tmp152647
                                       (let ((__tmp152648
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp152648)))
                                      (__tmp152644
                                       (let ((__tmp152645
                                              (let ((__tmp152646
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor151697_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp152646))))
                                         (declare (not safe))
                                         (cons __tmp152645 '()))))
                                  (declare (not safe))
                                  (cons __tmp152647 __tmp152644))))
                           (declare (not safe))
                           (cons __tmp152649 __tmp152643))))
                    (declare (not safe))
                    (cons __tmp152652 __tmp152642))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152654
                                                           __tmp152641))))
                                              (declare (not safe))
                                              (cons __tmp152656 __tmp152640))))
                                       (declare (not safe))
                                       (cons '%#call __tmp152639))))
                                (declare (not safe))
                                (cons __tmp152638 '()))))
                         (declare (not safe))
                         (cons __tmp152658 __tmp152637))))
                  (declare (not safe))
                  (cons __tmp152665 __tmp152636))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp152635))))
                                            (declare (not safe))
                                            (cons __tmp152634 '()))))
                                     (declare (not safe))
                                     (cons __tmp152667 __tmp152633))))
                             (declare (not safe))
                             (cons '%#let-values __tmp152632))))
                      (__tmp152627
                       (let ((__tmp152628
                              (let ((__tmp152629
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj151699_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp152629))))
                         (declare (not safe))
                         (cons __tmp152628 '()))))
                  (declare (not safe))
                  (cons __tmp152630 __tmp152627))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp152626))))
                                            (declare (not safe))
                                            (cons __tmp152625 '()))))
                                     (declare (not safe))
                                     (cons __tmp152691 __tmp152624))))
                              (declare (not safe))
                              (cons '%#let-values __tmp152623))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp152622 _stx151682_))))
                 _$e151694_)
                (let ((_$e151704_
                       (##structure-ref _klass151685_ '9 gxc#!class::t '#f)))
                  (if _$e151704_
                      ((lambda (_metaclass151707_)
                         (let* ((_$obj151709_
                                 (let ((__tmp152583 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp152583)))
                                (_metakons151711_
                                 (let ((__tmp152584
                                        (let ()
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           _stx151682_
                                           _metaclass151707_))))
                                   (declare (not safe))
                                   (gxc#!class-lookup-method
                                    __tmp152584
                                    'instance-init!))))
                           (let ((__tmp152585
                                  (let ((__tmp152586
                                         (let ((__tmp152617
                                                (let ((__tmp152618
                                                       (let ((__tmp152620
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj151709_ '())))
                     (__tmp152619
                      (let ()
                        (declare (not safe))
                        (cons _inline-make-object151691_ '()))))
                 (declare (not safe))
                 (cons __tmp152620 __tmp152619))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152618 '())))
                                               (__tmp152587
                                                (let ((__tmp152588
                                                       (let ((__tmp152589
                                                              (let ((__tmp152593
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if _metakons151711_
                                 (let ((__tmp152607
                                        (let ((__tmp152615
                                               (let ((__tmp152616
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metakons151711_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp152616)))
                                              (__tmp152608
                                               (let ((__tmp152612
                                                      (let ((__tmp152613
                                                             (let ((__tmp152614
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self151681_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp152614 '()))))
                (declare (not safe))
                (cons '%#ref __tmp152613)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp152609
                                                      (let ((__tmp152610
                                                             (let ((__tmp152611
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _$obj151709_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp152611))))
                (declare (not safe))
                (cons __tmp152610 _args151689_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp152612
                                                       __tmp152609))))
                                          (declare (not safe))
                                          (cons __tmp152615 __tmp152608))))
                                   (declare (not safe))
                                   (cons '%#call __tmp152607))
                                 (let ((__tmp152594
                                        (let ((__tmp152605
                                               (let ((__tmp152606
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'call-method
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp152606)))
                                              (__tmp152595
                                               (let ((__tmp152602
                                                      (let ((__tmp152603
                                                             (let ((__tmp152604
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self151681_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp152604 '()))))
                (declare (not safe))
                (cons '%#ref __tmp152603)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp152596
                                                      (let ((__tmp152600
                                                             (let ((__tmp152601
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'instance-init! '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp152601)))
                    (__tmp152597
                     (let ((__tmp152598
                            (let ((__tmp152599
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj151709_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp152599))))
                       (declare (not safe))
                       (cons __tmp152598 _args151689_))))
                (declare (not safe))
                (cons __tmp152600 __tmp152597))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp152602
                                                       __tmp152596))))
                                          (declare (not safe))
                                          (cons __tmp152605 __tmp152595))))
                                   (declare (not safe))
                                   (cons '%#call __tmp152594))))
                            (__tmp152590
                             (let ((__tmp152591
                                    (let ((__tmp152592
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj151709_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp152592))))
                               (declare (not safe))
                               (cons __tmp152591 '()))))
                        (declare (not safe))
                        (cons __tmp152593 __tmp152590))))
                 (declare (not safe))
                 (cons '%#begin __tmp152589))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152588 '()))))
                                           (declare (not safe))
                                           (cons __tmp152617 __tmp152587))))
                                    (declare (not safe))
                                    (cons '%#let-values __tmp152586))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp152585 _stx151682_))))
                       _$e151704_)
                      (if (##structure-ref _klass151685_ '7 gxc#!class::t '#f)
                          (if (fx= (length _args151689_) _fields151687_)
                              (let ((__tmp152575
                                     (let ((__tmp152576
                                            (let ((__tmp152581
                                                   (let ((__tmp152582
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152582)))
                                                  (__tmp152577
                                                   (let ((__tmp152578
                                                          (let ((__tmp152579
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp152580
                                (##structure-ref
                                 _self151681_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp152580 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp152579))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152578
                                                           _args151689_))))
                                              (declare (not safe))
                                              (cons __tmp152581 __tmp152577))))
                                       (declare (not safe))
                                       (cons '%#call __tmp152576))))
                                (declare (not safe))
                                (gxc#xform-wrap-source
                                 __tmp152575
                                 _stx151682_))
                              (let ((__tmp152574
                                     (##structure-ref
                                      _self151681_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                    (__tmp152573
                                     (length (##structure-ref
                                              _klass151685_
                                              '5
                                              gxc#!class::t
                                              '#f))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"illegal struct constructor application; arity mismatch"
                                 _stx151682_
                                 __tmp152574
                                 __tmp152573)))
                          (let ((_$obj151714_
                                 (let ((__tmp152522 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp152522))))
                            (let _lp151716_ ((_rest151718_ _args151689_)
                                             (_initializers151719_ '()))
                              (let* ((___stx152252152253_ _rest151718_)
                                     (_g151723151744_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx152252152253_)))))
                                (let ((___kont152254152255_
                                       (lambda (_L151798_ _L151799_ _L151800_)
                                         (let* ((_slot151831_
                                                 (keyword->symbol
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e _L151800_))))
                                                (_off151833_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass151685_
                                                    _slot151831_))))
                                           (if _off151833_
                                               (let ((__tmp152524
                                                      (let ((__tmp152525
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off151833_ _L151799_))))
                (declare (not safe))
                (cons __tmp152525 _initializers151719_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp151716_
                                                  _L151798_
                                                  __tmp152524))
                                               (let ((__tmp152523
                                                      (##structure-ref
                                                       _self151681_
                                                       '1
                                                       gxc#!type::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"unknown slot"
                                                  _stx151682_
                                                  __tmp152523
                                                  _slot151831_))))))
                                      (___kont152256152257_
                                       (lambda ()
                                         (let ((__tmp152526
                                                (let ((__tmp152527
                                                       (let ((__tmp152550
                                                              (let ((__tmp152551
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp152553
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj151714_ '())))
                                   (__tmp152552
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object151691_ '()))))
                               (declare (not safe))
                               (cons __tmp152553 __tmp152552))))
                        (declare (not safe))
                        (cons __tmp152551 '())))
                     (__tmp152528
                      (let ((__tmp152529
                             (let ((__tmp152530
                                    (let ((__tmp152547
                                           (let ((__tmp152548
                                                  (let ((__tmp152549
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj151714_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp152549))))
                                             (declare (not safe))
                                             (cons __tmp152548 '())))
                                          (__tmp152531
                                           (let ((__tmp152532
                                                  (lambda (_i151758_ _r151759_)
                                                    (let ((__tmp152533
                                                           (let ((__tmp152534
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp152544
                                 (let ((__tmp152545
                                        (let ((__tmp152546
                                               (##structure-ref
                                                _self151681_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp152546 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp152545)))
                                (__tmp152535
                                 (let ((__tmp152541
                                        (let ((__tmp152542
                                               (let ((__tmp152543
                                                      (car _i151758_)))
                                                 (declare (not safe))
                                                 (cons __tmp152543 '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp152542)))
                                       (__tmp152536
                                        (let ((__tmp152539
                                               (let ((__tmp152540
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _$obj151714_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp152540)))
                                              (__tmp152537
                                               (let ((__tmp152538
                                                      (cdr _i151758_)))
                                                 (declare (not safe))
                                                 (cons __tmp152538 '()))))
                                          (declare (not safe))
                                          (cons __tmp152539 __tmp152537))))
                                   (declare (not safe))
                                   (cons __tmp152541 __tmp152536))))
                            (declare (not safe))
                            (cons __tmp152544 __tmp152535))))
                     (declare (not safe))
                     (cons '%#struct-unchecked-set! __tmp152534))))
              (declare (not safe))
              (cons __tmp152533 _r151759_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (foldl1 __tmp152532
                                                     '()
                                                     _initializers151719_))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp152547 __tmp152531))))
                               (declare (not safe))
                               (cons '%#begin __tmp152530))))
                        (declare (not safe))
                        (cons __tmp152529 '()))))
                 (declare (not safe))
                 (cons __tmp152550 __tmp152528))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp152527))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp152526
                                            _stx151682_))))
                                      (___kont152258152259_
                                       (lambda ()
                                         (let ((__tmp152554
                                                (let ((__tmp152555
                                                       (let ((__tmp152569
                                                              (let ((__tmp152570
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp152572
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj151714_ '())))
                                   (__tmp152571
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object151691_ '()))))
                               (declare (not safe))
                               (cons __tmp152572 __tmp152571))))
                        (declare (not safe))
                        (cons __tmp152570 '())))
                     (__tmp152556
                      (let ((__tmp152557
                             (let ((__tmp152558
                                    (let ((__tmp152562
                                           (let ((__tmp152563
                                                  (let ((__tmp152567
                                                         (let ((__tmp152568
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'class-instance-init! '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp152568)))
                (__tmp152564
                 (let ((__tmp152565
                        (let ((__tmp152566
                               (let ()
                                 (declare (not safe))
                                 (cons _$obj151714_ '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp152566))))
                   (declare (not safe))
                   (cons __tmp152565 _args151689_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp152567
                                                          __tmp152564))))
                                             (declare (not safe))
                                             (cons '%#call __tmp152563)))
                                          (__tmp152559
                                           (let ((__tmp152560
                                                  (let ((__tmp152561
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj151714_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp152561))))
                                             (declare (not safe))
                                             (cons __tmp152560 '()))))
                                      (declare (not safe))
                                      (cons __tmp152562 __tmp152559))))
                               (declare (not safe))
                               (cons '%#begin __tmp152558))))
                        (declare (not safe))
                        (cons __tmp152557 '()))))
                 (declare (not safe))
                 (cons __tmp152569 __tmp152556))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp152555))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp152554
                                            _stx151682_)))))
                                  (let* ((_g151721151761_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   ___stx152252152253_))
                                                (___kont152256152257_)
                                                (___kont152258152259_))))
                                         (___match152289152290_
                                          (lambda (_e151730151766_
                                                   _hd151729151769_
                                                   _tl151728151771_
                                                   _e151733151774_
                                                   _hd151732151777_
                                                   _tl151731151779_
                                                   _e151736151782_
                                                   _hd151735151785_
                                                   _tl151734151787_
                                                   _e151739151790_
                                                   _hd151738151793_
                                                   _tl151737151795_)
                                            (let ((_L151798_ _tl151737151795_)
                                                  (_L151799_ _hd151738151793_)
                                                  (_L151800_ _hd151735151785_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-keyword?
                                                     _L151800_))
                                                  (___kont152254152255_
                                                   _L151798_
                                                   _L151799_
                                                   _L151800_)
                                                  (___kont152258152259_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx152252152253_))
                                        (let ((_e151730151766_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx152252152253_))))
                                          (let ((_tl151728151771_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e151730151766_)))
                                                (_hd151729151769_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e151730151766_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd151729151769_))
                                                (let ((_e151733151774_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd151729151769_))))
                                                  (let ((_tl151731151779_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e151733151774_)))
                                                        (_hd151732151777_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e151733151774_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd151732151777_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#quote
                                                               _hd151732151777_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl151731151779_))
                        (let ((_e151736151782_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl151731151779_))))
                          (let ((_tl151734151787_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e151736151782_)))
                                (_hd151735151785_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e151736151782_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl151734151787_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl151728151771_))
                                    (let ((_e151739151790_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl151728151771_))))
                                      (let ((_tl151737151795_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e151739151790_)))
                                            (_hd151738151793_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e151739151790_))))
                                        (___match152289152290_
                                         _e151730151766_
                                         _hd151729151769_
                                         _tl151728151771_
                                         _e151733151774_
                                         _hd151732151777_
                                         _tl151731151779_
                                         _e151736151782_
                                         _hd151735151785_
                                         _tl151734151787_
                                         _e151739151790_
                                         _hd151738151793_
                                         _tl151737151795_)))
                                    (___kont152258152259_))
                                (___kont152258152259_))))
                        (___kont152258152259_))
                    (___kont152258152259_))
                (___kont152258152259_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont152258152259_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g151721151761_))))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__klass152175 __method-table152176)
        (let ((__id152177
               (let ((__slot152178
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152175 'id))))
                 (if __slot152178
                     __slot152178
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self151681_ _stx151682_ _args151683_)
            (let* ((_klass151685_
                    (let ((__tmp152695
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self151681_
                              __id152177
                              __klass152175
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx151682_ __tmp152695)))
                   (_fields151687_
                    (length (##structure-ref
                             _klass151685_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args151689_ (map gxc#compile-e _args151683_))
                   (_inline-make-object151691_
                    (let ((__tmp152696
                           (let ((__tmp152702
                                  (let ((__tmp152703
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp152703)))
                                 (__tmp152697
                                  (let ((__tmp152699
                                         (let ((__tmp152700
                                                (let ((__tmp152701
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self151681_
                                                          __id152177
                                                          __klass152175
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp152701 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp152700)))
                                        (__tmp152698
                                         (let ()
                                           (declare (not safe))
                                           (make-list__%
                                            _fields151687_
                                            '(%#quote #f)))))
                                    (declare (not safe))
                                    (cons __tmp152699 __tmp152698))))
                             (declare (not safe))
                             (cons __tmp152702 __tmp152697))))
                      (declare (not safe))
                      (cons '%#call __tmp152696))))
              (let ((_$e151694_
                     (##structure-ref _klass151685_ '6 gxc#!class::t '#f)))
                (if _$e151694_
                    ((lambda (_ctor151697_)
                       (let ((_$obj151699_
                              (let ((__tmp152803 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp152803)))
                             (_ctor-impl151700_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass151685_
                                 _ctor151697_))))
                         (let ((__tmp152804
                                (let ((__tmp152805
                                       (let ((__tmp152873
                                              (let ((__tmp152874
                                                     (let ((__tmp152876
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj151699_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp152875
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object151691_ '()))))
               (declare (not safe))
               (cons __tmp152876 __tmp152875))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp152874 '())))
                                             (__tmp152806
                                              (let ((__tmp152807
                                                     (let ((__tmp152808
                                                            (let ((__tmp152812
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl151700_
                               (let ((__tmp152867
                                      (let ((__tmp152871
                                             (let ((__tmp152872
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl151700_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp152872)))
                                            (__tmp152868
                                             (let ((__tmp152869
                                                    (let ((__tmp152870
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj151699_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp152870))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp152869
                                                     _args151689_))))
                                        (declare (not safe))
                                        (cons __tmp152871 __tmp152868))))
                                 (declare (not safe))
                                 (cons '%#call __tmp152867))
                               (let* ((_$ctor151702_
                                       (let ((__tmp152813
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp152813)))
                                      (__tmp152814
                                       (let ((__tmp152849
                                              (let ((__tmp152850
                                                     (let ((__tmp152866
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor151702_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp152851
                    (let ((__tmp152852
                           (let ((__tmp152853
                                  (let ((__tmp152864
                                         (let ((__tmp152865
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp152865)))
                                        (__tmp152854
                                         (let ((__tmp152861
                                                (let ((__tmp152862
                                                       (let ((__tmp152863
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self151681_
                         __id152177
                         __klass152175
                         '#f))))
                 (declare (not safe))
                 (cons __tmp152863 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp152862)))
                                               (__tmp152855
                                                (let ((__tmp152859
                                                       (let ((__tmp152860
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj151699_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152860)))
              (__tmp152856
               (let ((__tmp152857
                      (let ((__tmp152858
                             (let ()
                               (declare (not safe))
                               (cons _ctor151697_ '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp152858))))
                 (declare (not safe))
                 (cons __tmp152857 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152859
                                                        __tmp152856))))
                                           (declare (not safe))
                                           (cons __tmp152861 __tmp152855))))
                                    (declare (not safe))
                                    (cons __tmp152864 __tmp152854))))
                             (declare (not safe))
                             (cons '%#call __tmp152853))))
                      (declare (not safe))
                      (cons __tmp152852 '()))))
               (declare (not safe))
               (cons __tmp152866 __tmp152851))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp152850 '())))
                                             (__tmp152815
                                              (let ((__tmp152816
                                                     (let ((__tmp152817
                                                            (let ((__tmp152847
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152848
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor151702_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp152848)))
                          (__tmp152818
                           (let ((__tmp152840
                                  (let ((__tmp152841
                                         (let ((__tmp152845
                                                (let ((__tmp152846
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor151702_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp152846)))
                                               (__tmp152842
                                                (let ((__tmp152843
                                                       (let ((__tmp152844
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj151699_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152844))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152843
                                                        _args151689_))))
                                           (declare (not safe))
                                           (cons __tmp152845 __tmp152842))))
                                    (declare (not safe))
                                    (cons '%#call __tmp152841)))
                                 (__tmp152819
                                  (let ((__tmp152820
                                         (let ((__tmp152821
                                                (let ((__tmp152838
                                                       (let ((__tmp152839
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152839)))
              (__tmp152822
               (let ((__tmp152836
                      (let ((__tmp152837
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp152837)))
                     (__tmp152823
                      (let ((__tmp152834
                             (let ((__tmp152835
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp152835)))
                            (__tmp152824
                             (let ((__tmp152831
                                    (let ((__tmp152832
                                           (let ((__tmp152833
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self151681_
                                                     __id152177
                                                     __klass152175
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp152833 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp152832)))
                                   (__tmp152825
                                    (let ((__tmp152829
                                           (let ((__tmp152830
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp152830)))
                                          (__tmp152826
                                           (let ((__tmp152827
                                                  (let ((__tmp152828
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor151697_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp152828))))
                                             (declare (not safe))
                                             (cons __tmp152827 '()))))
                                      (declare (not safe))
                                      (cons __tmp152829 __tmp152826))))
                               (declare (not safe))
                               (cons __tmp152831 __tmp152825))))
                        (declare (not safe))
                        (cons __tmp152834 __tmp152824))))
                 (declare (not safe))
                 (cons __tmp152836 __tmp152823))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152838
                                                        __tmp152822))))
                                           (declare (not safe))
                                           (cons '%#call __tmp152821))))
                                    (declare (not safe))
                                    (cons __tmp152820 '()))))
                             (declare (not safe))
                             (cons __tmp152840 __tmp152819))))
                      (declare (not safe))
                      (cons __tmp152847 __tmp152818))))
               (declare (not safe))
               (cons '%#if __tmp152817))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp152816 '()))))
                                         (declare (not safe))
                                         (cons __tmp152849 __tmp152815))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp152814))))
                          (__tmp152809
                           (let ((__tmp152810
                                  (let ((__tmp152811
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj151699_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp152811))))
                             (declare (not safe))
                             (cons __tmp152810 '()))))
                      (declare (not safe))
                      (cons __tmp152812 __tmp152809))))
               (declare (not safe))
               (cons '%#begin __tmp152808))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp152807 '()))))
                                         (declare (not safe))
                                         (cons __tmp152873 __tmp152806))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp152805))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp152804 _stx151682_))))
                     _$e151694_)
                    (let ((_$e151704_
                           (##structure-ref
                            _klass151685_
                            '9
                            gxc#!class::t
                            '#f)))
                      (if _$e151704_
                          ((lambda (_metaclass151707_)
                             (let* ((_$obj151709_
                                     (let ((__tmp152765 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp152765)))
                                    (_metakons151711_
                                     (let ((__tmp152766
                                            (let ()
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               _stx151682_
                                               _metaclass151707_))))
                                       (declare (not safe))
                                       (gxc#!class-lookup-method
                                        __tmp152766
                                        'instance-init!))))
                               (let ((__tmp152767
                                      (let ((__tmp152768
                                             (let ((__tmp152799
                                                    (let ((__tmp152800
                                                           (let ((__tmp152802
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj151709_ '())))
                         (__tmp152801
                          (let ()
                            (declare (not safe))
                            (cons _inline-make-object151691_ '()))))
                     (declare (not safe))
                     (cons __tmp152802 __tmp152801))))
              (declare (not safe))
              (cons __tmp152800 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp152769
                                                    (let ((__tmp152770
                                                           (let ((__tmp152771
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp152775
                                 (if _metakons151711_
                                     (let ((__tmp152789
                                            (let ((__tmp152797
                                                   (let ((__tmp152798
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _metakons151711_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152798)))
                                                  (__tmp152790
                                                   (let ((__tmp152794
                                                          (let ((__tmp152795
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp152796
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self151681_
                                   __id152177
                                   __klass152175
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp152796 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp152795)))
                 (__tmp152791
                  (let ((__tmp152792
                         (let ((__tmp152793
                                (let ()
                                  (declare (not safe))
                                  (cons _$obj151709_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp152793))))
                    (declare (not safe))
                    (cons __tmp152792 _args151689_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152794
                                                           __tmp152791))))
                                              (declare (not safe))
                                              (cons __tmp152797 __tmp152790))))
                                       (declare (not safe))
                                       (cons '%#call __tmp152789))
                                     (let ((__tmp152776
                                            (let ((__tmp152787
                                                   (let ((__tmp152788
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'call-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152788)))
                                                  (__tmp152777
                                                   (let ((__tmp152784
                                                          (let ((__tmp152785
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp152786
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self151681_
                                   __id152177
                                   __klass152175
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp152786 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp152785)))
                 (__tmp152778
                  (let ((__tmp152782
                         (let ((__tmp152783
                                (let ()
                                  (declare (not safe))
                                  (cons 'instance-init! '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp152783)))
                        (__tmp152779
                         (let ((__tmp152780
                                (let ((__tmp152781
                                       (let ()
                                         (declare (not safe))
                                         (cons _$obj151709_ '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp152781))))
                           (declare (not safe))
                           (cons __tmp152780 _args151689_))))
                    (declare (not safe))
                    (cons __tmp152782 __tmp152779))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152784
                                                           __tmp152778))))
                                              (declare (not safe))
                                              (cons __tmp152787 __tmp152777))))
                                       (declare (not safe))
                                       (cons '%#call __tmp152776))))
                                (__tmp152772
                                 (let ((__tmp152773
                                        (let ((__tmp152774
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$obj151709_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp152774))))
                                   (declare (not safe))
                                   (cons __tmp152773 '()))))
                            (declare (not safe))
                            (cons __tmp152775 __tmp152772))))
                     (declare (not safe))
                     (cons '%#begin __tmp152771))))
              (declare (not safe))
              (cons __tmp152770 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp152799
                                                     __tmp152769))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp152768))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp152767
                                  _stx151682_))))
                           _$e151704_)
                          (if (##structure-ref
                               _klass151685_
                               '7
                               gxc#!class::t
                               '#f)
                              (if (fx= (length _args151689_) _fields151687_)
                                  (let ((__tmp152757
                                         (let ((__tmp152758
                                                (let ((__tmp152763
                                                       (let ((__tmp152764
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '##structure '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152764)))
              (__tmp152759
               (let ((__tmp152760
                      (let ((__tmp152761
                             (let ((__tmp152762
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self151681_
                                       __id152177
                                       __klass152175
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp152762 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp152761))))
                 (declare (not safe))
                 (cons __tmp152760 _args151689_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152763
                                                        __tmp152759))))
                                           (declare (not safe))
                                           (cons '%#call __tmp152758))))
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp152757
                                     _stx151682_))
                                  (let ((__tmp152756
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _self151681_
                                            __id152177
                                            __klass152175
                                            '#f)))
                                        (__tmp152755
                                         (length (##structure-ref
                                                  _klass151685_
                                                  '5
                                                  gxc#!class::t
                                                  '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _stx151682_
                                     __tmp152756
                                     __tmp152755)))
                              (let ((_$obj151714_
                                     (let ((__tmp152704 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp152704))))
                                (let _lp151716_ ((_rest151718_ _args151689_)
                                                 (_initializers151719_ '()))
                                  (let* ((___stx152294152295_ _rest151718_)
                                         (_g151723151744_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               ___stx152294152295_)))))
                                    (let ((___kont152296152297_
                                           (lambda (_L151798_
                                                    _L151799_
                                                    _L151800_)
                                             (let* ((_slot151831_
                                                     (keyword->symbol
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L151800_))))
                                                    (_off151833_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass151685_
                                                        _slot151831_))))
                                               (if _off151833_
                                                   (let ((__tmp152706
                                                          (let ((__tmp152707
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _off151833_ _L151799_))))
                    (declare (not safe))
                    (cons __tmp152707 _initializers151719_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp151716_
                                                      _L151798_
                                                      __tmp152706))
                                                   (let ((__tmp152705
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _self151681_
                                                             __id152177
                                                             __klass152175
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"unknown slot"
                                                      _stx151682_
                                                      __tmp152705
                                                      _slot151831_))))))
                                          (___kont152298152299_
                                           (lambda ()
                                             (let ((__tmp152708
                                                    (let ((__tmp152709
                                                           (let ((__tmp152732
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp152733
                                 (let ((__tmp152735
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj151714_ '())))
                                       (__tmp152734
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object151691_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp152735 __tmp152734))))
                            (declare (not safe))
                            (cons __tmp152733 '())))
                         (__tmp152710
                          (let ((__tmp152711
                                 (let ((__tmp152712
                                        (let ((__tmp152729
                                               (let ((__tmp152730
                                                      (let ((__tmp152731
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj151714_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp152731))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp152730 '())))
                                              (__tmp152713
                                               (let ((__tmp152714
                                                      (lambda (_i151758_
                                                               _r151759_)
                                                        (let ((__tmp152715
                                                               (let ((__tmp152716
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp152726
                                     (let ((__tmp152727
                                            (let ((__tmp152728
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self151681_
                                                      __id152177
                                                      __klass152175
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp152728 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152727)))
                                    (__tmp152717
                                     (let ((__tmp152723
                                            (let ((__tmp152724
                                                   (let ((__tmp152725
                                                          (car _i151758_)))
                                                     (declare (not safe))
                                                     (cons __tmp152725 '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp152724)))
                                           (__tmp152718
                                            (let ((__tmp152721
                                                   (let ((__tmp152722
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj151714_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152722)))
                                                  (__tmp152719
                                                   (let ((__tmp152720
                                                          (cdr _i151758_)))
                                                     (declare (not safe))
                                                     (cons __tmp152720 '()))))
                                              (declare (not safe))
                                              (cons __tmp152721 __tmp152719))))
                                       (declare (not safe))
                                       (cons __tmp152723 __tmp152718))))
                                (declare (not safe))
                                (cons __tmp152726 __tmp152717))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp152716))))
                  (declare (not safe))
                  (cons __tmp152715 _r151759_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl1 __tmp152714
                                                         '()
                                                         _initializers151719_))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp152729
                                                  __tmp152713))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp152712))))
                            (declare (not safe))
                            (cons __tmp152711 '()))))
                     (declare (not safe))
                     (cons __tmp152732 __tmp152710))))
              (declare (not safe))
              (cons '%#let-values __tmp152709))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp152708
                                                _stx151682_))))
                                          (___kont152300152301_
                                           (lambda ()
                                             (let ((__tmp152736
                                                    (let ((__tmp152737
                                                           (let ((__tmp152751
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp152752
                                 (let ((__tmp152754
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj151714_ '())))
                                       (__tmp152753
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object151691_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp152754 __tmp152753))))
                            (declare (not safe))
                            (cons __tmp152752 '())))
                         (__tmp152738
                          (let ((__tmp152739
                                 (let ((__tmp152740
                                        (let ((__tmp152744
                                               (let ((__tmp152745
                                                      (let ((__tmp152749
                                                             (let ((__tmp152750
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'class-instance-init! '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp152750)))
                    (__tmp152746
                     (let ((__tmp152747
                            (let ((__tmp152748
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj151714_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp152748))))
                       (declare (not safe))
                       (cons __tmp152747 _args151689_))))
                (declare (not safe))
                (cons __tmp152749 __tmp152746))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp152745)))
                                              (__tmp152741
                                               (let ((__tmp152742
                                                      (let ((__tmp152743
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj151714_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp152743))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp152742 '()))))
                                          (declare (not safe))
                                          (cons __tmp152744 __tmp152741))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp152740))))
                            (declare (not safe))
                            (cons __tmp152739 '()))))
                     (declare (not safe))
                     (cons __tmp152751 __tmp152738))))
              (declare (not safe))
              (cons '%#let-values __tmp152737))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp152736
                                                _stx151682_)))))
                                      (let* ((_g151721151761_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       ___stx152294152295_))
                                                    (___kont152298152299_)
                                                    (___kont152300152301_))))
                                             (___match152331152332_
                                              (lambda (_e151730151766_
                                                       _hd151729151769_
                                                       _tl151728151771_
                                                       _e151733151774_
                                                       _hd151732151777_
                                                       _tl151731151779_
                                                       _e151736151782_
                                                       _hd151735151785_
                                                       _tl151734151787_
                                                       _e151739151790_
                                                       _hd151738151793_
                                                       _tl151737151795_)
                                                (let ((_L151798_
                                                       _tl151737151795_)
                                                      (_L151799_
                                                       _hd151738151793_)
                                                      (_L151800_
                                                       _hd151735151785_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-keyword?
                                                         _L151800_))
                                                      (___kont152296152297_
                                                       _L151798_
                                                       _L151799_
                                                       _L151800_)
                                                      (___kont152300152301_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               ___stx152294152295_))
                                            (let ((_e151730151766_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      ___stx152294152295_))))
                                              (let ((_tl151728151771_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e151730151766_)))
                                                    (_hd151729151769_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e151730151766_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd151729151769_))
                                                    (let ((_e151733151774_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd151729151769_))))
                                                      (let ((_tl151731151779_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e151733151774_)))
                    (_hd151732151777_
                     (let () (declare (not safe)) (##car _e151733151774_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd151732151777_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd151732151777_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl151731151779_))
                            (let ((_e151736151782_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl151731151779_))))
                              (let ((_tl151734151787_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e151736151782_)))
                                    (_hd151735151785_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e151736151782_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl151734151787_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl151728151771_))
                                        (let ((_e151739151790_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl151728151771_))))
                                          (let ((_tl151737151795_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e151739151790_)))
                                                (_hd151738151793_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e151739151790_))))
                                            (___match152331152332_
                                             _e151730151766_
                                             _hd151729151769_
                                             _tl151728151771_
                                             _e151733151774_
                                             _hd151732151777_
                                             _tl151731151779_
                                             _e151736151782_
                                             _hd151735151785_
                                             _tl151734151787_
                                             _e151739151790_
                                             _hd151738151793_
                                             _tl151737151795_)))
                                        (___kont152300152301_))
                                    (___kont152300152301_))))
                            (___kont152300152301_))
                        (___kont152300152301_))
                    (___kont152300152301_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont152300152301_))))
                                            (let ()
                                              (declare (not safe))
                                              (_g151721151761_))))))))))))))))))
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
      (lambda (_self151504_ _stx151505_ _args151506_)
        (let* ((_g151508151518_
                (lambda (_g151509151515_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g151509151515_))))
               (_g151507151556_
                (lambda (_g151509151521_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g151509151521_))
                      (let ((_e151513151523_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g151509151521_))))
                        (let ((_hd151512151526_
                               (let ()
                                 (declare (not safe))
                                 (##car _e151513151523_)))
                              (_tl151511151528_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e151513151523_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl151511151528_))
                              ((lambda (_L151531_)
                                 (let* ((_klass151542_
                                         (let ((__tmp152877
                                                (##structure-ref
                                                 _self151504_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx151505_
                                            __tmp152877)))
                                        (_field151544_
                                         (let ((__tmp152878
                                                (##structure-ref
                                                 _self151504_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass151542_
                                            __tmp152878)))
                                        (_object151546_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L151531_))))
                                   (if (##structure-ref
                                        _klass151542_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp152955
                                              (let ((__tmp152964
                                                     (if (##structure-ref
                                                          _self151504_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp152956
                                                     (let ((__tmp152961
                                                            (let ((__tmp152962
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152963
                                  (##structure-ref
                                   _self151504_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp152963 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp152962)))
                   (__tmp152957
                    (let ((__tmp152959
                           (let ((__tmp152960
                                  (let ()
                                    (declare (not safe))
                                    (cons _field151544_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp152960)))
                          (__tmp152958
                           (let ()
                             (declare (not safe))
                             (cons _object151546_ '()))))
                      (declare (not safe))
                      (cons __tmp152959 __tmp152958))))
               (declare (not safe))
               (cons __tmp152961 __tmp152957))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp152964
                                                      __tmp152956))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp152955
                                          _stx151505_))
                                       (if (##structure-ref
                                            _klass151542_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp152945
                                                  (let ((__tmp152954
                                                         (if (##structure-ref
                                                              _self151504_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp152946
                                                         (let ((__tmp152951
                                                                (let ((__tmp152952
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp152953
                                      (##structure-ref
                                       _self151504_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp152953 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp152952)))
                       (__tmp152947
                        (let ((__tmp152949
                               (let ((__tmp152950
                                      (let ()
                                        (declare (not safe))
                                        (cons _field151544_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp152950)))
                              (__tmp152948
                               (let ()
                                 (declare (not safe))
                                 (cons _object151546_ '()))))
                          (declare (not safe))
                          (cons __tmp152949 __tmp152948))))
                   (declare (not safe))
                   (cons __tmp152951 __tmp152947))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp152954
                                                          __tmp152946))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152945
                                              _stx151505_))
                                           (let ((_$e151549_
                                                  (let ((__tmp152879
                                                         (##structure-ref
                                                          _self151504_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass151542_
                                                     __tmp152879))))
                                             (if _$e151549_
                                                 ((lambda (_klass151552_)
                                                    (let ((__tmp152935
                                                           (let ((__tmp152944
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self151504_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp152936
                          (let ((__tmp152941
                                 (let ((__tmp152942
                                        (let ((__tmp152943
                                               (##structure-ref
                                                _self151504_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp152943 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp152942)))
                                (__tmp152937
                                 (let ((__tmp152939
                                        (let ((__tmp152940
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field151544_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp152940)))
                                       (__tmp152938
                                        (let ()
                                          (declare (not safe))
                                          (cons _object151546_ '()))))
                                   (declare (not safe))
                                   (cons __tmp152939 __tmp152938))))
                            (declare (not safe))
                            (cons __tmp152941 __tmp152937))))
                     (declare (not safe))
                     (cons __tmp152944 __tmp152936))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp152935 _stx151505_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e151549_)
                                                 (if (##structure-ref
                                                      _self151504_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp152889
                                                            (let* ((_$obj151554_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp152890 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp152890)))
                           (__tmp152891
                            (let ((__tmp152931
                                   (let ((__tmp152932
                                          (let ((__tmp152934
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj151554_ '())))
                                                (__tmp152933
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object151546_ '()))))
                                            (declare (not safe))
                                            (cons __tmp152934 __tmp152933))))
                                     (declare (not safe))
                                     (cons __tmp152932 '())))
                                  (__tmp152892
                                   (let ((__tmp152893
                                          (let ((__tmp152894
                                                 (let ((__tmp152923
                                                        (let ((__tmp152924
                                                               (let ((__tmp152928
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp152929
                                     (let ((__tmp152930
                                            (##structure-ref
                                             _klass151542_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp152930 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp152929)))
                             (__tmp152925
                              (let ((__tmp152926
                                     (let ((__tmp152927
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj151554_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152927))))
                                (declare (not safe))
                                (cons __tmp152926 '()))))
                         (declare (not safe))
                         (cons __tmp152928 __tmp152925))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp152924)))
               (__tmp152895
                (let ((__tmp152912
                       (let ((__tmp152913
                              (let ((__tmp152920
                                     (let ((__tmp152921
                                            (let ((__tmp152922
                                                   (##structure-ref
                                                    _self151504_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp152922 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152921)))
                                    (__tmp152914
                                     (let ((__tmp152918
                                            (let ((__tmp152919
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field151544_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp152919)))
                                           (__tmp152915
                                            (let ((__tmp152916
                                                   (let ((__tmp152917
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj151554_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152917))))
                                              (declare (not safe))
                                              (cons __tmp152916 '()))))
                                       (declare (not safe))
                                       (cons __tmp152918 __tmp152915))))
                                (declare (not safe))
                                (cons __tmp152920 __tmp152914))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp152913)))
                      (__tmp152896
                       (let ((__tmp152897
                              (let ((__tmp152898
                                     (let ((__tmp152910
                                            (let ((__tmp152911
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp152911)))
                                           (__tmp152899
                                            (let ((__tmp152907
                                                   (let ((__tmp152908
                                                          (let ((__tmp152909
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self151504_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp152909 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152908)))
                                                  (__tmp152900
                                                   (let ((__tmp152905
                                                          (let ((__tmp152906
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj151554_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp152906)))
                 (__tmp152901
                  (let ((__tmp152902
                         (let ((__tmp152903
                                (let ((__tmp152904
                                       (##structure-ref
                                        _self151504_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp152904 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp152903))))
                    (declare (not safe))
                    (cons __tmp152902 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152905
                                                           __tmp152901))))
                                              (declare (not safe))
                                              (cons __tmp152907 __tmp152900))))
                                       (declare (not safe))
                                       (cons __tmp152910 __tmp152899))))
                                (declare (not safe))
                                (cons '%#call __tmp152898))))
                         (declare (not safe))
                         (cons __tmp152897 '()))))
                  (declare (not safe))
                  (cons __tmp152912 __tmp152896))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp152923
                                                         __tmp152895))))
                                            (declare (not safe))
                                            (cons '%#if __tmp152894))))
                                     (declare (not safe))
                                     (cons __tmp152893 '()))))
                              (declare (not safe))
                              (cons __tmp152931 __tmp152892))))
                      (declare (not safe))
                      (cons '%#let-values __tmp152891))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp152889 _stx151505_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp152880
                                                            (let ((__tmp152881
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152887
                                  (let ((__tmp152888
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp152888)))
                                 (__tmp152882
                                  (let ((__tmp152883
                                         (let ((__tmp152884
                                                (let ((__tmp152885
                                                       (let ((__tmp152886
                                                              (##structure-ref
                                                               _self151504_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp152886
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp152885))))
                                           (declare (not safe))
                                           (cons __tmp152884 '()))))
                                    (declare (not safe))
                                    (cons _object151546_ __tmp152883))))
                             (declare (not safe))
                             (cons __tmp152887 __tmp152882))))
                      (declare (not safe))
                      (cons '%#call __tmp152881))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp152880 _stx151505_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd151512151526_)
                              (let ()
                                (declare (not safe))
                                (_g151508151518_ _g151509151521_)))))
                      (let ()
                        (declare (not safe))
                        (_g151508151518_ _g151509151521_))))))
          (declare (not safe))
          (_g151507151556_ _args151506_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass152179 __method-table152180)
        (let ((__checked?152181
               (let ((__slot152184
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152179 'checked?))))
                 (if __slot152184
                     __slot152184
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__id152182
               (let ((__slot152185
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152179 'id))))
                 (if __slot152185
                     __slot152185
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__slot152183
               (let ((__slot152186
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152179 'slot))))
                 (if __slot152186
                     __slot152186
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self151504_ _stx151505_ _args151506_)
            (let* ((_g151508151518_
                    (lambda (_g151509151515_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g151509151515_))))
                   (_g151507151556_
                    (lambda (_g151509151521_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g151509151521_))
                          (let ((_e151513151523_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g151509151521_))))
                            (let ((_hd151512151526_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e151513151523_)))
                                  (_tl151511151528_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e151513151523_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl151511151528_))
                                  ((lambda (_L151531_)
                                     (let* ((_klass151542_
                                             (let ((__tmp152965
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self151504_
                                                       __id152182
                                                       __klass152179
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx151505_
                                                __tmp152965)))
                                            (_field151544_
                                             (let ((__tmp152966
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self151504_
                                                       __slot152183
                                                       __klass152179
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass151542_
                                                __tmp152966)))
                                            (_object151546_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L151531_))))
                                       (if (##structure-ref
                                            _klass151542_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp153043
                                                  (let ((__tmp153052
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self151504_
                        __checked?152181
                        __klass152179
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp153044
                 (let ((__tmp153049
                        (let ((__tmp153050
                               (let ((__tmp153051
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self151504_
                                         __id152182
                                         __klass152179
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp153051 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp153050)))
                       (__tmp153045
                        (let ((__tmp153047
                               (let ((__tmp153048
                                      (let ()
                                        (declare (not safe))
                                        (cons _field151544_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp153048)))
                              (__tmp153046
                               (let ()
                                 (declare (not safe))
                                 (cons _object151546_ '()))))
                          (declare (not safe))
                          (cons __tmp153047 __tmp153046))))
                   (declare (not safe))
                   (cons __tmp153049 __tmp153045))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp153052
                                                          __tmp153044))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp153043
                                              _stx151505_))
                                           (if (##structure-ref
                                                _klass151542_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp153033
                                                      (let ((__tmp153042
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self151504_
                            __checked?152181
                            __klass152179
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp153034
                     (let ((__tmp153039
                            (let ((__tmp153040
                                   (let ((__tmp153041
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self151504_
                                             __id152182
                                             __klass152179
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp153041 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp153040)))
                           (__tmp153035
                            (let ((__tmp153037
                                   (let ((__tmp153038
                                          (let ()
                                            (declare (not safe))
                                            (cons _field151544_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp153038)))
                                  (__tmp153036
                                   (let ()
                                     (declare (not safe))
                                     (cons _object151546_ '()))))
                              (declare (not safe))
                              (cons __tmp153037 __tmp153036))))
                       (declare (not safe))
                       (cons __tmp153039 __tmp153035))))
                (declare (not safe))
                (cons __tmp153042 __tmp153034))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp153033
                                                  _stx151505_))
                                               (let ((_$e151549_
                                                      (let ((__tmp152967
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self151504_
                        __slot152183
                        __klass152179
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass151542_ __tmp152967))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e151549_
                                                     ((lambda (_klass151552_)
                                                        (let ((__tmp153023
                                                               (let ((__tmp153032
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self151504_
                                     __checked?152181
                                     __klass152179
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp153024
                              (let ((__tmp153029
                                     (let ((__tmp153030
                                            (let ((__tmp153031
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self151504_
                                                      __id152182
                                                      __klass152179
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp153031 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153030)))
                                    (__tmp153025
                                     (let ((__tmp153027
                                            (let ((__tmp153028
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field151544_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp153028)))
                                           (__tmp153026
                                            (let ()
                                              (declare (not safe))
                                              (cons _object151546_ '()))))
                                       (declare (not safe))
                                       (cons __tmp153027 __tmp153026))))
                                (declare (not safe))
                                (cons __tmp153029 __tmp153025))))
                         (declare (not safe))
                         (cons __tmp153032 __tmp153024))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp153023 _stx151505_)))
              _$e151549_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self151504_
                                                            __checked?152181
                                                            __klass152179
                                                            '#f))
                                                         (let ((__tmp152977
                                                                (let* ((_$obj151554_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp152978 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp152978)))
                               (__tmp152979
                                (let ((__tmp153019
                                       (let ((__tmp153020
                                              (let ((__tmp153022
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj151554_
                                                             '())))
                                                    (__tmp153021
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object151546_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp153022
                                                      __tmp153021))))
                                         (declare (not safe))
                                         (cons __tmp153020 '())))
                                      (__tmp152980
                                       (let ((__tmp152981
                                              (let ((__tmp152982
                                                     (let ((__tmp153011
                                                            (let ((__tmp153012
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153016
                                  (let ((__tmp153017
                                         (let ((__tmp153018
                                                (##structure-ref
                                                 _klass151542_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp153018 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp153017)))
                                 (__tmp153013
                                  (let ((__tmp153014
                                         (let ((__tmp153015
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj151554_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153015))))
                                    (declare (not safe))
                                    (cons __tmp153014 '()))))
                             (declare (not safe))
                             (cons __tmp153016 __tmp153013))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp153012)))
                   (__tmp152983
                    (let ((__tmp153000
                           (let ((__tmp153001
                                  (let ((__tmp153008
                                         (let ((__tmp153009
                                                (let ((__tmp153010
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self151504_
                                                          __id152182
                                                          __klass152179
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp153010 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153009)))
                                        (__tmp153002
                                         (let ((__tmp153006
                                                (let ((__tmp153007
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field151544_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp153007)))
                                               (__tmp153003
                                                (let ((__tmp153004
                                                       (let ((__tmp153005
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj151554_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153005))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153004 '()))))
                                           (declare (not safe))
                                           (cons __tmp153006 __tmp153003))))
                                    (declare (not safe))
                                    (cons __tmp153008 __tmp153002))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp153001)))
                          (__tmp152984
                           (let ((__tmp152985
                                  (let ((__tmp152986
                                         (let ((__tmp152998
                                                (let ((__tmp152999
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp152999)))
                                               (__tmp152987
                                                (let ((__tmp152995
                                                       (let ((__tmp152996
                                                              (let ((__tmp152997
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self151504_
                                __id152182
                                __klass152179
                                '#f))))
                        (declare (not safe))
                        (cons __tmp152997 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152996)))
              (__tmp152988
               (let ((__tmp152993
                      (let ((__tmp152994
                             (let ()
                               (declare (not safe))
                               (cons _$obj151554_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp152994)))
                     (__tmp152989
                      (let ((__tmp152990
                             (let ((__tmp152991
                                    (let ((__tmp152992
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self151504_
                                              __slot152183
                                              __klass152179
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp152992 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp152991))))
                        (declare (not safe))
                        (cons __tmp152990 '()))))
                 (declare (not safe))
                 (cons __tmp152993 __tmp152989))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152995
                                                        __tmp152988))))
                                           (declare (not safe))
                                           (cons __tmp152998 __tmp152987))))
                                    (declare (not safe))
                                    (cons '%#call __tmp152986))))
                             (declare (not safe))
                             (cons __tmp152985 '()))))
                      (declare (not safe))
                      (cons __tmp153000 __tmp152984))))
               (declare (not safe))
               (cons __tmp153011 __tmp152983))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp152982))))
                                         (declare (not safe))
                                         (cons __tmp152981 '()))))
                                  (declare (not safe))
                                  (cons __tmp153019 __tmp152980))))
                          (declare (not safe))
                          (cons '%#let-values __tmp152979))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp152977 _stx151505_))
                 (let ((__tmp152968
                        (let ((__tmp152969
                               (let ((__tmp152975
                                      (let ((__tmp152976
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp152976)))
                                     (__tmp152970
                                      (let ((__tmp152971
                                             (let ((__tmp152972
                                                    (let ((__tmp152973
                                                           (let ((__tmp152974
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self151504_
                             __slot152183
                             __klass152179
                             '#f))))
                     (declare (not safe))
                     (cons __tmp152974 '()))))
              (declare (not safe))
              (cons '%#quote __tmp152973))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp152972 '()))))
                                        (declare (not safe))
                                        (cons _object151546_ __tmp152971))))
                                 (declare (not safe))
                                 (cons __tmp152975 __tmp152970))))
                          (declare (not safe))
                          (cons '%#call __tmp152969))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp152968 _stx151505_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd151512151526_)
                                  (let ()
                                    (declare (not safe))
                                    (_g151508151518_ _g151509151521_)))))
                          (let ()
                            (declare (not safe))
                            (_g151508151518_ _g151509151521_))))))
              (declare (not safe))
              (_g151507151556_ _args151506_))))))
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
      (lambda (_self151309_ _stx151310_ _args151311_)
        (let* ((_g151313151327_
                (lambda (_g151314151324_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g151314151324_))))
               (_g151312151379_
                (lambda (_g151314151330_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g151314151330_))
                      (let ((_e151319151332_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g151314151330_))))
                        (let ((_hd151318151335_
                               (let ()
                                 (declare (not safe))
                                 (##car _e151319151332_)))
                              (_tl151317151337_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e151319151332_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl151317151337_))
                              (let ((_e151322151340_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl151317151337_))))
                                (let ((_hd151321151343_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e151322151340_)))
                                      (_tl151320151345_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e151322151340_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl151320151345_))
                                      ((lambda (_L151348_ _L151349_)
                                         (let* ((_klass151363_
                                                 (let ((__tmp153053
                                                        (##structure-ref
                                                         _self151309_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx151310_
                                                    __tmp153053)))
                                                (_field151365_
                                                 (let ((__tmp153054
                                                        (##structure-ref
                                                         _self151309_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass151363_
                                                    __tmp153054)))
                                                (_object151367_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L151349_)))
                                                (_value151369_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L151348_))))
                                           (if (##structure-ref
                                                _klass151363_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp153136
                                                      (let ((__tmp153146
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self151309_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp153137
                     (let ((__tmp153143
                            (let ((__tmp153144
                                   (let ((__tmp153145
                                          (##structure-ref
                                           _self151309_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp153145 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp153144)))
                           (__tmp153138
                            (let ((__tmp153141
                                   (let ((__tmp153142
                                          (let ()
                                            (declare (not safe))
                                            (cons _field151365_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp153142)))
                                  (__tmp153139
                                   (let ((__tmp153140
                                          (let ()
                                            (declare (not safe))
                                            (cons _value151369_ '()))))
                                     (declare (not safe))
                                     (cons _object151367_ __tmp153140))))
                              (declare (not safe))
                              (cons __tmp153141 __tmp153139))))
                       (declare (not safe))
                       (cons __tmp153143 __tmp153138))))
                (declare (not safe))
                (cons __tmp153146 __tmp153137))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp153136
                                                  _stx151310_))
                                               (if (##structure-ref
                                                    _klass151363_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp153125
                                                          (let ((__tmp153135
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self151309_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp153126
                         (let ((__tmp153132
                                (let ((__tmp153133
                                       (let ((__tmp153134
                                              (##structure-ref
                                               _self151309_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp153134 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp153133)))
                               (__tmp153127
                                (let ((__tmp153130
                                       (let ((__tmp153131
                                              (let ()
                                                (declare (not safe))
                                                (cons _field151365_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp153131)))
                                      (__tmp153128
                                       (let ((__tmp153129
                                              (let ()
                                                (declare (not safe))
                                                (cons _value151369_ '()))))
                                         (declare (not safe))
                                         (cons _object151367_ __tmp153129))))
                                  (declare (not safe))
                                  (cons __tmp153130 __tmp153128))))
                           (declare (not safe))
                           (cons __tmp153132 __tmp153127))))
                    (declare (not safe))
                    (cons __tmp153135 __tmp153126))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp153125
                                                      _stx151310_))
                                                   (let ((_$e151372_
                                                          (let ((__tmp153055
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self151309_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass151363_ __tmp153055))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e151372_
                                                         ((lambda (_klass151375_)
                                                            (let ((__tmp153114
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153124
                                  (if (##structure-ref
                                       _self151309_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp153115
                                  (let ((__tmp153121
                                         (let ((__tmp153122
                                                (let ((__tmp153123
                                                       (##structure-ref
                                                        _self151309_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp153123 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153122)))
                                        (__tmp153116
                                         (let ((__tmp153119
                                                (let ((__tmp153120
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field151365_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp153120)))
                                               (__tmp153117
                                                (let ((__tmp153118
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value151369_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object151367_
                                                        __tmp153118))))
                                           (declare (not safe))
                                           (cons __tmp153119 __tmp153117))))
                                    (declare (not safe))
                                    (cons __tmp153121 __tmp153116))))
                             (declare (not safe))
                             (cons __tmp153124 __tmp153115))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp153114 _stx151310_)))
                  _$e151372_)
                 (if (##structure-ref _self151309_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp153066
                            (let* ((_$obj151377_
                                    (let ((__tmp153067 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp153067)))
                                   (__tmp153068
                                    (let ((__tmp153110
                                           (let ((__tmp153111
                                                  (let ((__tmp153113
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj151377_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp153112
                 (let () (declare (not safe)) (cons _object151367_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp153113
                                                          __tmp153112))))
                                             (declare (not safe))
                                             (cons __tmp153111 '())))
                                          (__tmp153069
                                           (let ((__tmp153070
                                                  (let ((__tmp153071
                                                         (let ((__tmp153102
                                                                (let ((__tmp153103
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp153107
                                      (let ((__tmp153108
                                             (let ((__tmp153109
                                                    (##structure-ref
                                                     _klass151363_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp153109 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp153108)))
                                     (__tmp153104
                                      (let ((__tmp153105
                                             (let ((__tmp153106
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj151377_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp153106))))
                                        (declare (not safe))
                                        (cons __tmp153105 '()))))
                                 (declare (not safe))
                                 (cons __tmp153107 __tmp153104))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp153103)))
                       (__tmp153072
                        (let ((__tmp153090
                               (let ((__tmp153091
                                      (let ((__tmp153099
                                             (let ((__tmp153100
                                                    (let ((__tmp153101
                                                           (##structure-ref
                                                            _self151309_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp153101 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp153100)))
                                            (__tmp153092
                                             (let ((__tmp153097
                                                    (let ((__tmp153098
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field151365_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp153098)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp153093
                                                    (let ((__tmp153095
                                                           (let ((__tmp153096
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj151377_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp153096)))
                  (__tmp153094
                   (let () (declare (not safe)) (cons _value151369_ '()))))
              (declare (not safe))
              (cons __tmp153095 __tmp153094))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153097
                                                     __tmp153093))))
                                        (declare (not safe))
                                        (cons __tmp153099 __tmp153092))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp153091)))
                              (__tmp153073
                               (let ((__tmp153074
                                      (let ((__tmp153075
                                             (let ((__tmp153088
                                                    (let ((__tmp153089
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp153089)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp153076
                                                    (let ((__tmp153085
                                                           (let ((__tmp153086
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp153087
                                 (##structure-ref
                                  _self151309_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp153087 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp153086)))
                  (__tmp153077
                   (let ((__tmp153083
                          (let ((__tmp153084
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj151377_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp153084)))
                         (__tmp153078
                          (let ((__tmp153080
                                 (let ((__tmp153081
                                        (let ((__tmp153082
                                               (##structure-ref
                                                _self151309_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp153082 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp153081)))
                                (__tmp153079
                                 (let ()
                                   (declare (not safe))
                                   (cons _value151369_ '()))))
                            (declare (not safe))
                            (cons __tmp153080 __tmp153079))))
                     (declare (not safe))
                     (cons __tmp153083 __tmp153078))))
              (declare (not safe))
              (cons __tmp153085 __tmp153077))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153088
                                                     __tmp153076))))
                                        (declare (not safe))
                                        (cons '%#call __tmp153075))))
                                 (declare (not safe))
                                 (cons __tmp153074 '()))))
                          (declare (not safe))
                          (cons __tmp153090 __tmp153073))))
                   (declare (not safe))
                   (cons __tmp153102 __tmp153072))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp153071))))
                                             (declare (not safe))
                                             (cons __tmp153070 '()))))
                                      (declare (not safe))
                                      (cons __tmp153110 __tmp153069))))
                              (declare (not safe))
                              (cons '%#let-values __tmp153068))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp153066 _stx151310_))
                     (let ((__tmp153056
                            (let ((__tmp153057
                                   (let ((__tmp153064
                                          (let ((__tmp153065
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp153065)))
                                         (__tmp153058
                                          (let ((__tmp153059
                                                 (let ((__tmp153061
                                                        (let ((__tmp153062
                                                               (let ((__tmp153063
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self151309_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp153063 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp153062)))
               (__tmp153060
                (let () (declare (not safe)) (cons _value151369_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153061
                                                         __tmp153060))))
                                            (declare (not safe))
                                            (cons _object151367_
                                                  __tmp153059))))
                                     (declare (not safe))
                                     (cons __tmp153064 __tmp153058))))
                              (declare (not safe))
                              (cons '%#call __tmp153057))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp153056 _stx151310_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd151321151343_
                                       _hd151318151335_)
                                      (let ()
                                        (declare (not safe))
                                        (_g151313151327_ _g151314151330_)))))
                              (let ()
                                (declare (not safe))
                                (_g151313151327_ _g151314151330_)))))
                      (let ()
                        (declare (not safe))
                        (_g151313151327_ _g151314151330_))))))
          (declare (not safe))
          (_g151312151379_ _args151311_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass152187 __method-table152188)
        (let ((__slot152189
               (let ((__slot152192
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152187 'slot))))
                 (if __slot152192
                     __slot152192
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id152190
               (let ((__slot152193
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152187 'id))))
                 (if __slot152193
                     __slot152193
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?152191
               (let ((__slot152194
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152187 'checked?))))
                 (if __slot152194
                     __slot152194
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self151309_ _stx151310_ _args151311_)
            (let* ((_g151313151327_
                    (lambda (_g151314151324_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g151314151324_))))
                   (_g151312151379_
                    (lambda (_g151314151330_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g151314151330_))
                          (let ((_e151319151332_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g151314151330_))))
                            (let ((_hd151318151335_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e151319151332_)))
                                  (_tl151317151337_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e151319151332_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl151317151337_))
                                  (let ((_e151322151340_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl151317151337_))))
                                    (let ((_hd151321151343_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e151322151340_)))
                                          (_tl151320151345_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e151322151340_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl151320151345_))
                                          ((lambda (_L151348_ _L151349_)
                                             (let* ((_klass151363_
                                                     (let ((__tmp153147
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self151309_
                                                               __id152190
                                                               __klass152187
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx151310_
                                                        __tmp153147)))
                                                    (_field151365_
                                                     (let ((__tmp153148
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self151309_
                                                               __slot152189
                                                               __klass152187
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass151363_
                                                        __tmp153148)))
                                                    (_object151367_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L151349_)))
                                                    (_value151369_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L151348_))))
                                               (if (##structure-ref
                                                    _klass151363_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp153230
                                                          (let ((__tmp153240
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self151309_
                                __checked?152191
                                __klass152187
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp153231
                         (let ((__tmp153237
                                (let ((__tmp153238
                                       (let ((__tmp153239
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self151309_
                                                 __id152190
                                                 __klass152187
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp153239 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp153238)))
                               (__tmp153232
                                (let ((__tmp153235
                                       (let ((__tmp153236
                                              (let ()
                                                (declare (not safe))
                                                (cons _field151365_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp153236)))
                                      (__tmp153233
                                       (let ((__tmp153234
                                              (let ()
                                                (declare (not safe))
                                                (cons _value151369_ '()))))
                                         (declare (not safe))
                                         (cons _object151367_ __tmp153234))))
                                  (declare (not safe))
                                  (cons __tmp153235 __tmp153233))))
                           (declare (not safe))
                           (cons __tmp153237 __tmp153232))))
                    (declare (not safe))
                    (cons __tmp153240 __tmp153231))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp153230
                                                      _stx151310_))
                                                   (if (##structure-ref
                                                        _klass151363_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp153219
                                                              (let ((__tmp153229
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self151309_
                                    __checked?152191
                                    __klass152187
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp153220
                             (let ((__tmp153226
                                    (let ((__tmp153227
                                           (let ((__tmp153228
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self151309_
                                                     __id152190
                                                     __klass152187
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp153228 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp153227)))
                                   (__tmp153221
                                    (let ((__tmp153224
                                           (let ((__tmp153225
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field151365_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp153225)))
                                          (__tmp153222
                                           (let ((__tmp153223
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value151369_ '()))))
                                             (declare (not safe))
                                             (cons _object151367_
                                                   __tmp153223))))
                                      (declare (not safe))
                                      (cons __tmp153224 __tmp153222))))
                               (declare (not safe))
                               (cons __tmp153226 __tmp153221))))
                        (declare (not safe))
                        (cons __tmp153229 __tmp153220))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp153219 _stx151310_))
               (let ((_$e151372_
                      (let ((__tmp153149
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self151309_
                                __slot152189
                                __klass152187
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass151363_
                         __tmp153149))))
                 (if _$e151372_
                     ((lambda (_klass151375_)
                        (let ((__tmp153208
                               (let ((__tmp153218
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self151309_
                                             __checked?152191
                                             __klass152187
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp153209
                                      (let ((__tmp153215
                                             (let ((__tmp153216
                                                    (let ((__tmp153217
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self151309_
                                                              __id152190
                                                              __klass152187
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp153217 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp153216)))
                                            (__tmp153210
                                             (let ((__tmp153213
                                                    (let ((__tmp153214
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field151365_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp153214)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp153211
                                                    (let ((__tmp153212
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value151369_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object151367_ __tmp153212))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153213
                                                     __tmp153211))))
                                        (declare (not safe))
                                        (cons __tmp153215 __tmp153210))))
                                 (declare (not safe))
                                 (cons __tmp153218 __tmp153209))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp153208 _stx151310_)))
                      _$e151372_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self151309_
                            __checked?152191
                            __klass152187
                            '#f))
                         (let ((__tmp153160
                                (let* ((_$obj151377_
                                        (let ((__tmp153161 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp153161)))
                                       (__tmp153162
                                        (let ((__tmp153204
                                               (let ((__tmp153205
                                                      (let ((__tmp153207
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj151377_ '())))
                    (__tmp153206
                     (let () (declare (not safe)) (cons _object151367_ '()))))
                (declare (not safe))
                (cons __tmp153207 __tmp153206))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153205 '())))
                                              (__tmp153163
                                               (let ((__tmp153164
                                                      (let ((__tmp153165
                                                             (let ((__tmp153196
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp153197
                                   (let ((__tmp153201
                                          (let ((__tmp153202
                                                 (let ((__tmp153203
                                                        (##structure-ref
                                                         _klass151363_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp153203 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp153202)))
                                         (__tmp153198
                                          (let ((__tmp153199
                                                 (let ((__tmp153200
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj151377_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp153200))))
                                            (declare (not safe))
                                            (cons __tmp153199 '()))))
                                     (declare (not safe))
                                     (cons __tmp153201 __tmp153198))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp153197)))
                           (__tmp153166
                            (let ((__tmp153184
                                   (let ((__tmp153185
                                          (let ((__tmp153193
                                                 (let ((__tmp153194
                                                        (let ((__tmp153195
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self151309_
                          __id152190
                          __klass152187
                          '#f))))
                  (declare (not safe))
                  (cons __tmp153195 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp153194)))
                                                (__tmp153186
                                                 (let ((__tmp153191
                                                        (let ((__tmp153192
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field151365_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp153192)))
               (__tmp153187
                (let ((__tmp153189
                       (let ((__tmp153190
                              (let ()
                                (declare (not safe))
                                (cons _$obj151377_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp153190)))
                      (__tmp153188
                       (let () (declare (not safe)) (cons _value151369_ '()))))
                  (declare (not safe))
                  (cons __tmp153189 __tmp153188))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153191
                                                         __tmp153187))))
                                            (declare (not safe))
                                            (cons __tmp153193 __tmp153186))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp153185)))
                                  (__tmp153167
                                   (let ((__tmp153168
                                          (let ((__tmp153169
                                                 (let ((__tmp153182
                                                        (let ((__tmp153183
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp153183)))
               (__tmp153170
                (let ((__tmp153179
                       (let ((__tmp153180
                              (let ((__tmp153181
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self151309_
                                        __id152190
                                        __klass152187
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp153181 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp153180)))
                      (__tmp153171
                       (let ((__tmp153177
                              (let ((__tmp153178
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj151377_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp153178)))
                             (__tmp153172
                              (let ((__tmp153174
                                     (let ((__tmp153175
                                            (let ((__tmp153176
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self151309_
                                                      __slot152189
                                                      __klass152187
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp153176 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp153175)))
                                    (__tmp153173
                                     (let ()
                                       (declare (not safe))
                                       (cons _value151369_ '()))))
                                (declare (not safe))
                                (cons __tmp153174 __tmp153173))))
                         (declare (not safe))
                         (cons __tmp153177 __tmp153172))))
                  (declare (not safe))
                  (cons __tmp153179 __tmp153171))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153182
                                                         __tmp153170))))
                                            (declare (not safe))
                                            (cons '%#call __tmp153169))))
                                     (declare (not safe))
                                     (cons __tmp153168 '()))))
                              (declare (not safe))
                              (cons __tmp153184 __tmp153167))))
                       (declare (not safe))
                       (cons __tmp153196 __tmp153166))))
                (declare (not safe))
                (cons '%#if __tmp153165))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153164 '()))))
                                          (declare (not safe))
                                          (cons __tmp153204 __tmp153163))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp153162))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp153160 _stx151310_))
                         (let ((__tmp153150
                                (let ((__tmp153151
                                       (let ((__tmp153158
                                              (let ((__tmp153159
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp153159)))
                                             (__tmp153152
                                              (let ((__tmp153153
                                                     (let ((__tmp153155
                                                            (let ((__tmp153156
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153157
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self151309_
                                     __slot152189
                                     __klass152187
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp153157 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp153156)))
                   (__tmp153154
                    (let () (declare (not safe)) (cons _value151369_ '()))))
               (declare (not safe))
               (cons __tmp153155 __tmp153154))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object151367_
                                                      __tmp153153))))
                                         (declare (not safe))
                                         (cons __tmp153158 __tmp153152))))
                                  (declare (not safe))
                                  (cons '%#call __tmp153151))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp153150
                            _stx151310_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd151321151343_
                                           _hd151318151335_)
                                          (let ()
                                            (declare (not safe))
                                            (_g151313151327_
                                             _g151314151330_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g151313151327_ _g151314151330_)))))
                          (let ()
                            (declare (not safe))
                            (_g151313151327_ _g151314151330_))))))
              (declare (not safe))
              (_g151312151379_ _args151311_))))))
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
      (lambda (_self151143_ _stx151144_ _args151145_)
        (let* ((_self151146151155_ _self151143_)
               (_E151148151159_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self151146151155_))))
               (_K151149151166_
                (lambda (_inline151162_ _dispatch151163_ _arity151164_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self151143_ _args151145_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx151144_
                         _arity151164_)))
                  (if _inline151162_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp153246
                               (let ((__tmp153247
                                      (_inline151162_ _stx151144_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp153247
                                  _stx151144_))))
                          (declare (not safe))
                          (gxc#compile-e__0 __tmp153246)))
                      (if _dispatch151163_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch151163_))
                            (let ((__tmp153241
                                   (let ((__tmp153242
                                          (let ((__tmp153243
                                                 (let ((__tmp153244
                                                        (let ((__tmp153245
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch151163_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp153245))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153244
                                                         _args151145_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp153243))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp153242
                                      _stx151144_))))
                              (declare (not safe))
                              (gxc#compile-e__0 __tmp153241)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _stx151144_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self151146151155_ 'gxc#!lambda::t))
              (let* ((_e151150151169_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151146151155_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e151151151172_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151146151155_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity151175_ _e151151151172_)
                     (_e151152151177_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151146151155_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch151180_ _e151152151177_)
                     (_e151153151182_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151146151155_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline151185_ _e151153151182_))
                (declare (not safe))
                (_K151149151166_
                 _inline151185_
                 _dispatch151180_
                 _arity151175_))
              (let () (declare (not safe)) (_E151148151159_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self150982_ _stx150983_ _args150984_)
        (let* ((_self150985150992_ _self150982_)
               (_E150987150996_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self150985150992_))))
               (_K150988151010_
                (lambda (_clauses150999_)
                  (let ((_$e151005_
                         (let ((__tmp153248
                                (lambda (_g151000151002_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g151000151002_
                                     _args150984_)))))
                           (declare (not safe))
                           (find __tmp153248 _clauses150999_))))
                    (if _$e151005_
                        ((lambda (_clause151008_)
                           (let ((__method152463
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause151008_
                                     'optimize-call))))
                             (if __method152463
                                 (__method152463
                                  _clause151008_
                                  _stx150983_
                                  _args150984_)
                                 (let ()
                                   (declare (not safe))
                                   (error '"Missing method"
                                          _clause151008_
                                          'optimize-call)))))
                         _$e151005_)
                        (let ((__tmp153249
                               (map gxc#!lambda-arity _clauses150999_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx150983_
                           __tmp153249)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self150985150992_
                 'gxc#!case-lambda::t))
              (let* ((_e150989151013_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150985150992_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e150990151016_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150985150992_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses151019_ _e150990151016_))
                (declare (not safe))
                (_K150988151010_ _clauses151019_))
              (let () (declare (not safe)) (_E150987150996_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self150796_ _args150797_)
        (let* ((_self150798150805_ _self150796_)
               (_E150800150809_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self150798150805_))))
               (_K150801150849_
                (lambda (_arity150812_)
                  (let* ((_arity150813150822_ _arity150812_)
                         (_E150816150826_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (error '"No clause matching"
                                     _arity150813150822_)))))
                    (let ((_K150820150846_
                           (lambda ()
                             (fx= (length _args150797_) _arity150812_)))
                          (_K150817150832_
                           (lambda (_arity150830_)
                             (fx>= (length _args150797_) _arity150830_))))
                      (let ((_try-match150815150842_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity150813150822_))
                                   (let ((_tl150819150837_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity150813150822_)))
                                         (_hd150818150835_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity150813150822_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl150819150837_))
                                         (let ((_arity150840_
                                                _hd150818150835_))
                                           (declare (not safe))
                                           (_K150817150832_ _arity150840_))
                                         (let ()
                                           (declare (not safe))
                                           (_E150816150826_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E150816150826_))))))
                        (if (let ()
                              (declare (not safe))
                              (fixnum? _arity150813150822_))
                            (let () (declare (not safe)) (_K150820150846_))
                            (let ()
                              (declare (not safe))
                              (_try-match150815150842_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self150798150805_ 'gxc#!lambda::t))
              (let* ((_e150802150852_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150798150805_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e150803150855_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150798150805_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity150858_ _e150803150855_))
                (declare (not safe))
                (_K150801150849_ _arity150858_))
              (let () (declare (not safe)) (_E150800150809_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self150681_ _stx150682_ _args150683_)
        (let* ((_self150684150692_ _self150681_)
               (_E150686150696_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self150684150692_))))
               (_K150687150780_
                (lambda (_dispatch150699_ _table150700_)
                  (let* ((_g150701150710_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch150699_)))
                         (_else150703150718_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch150699_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _stx150682_))))
                         (_K150705150764_
                          (lambda (_main150721_ _keys150722_)
                            (let ((_g153250_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx150682_
                                      _args150683_))))
                              (begin
                                (let ((_g153251_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g153250_)
                                             (##vector-length _g153250_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g153251_ 2)))
                                      (error "Context expects 2 values"
                                             _g153251_)))
                                (let ((_pargs150724_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g153250_ 0)))
                                      (_kwargs150725_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g153250_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main150721_))
                                    (if _table150700_
                                        (let ((_xargs150732_
                                               (map (lambda (_key150727_)
                                                      (let ((_$e150729_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__0 _key150727_ _kwargs150725_))))
                (if _$e150729_ (values _$e150729_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys150722_)))
                                          (for-each
                                           (lambda (_kw150734_)
                                             (if (memq (car _kw150734_)
                                                       _keys150722_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx150682_
                                                    _keys150722_
                                                    _kw150734_))))
                                           _kwargs150725_)
                                          (let ((__tmp153303
                                                 (let ((__tmp153304
                                                        (let ((__tmp153305
                                                               (let ((__tmp153310
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153311
                                     (let ()
                                       (declare (not safe))
                                       (cons _main150721_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp153311)))
                             (__tmp153306
                              (let ((__tmp153308
                                     (let ((__tmp153309
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp153309)))
                                    (__tmp153307
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs150724_
                                               _xargs150732_))))
                                (declare (not safe))
                                (cons __tmp153308 __tmp153307))))
                         (declare (not safe))
                         (cons __tmp153310 __tmp153306))))
                  (declare (not safe))
                  (cons '%#call __tmp153305))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp153304
                                                    _stx150682_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0 __tmp153303)))
                                        (let* ((_kwt150736_
                                                (let ((__tmp153252
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp153252)))
                                               (_kwvars150739_
                                                (map (lambda (_g153253_)
                                                       (let ((__tmp153254
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp153254)))
                                                     _kwargs150725_))
                                               (_kwbind150744_
                                                (map (lambda (_kw150741_
                                                              _kwvar150742_)
                                                       (let ((__tmp153257
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar150742_ '())))
                     (__tmp153255
                      (let ((__tmp153256 (cdr _kw150741_)))
                        (declare (not safe))
                        (cons __tmp153256 '()))))
                 (declare (not safe))
                 (cons __tmp153257 __tmp153255)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs150725_
                                                     _kwvars150739_))
                                               (_kwset150749_
                                                (map (lambda (_kw150746_
                                                              _kwvar150747_)
                                                       (let ((__tmp153258
                                                              (let ((__tmp153259
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp153267
                                    (let ((__tmp153268
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt150736_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp153268)))
                                   (__tmp153260
                                    (let ((__tmp153264
                                           (let ((__tmp153265
                                                  (let ((__tmp153266
                                                         (car _kw150746_)))
                                                    (declare (not safe))
                                                    (cons __tmp153266 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp153265)))
                                          (__tmp153261
                                           (let ((__tmp153262
                                                  (let ((__tmp153263
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar150747_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp153263))))
                                             (declare (not safe))
                                             (cons __tmp153262 '()))))
                                      (declare (not safe))
                                      (cons __tmp153264 __tmp153261))))
                               (declare (not safe))
                               (cons __tmp153267 __tmp153260))))
                        (declare (not safe))
                        (cons '(%#ref symbolic-table-set!) __tmp153259))))
                 (declare (not safe))
                 (cons '%#call __tmp153258)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs150725_
                                                     _kwvars150739_))
                                               (_xkwargs150754_
                                                (map (lambda (_kw150751_
                                                              _kwvar150752_)
                                                       (let ((__tmp153271
                                                              (car _kw150751_))
                                                             (__tmp153269
                                                              (let ((__tmp153270
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar150752_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp153270))))
                 (declare (not safe))
                 (cons __tmp153271 __tmp153269)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs150725_
                                                     _kwvars150739_))
                                               (_xargs150761_
                                                (map (lambda (_key150756_)
                                                       (let ((_$e150758_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq__0 _key150756_ _xkwargs150754_))))
                 (if _$e150758_ (values _$e150758_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys150722_)))
                                          (let ((__tmp153272
                                                 (let ((__tmp153273
                                                        (let ((__tmp153274
                                                               (let ((__tmp153275
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153276
                                     (let ((__tmp153277
                                            (let ((__tmp153291
                                                   (let ((__tmp153292
                                                          (let ((__tmp153302
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt150736_ '())))
                        (__tmp153293
                         (let ((__tmp153294
                                (let ((__tmp153295
                                       (let ((__tmp153296
                                              (let ((__tmp153297
                                                     (let ((__tmp153299
                                                            (let ((__tmp153300
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153301 (length _kwargs150725_)))
                             (declare (not safe))
                             (cons __tmp153301 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp153300)))
                   (__tmp153298
                    (let () (declare (not safe)) (cons '(%#quote 0) '()))))
               (declare (not safe))
               (cons __tmp153299 __tmp153298))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-symbolic-table)
                                                      __tmp153297))))
                                         (declare (not safe))
                                         (cons '%#call __tmp153296))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp153295
                                   _stx150682_))))
                           (declare (not safe))
                           (cons __tmp153294 '()))))
                    (declare (not safe))
                    (cons __tmp153302 __tmp153293))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153292 '())))
                                                  (__tmp153278
                                                   (let ((__tmp153279
                                                          (let ((__tmp153280
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp153281
                                (let ((__tmp153282
                                       (let ((__tmp153283
                                              (let ((__tmp153284
                                                     (let ((__tmp153289
                                                            (let ((__tmp153290
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main150721_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp153290)))
                   (__tmp153285
                    (let ((__tmp153287
                           (let ((__tmp153288
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt150736_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp153288)))
                          (__tmp153286
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs150724_ _xargs150761_))))
                      (declare (not safe))
                      (cons __tmp153287 __tmp153286))))
               (declare (not safe))
               (cons __tmp153289 __tmp153285))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp153284))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp153283
                                          _stx150682_))))
                                  (declare (not safe))
                                  (cons __tmp153282 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp153281 _kwset150749_))))
                    (declare (not safe))
                    (cons '%#begin __tmp153280))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153279 '()))))
                                              (declare (not safe))
                                              (cons __tmp153291 __tmp153278))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp153277))))
                                (declare (not safe))
                                (cons __tmp153276 '()))))
                         (declare (not safe))
                         (cons _kwbind150744_ __tmp153275))))
                  (declare (not safe))
                  (cons '%#let-values __tmp153274))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp153273
                                                    _stx150682_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0
                                             __tmp153272)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g150701150710_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e150706150767_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g150701150710_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e150707150770_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g150701150710_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys150773_ _e150707150770_)
                               (_e150708150775_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g150701150710_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main150778_ _e150708150775_))
                          (declare (not safe))
                          (_K150705150764_ _main150778_ _keys150773_))
                        (let () (declare (not safe)) (_else150703150718_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self150684150692_
                 'gxc#!kw-lambda::t))
              (let* ((_e150688150783_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150684150692_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e150689150786_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150684150692_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table150789_ _e150689150786_)
                     (_e150690150791_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150684150692_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch150794_ _e150690150791_))
                (declare (not safe))
                (_K150687150780_ _dispatch150794_ _table150789_))
              (let () (declare (not safe)) (_E150686150696_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx150294_ _args150295_)
        (let _lp150297_ ((_rest150299_ _args150295_)
                         (_pargs150300_ '())
                         (_kwargs150301_ '()))
          (let* ((___stx152345152346_ _rest150299_)
                 (_g150307150359_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx152345152346_)))))
            (let ((___kont152347152348_
                   (lambda (_L150538_ _L150539_)
                     (let ((__tmp153312
                            (let ()
                              (declare (not safe))
                              (cons _L150539_ _pargs150300_))))
                       (declare (not safe))
                       (_lp150297_ _L150538_ __tmp153312 _kwargs150301_))))
                  (___kont152349152350_
                   (lambda (_L150484_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L150484_ _pargs150300_))
                             (reverse _kwargs150301_))))
                  (___kont152351152352_
                   (lambda (_L150431_ _L150432_ _L150433_)
                     (let ((_kw150450_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L150433_))))
                       (if (assq _kw150450_ _kwargs150301_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx150294_
                              _kw150450_))
                           (let ((__tmp153313
                                  (let ((__tmp153314
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw150450_ _L150432_))))
                                    (declare (not safe))
                                    (cons __tmp153314 _kwargs150301_))))
                             (declare (not safe))
                             (_lp150297_
                              _L150431_
                              _pargs150300_
                              __tmp153313))))))
                  (___kont152353152354_
                   (lambda (_L150379_ _L150380_)
                     (let ((__tmp153315
                            (let ()
                              (declare (not safe))
                              (cons _L150380_ _pargs150300_))))
                       (declare (not safe))
                       (_lp150297_ _L150379_ __tmp153315 _kwargs150301_))))
                  (___kont152355152356_
                   (lambda ()
                     (values (reverse _pargs150300_)
                             (reverse _kwargs150301_)))))
              (let* ((_g150306150366_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx152345152346_))
                            (___kont152355152356_)
                            (let () (declare (not safe)) (_g150307150359_)))))
                     (___match152452152453_
                      (lambda (_e150340150399_
                               _hd150339150402_
                               _tl150338150404_
                               _e150343150407_
                               _hd150342150410_
                               _tl150341150412_
                               _e150346150415_
                               _hd150345150418_
                               _tl150344150420_
                               _e150349150423_
                               _hd150348150426_
                               _tl150347150428_)
                        (let ((_L150431_ _tl150347150428_)
                              (_L150432_ _hd150348150426_)
                              (_L150433_ _hd150345150418_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L150433_))
                              (___kont152351152352_
                               _L150431_
                               _L150432_
                               _L150433_)
                              (___kont152353152354_
                               _tl150338150404_
                               _hd150339150402_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx152345152346_))
                    (let ((_e150313150503_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx152345152346_))))
                      (let ((_tl150311150508_
                             (let ()
                               (declare (not safe))
                               (##cdr _e150313150503_)))
                            (_hd150312150506_
                             (let ()
                               (declare (not safe))
                               (##car _e150313150503_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd150312150506_))
                            (let ((_e150316150511_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd150312150506_))))
                              (let ((_tl150314150516_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e150316150511_)))
                                    (_hd150315150514_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e150316150511_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd150315150514_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd150315150514_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl150314150516_))
                                            (let ((_e150319150519_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl150314150516_))))
                                              (let ((_tl150317150524_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e150319150519_)))
                                                    (_hd150318150522_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e150319150519_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd150318150522_))
                                                    (let ((_e150320150527_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd150318150522_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e150320150527_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl150317150524_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl150311150508_))
                          (let ((_e150323150530_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl150311150508_))))
                            (let ((_tl150321150535_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e150323150530_)))
                                  (_hd150322150533_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e150323150530_))))
                              (___kont152347152348_
                               _tl150321150535_
                               _hd150322150533_)))
                          (___kont152353152354_
                           _tl150311150508_
                           _hd150312150506_))
                      (___kont152353152354_ _tl150311150508_ _hd150312150506_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e150320150527_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl150317150524_))
                          (___kont152349152350_ _tl150311150508_)
                          (___kont152353152354_
                           _tl150311150508_
                           _hd150312150506_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl150317150524_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl150311150508_))
                              (let ((_e150349150423_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl150311150508_))))
                                (let ((_tl150347150428_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e150349150423_)))
                                      (_hd150348150426_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e150349150423_))))
                                  (___match152452152453_
                                   _e150313150503_
                                   _hd150312150506_
                                   _tl150311150508_
                                   _e150316150511_
                                   _hd150315150514_
                                   _tl150314150516_
                                   _e150319150519_
                                   _hd150318150522_
                                   _tl150317150524_
                                   _e150349150423_
                                   _hd150348150426_
                                   _tl150347150428_)))
                              (___kont152353152354_
                               _tl150311150508_
                               _hd150312150506_))
                          (___kont152353152354_
                           _tl150311150508_
                           _hd150312150506_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl150317150524_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl150311150508_))
                                                            (let ((_e150349150423_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl150311150508_))))
                      (let ((_tl150347150428_
                             (let ()
                               (declare (not safe))
                               (##cdr _e150349150423_)))
                            (_hd150348150426_
                             (let ()
                               (declare (not safe))
                               (##car _e150349150423_))))
                        (___match152452152453_
                         _e150313150503_
                         _hd150312150506_
                         _tl150311150508_
                         _e150316150511_
                         _hd150315150514_
                         _tl150314150516_
                         _e150319150519_
                         _hd150318150522_
                         _tl150317150524_
                         _e150349150423_
                         _hd150348150426_
                         _tl150347150428_)))
                    (___kont152353152354_ _tl150311150508_ _hd150312150506_))
                (___kont152353152354_ _tl150311150508_ _hd150312150506_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont152353152354_
                                             _tl150311150508_
                                             _hd150312150506_))
                                        (___kont152353152354_
                                         _tl150311150508_
                                         _hd150312150506_))
                                    (___kont152353152354_
                                     _tl150311150508_
                                     _hd150312150506_))))
                            (___kont152353152354_
                             _tl150311150508_
                             _hd150312150506_))))
                    (let () (declare (not safe)) (_g150306150366_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self150290_ _stx150291_ _args150292_)
        (let () (declare (not safe)) (gxc#xform-call% _stx150291_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
