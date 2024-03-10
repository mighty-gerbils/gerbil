(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1710067696)
  (begin
    (define gxc#&optimize-call
      (let ((__tmp152451
             (lambda ()
               (let ((_tbl152156_
                      (let () (declare (not safe)) (make-hash-table-eq))))
                 (let ((__tmp152452 (force gxc#&basic-xform)))
                   (declare (not safe))
                   (hash-merge! _tbl152156_ __tmp152452))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl152156_ '%#call gxc#optimize-call%))
                 _tbl152156_))))
        (declare (not safe))
        (make-promise __tmp152451)))
    (define gxc#apply-optimize-call
      (lambda (_stx152139_ . _args152141_)
        (let ((__tmp152454
               (lambda ()
                 (declare (not safe))
                 (if (null? _args152141_)
                     (gxc#compile-e__0 _stx152139_)
                     (let ((_arg1152146_ (car _args152141_))
                           (_rest152148_ (cdr _args152141_)))
                       (if (null? _rest152148_)
                           (gxc#compile-e__1 _stx152139_ _arg1152146_)
                           (let ((_arg2152151_ (car _rest152148_))
                                 (_rest152153_ (cdr _rest152148_)))
                             (if (null? _rest152153_)
                                 (gxc#compile-e__2
                                  _stx152139_
                                  _arg1152146_
                                  _arg2152151_)
                                 (apply gxc#compile-e
                                        _stx152139_
                                        _arg1152146_
                                        _arg2152151_
                                        _rest152153_))))))))
              (__tmp152453 (force gxc#&optimize-call)))
          (declare (not safe))
          (call-with-parameters
           __tmp152454
           gxc#current-compile-methods
           __tmp152453))))
    (define gxc#optimize-call%
      (lambda (_stx151994_)
        (let* ((___stx152201152202_ _stx151994_)
               (_g151997152017_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx152201152202_)))))
          (let ((___kont152203152204_
                 (lambda (_L152061_ _L152062_)
                   (let* ((_rator-id152080_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L152062_)))
                          (_rator-type152082_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id152080_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type152082_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp152455
                                  (##structure-ref
                                   _rator-type152082_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id152080_
                              '" => "
                              _rator-type152082_
                              '" "
                              __tmp152455))
                           (let ((_optimized152085_
                                  (let ((__method152449
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type152082_
                                            'optimize-call))))
                                    (if __method152449
                                        (__method152449
                                         _rator-type152082_
                                         _stx151994_
                                         _L152061_)
                                        (let ()
                                          (declare (not safe))
                                          (error '"Missing method"
                                                 _rator-type152082_
                                                 'optimize-call))))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type152082_))
                                 _optimized152085_
                                 (let* ((___stx152183152184_ _optimized152085_)
                                        (_g152088152098_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx152183152184_)))))
                                   (let ((___kont152185152186_
                                          (lambda (_L152118_)
                                            (let ((__tmp152456
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L152118_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp152456
                                               _stx151994_))))
                                         (___kont152187152188_
                                          (lambda () _optimized152085_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx152183152184_))
                                         (let ((_e152093152110_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx152183152184_))))
                                           (let ((_tl152091152115_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e152093152110_)))
                                                 (_hd152092152113_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e152093152110_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd152092152113_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd152092152113_))
                                                     (___kont152185152186_
                                                      _tl152091152115_)
                                                     (___kont152187152188_))
                                                 (___kont152187152188_))))
                                         (___kont152187152188_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type152082_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx151994_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx151994_
                                _rator-type152082_)))))))
                (___kont152205152206_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _stx151994_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx152201152202_))
                (let ((_e152003152029_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx152201152202_))))
                  (let ((_tl152001152034_
                         (let () (declare (not safe)) (##cdr _e152003152029_)))
                        (_hd152002152032_
                         (let ()
                           (declare (not safe))
                           (##car _e152003152029_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl152001152034_))
                        (let ((_e152006152037_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl152001152034_))))
                          (let ((_tl152004152042_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e152006152037_)))
                                (_hd152005152040_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e152006152037_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd152005152040_))
                                (let ((_e152009152045_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd152005152040_))))
                                  (let ((_tl152007152050_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e152009152045_)))
                                        (_hd152008152048_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e152009152045_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd152008152048_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd152008152048_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl152007152050_))
                                                (let ((_e152012152053_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl152007152050_))))
                                                  (let ((_tl152010152058_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e152012152053_)))
                                                        (_hd152011152056_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e152012152053_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl152010152058_))
                                                        (___kont152203152204_
                                                         _tl152004152042_
                                                         _hd152011152056_)
                                                        (___kont152205152206_))))
                                                (___kont152205152206_))
                                            (___kont152205152206_))
                                        (___kont152205152206_))))
                                (___kont152205152206_))))
                        (___kont152205152206_))))
                (___kont152205152206_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self151948_ _stx151949_ _args151950_)
        (let* ((_g151952151962_
                (lambda (_g151953151959_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g151953151959_))))
               (_g151951151991_
                (lambda (_g151953151965_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g151953151965_))
                      (let ((_e151957151967_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g151953151965_))))
                        (let ((_hd151956151970_
                               (let ()
                                 (declare (not safe))
                                 (##car _e151957151967_)))
                              (_tl151955151972_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e151957151967_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl151955151972_))
                              ((lambda (_L151975_)
                                 (let* ((_klass151986_
                                         (let ((__tmp152457
                                                (##structure-ref
                                                 _self151948_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx151949_
                                            __tmp152457)))
                                        (_object151988_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L151975_))))
                                   (if (##structure-ref
                                        _klass151986_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp152473
                                              (let ((__tmp152474
                                                     (let ((__tmp152476
                                                            (let ((__tmp152477
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152478
                                  (##structure-ref
                                   _klass151986_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp152478 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp152477)))
                   (__tmp152475
                    (let () (declare (not safe)) (cons _object151988_ '()))))
               (declare (not safe))
               (cons __tmp152476 __tmp152475))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp152474))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp152473
                                          _stx151949_))
                                       (if (##structure-ref
                                            _klass151986_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp152467
                                                  (let ((__tmp152468
                                                         (let ((__tmp152470
                                                                (let ((__tmp152471
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp152472
                                      (##structure-ref
                                       _klass151986_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp152472 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp152471)))
                       (__tmp152469
                        (let ()
                          (declare (not safe))
                          (cons _object151988_ '()))))
                   (declare (not safe))
                   (cons __tmp152470 __tmp152469))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp152468))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152467
                                              _stx151949_))
                                           (let ((__tmp152458
                                                  (let ((__tmp152459
                                                         (let ((__tmp152465
                                                                (let ((__tmp152466
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp152466)))
                       (__tmp152460
                        (let ((__tmp152462
                               (let ((__tmp152463
                                      (let ((__tmp152464
                                             (##structure-ref
                                              _self151948_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp152464 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp152463)))
                              (__tmp152461
                               (let ()
                                 (declare (not safe))
                                 (cons _object151988_ '()))))
                          (declare (not safe))
                          (cons __tmp152462 __tmp152461))))
                   (declare (not safe))
                   (cons __tmp152465 __tmp152460))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp152459))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152458
                                              _stx151949_))))))
                               _hd151956151970_)
                              (let ()
                                (declare (not safe))
                                (_g151952151962_ _g151953151965_)))))
                      (let ()
                        (declare (not safe))
                        (_g151952151962_ _g151953151965_))))))
          (declare (not safe))
          (_g151951151991_ _args151950_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__klass152158 __method-table152159)
        (let ((__id152160
               (let ((__slot152161
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152158 'id))))
                 (if __slot152161
                     __slot152161
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self151948_ _stx151949_ _args151950_)
            (let* ((_g151952151962_
                    (lambda (_g151953151959_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g151953151959_))))
                   (_g151951151991_
                    (lambda (_g151953151965_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g151953151965_))
                          (let ((_e151957151967_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g151953151965_))))
                            (let ((_hd151956151970_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e151957151967_)))
                                  (_tl151955151972_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e151957151967_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl151955151972_))
                                  ((lambda (_L151975_)
                                     (let* ((_klass151986_
                                             (let ((__tmp152479
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self151948_
                                                       __id152160
                                                       __klass152158
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx151949_
                                                __tmp152479)))
                                            (_object151988_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L151975_))))
                                       (if (##structure-ref
                                            _klass151986_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp152495
                                                  (let ((__tmp152496
                                                         (let ((__tmp152498
                                                                (let ((__tmp152499
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp152500
                                      (##structure-ref
                                       _klass151986_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp152500 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp152499)))
                       (__tmp152497
                        (let ()
                          (declare (not safe))
                          (cons _object151988_ '()))))
                   (declare (not safe))
                   (cons __tmp152498 __tmp152497))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp152496))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152495
                                              _stx151949_))
                                           (if (##structure-ref
                                                _klass151986_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp152489
                                                      (let ((__tmp152490
                                                             (let ((__tmp152492
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp152493
                                   (let ((__tmp152494
                                          (##structure-ref
                                           _klass151986_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp152494 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp152493)))
                           (__tmp152491
                            (let ()
                              (declare (not safe))
                              (cons _object151988_ '()))))
                       (declare (not safe))
                       (cons __tmp152492 __tmp152491))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp152490))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp152489
                                                  _stx151949_))
                                               (let ((__tmp152480
                                                      (let ((__tmp152481
                                                             (let ((__tmp152487
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp152488
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp152488)))
                           (__tmp152482
                            (let ((__tmp152484
                                   (let ((__tmp152485
                                          (let ((__tmp152486
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self151948_
                                                    __id152160
                                                    __klass152158
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp152486 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp152485)))
                                  (__tmp152483
                                   (let ()
                                     (declare (not safe))
                                     (cons _object151988_ '()))))
                              (declare (not safe))
                              (cons __tmp152484 __tmp152483))))
                       (declare (not safe))
                       (cons __tmp152487 __tmp152482))))
                (declare (not safe))
                (cons '%#call __tmp152481))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp152480
                                                  _stx151949_))))))
                                   _hd151956151970_)
                                  (let ()
                                    (declare (not safe))
                                    (_g151952151962_ _g151953151965_)))))
                          (let ()
                            (declare (not safe))
                            (_g151952151962_ _g151953151965_))))))
              (declare (not safe))
              (_g151951151991_ _args151950_))))))
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
      (lambda (_self151668_ _stx151669_ _args151670_)
        (let* ((_klass151672_
                (let ((__tmp152501
                       (##structure-ref _self151668_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx151669_ __tmp152501)))
               (_fields151674_
                (length (##structure-ref _klass151672_ '5 gxc#!class::t '#f)))
               (_args151676_ (map gxc#compile-e _args151670_))
               (_inline-make-object151678_
                (let ((__tmp152502
                       (let ((__tmp152508
                              (let ((__tmp152509
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp152509)))
                             (__tmp152503
                              (let ((__tmp152505
                                     (let ((__tmp152506
                                            (let ((__tmp152507
                                                   (##structure-ref
                                                    _self151668_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp152507 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152506)))
                                    (__tmp152504
                                     (make-list _fields151674_ '(%#quote #f))))
                                (declare (not safe))
                                (cons __tmp152505 __tmp152504))))
                         (declare (not safe))
                         (cons __tmp152508 __tmp152503))))
                  (declare (not safe))
                  (cons '%#call __tmp152502))))
          (let ((_$e151681_
                 (##structure-ref _klass151672_ '6 gxc#!class::t '#f)))
            (if _$e151681_
                ((lambda (_ctor151684_)
                   (let ((_$obj151686_
                          (let ((__tmp152610 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp152610)))
                         (_ctor-impl151687_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass151672_
                             _ctor151684_))))
                     (let ((__tmp152611
                            (let ((__tmp152612
                                   (let ((__tmp152680
                                          (let ((__tmp152681
                                                 (let ((__tmp152683
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj151686_
                                                                '())))
                                                       (__tmp152682
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object151678_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp152683
                                                         __tmp152682))))
                                            (declare (not safe))
                                            (cons __tmp152681 '())))
                                         (__tmp152613
                                          (let ((__tmp152614
                                                 (let ((__tmp152615
                                                        (let ((__tmp152619
                                                               (if _ctor-impl151687_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152674
                                  (let ((__tmp152678
                                         (let ((__tmp152679
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl151687_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp152679)))
                                        (__tmp152675
                                         (let ((__tmp152676
                                                (let ((__tmp152677
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj151686_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp152677))))
                                           (declare (not safe))
                                           (cons __tmp152676 _args151676_))))
                                    (declare (not safe))
                                    (cons __tmp152678 __tmp152675))))
                             (declare (not safe))
                             (cons '%#call __tmp152674))
                           (let* ((_$ctor151689_
                                   (let ((__tmp152620 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp152620)))
                                  (__tmp152621
                                   (let ((__tmp152656
                                          (let ((__tmp152657
                                                 (let ((__tmp152673
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor151689_
                                                                '())))
                                                       (__tmp152658
                                                        (let ((__tmp152659
                                                               (let ((__tmp152660
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp152671
                                     (let ((__tmp152672
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152672)))
                                    (__tmp152661
                                     (let ((__tmp152668
                                            (let ((__tmp152669
                                                   (let ((__tmp152670
                                                          (##structure-ref
                                                           _self151668_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp152670 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp152669)))
                                           (__tmp152662
                                            (let ((__tmp152666
                                                   (let ((__tmp152667
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj151686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152667)))
                                                  (__tmp152663
                                                   (let ((__tmp152664
                                                          (let ((__tmp152665
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _ctor151684_ '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp152665))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152664 '()))))
                                              (declare (not safe))
                                              (cons __tmp152666 __tmp152663))))
                                       (declare (not safe))
                                       (cons __tmp152668 __tmp152662))))
                                (declare (not safe))
                                (cons __tmp152671 __tmp152661))))
                         (declare (not safe))
                         (cons '%#call __tmp152660))))
                  (declare (not safe))
                  (cons __tmp152659 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp152673
                                                         __tmp152658))))
                                            (declare (not safe))
                                            (cons __tmp152657 '())))
                                         (__tmp152622
                                          (let ((__tmp152623
                                                 (let ((__tmp152624
                                                        (let ((__tmp152654
                                                               (let ((__tmp152655
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor151689_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp152655)))
                      (__tmp152625
                       (let ((__tmp152647
                              (let ((__tmp152648
                                     (let ((__tmp152652
                                            (let ((__tmp152653
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor151689_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp152653)))
                                           (__tmp152649
                                            (let ((__tmp152650
                                                   (let ((__tmp152651
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj151686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152651))))
                                              (declare (not safe))
                                              (cons __tmp152650
                                                    _args151676_))))
                                       (declare (not safe))
                                       (cons __tmp152652 __tmp152649))))
                                (declare (not safe))
                                (cons '%#call __tmp152648)))
                             (__tmp152626
                              (let ((__tmp152627
                                     (let ((__tmp152628
                                            (let ((__tmp152645
                                                   (let ((__tmp152646
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152646)))
                                                  (__tmp152629
                                                   (let ((__tmp152643
                                                          (let ((__tmp152644
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp152644)))
                 (__tmp152630
                  (let ((__tmp152641
                         (let ((__tmp152642
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp152642)))
                        (__tmp152631
                         (let ((__tmp152638
                                (let ((__tmp152639
                                       (let ((__tmp152640
                                              (##structure-ref
                                               _self151668_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp152640 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp152639)))
                               (__tmp152632
                                (let ((__tmp152636
                                       (let ((__tmp152637
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp152637)))
                                      (__tmp152633
                                       (let ((__tmp152634
                                              (let ((__tmp152635
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor151684_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp152635))))
                                         (declare (not safe))
                                         (cons __tmp152634 '()))))
                                  (declare (not safe))
                                  (cons __tmp152636 __tmp152633))))
                           (declare (not safe))
                           (cons __tmp152638 __tmp152632))))
                    (declare (not safe))
                    (cons __tmp152641 __tmp152631))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152643
                                                           __tmp152630))))
                                              (declare (not safe))
                                              (cons __tmp152645 __tmp152629))))
                                       (declare (not safe))
                                       (cons '%#call __tmp152628))))
                                (declare (not safe))
                                (cons __tmp152627 '()))))
                         (declare (not safe))
                         (cons __tmp152647 __tmp152626))))
                  (declare (not safe))
                  (cons __tmp152654 __tmp152625))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp152624))))
                                            (declare (not safe))
                                            (cons __tmp152623 '()))))
                                     (declare (not safe))
                                     (cons __tmp152656 __tmp152622))))
                             (declare (not safe))
                             (cons '%#let-values __tmp152621))))
                      (__tmp152616
                       (let ((__tmp152617
                              (let ((__tmp152618
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj151686_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp152618))))
                         (declare (not safe))
                         (cons __tmp152617 '()))))
                  (declare (not safe))
                  (cons __tmp152619 __tmp152616))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp152615))))
                                            (declare (not safe))
                                            (cons __tmp152614 '()))))
                                     (declare (not safe))
                                     (cons __tmp152680 __tmp152613))))
                              (declare (not safe))
                              (cons '%#let-values __tmp152612))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp152611 _stx151669_))))
                 _$e151681_)
                (let ((_$e151691_
                       (##structure-ref _klass151672_ '9 gxc#!class::t '#f)))
                  (if _$e151691_
                      ((lambda (_metaclass151694_)
                         (let* ((_$obj151696_
                                 (let ((__tmp152572 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp152572)))
                                (_metakons151698_
                                 (let ((__tmp152573
                                        (let ()
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           _stx151669_
                                           _metaclass151694_))))
                                   (declare (not safe))
                                   (gxc#!class-lookup-method
                                    __tmp152573
                                    'instance-init!))))
                           (let ((__tmp152574
                                  (let ((__tmp152575
                                         (let ((__tmp152606
                                                (let ((__tmp152607
                                                       (let ((__tmp152609
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj151696_ '())))
                     (__tmp152608
                      (let ()
                        (declare (not safe))
                        (cons _inline-make-object151678_ '()))))
                 (declare (not safe))
                 (cons __tmp152609 __tmp152608))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152607 '())))
                                               (__tmp152576
                                                (let ((__tmp152577
                                                       (let ((__tmp152578
                                                              (let ((__tmp152582
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if _metakons151698_
                                 (let ((__tmp152596
                                        (let ((__tmp152604
                                               (let ((__tmp152605
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metakons151698_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp152605)))
                                              (__tmp152597
                                               (let ((__tmp152601
                                                      (let ((__tmp152602
                                                             (let ((__tmp152603
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self151668_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp152603 '()))))
                (declare (not safe))
                (cons '%#ref __tmp152602)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp152598
                                                      (let ((__tmp152599
                                                             (let ((__tmp152600
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _$obj151696_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp152600))))
                (declare (not safe))
                (cons __tmp152599 _args151676_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp152601
                                                       __tmp152598))))
                                          (declare (not safe))
                                          (cons __tmp152604 __tmp152597))))
                                   (declare (not safe))
                                   (cons '%#call __tmp152596))
                                 (let ((__tmp152583
                                        (let ((__tmp152594
                                               (let ((__tmp152595
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'call-method
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp152595)))
                                              (__tmp152584
                                               (let ((__tmp152591
                                                      (let ((__tmp152592
                                                             (let ((__tmp152593
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self151668_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp152593 '()))))
                (declare (not safe))
                (cons '%#ref __tmp152592)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp152585
                                                      (let ((__tmp152589
                                                             (let ((__tmp152590
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'instance-init! '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp152590)))
                    (__tmp152586
                     (let ((__tmp152587
                            (let ((__tmp152588
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj151696_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp152588))))
                       (declare (not safe))
                       (cons __tmp152587 _args151676_))))
                (declare (not safe))
                (cons __tmp152589 __tmp152586))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp152591
                                                       __tmp152585))))
                                          (declare (not safe))
                                          (cons __tmp152594 __tmp152584))))
                                   (declare (not safe))
                                   (cons '%#call __tmp152583))))
                            (__tmp152579
                             (let ((__tmp152580
                                    (let ((__tmp152581
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj151696_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp152581))))
                               (declare (not safe))
                               (cons __tmp152580 '()))))
                        (declare (not safe))
                        (cons __tmp152582 __tmp152579))))
                 (declare (not safe))
                 (cons '%#begin __tmp152578))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152577 '()))))
                                           (declare (not safe))
                                           (cons __tmp152606 __tmp152576))))
                                    (declare (not safe))
                                    (cons '%#let-values __tmp152575))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp152574 _stx151669_))))
                       _$e151691_)
                      (if (##structure-ref _klass151672_ '7 gxc#!class::t '#f)
                          (if (fx= (length _args151676_) _fields151674_)
                              (let ((__tmp152564
                                     (let ((__tmp152565
                                            (let ((__tmp152570
                                                   (let ((__tmp152571
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152571)))
                                                  (__tmp152566
                                                   (let ((__tmp152567
                                                          (let ((__tmp152568
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp152569
                                (##structure-ref
                                 _self151668_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp152569 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp152568))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152567
                                                           _args151676_))))
                                              (declare (not safe))
                                              (cons __tmp152570 __tmp152566))))
                                       (declare (not safe))
                                       (cons '%#call __tmp152565))))
                                (declare (not safe))
                                (gxc#xform-wrap-source
                                 __tmp152564
                                 _stx151669_))
                              (let ((__tmp152563
                                     (##structure-ref
                                      _self151668_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                    (__tmp152562
                                     (length (##structure-ref
                                              _klass151672_
                                              '5
                                              gxc#!class::t
                                              '#f))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"illegal struct constructor application; arity mismatch"
                                 _stx151669_
                                 __tmp152563
                                 __tmp152562)))
                          (let ((_$obj151701_
                                 (let ((__tmp152510 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp152510))))
                            (let _lp151703_ ((_rest151705_ _args151676_)
                                             (_initializers151706_ '()))
                              (let* ((___stx152239152240_ _rest151705_)
                                     (_g151710151731_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx152239152240_)))))
                                (let ((___kont152241152242_
                                       (lambda (_L151785_ _L151786_ _L151787_)
                                         (let* ((_slot151818_
                                                 (let ((__tmp152511
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L151787_))))
                                                   (declare (not safe))
                                                   (keyword->symbol
                                                    __tmp152511)))
                                                (_off151820_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass151672_
                                                    _slot151818_))))
                                           (if _off151820_
                                               (let ((__tmp152513
                                                      (let ((__tmp152514
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off151820_ _L151786_))))
                (declare (not safe))
                (cons __tmp152514 _initializers151706_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp151703_
                                                  _L151785_
                                                  __tmp152513))
                                               (let ((__tmp152512
                                                      (##structure-ref
                                                       _self151668_
                                                       '1
                                                       gxc#!type::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"unknown slot"
                                                  _stx151669_
                                                  __tmp152512
                                                  _slot151818_))))))
                                      (___kont152243152244_
                                       (lambda ()
                                         (let ((__tmp152515
                                                (let ((__tmp152516
                                                       (let ((__tmp152539
                                                              (let ((__tmp152540
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp152542
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj151701_ '())))
                                   (__tmp152541
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object151678_ '()))))
                               (declare (not safe))
                               (cons __tmp152542 __tmp152541))))
                        (declare (not safe))
                        (cons __tmp152540 '())))
                     (__tmp152517
                      (let ((__tmp152518
                             (let ((__tmp152519
                                    (let ((__tmp152536
                                           (let ((__tmp152537
                                                  (let ((__tmp152538
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj151701_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp152538))))
                                             (declare (not safe))
                                             (cons __tmp152537 '())))
                                          (__tmp152520
                                           (let ((__tmp152521
                                                  (lambda (_i151745_ _r151746_)
                                                    (let ((__tmp152522
                                                           (let ((__tmp152523
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp152533
                                 (let ((__tmp152534
                                        (let ((__tmp152535
                                               (##structure-ref
                                                _self151668_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp152535 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp152534)))
                                (__tmp152524
                                 (let ((__tmp152530
                                        (let ((__tmp152531
                                               (let ((__tmp152532
                                                      (car _i151745_)))
                                                 (declare (not safe))
                                                 (cons __tmp152532 '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp152531)))
                                       (__tmp152525
                                        (let ((__tmp152528
                                               (let ((__tmp152529
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _$obj151701_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp152529)))
                                              (__tmp152526
                                               (let ((__tmp152527
                                                      (cdr _i151745_)))
                                                 (declare (not safe))
                                                 (cons __tmp152527 '()))))
                                          (declare (not safe))
                                          (cons __tmp152528 __tmp152526))))
                                   (declare (not safe))
                                   (cons __tmp152530 __tmp152525))))
                            (declare (not safe))
                            (cons __tmp152533 __tmp152524))))
                     (declare (not safe))
                     (cons '%#struct-unchecked-set! __tmp152523))))
              (declare (not safe))
              (cons __tmp152522 _r151746_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (foldl1 __tmp152521
                                                     '()
                                                     _initializers151706_))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp152536 __tmp152520))))
                               (declare (not safe))
                               (cons '%#begin __tmp152519))))
                        (declare (not safe))
                        (cons __tmp152518 '()))))
                 (declare (not safe))
                 (cons __tmp152539 __tmp152517))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp152516))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp152515
                                            _stx151669_))))
                                      (___kont152245152246_
                                       (lambda ()
                                         (let ((__tmp152543
                                                (let ((__tmp152544
                                                       (let ((__tmp152558
                                                              (let ((__tmp152559
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp152561
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj151701_ '())))
                                   (__tmp152560
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object151678_ '()))))
                               (declare (not safe))
                               (cons __tmp152561 __tmp152560))))
                        (declare (not safe))
                        (cons __tmp152559 '())))
                     (__tmp152545
                      (let ((__tmp152546
                             (let ((__tmp152547
                                    (let ((__tmp152551
                                           (let ((__tmp152552
                                                  (let ((__tmp152556
                                                         (let ((__tmp152557
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'class-instance-init! '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp152557)))
                (__tmp152553
                 (let ((__tmp152554
                        (let ((__tmp152555
                               (let ()
                                 (declare (not safe))
                                 (cons _$obj151701_ '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp152555))))
                   (declare (not safe))
                   (cons __tmp152554 _args151676_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp152556
                                                          __tmp152553))))
                                             (declare (not safe))
                                             (cons '%#call __tmp152552)))
                                          (__tmp152548
                                           (let ((__tmp152549
                                                  (let ((__tmp152550
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj151701_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp152550))))
                                             (declare (not safe))
                                             (cons __tmp152549 '()))))
                                      (declare (not safe))
                                      (cons __tmp152551 __tmp152548))))
                               (declare (not safe))
                               (cons '%#begin __tmp152547))))
                        (declare (not safe))
                        (cons __tmp152546 '()))))
                 (declare (not safe))
                 (cons __tmp152558 __tmp152545))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp152544))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp152543
                                            _stx151669_)))))
                                  (let* ((_g151708151748_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   ___stx152239152240_))
                                                (___kont152243152244_)
                                                (___kont152245152246_))))
                                         (___match152276152277_
                                          (lambda (_e151717151753_
                                                   _hd151716151756_
                                                   _tl151715151758_
                                                   _e151720151761_
                                                   _hd151719151764_
                                                   _tl151718151766_
                                                   _e151723151769_
                                                   _hd151722151772_
                                                   _tl151721151774_
                                                   _e151726151777_
                                                   _hd151725151780_
                                                   _tl151724151782_)
                                            (let ((_L151785_ _tl151724151782_)
                                                  (_L151786_ _hd151725151780_)
                                                  (_L151787_ _hd151722151772_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-keyword?
                                                     _L151787_))
                                                  (___kont152241152242_
                                                   _L151785_
                                                   _L151786_
                                                   _L151787_)
                                                  (___kont152245152246_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx152239152240_))
                                        (let ((_e151717151753_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx152239152240_))))
                                          (let ((_tl151715151758_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e151717151753_)))
                                                (_hd151716151756_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e151717151753_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd151716151756_))
                                                (let ((_e151720151761_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd151716151756_))))
                                                  (let ((_tl151718151766_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e151720151761_)))
                                                        (_hd151719151764_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e151720151761_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd151719151764_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#quote
                                                               _hd151719151764_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl151718151766_))
                        (let ((_e151723151769_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl151718151766_))))
                          (let ((_tl151721151774_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e151723151769_)))
                                (_hd151722151772_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e151723151769_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl151721151774_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl151715151758_))
                                    (let ((_e151726151777_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl151715151758_))))
                                      (let ((_tl151724151782_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e151726151777_)))
                                            (_hd151725151780_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e151726151777_))))
                                        (___match152276152277_
                                         _e151717151753_
                                         _hd151716151756_
                                         _tl151715151758_
                                         _e151720151761_
                                         _hd151719151764_
                                         _tl151718151766_
                                         _e151723151769_
                                         _hd151722151772_
                                         _tl151721151774_
                                         _e151726151777_
                                         _hd151725151780_
                                         _tl151724151782_)))
                                    (___kont152245152246_))
                                (___kont152245152246_))))
                        (___kont152245152246_))
                    (___kont152245152246_))
                (___kont152245152246_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont152245152246_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g151708151748_))))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__klass152162 __method-table152163)
        (let ((__id152164
               (let ((__slot152165
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152162 'id))))
                 (if __slot152165
                     __slot152165
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self151668_ _stx151669_ _args151670_)
            (let* ((_klass151672_
                    (let ((__tmp152684
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self151668_
                              __id152164
                              __klass152162
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx151669_ __tmp152684)))
                   (_fields151674_
                    (length (##structure-ref
                             _klass151672_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args151676_ (map gxc#compile-e _args151670_))
                   (_inline-make-object151678_
                    (let ((__tmp152685
                           (let ((__tmp152691
                                  (let ((__tmp152692
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp152692)))
                                 (__tmp152686
                                  (let ((__tmp152688
                                         (let ((__tmp152689
                                                (let ((__tmp152690
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self151668_
                                                          __id152164
                                                          __klass152162
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp152690 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp152689)))
                                        (__tmp152687
                                         (make-list
                                          _fields151674_
                                          '(%#quote #f))))
                                    (declare (not safe))
                                    (cons __tmp152688 __tmp152687))))
                             (declare (not safe))
                             (cons __tmp152691 __tmp152686))))
                      (declare (not safe))
                      (cons '%#call __tmp152685))))
              (let ((_$e151681_
                     (##structure-ref _klass151672_ '6 gxc#!class::t '#f)))
                (if _$e151681_
                    ((lambda (_ctor151684_)
                       (let ((_$obj151686_
                              (let ((__tmp152793 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp152793)))
                             (_ctor-impl151687_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass151672_
                                 _ctor151684_))))
                         (let ((__tmp152794
                                (let ((__tmp152795
                                       (let ((__tmp152863
                                              (let ((__tmp152864
                                                     (let ((__tmp152866
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj151686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp152865
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object151678_ '()))))
               (declare (not safe))
               (cons __tmp152866 __tmp152865))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp152864 '())))
                                             (__tmp152796
                                              (let ((__tmp152797
                                                     (let ((__tmp152798
                                                            (let ((__tmp152802
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl151687_
                               (let ((__tmp152857
                                      (let ((__tmp152861
                                             (let ((__tmp152862
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl151687_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp152862)))
                                            (__tmp152858
                                             (let ((__tmp152859
                                                    (let ((__tmp152860
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj151686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp152860))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp152859
                                                     _args151676_))))
                                        (declare (not safe))
                                        (cons __tmp152861 __tmp152858))))
                                 (declare (not safe))
                                 (cons '%#call __tmp152857))
                               (let* ((_$ctor151689_
                                       (let ((__tmp152803
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp152803)))
                                      (__tmp152804
                                       (let ((__tmp152839
                                              (let ((__tmp152840
                                                     (let ((__tmp152856
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor151689_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp152841
                    (let ((__tmp152842
                           (let ((__tmp152843
                                  (let ((__tmp152854
                                         (let ((__tmp152855
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp152855)))
                                        (__tmp152844
                                         (let ((__tmp152851
                                                (let ((__tmp152852
                                                       (let ((__tmp152853
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self151668_
                         __id152164
                         __klass152162
                         '#f))))
                 (declare (not safe))
                 (cons __tmp152853 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp152852)))
                                               (__tmp152845
                                                (let ((__tmp152849
                                                       (let ((__tmp152850
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj151686_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152850)))
              (__tmp152846
               (let ((__tmp152847
                      (let ((__tmp152848
                             (let ()
                               (declare (not safe))
                               (cons _ctor151684_ '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp152848))))
                 (declare (not safe))
                 (cons __tmp152847 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152849
                                                        __tmp152846))))
                                           (declare (not safe))
                                           (cons __tmp152851 __tmp152845))))
                                    (declare (not safe))
                                    (cons __tmp152854 __tmp152844))))
                             (declare (not safe))
                             (cons '%#call __tmp152843))))
                      (declare (not safe))
                      (cons __tmp152842 '()))))
               (declare (not safe))
               (cons __tmp152856 __tmp152841))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp152840 '())))
                                             (__tmp152805
                                              (let ((__tmp152806
                                                     (let ((__tmp152807
                                                            (let ((__tmp152837
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152838
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor151689_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp152838)))
                          (__tmp152808
                           (let ((__tmp152830
                                  (let ((__tmp152831
                                         (let ((__tmp152835
                                                (let ((__tmp152836
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor151689_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp152836)))
                                               (__tmp152832
                                                (let ((__tmp152833
                                                       (let ((__tmp152834
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj151686_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152834))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152833
                                                        _args151676_))))
                                           (declare (not safe))
                                           (cons __tmp152835 __tmp152832))))
                                    (declare (not safe))
                                    (cons '%#call __tmp152831)))
                                 (__tmp152809
                                  (let ((__tmp152810
                                         (let ((__tmp152811
                                                (let ((__tmp152828
                                                       (let ((__tmp152829
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152829)))
              (__tmp152812
               (let ((__tmp152826
                      (let ((__tmp152827
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp152827)))
                     (__tmp152813
                      (let ((__tmp152824
                             (let ((__tmp152825
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp152825)))
                            (__tmp152814
                             (let ((__tmp152821
                                    (let ((__tmp152822
                                           (let ((__tmp152823
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self151668_
                                                     __id152164
                                                     __klass152162
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp152823 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp152822)))
                                   (__tmp152815
                                    (let ((__tmp152819
                                           (let ((__tmp152820
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp152820)))
                                          (__tmp152816
                                           (let ((__tmp152817
                                                  (let ((__tmp152818
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor151684_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp152818))))
                                             (declare (not safe))
                                             (cons __tmp152817 '()))))
                                      (declare (not safe))
                                      (cons __tmp152819 __tmp152816))))
                               (declare (not safe))
                               (cons __tmp152821 __tmp152815))))
                        (declare (not safe))
                        (cons __tmp152824 __tmp152814))))
                 (declare (not safe))
                 (cons __tmp152826 __tmp152813))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152828
                                                        __tmp152812))))
                                           (declare (not safe))
                                           (cons '%#call __tmp152811))))
                                    (declare (not safe))
                                    (cons __tmp152810 '()))))
                             (declare (not safe))
                             (cons __tmp152830 __tmp152809))))
                      (declare (not safe))
                      (cons __tmp152837 __tmp152808))))
               (declare (not safe))
               (cons '%#if __tmp152807))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp152806 '()))))
                                         (declare (not safe))
                                         (cons __tmp152839 __tmp152805))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp152804))))
                          (__tmp152799
                           (let ((__tmp152800
                                  (let ((__tmp152801
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj151686_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp152801))))
                             (declare (not safe))
                             (cons __tmp152800 '()))))
                      (declare (not safe))
                      (cons __tmp152802 __tmp152799))))
               (declare (not safe))
               (cons '%#begin __tmp152798))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp152797 '()))))
                                         (declare (not safe))
                                         (cons __tmp152863 __tmp152796))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp152795))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp152794 _stx151669_))))
                     _$e151681_)
                    (let ((_$e151691_
                           (##structure-ref
                            _klass151672_
                            '9
                            gxc#!class::t
                            '#f)))
                      (if _$e151691_
                          ((lambda (_metaclass151694_)
                             (let* ((_$obj151696_
                                     (let ((__tmp152755 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp152755)))
                                    (_metakons151698_
                                     (let ((__tmp152756
                                            (let ()
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               _stx151669_
                                               _metaclass151694_))))
                                       (declare (not safe))
                                       (gxc#!class-lookup-method
                                        __tmp152756
                                        'instance-init!))))
                               (let ((__tmp152757
                                      (let ((__tmp152758
                                             (let ((__tmp152789
                                                    (let ((__tmp152790
                                                           (let ((__tmp152792
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj151696_ '())))
                         (__tmp152791
                          (let ()
                            (declare (not safe))
                            (cons _inline-make-object151678_ '()))))
                     (declare (not safe))
                     (cons __tmp152792 __tmp152791))))
              (declare (not safe))
              (cons __tmp152790 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp152759
                                                    (let ((__tmp152760
                                                           (let ((__tmp152761
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp152765
                                 (if _metakons151698_
                                     (let ((__tmp152779
                                            (let ((__tmp152787
                                                   (let ((__tmp152788
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _metakons151698_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152788)))
                                                  (__tmp152780
                                                   (let ((__tmp152784
                                                          (let ((__tmp152785
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp152786
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self151668_
                                   __id152164
                                   __klass152162
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp152786 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp152785)))
                 (__tmp152781
                  (let ((__tmp152782
                         (let ((__tmp152783
                                (let ()
                                  (declare (not safe))
                                  (cons _$obj151696_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp152783))))
                    (declare (not safe))
                    (cons __tmp152782 _args151676_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152784
                                                           __tmp152781))))
                                              (declare (not safe))
                                              (cons __tmp152787 __tmp152780))))
                                       (declare (not safe))
                                       (cons '%#call __tmp152779))
                                     (let ((__tmp152766
                                            (let ((__tmp152777
                                                   (let ((__tmp152778
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'call-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152778)))
                                                  (__tmp152767
                                                   (let ((__tmp152774
                                                          (let ((__tmp152775
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp152776
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self151668_
                                   __id152164
                                   __klass152162
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp152776 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp152775)))
                 (__tmp152768
                  (let ((__tmp152772
                         (let ((__tmp152773
                                (let ()
                                  (declare (not safe))
                                  (cons 'instance-init! '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp152773)))
                        (__tmp152769
                         (let ((__tmp152770
                                (let ((__tmp152771
                                       (let ()
                                         (declare (not safe))
                                         (cons _$obj151696_ '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp152771))))
                           (declare (not safe))
                           (cons __tmp152770 _args151676_))))
                    (declare (not safe))
                    (cons __tmp152772 __tmp152769))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152774
                                                           __tmp152768))))
                                              (declare (not safe))
                                              (cons __tmp152777 __tmp152767))))
                                       (declare (not safe))
                                       (cons '%#call __tmp152766))))
                                (__tmp152762
                                 (let ((__tmp152763
                                        (let ((__tmp152764
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$obj151696_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp152764))))
                                   (declare (not safe))
                                   (cons __tmp152763 '()))))
                            (declare (not safe))
                            (cons __tmp152765 __tmp152762))))
                     (declare (not safe))
                     (cons '%#begin __tmp152761))))
              (declare (not safe))
              (cons __tmp152760 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp152789
                                                     __tmp152759))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp152758))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp152757
                                  _stx151669_))))
                           _$e151691_)
                          (if (##structure-ref
                               _klass151672_
                               '7
                               gxc#!class::t
                               '#f)
                              (if (fx= (length _args151676_) _fields151674_)
                                  (let ((__tmp152747
                                         (let ((__tmp152748
                                                (let ((__tmp152753
                                                       (let ((__tmp152754
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '##structure '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152754)))
              (__tmp152749
               (let ((__tmp152750
                      (let ((__tmp152751
                             (let ((__tmp152752
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self151668_
                                       __id152164
                                       __klass152162
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp152752 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp152751))))
                 (declare (not safe))
                 (cons __tmp152750 _args151676_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152753
                                                        __tmp152749))))
                                           (declare (not safe))
                                           (cons '%#call __tmp152748))))
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp152747
                                     _stx151669_))
                                  (let ((__tmp152746
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _self151668_
                                            __id152164
                                            __klass152162
                                            '#f)))
                                        (__tmp152745
                                         (length (##structure-ref
                                                  _klass151672_
                                                  '5
                                                  gxc#!class::t
                                                  '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _stx151669_
                                     __tmp152746
                                     __tmp152745)))
                              (let ((_$obj151701_
                                     (let ((__tmp152693 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp152693))))
                                (let _lp151703_ ((_rest151705_ _args151676_)
                                                 (_initializers151706_ '()))
                                  (let* ((___stx152281152282_ _rest151705_)
                                         (_g151710151731_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               ___stx152281152282_)))))
                                    (let ((___kont152283152284_
                                           (lambda (_L151785_
                                                    _L151786_
                                                    _L151787_)
                                             (let* ((_slot151818_
                                                     (let ((__tmp152694
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L151787_))))
                                                       (declare (not safe))
                                                       (keyword->symbol
                                                        __tmp152694)))
                                                    (_off151820_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass151672_
                                                        _slot151818_))))
                                               (if _off151820_
                                                   (let ((__tmp152696
                                                          (let ((__tmp152697
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _off151820_ _L151786_))))
                    (declare (not safe))
                    (cons __tmp152697 _initializers151706_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp151703_
                                                      _L151785_
                                                      __tmp152696))
                                                   (let ((__tmp152695
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _self151668_
                                                             __id152164
                                                             __klass152162
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"unknown slot"
                                                      _stx151669_
                                                      __tmp152695
                                                      _slot151818_))))))
                                          (___kont152285152286_
                                           (lambda ()
                                             (let ((__tmp152698
                                                    (let ((__tmp152699
                                                           (let ((__tmp152722
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp152723
                                 (let ((__tmp152725
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj151701_ '())))
                                       (__tmp152724
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object151678_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp152725 __tmp152724))))
                            (declare (not safe))
                            (cons __tmp152723 '())))
                         (__tmp152700
                          (let ((__tmp152701
                                 (let ((__tmp152702
                                        (let ((__tmp152719
                                               (let ((__tmp152720
                                                      (let ((__tmp152721
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj151701_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp152721))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp152720 '())))
                                              (__tmp152703
                                               (let ((__tmp152704
                                                      (lambda (_i151745_
                                                               _r151746_)
                                                        (let ((__tmp152705
                                                               (let ((__tmp152706
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp152716
                                     (let ((__tmp152717
                                            (let ((__tmp152718
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self151668_
                                                      __id152164
                                                      __klass152162
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp152718 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152717)))
                                    (__tmp152707
                                     (let ((__tmp152713
                                            (let ((__tmp152714
                                                   (let ((__tmp152715
                                                          (car _i151745_)))
                                                     (declare (not safe))
                                                     (cons __tmp152715 '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp152714)))
                                           (__tmp152708
                                            (let ((__tmp152711
                                                   (let ((__tmp152712
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj151701_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152712)))
                                                  (__tmp152709
                                                   (let ((__tmp152710
                                                          (cdr _i151745_)))
                                                     (declare (not safe))
                                                     (cons __tmp152710 '()))))
                                              (declare (not safe))
                                              (cons __tmp152711 __tmp152709))))
                                       (declare (not safe))
                                       (cons __tmp152713 __tmp152708))))
                                (declare (not safe))
                                (cons __tmp152716 __tmp152707))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp152706))))
                  (declare (not safe))
                  (cons __tmp152705 _r151746_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl1 __tmp152704
                                                         '()
                                                         _initializers151706_))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp152719
                                                  __tmp152703))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp152702))))
                            (declare (not safe))
                            (cons __tmp152701 '()))))
                     (declare (not safe))
                     (cons __tmp152722 __tmp152700))))
              (declare (not safe))
              (cons '%#let-values __tmp152699))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp152698
                                                _stx151669_))))
                                          (___kont152287152288_
                                           (lambda ()
                                             (let ((__tmp152726
                                                    (let ((__tmp152727
                                                           (let ((__tmp152741
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp152742
                                 (let ((__tmp152744
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj151701_ '())))
                                       (__tmp152743
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object151678_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp152744 __tmp152743))))
                            (declare (not safe))
                            (cons __tmp152742 '())))
                         (__tmp152728
                          (let ((__tmp152729
                                 (let ((__tmp152730
                                        (let ((__tmp152734
                                               (let ((__tmp152735
                                                      (let ((__tmp152739
                                                             (let ((__tmp152740
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'class-instance-init! '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp152740)))
                    (__tmp152736
                     (let ((__tmp152737
                            (let ((__tmp152738
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj151701_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp152738))))
                       (declare (not safe))
                       (cons __tmp152737 _args151676_))))
                (declare (not safe))
                (cons __tmp152739 __tmp152736))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp152735)))
                                              (__tmp152731
                                               (let ((__tmp152732
                                                      (let ((__tmp152733
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj151701_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp152733))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp152732 '()))))
                                          (declare (not safe))
                                          (cons __tmp152734 __tmp152731))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp152730))))
                            (declare (not safe))
                            (cons __tmp152729 '()))))
                     (declare (not safe))
                     (cons __tmp152741 __tmp152728))))
              (declare (not safe))
              (cons '%#let-values __tmp152727))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp152726
                                                _stx151669_)))))
                                      (let* ((_g151708151748_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       ___stx152281152282_))
                                                    (___kont152285152286_)
                                                    (___kont152287152288_))))
                                             (___match152318152319_
                                              (lambda (_e151717151753_
                                                       _hd151716151756_
                                                       _tl151715151758_
                                                       _e151720151761_
                                                       _hd151719151764_
                                                       _tl151718151766_
                                                       _e151723151769_
                                                       _hd151722151772_
                                                       _tl151721151774_
                                                       _e151726151777_
                                                       _hd151725151780_
                                                       _tl151724151782_)
                                                (let ((_L151785_
                                                       _tl151724151782_)
                                                      (_L151786_
                                                       _hd151725151780_)
                                                      (_L151787_
                                                       _hd151722151772_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-keyword?
                                                         _L151787_))
                                                      (___kont152283152284_
                                                       _L151785_
                                                       _L151786_
                                                       _L151787_)
                                                      (___kont152287152288_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               ___stx152281152282_))
                                            (let ((_e151717151753_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      ___stx152281152282_))))
                                              (let ((_tl151715151758_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e151717151753_)))
                                                    (_hd151716151756_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e151717151753_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd151716151756_))
                                                    (let ((_e151720151761_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd151716151756_))))
                                                      (let ((_tl151718151766_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e151720151761_)))
                    (_hd151719151764_
                     (let () (declare (not safe)) (##car _e151720151761_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd151719151764_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd151719151764_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl151718151766_))
                            (let ((_e151723151769_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl151718151766_))))
                              (let ((_tl151721151774_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e151723151769_)))
                                    (_hd151722151772_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e151723151769_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl151721151774_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl151715151758_))
                                        (let ((_e151726151777_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl151715151758_))))
                                          (let ((_tl151724151782_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e151726151777_)))
                                                (_hd151725151780_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e151726151777_))))
                                            (___match152318152319_
                                             _e151717151753_
                                             _hd151716151756_
                                             _tl151715151758_
                                             _e151720151761_
                                             _hd151719151764_
                                             _tl151718151766_
                                             _e151723151769_
                                             _hd151722151772_
                                             _tl151721151774_
                                             _e151726151777_
                                             _hd151725151780_
                                             _tl151724151782_)))
                                        (___kont152287152288_))
                                    (___kont152287152288_))))
                            (___kont152287152288_))
                        (___kont152287152288_))
                    (___kont152287152288_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont152287152288_))))
                                            (let ()
                                              (declare (not safe))
                                              (_g151708151748_))))))))))))))))))
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
      (lambda (_self151491_ _stx151492_ _args151493_)
        (let* ((_g151495151505_
                (lambda (_g151496151502_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g151496151502_))))
               (_g151494151543_
                (lambda (_g151496151508_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g151496151508_))
                      (let ((_e151500151510_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g151496151508_))))
                        (let ((_hd151499151513_
                               (let ()
                                 (declare (not safe))
                                 (##car _e151500151510_)))
                              (_tl151498151515_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e151500151510_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl151498151515_))
                              ((lambda (_L151518_)
                                 (let* ((_klass151529_
                                         (let ((__tmp152867
                                                (##structure-ref
                                                 _self151491_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx151492_
                                            __tmp152867)))
                                        (_field151531_
                                         (let ((__tmp152868
                                                (##structure-ref
                                                 _self151491_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass151529_
                                            __tmp152868)))
                                        (_object151533_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L151518_))))
                                   (if (##structure-ref
                                        _klass151529_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp152945
                                              (let ((__tmp152954
                                                     (if (##structure-ref
                                                          _self151491_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp152946
                                                     (let ((__tmp152951
                                                            (let ((__tmp152952
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152953
                                  (##structure-ref
                                   _self151491_
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
                                    (cons _field151531_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp152950)))
                          (__tmp152948
                           (let ()
                             (declare (not safe))
                             (cons _object151533_ '()))))
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
                                          _stx151492_))
                                       (if (##structure-ref
                                            _klass151529_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp152935
                                                  (let ((__tmp152944
                                                         (if (##structure-ref
                                                              _self151491_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp152936
                                                         (let ((__tmp152941
                                                                (let ((__tmp152942
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp152943
                                      (##structure-ref
                                       _self151491_
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
                                        (cons _field151531_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp152940)))
                              (__tmp152938
                               (let ()
                                 (declare (not safe))
                                 (cons _object151533_ '()))))
                          (declare (not safe))
                          (cons __tmp152939 __tmp152938))))
                   (declare (not safe))
                   (cons __tmp152941 __tmp152937))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp152944
                                                          __tmp152936))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152935
                                              _stx151492_))
                                           (let ((_$e151536_
                                                  (let ((__tmp152869
                                                         (##structure-ref
                                                          _self151491_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass151529_
                                                     __tmp152869))))
                                             (if _$e151536_
                                                 ((lambda (_klass151539_)
                                                    (let ((__tmp152925
                                                           (let ((__tmp152934
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self151491_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp152926
                          (let ((__tmp152931
                                 (let ((__tmp152932
                                        (let ((__tmp152933
                                               (##structure-ref
                                                _self151491_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp152933 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp152932)))
                                (__tmp152927
                                 (let ((__tmp152929
                                        (let ((__tmp152930
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field151531_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp152930)))
                                       (__tmp152928
                                        (let ()
                                          (declare (not safe))
                                          (cons _object151533_ '()))))
                                   (declare (not safe))
                                   (cons __tmp152929 __tmp152928))))
                            (declare (not safe))
                            (cons __tmp152931 __tmp152927))))
                     (declare (not safe))
                     (cons __tmp152934 __tmp152926))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp152925 _stx151492_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e151536_)
                                                 (if (##structure-ref
                                                      _self151491_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp152879
                                                            (let* ((_$obj151541_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp152880 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp152880)))
                           (__tmp152881
                            (let ((__tmp152921
                                   (let ((__tmp152922
                                          (let ((__tmp152924
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj151541_ '())))
                                                (__tmp152923
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object151533_ '()))))
                                            (declare (not safe))
                                            (cons __tmp152924 __tmp152923))))
                                     (declare (not safe))
                                     (cons __tmp152922 '())))
                                  (__tmp152882
                                   (let ((__tmp152883
                                          (let ((__tmp152884
                                                 (let ((__tmp152913
                                                        (let ((__tmp152914
                                                               (let ((__tmp152918
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp152919
                                     (let ((__tmp152920
                                            (##structure-ref
                                             _klass151529_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp152920 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp152919)))
                             (__tmp152915
                              (let ((__tmp152916
                                     (let ((__tmp152917
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj151541_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152917))))
                                (declare (not safe))
                                (cons __tmp152916 '()))))
                         (declare (not safe))
                         (cons __tmp152918 __tmp152915))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp152914)))
               (__tmp152885
                (let ((__tmp152902
                       (let ((__tmp152903
                              (let ((__tmp152910
                                     (let ((__tmp152911
                                            (let ((__tmp152912
                                                   (##structure-ref
                                                    _self151491_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp152912 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152911)))
                                    (__tmp152904
                                     (let ((__tmp152908
                                            (let ((__tmp152909
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field151531_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp152909)))
                                           (__tmp152905
                                            (let ((__tmp152906
                                                   (let ((__tmp152907
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj151541_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152907))))
                                              (declare (not safe))
                                              (cons __tmp152906 '()))))
                                       (declare (not safe))
                                       (cons __tmp152908 __tmp152905))))
                                (declare (not safe))
                                (cons __tmp152910 __tmp152904))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp152903)))
                      (__tmp152886
                       (let ((__tmp152887
                              (let ((__tmp152888
                                     (let ((__tmp152900
                                            (let ((__tmp152901
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp152901)))
                                           (__tmp152889
                                            (let ((__tmp152897
                                                   (let ((__tmp152898
                                                          (let ((__tmp152899
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self151491_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp152899 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152898)))
                                                  (__tmp152890
                                                   (let ((__tmp152895
                                                          (let ((__tmp152896
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj151541_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp152896)))
                 (__tmp152891
                  (let ((__tmp152892
                         (let ((__tmp152893
                                (let ((__tmp152894
                                       (##structure-ref
                                        _self151491_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp152894 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp152893))))
                    (declare (not safe))
                    (cons __tmp152892 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152895
                                                           __tmp152891))))
                                              (declare (not safe))
                                              (cons __tmp152897 __tmp152890))))
                                       (declare (not safe))
                                       (cons __tmp152900 __tmp152889))))
                                (declare (not safe))
                                (cons '%#call __tmp152888))))
                         (declare (not safe))
                         (cons __tmp152887 '()))))
                  (declare (not safe))
                  (cons __tmp152902 __tmp152886))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp152913
                                                         __tmp152885))))
                                            (declare (not safe))
                                            (cons '%#if __tmp152884))))
                                     (declare (not safe))
                                     (cons __tmp152883 '()))))
                              (declare (not safe))
                              (cons __tmp152921 __tmp152882))))
                      (declare (not safe))
                      (cons '%#let-values __tmp152881))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp152879 _stx151492_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp152870
                                                            (let ((__tmp152871
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152877
                                  (let ((__tmp152878
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp152878)))
                                 (__tmp152872
                                  (let ((__tmp152873
                                         (let ((__tmp152874
                                                (let ((__tmp152875
                                                       (let ((__tmp152876
                                                              (##structure-ref
                                                               _self151491_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp152876
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp152875))))
                                           (declare (not safe))
                                           (cons __tmp152874 '()))))
                                    (declare (not safe))
                                    (cons _object151533_ __tmp152873))))
                             (declare (not safe))
                             (cons __tmp152877 __tmp152872))))
                      (declare (not safe))
                      (cons '%#call __tmp152871))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp152870 _stx151492_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd151499151513_)
                              (let ()
                                (declare (not safe))
                                (_g151495151505_ _g151496151508_)))))
                      (let ()
                        (declare (not safe))
                        (_g151495151505_ _g151496151508_))))))
          (declare (not safe))
          (_g151494151543_ _args151493_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass152166 __method-table152167)
        (let ((__slot152168
               (let ((__slot152171
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152166 'slot))))
                 (if __slot152171
                     __slot152171
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id152169
               (let ((__slot152172
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152166 'id))))
                 (if __slot152172
                     __slot152172
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?152170
               (let ((__slot152173
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152166 'checked?))))
                 (if __slot152173
                     __slot152173
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self151491_ _stx151492_ _args151493_)
            (let* ((_g151495151505_
                    (lambda (_g151496151502_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g151496151502_))))
                   (_g151494151543_
                    (lambda (_g151496151508_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g151496151508_))
                          (let ((_e151500151510_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g151496151508_))))
                            (let ((_hd151499151513_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e151500151510_)))
                                  (_tl151498151515_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e151500151510_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl151498151515_))
                                  ((lambda (_L151518_)
                                     (let* ((_klass151529_
                                             (let ((__tmp152955
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self151491_
                                                       __id152169
                                                       __klass152166
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx151492_
                                                __tmp152955)))
                                            (_field151531_
                                             (let ((__tmp152956
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self151491_
                                                       __slot152168
                                                       __klass152166
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass151529_
                                                __tmp152956)))
                                            (_object151533_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L151518_))))
                                       (if (##structure-ref
                                            _klass151529_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp153033
                                                  (let ((__tmp153042
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self151491_
                        __checked?152170
                        __klass152166
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp153034
                 (let ((__tmp153039
                        (let ((__tmp153040
                               (let ((__tmp153041
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self151491_
                                         __id152169
                                         __klass152166
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
                                        (cons _field151531_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp153038)))
                              (__tmp153036
                               (let ()
                                 (declare (not safe))
                                 (cons _object151533_ '()))))
                          (declare (not safe))
                          (cons __tmp153037 __tmp153036))))
                   (declare (not safe))
                   (cons __tmp153039 __tmp153035))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp153042
                                                          __tmp153034))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp153033
                                              _stx151492_))
                                           (if (##structure-ref
                                                _klass151529_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp153023
                                                      (let ((__tmp153032
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self151491_
                            __checked?152170
                            __klass152166
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
                                             _self151491_
                                             __id152169
                                             __klass152166
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
                                            (cons _field151531_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp153028)))
                                  (__tmp153026
                                   (let ()
                                     (declare (not safe))
                                     (cons _object151533_ '()))))
                              (declare (not safe))
                              (cons __tmp153027 __tmp153026))))
                       (declare (not safe))
                       (cons __tmp153029 __tmp153025))))
                (declare (not safe))
                (cons __tmp153032 __tmp153024))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp153023
                                                  _stx151492_))
                                               (let ((_$e151536_
                                                      (let ((__tmp152957
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self151491_
                        __slot152168
                        __klass152166
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass151529_ __tmp152957))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e151536_
                                                     ((lambda (_klass151539_)
                                                        (let ((__tmp153013
                                                               (let ((__tmp153022
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self151491_
                                     __checked?152170
                                     __klass152166
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp153014
                              (let ((__tmp153019
                                     (let ((__tmp153020
                                            (let ((__tmp153021
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self151491_
                                                      __id152169
                                                      __klass152166
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp153021 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153020)))
                                    (__tmp153015
                                     (let ((__tmp153017
                                            (let ((__tmp153018
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field151531_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp153018)))
                                           (__tmp153016
                                            (let ()
                                              (declare (not safe))
                                              (cons _object151533_ '()))))
                                       (declare (not safe))
                                       (cons __tmp153017 __tmp153016))))
                                (declare (not safe))
                                (cons __tmp153019 __tmp153015))))
                         (declare (not safe))
                         (cons __tmp153022 __tmp153014))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp153013 _stx151492_)))
              _$e151536_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self151491_
                                                            __checked?152170
                                                            __klass152166
                                                            '#f))
                                                         (let ((__tmp152967
                                                                (let* ((_$obj151541_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp152968 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp152968)))
                               (__tmp152969
                                (let ((__tmp153009
                                       (let ((__tmp153010
                                              (let ((__tmp153012
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj151541_
                                                             '())))
                                                    (__tmp153011
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object151533_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp153012
                                                      __tmp153011))))
                                         (declare (not safe))
                                         (cons __tmp153010 '())))
                                      (__tmp152970
                                       (let ((__tmp152971
                                              (let ((__tmp152972
                                                     (let ((__tmp153001
                                                            (let ((__tmp153002
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153006
                                  (let ((__tmp153007
                                         (let ((__tmp153008
                                                (##structure-ref
                                                 _klass151529_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp153008 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp153007)))
                                 (__tmp153003
                                  (let ((__tmp153004
                                         (let ((__tmp153005
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj151541_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153005))))
                                    (declare (not safe))
                                    (cons __tmp153004 '()))))
                             (declare (not safe))
                             (cons __tmp153006 __tmp153003))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp153002)))
                   (__tmp152973
                    (let ((__tmp152990
                           (let ((__tmp152991
                                  (let ((__tmp152998
                                         (let ((__tmp152999
                                                (let ((__tmp153000
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self151491_
                                                          __id152169
                                                          __klass152166
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp153000 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp152999)))
                                        (__tmp152992
                                         (let ((__tmp152996
                                                (let ((__tmp152997
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field151531_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp152997)))
                                               (__tmp152993
                                                (let ((__tmp152994
                                                       (let ((__tmp152995
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj151541_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152995))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152994 '()))))
                                           (declare (not safe))
                                           (cons __tmp152996 __tmp152993))))
                                    (declare (not safe))
                                    (cons __tmp152998 __tmp152992))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp152991)))
                          (__tmp152974
                           (let ((__tmp152975
                                  (let ((__tmp152976
                                         (let ((__tmp152988
                                                (let ((__tmp152989
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp152989)))
                                               (__tmp152977
                                                (let ((__tmp152985
                                                       (let ((__tmp152986
                                                              (let ((__tmp152987
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self151491_
                                __id152169
                                __klass152166
                                '#f))))
                        (declare (not safe))
                        (cons __tmp152987 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152986)))
              (__tmp152978
               (let ((__tmp152983
                      (let ((__tmp152984
                             (let ()
                               (declare (not safe))
                               (cons _$obj151541_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp152984)))
                     (__tmp152979
                      (let ((__tmp152980
                             (let ((__tmp152981
                                    (let ((__tmp152982
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self151491_
                                              __slot152168
                                              __klass152166
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp152982 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp152981))))
                        (declare (not safe))
                        (cons __tmp152980 '()))))
                 (declare (not safe))
                 (cons __tmp152983 __tmp152979))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152985
                                                        __tmp152978))))
                                           (declare (not safe))
                                           (cons __tmp152988 __tmp152977))))
                                    (declare (not safe))
                                    (cons '%#call __tmp152976))))
                             (declare (not safe))
                             (cons __tmp152975 '()))))
                      (declare (not safe))
                      (cons __tmp152990 __tmp152974))))
               (declare (not safe))
               (cons __tmp153001 __tmp152973))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp152972))))
                                         (declare (not safe))
                                         (cons __tmp152971 '()))))
                                  (declare (not safe))
                                  (cons __tmp153009 __tmp152970))))
                          (declare (not safe))
                          (cons '%#let-values __tmp152969))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp152967 _stx151492_))
                 (let ((__tmp152958
                        (let ((__tmp152959
                               (let ((__tmp152965
                                      (let ((__tmp152966
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp152966)))
                                     (__tmp152960
                                      (let ((__tmp152961
                                             (let ((__tmp152962
                                                    (let ((__tmp152963
                                                           (let ((__tmp152964
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self151491_
                             __slot152168
                             __klass152166
                             '#f))))
                     (declare (not safe))
                     (cons __tmp152964 '()))))
              (declare (not safe))
              (cons '%#quote __tmp152963))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp152962 '()))))
                                        (declare (not safe))
                                        (cons _object151533_ __tmp152961))))
                                 (declare (not safe))
                                 (cons __tmp152965 __tmp152960))))
                          (declare (not safe))
                          (cons '%#call __tmp152959))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp152958 _stx151492_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd151499151513_)
                                  (let ()
                                    (declare (not safe))
                                    (_g151495151505_ _g151496151508_)))))
                          (let ()
                            (declare (not safe))
                            (_g151495151505_ _g151496151508_))))))
              (declare (not safe))
              (_g151494151543_ _args151493_))))))
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
      (lambda (_self151296_ _stx151297_ _args151298_)
        (let* ((_g151300151314_
                (lambda (_g151301151311_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g151301151311_))))
               (_g151299151366_
                (lambda (_g151301151317_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g151301151317_))
                      (let ((_e151306151319_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g151301151317_))))
                        (let ((_hd151305151322_
                               (let ()
                                 (declare (not safe))
                                 (##car _e151306151319_)))
                              (_tl151304151324_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e151306151319_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl151304151324_))
                              (let ((_e151309151327_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl151304151324_))))
                                (let ((_hd151308151330_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e151309151327_)))
                                      (_tl151307151332_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e151309151327_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl151307151332_))
                                      ((lambda (_L151335_ _L151336_)
                                         (let* ((_klass151350_
                                                 (let ((__tmp153043
                                                        (##structure-ref
                                                         _self151296_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx151297_
                                                    __tmp153043)))
                                                (_field151352_
                                                 (let ((__tmp153044
                                                        (##structure-ref
                                                         _self151296_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass151350_
                                                    __tmp153044)))
                                                (_object151354_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L151336_)))
                                                (_value151356_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L151335_))))
                                           (if (##structure-ref
                                                _klass151350_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp153126
                                                      (let ((__tmp153136
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self151296_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp153127
                     (let ((__tmp153133
                            (let ((__tmp153134
                                   (let ((__tmp153135
                                          (##structure-ref
                                           _self151296_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp153135 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp153134)))
                           (__tmp153128
                            (let ((__tmp153131
                                   (let ((__tmp153132
                                          (let ()
                                            (declare (not safe))
                                            (cons _field151352_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp153132)))
                                  (__tmp153129
                                   (let ((__tmp153130
                                          (let ()
                                            (declare (not safe))
                                            (cons _value151356_ '()))))
                                     (declare (not safe))
                                     (cons _object151354_ __tmp153130))))
                              (declare (not safe))
                              (cons __tmp153131 __tmp153129))))
                       (declare (not safe))
                       (cons __tmp153133 __tmp153128))))
                (declare (not safe))
                (cons __tmp153136 __tmp153127))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp153126
                                                  _stx151297_))
                                               (if (##structure-ref
                                                    _klass151350_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp153115
                                                          (let ((__tmp153125
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self151296_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp153116
                         (let ((__tmp153122
                                (let ((__tmp153123
                                       (let ((__tmp153124
                                              (##structure-ref
                                               _self151296_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp153124 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp153123)))
                               (__tmp153117
                                (let ((__tmp153120
                                       (let ((__tmp153121
                                              (let ()
                                                (declare (not safe))
                                                (cons _field151352_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp153121)))
                                      (__tmp153118
                                       (let ((__tmp153119
                                              (let ()
                                                (declare (not safe))
                                                (cons _value151356_ '()))))
                                         (declare (not safe))
                                         (cons _object151354_ __tmp153119))))
                                  (declare (not safe))
                                  (cons __tmp153120 __tmp153118))))
                           (declare (not safe))
                           (cons __tmp153122 __tmp153117))))
                    (declare (not safe))
                    (cons __tmp153125 __tmp153116))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp153115
                                                      _stx151297_))
                                                   (let ((_$e151359_
                                                          (let ((__tmp153045
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self151296_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass151350_ __tmp153045))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e151359_
                                                         ((lambda (_klass151362_)
                                                            (let ((__tmp153104
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153114
                                  (if (##structure-ref
                                       _self151296_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp153105
                                  (let ((__tmp153111
                                         (let ((__tmp153112
                                                (let ((__tmp153113
                                                       (##structure-ref
                                                        _self151296_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp153113 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153112)))
                                        (__tmp153106
                                         (let ((__tmp153109
                                                (let ((__tmp153110
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field151352_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp153110)))
                                               (__tmp153107
                                                (let ((__tmp153108
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value151356_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object151354_
                                                        __tmp153108))))
                                           (declare (not safe))
                                           (cons __tmp153109 __tmp153107))))
                                    (declare (not safe))
                                    (cons __tmp153111 __tmp153106))))
                             (declare (not safe))
                             (cons __tmp153114 __tmp153105))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp153104 _stx151297_)))
                  _$e151359_)
                 (if (##structure-ref _self151296_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp153056
                            (let* ((_$obj151364_
                                    (let ((__tmp153057 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp153057)))
                                   (__tmp153058
                                    (let ((__tmp153100
                                           (let ((__tmp153101
                                                  (let ((__tmp153103
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj151364_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp153102
                 (let () (declare (not safe)) (cons _object151354_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp153103
                                                          __tmp153102))))
                                             (declare (not safe))
                                             (cons __tmp153101 '())))
                                          (__tmp153059
                                           (let ((__tmp153060
                                                  (let ((__tmp153061
                                                         (let ((__tmp153092
                                                                (let ((__tmp153093
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp153097
                                      (let ((__tmp153098
                                             (let ((__tmp153099
                                                    (##structure-ref
                                                     _klass151350_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp153099 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp153098)))
                                     (__tmp153094
                                      (let ((__tmp153095
                                             (let ((__tmp153096
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj151364_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp153096))))
                                        (declare (not safe))
                                        (cons __tmp153095 '()))))
                                 (declare (not safe))
                                 (cons __tmp153097 __tmp153094))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp153093)))
                       (__tmp153062
                        (let ((__tmp153080
                               (let ((__tmp153081
                                      (let ((__tmp153089
                                             (let ((__tmp153090
                                                    (let ((__tmp153091
                                                           (##structure-ref
                                                            _self151296_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp153091 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp153090)))
                                            (__tmp153082
                                             (let ((__tmp153087
                                                    (let ((__tmp153088
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field151352_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp153088)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp153083
                                                    (let ((__tmp153085
                                                           (let ((__tmp153086
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj151364_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp153086)))
                  (__tmp153084
                   (let () (declare (not safe)) (cons _value151356_ '()))))
              (declare (not safe))
              (cons __tmp153085 __tmp153084))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153087
                                                     __tmp153083))))
                                        (declare (not safe))
                                        (cons __tmp153089 __tmp153082))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp153081)))
                              (__tmp153063
                               (let ((__tmp153064
                                      (let ((__tmp153065
                                             (let ((__tmp153078
                                                    (let ((__tmp153079
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp153079)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp153066
                                                    (let ((__tmp153075
                                                           (let ((__tmp153076
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp153077
                                 (##structure-ref
                                  _self151296_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp153077 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp153076)))
                  (__tmp153067
                   (let ((__tmp153073
                          (let ((__tmp153074
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj151364_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp153074)))
                         (__tmp153068
                          (let ((__tmp153070
                                 (let ((__tmp153071
                                        (let ((__tmp153072
                                               (##structure-ref
                                                _self151296_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp153072 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp153071)))
                                (__tmp153069
                                 (let ()
                                   (declare (not safe))
                                   (cons _value151356_ '()))))
                            (declare (not safe))
                            (cons __tmp153070 __tmp153069))))
                     (declare (not safe))
                     (cons __tmp153073 __tmp153068))))
              (declare (not safe))
              (cons __tmp153075 __tmp153067))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153078
                                                     __tmp153066))))
                                        (declare (not safe))
                                        (cons '%#call __tmp153065))))
                                 (declare (not safe))
                                 (cons __tmp153064 '()))))
                          (declare (not safe))
                          (cons __tmp153080 __tmp153063))))
                   (declare (not safe))
                   (cons __tmp153092 __tmp153062))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp153061))))
                                             (declare (not safe))
                                             (cons __tmp153060 '()))))
                                      (declare (not safe))
                                      (cons __tmp153100 __tmp153059))))
                              (declare (not safe))
                              (cons '%#let-values __tmp153058))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp153056 _stx151297_))
                     (let ((__tmp153046
                            (let ((__tmp153047
                                   (let ((__tmp153054
                                          (let ((__tmp153055
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp153055)))
                                         (__tmp153048
                                          (let ((__tmp153049
                                                 (let ((__tmp153051
                                                        (let ((__tmp153052
                                                               (let ((__tmp153053
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self151296_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp153053 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp153052)))
               (__tmp153050
                (let () (declare (not safe)) (cons _value151356_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153051
                                                         __tmp153050))))
                                            (declare (not safe))
                                            (cons _object151354_
                                                  __tmp153049))))
                                     (declare (not safe))
                                     (cons __tmp153054 __tmp153048))))
                              (declare (not safe))
                              (cons '%#call __tmp153047))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp153046 _stx151297_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd151308151330_
                                       _hd151305151322_)
                                      (let ()
                                        (declare (not safe))
                                        (_g151300151314_ _g151301151317_)))))
                              (let ()
                                (declare (not safe))
                                (_g151300151314_ _g151301151317_)))))
                      (let ()
                        (declare (not safe))
                        (_g151300151314_ _g151301151317_))))))
          (declare (not safe))
          (_g151299151366_ _args151298_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass152174 __method-table152175)
        (let ((__slot152176
               (let ((__slot152179
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152174 'slot))))
                 (if __slot152179
                     __slot152179
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id152177
               (let ((__slot152180
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152174 'id))))
                 (if __slot152180
                     __slot152180
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?152178
               (let ((__slot152181
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152174 'checked?))))
                 (if __slot152181
                     __slot152181
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self151296_ _stx151297_ _args151298_)
            (let* ((_g151300151314_
                    (lambda (_g151301151311_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g151301151311_))))
                   (_g151299151366_
                    (lambda (_g151301151317_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g151301151317_))
                          (let ((_e151306151319_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g151301151317_))))
                            (let ((_hd151305151322_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e151306151319_)))
                                  (_tl151304151324_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e151306151319_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl151304151324_))
                                  (let ((_e151309151327_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl151304151324_))))
                                    (let ((_hd151308151330_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e151309151327_)))
                                          (_tl151307151332_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e151309151327_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl151307151332_))
                                          ((lambda (_L151335_ _L151336_)
                                             (let* ((_klass151350_
                                                     (let ((__tmp153137
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self151296_
                                                               __id152177
                                                               __klass152174
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx151297_
                                                        __tmp153137)))
                                                    (_field151352_
                                                     (let ((__tmp153138
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self151296_
                                                               __slot152176
                                                               __klass152174
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass151350_
                                                        __tmp153138)))
                                                    (_object151354_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L151336_)))
                                                    (_value151356_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L151335_))))
                                               (if (##structure-ref
                                                    _klass151350_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp153220
                                                          (let ((__tmp153230
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self151296_
                                __checked?152178
                                __klass152174
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp153221
                         (let ((__tmp153227
                                (let ((__tmp153228
                                       (let ((__tmp153229
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self151296_
                                                 __id152177
                                                 __klass152174
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp153229 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp153228)))
                               (__tmp153222
                                (let ((__tmp153225
                                       (let ((__tmp153226
                                              (let ()
                                                (declare (not safe))
                                                (cons _field151352_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp153226)))
                                      (__tmp153223
                                       (let ((__tmp153224
                                              (let ()
                                                (declare (not safe))
                                                (cons _value151356_ '()))))
                                         (declare (not safe))
                                         (cons _object151354_ __tmp153224))))
                                  (declare (not safe))
                                  (cons __tmp153225 __tmp153223))))
                           (declare (not safe))
                           (cons __tmp153227 __tmp153222))))
                    (declare (not safe))
                    (cons __tmp153230 __tmp153221))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp153220
                                                      _stx151297_))
                                                   (if (##structure-ref
                                                        _klass151350_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp153209
                                                              (let ((__tmp153219
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self151296_
                                    __checked?152178
                                    __klass152174
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp153210
                             (let ((__tmp153216
                                    (let ((__tmp153217
                                           (let ((__tmp153218
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self151296_
                                                     __id152177
                                                     __klass152174
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp153218 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp153217)))
                                   (__tmp153211
                                    (let ((__tmp153214
                                           (let ((__tmp153215
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field151352_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp153215)))
                                          (__tmp153212
                                           (let ((__tmp153213
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value151356_ '()))))
                                             (declare (not safe))
                                             (cons _object151354_
                                                   __tmp153213))))
                                      (declare (not safe))
                                      (cons __tmp153214 __tmp153212))))
                               (declare (not safe))
                               (cons __tmp153216 __tmp153211))))
                        (declare (not safe))
                        (cons __tmp153219 __tmp153210))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp153209 _stx151297_))
               (let ((_$e151359_
                      (let ((__tmp153139
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self151296_
                                __slot152176
                                __klass152174
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass151350_
                         __tmp153139))))
                 (if _$e151359_
                     ((lambda (_klass151362_)
                        (let ((__tmp153198
                               (let ((__tmp153208
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self151296_
                                             __checked?152178
                                             __klass152174
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp153199
                                      (let ((__tmp153205
                                             (let ((__tmp153206
                                                    (let ((__tmp153207
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self151296_
                                                              __id152177
                                                              __klass152174
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp153207 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp153206)))
                                            (__tmp153200
                                             (let ((__tmp153203
                                                    (let ((__tmp153204
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field151352_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp153204)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp153201
                                                    (let ((__tmp153202
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value151356_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object151354_ __tmp153202))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153203
                                                     __tmp153201))))
                                        (declare (not safe))
                                        (cons __tmp153205 __tmp153200))))
                                 (declare (not safe))
                                 (cons __tmp153208 __tmp153199))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp153198 _stx151297_)))
                      _$e151359_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self151296_
                            __checked?152178
                            __klass152174
                            '#f))
                         (let ((__tmp153150
                                (let* ((_$obj151364_
                                        (let ((__tmp153151 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp153151)))
                                       (__tmp153152
                                        (let ((__tmp153194
                                               (let ((__tmp153195
                                                      (let ((__tmp153197
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj151364_ '())))
                    (__tmp153196
                     (let () (declare (not safe)) (cons _object151354_ '()))))
                (declare (not safe))
                (cons __tmp153197 __tmp153196))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153195 '())))
                                              (__tmp153153
                                               (let ((__tmp153154
                                                      (let ((__tmp153155
                                                             (let ((__tmp153186
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp153187
                                   (let ((__tmp153191
                                          (let ((__tmp153192
                                                 (let ((__tmp153193
                                                        (##structure-ref
                                                         _klass151350_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp153193 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp153192)))
                                         (__tmp153188
                                          (let ((__tmp153189
                                                 (let ((__tmp153190
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj151364_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp153190))))
                                            (declare (not safe))
                                            (cons __tmp153189 '()))))
                                     (declare (not safe))
                                     (cons __tmp153191 __tmp153188))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp153187)))
                           (__tmp153156
                            (let ((__tmp153174
                                   (let ((__tmp153175
                                          (let ((__tmp153183
                                                 (let ((__tmp153184
                                                        (let ((__tmp153185
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self151296_
                          __id152177
                          __klass152174
                          '#f))))
                  (declare (not safe))
                  (cons __tmp153185 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp153184)))
                                                (__tmp153176
                                                 (let ((__tmp153181
                                                        (let ((__tmp153182
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field151352_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp153182)))
               (__tmp153177
                (let ((__tmp153179
                       (let ((__tmp153180
                              (let ()
                                (declare (not safe))
                                (cons _$obj151364_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp153180)))
                      (__tmp153178
                       (let () (declare (not safe)) (cons _value151356_ '()))))
                  (declare (not safe))
                  (cons __tmp153179 __tmp153178))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153181
                                                         __tmp153177))))
                                            (declare (not safe))
                                            (cons __tmp153183 __tmp153176))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp153175)))
                                  (__tmp153157
                                   (let ((__tmp153158
                                          (let ((__tmp153159
                                                 (let ((__tmp153172
                                                        (let ((__tmp153173
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp153173)))
               (__tmp153160
                (let ((__tmp153169
                       (let ((__tmp153170
                              (let ((__tmp153171
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self151296_
                                        __id152177
                                        __klass152174
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp153171 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp153170)))
                      (__tmp153161
                       (let ((__tmp153167
                              (let ((__tmp153168
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj151364_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp153168)))
                             (__tmp153162
                              (let ((__tmp153164
                                     (let ((__tmp153165
                                            (let ((__tmp153166
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self151296_
                                                      __slot152176
                                                      __klass152174
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp153166 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp153165)))
                                    (__tmp153163
                                     (let ()
                                       (declare (not safe))
                                       (cons _value151356_ '()))))
                                (declare (not safe))
                                (cons __tmp153164 __tmp153163))))
                         (declare (not safe))
                         (cons __tmp153167 __tmp153162))))
                  (declare (not safe))
                  (cons __tmp153169 __tmp153161))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153172
                                                         __tmp153160))))
                                            (declare (not safe))
                                            (cons '%#call __tmp153159))))
                                     (declare (not safe))
                                     (cons __tmp153158 '()))))
                              (declare (not safe))
                              (cons __tmp153174 __tmp153157))))
                       (declare (not safe))
                       (cons __tmp153186 __tmp153156))))
                (declare (not safe))
                (cons '%#if __tmp153155))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153154 '()))))
                                          (declare (not safe))
                                          (cons __tmp153194 __tmp153153))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp153152))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp153150 _stx151297_))
                         (let ((__tmp153140
                                (let ((__tmp153141
                                       (let ((__tmp153148
                                              (let ((__tmp153149
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp153149)))
                                             (__tmp153142
                                              (let ((__tmp153143
                                                     (let ((__tmp153145
                                                            (let ((__tmp153146
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153147
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self151296_
                                     __slot152176
                                     __klass152174
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp153147 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp153146)))
                   (__tmp153144
                    (let () (declare (not safe)) (cons _value151356_ '()))))
               (declare (not safe))
               (cons __tmp153145 __tmp153144))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object151354_
                                                      __tmp153143))))
                                         (declare (not safe))
                                         (cons __tmp153148 __tmp153142))))
                                  (declare (not safe))
                                  (cons '%#call __tmp153141))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp153140
                            _stx151297_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd151308151330_
                                           _hd151305151322_)
                                          (let ()
                                            (declare (not safe))
                                            (_g151300151314_
                                             _g151301151317_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g151300151314_ _g151301151317_)))))
                          (let ()
                            (declare (not safe))
                            (_g151300151314_ _g151301151317_))))))
              (declare (not safe))
              (_g151299151366_ _args151298_))))))
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
      (lambda (_self151130_ _stx151131_ _args151132_)
        (let* ((_self151133151142_ _self151130_)
               (_E151135151146_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self151133151142_))))
               (_K151136151153_
                (lambda (_inline151149_ _dispatch151150_ _arity151151_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self151130_ _args151132_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx151131_
                         _arity151151_)))
                  (if _inline151149_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp153236
                               (let ((__tmp153237
                                      (_inline151149_ _stx151131_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp153237
                                  _stx151131_))))
                          (declare (not safe))
                          (gxc#compile-e__0 __tmp153236)))
                      (if _dispatch151150_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch151150_))
                            (let ((__tmp153231
                                   (let ((__tmp153232
                                          (let ((__tmp153233
                                                 (let ((__tmp153234
                                                        (let ((__tmp153235
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch151150_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp153235))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153234
                                                         _args151132_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp153233))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp153232
                                      _stx151131_))))
                              (declare (not safe))
                              (gxc#compile-e__0 __tmp153231)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _stx151131_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self151133151142_ 'gxc#!lambda::t))
              (let* ((_e151137151156_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151133151142_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e151138151159_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151133151142_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity151162_ _e151138151159_)
                     (_e151139151164_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151133151142_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch151167_ _e151139151164_)
                     (_e151140151169_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151133151142_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline151172_ _e151140151169_))
                (declare (not safe))
                (_K151136151153_
                 _inline151172_
                 _dispatch151167_
                 _arity151162_))
              (let () (declare (not safe)) (_E151135151146_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self150969_ _stx150970_ _args150971_)
        (let* ((_self150972150979_ _self150969_)
               (_E150974150983_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self150972150979_))))
               (_K150975150997_
                (lambda (_clauses150986_)
                  (let ((_$e150992_
                         (let ((__tmp153238
                                (lambda (_g150987150989_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g150987150989_
                                     _args150971_)))))
                           (declare (not safe))
                           (find __tmp153238 _clauses150986_))))
                    (if _$e150992_
                        ((lambda (_clause150995_)
                           (let ((__method152450
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause150995_
                                     'optimize-call))))
                             (if __method152450
                                 (__method152450
                                  _clause150995_
                                  _stx150970_
                                  _args150971_)
                                 (let ()
                                   (declare (not safe))
                                   (error '"Missing method"
                                          _clause150995_
                                          'optimize-call)))))
                         _$e150992_)
                        (let ((__tmp153239
                               (map gxc#!lambda-arity _clauses150986_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx150970_
                           __tmp153239)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self150972150979_
                 'gxc#!case-lambda::t))
              (let* ((_e150976151000_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150972150979_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e150977151003_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150972150979_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses151006_ _e150977151003_))
                (declare (not safe))
                (_K150975150997_ _clauses151006_))
              (let () (declare (not safe)) (_E150974150983_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self150783_ _args150784_)
        (let* ((_self150785150792_ _self150783_)
               (_E150787150796_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self150785150792_))))
               (_K150788150836_
                (lambda (_arity150799_)
                  (let* ((_arity150800150809_ _arity150799_)
                         (_E150803150813_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (error '"No clause matching"
                                     _arity150800150809_)))))
                    (let ((_K150807150833_
                           (lambda ()
                             (fx= (length _args150784_) _arity150799_)))
                          (_K150804150819_
                           (lambda (_arity150817_)
                             (fx>= (length _args150784_) _arity150817_))))
                      (let ((_try-match150802150829_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity150800150809_))
                                   (let ((_tl150806150824_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity150800150809_)))
                                         (_hd150805150822_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity150800150809_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl150806150824_))
                                         (let ((_arity150827_
                                                _hd150805150822_))
                                           (declare (not safe))
                                           (_K150804150819_ _arity150827_))
                                         (let ()
                                           (declare (not safe))
                                           (_E150803150813_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E150803150813_))))))
                        (if (let ()
                              (declare (not safe))
                              (fixnum? _arity150800150809_))
                            (let () (declare (not safe)) (_K150807150833_))
                            (let ()
                              (declare (not safe))
                              (_try-match150802150829_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self150785150792_ 'gxc#!lambda::t))
              (let* ((_e150789150839_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150785150792_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e150790150842_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150785150792_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity150845_ _e150790150842_))
                (declare (not safe))
                (_K150788150836_ _arity150845_))
              (let () (declare (not safe)) (_E150787150796_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self150668_ _stx150669_ _args150670_)
        (let* ((_self150671150679_ _self150668_)
               (_E150673150683_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self150671150679_))))
               (_K150674150767_
                (lambda (_dispatch150686_ _table150687_)
                  (let* ((_g150688150697_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch150686_)))
                         (_else150690150705_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch150686_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _stx150669_))))
                         (_K150692150751_
                          (lambda (_main150708_ _keys150709_)
                            (let ((_g153240_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx150669_
                                      _args150670_))))
                              (begin
                                (let ((_g153241_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g153240_)
                                             (##vector-length _g153240_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g153241_ 2)))
                                      (error "Context expects 2 values"
                                             _g153241_)))
                                (let ((_pargs150711_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g153240_ 0)))
                                      (_kwargs150712_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g153240_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main150708_))
                                    (if _table150687_
                                        (let ((_xargs150719_
                                               (map (lambda (_key150714_)
                                                      (let ((_$e150716_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__0 _key150714_ _kwargs150712_))))
                (if _$e150716_ (values _$e150716_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys150709_)))
                                          (for-each
                                           (lambda (_kw150721_)
                                             (if (memq (car _kw150721_)
                                                       _keys150709_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx150669_
                                                    _keys150709_
                                                    _kw150721_))))
                                           _kwargs150712_)
                                          (let ((__tmp153293
                                                 (let ((__tmp153294
                                                        (let ((__tmp153295
                                                               (let ((__tmp153300
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153301
                                     (let ()
                                       (declare (not safe))
                                       (cons _main150708_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp153301)))
                             (__tmp153296
                              (let ((__tmp153298
                                     (let ((__tmp153299
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp153299)))
                                    (__tmp153297
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs150711_
                                               _xargs150719_))))
                                (declare (not safe))
                                (cons __tmp153298 __tmp153297))))
                         (declare (not safe))
                         (cons __tmp153300 __tmp153296))))
                  (declare (not safe))
                  (cons '%#call __tmp153295))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp153294
                                                    _stx150669_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0 __tmp153293)))
                                        (let* ((_kwt150723_
                                                (let ((__tmp153242
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp153242)))
                                               (_kwvars150726_
                                                (map (lambda (_g153243_)
                                                       (let ((__tmp153244
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp153244)))
                                                     _kwargs150712_))
                                               (_kwbind150731_
                                                (map (lambda (_kw150728_
                                                              _kwvar150729_)
                                                       (let ((__tmp153247
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar150729_ '())))
                     (__tmp153245
                      (let ((__tmp153246 (cdr _kw150728_)))
                        (declare (not safe))
                        (cons __tmp153246 '()))))
                 (declare (not safe))
                 (cons __tmp153247 __tmp153245)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs150712_
                                                     _kwvars150726_))
                                               (_kwset150736_
                                                (map (lambda (_kw150733_
                                                              _kwvar150734_)
                                                       (let ((__tmp153248
                                                              (let ((__tmp153249
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp153257
                                    (let ((__tmp153258
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt150723_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp153258)))
                                   (__tmp153250
                                    (let ((__tmp153254
                                           (let ((__tmp153255
                                                  (let ((__tmp153256
                                                         (car _kw150733_)))
                                                    (declare (not safe))
                                                    (cons __tmp153256 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp153255)))
                                          (__tmp153251
                                           (let ((__tmp153252
                                                  (let ((__tmp153253
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar150734_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp153253))))
                                             (declare (not safe))
                                             (cons __tmp153252 '()))))
                                      (declare (not safe))
                                      (cons __tmp153254 __tmp153251))))
                               (declare (not safe))
                               (cons __tmp153257 __tmp153250))))
                        (declare (not safe))
                        (cons '(%#ref symbolic-table-set!) __tmp153249))))
                 (declare (not safe))
                 (cons '%#call __tmp153248)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs150712_
                                                     _kwvars150726_))
                                               (_xkwargs150741_
                                                (map (lambda (_kw150738_
                                                              _kwvar150739_)
                                                       (let ((__tmp153261
                                                              (car _kw150738_))
                                                             (__tmp153259
                                                              (let ((__tmp153260
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar150739_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp153260))))
                 (declare (not safe))
                 (cons __tmp153261 __tmp153259)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs150712_
                                                     _kwvars150726_))
                                               (_xargs150748_
                                                (map (lambda (_key150743_)
                                                       (let ((_$e150745_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq__0 _key150743_ _xkwargs150741_))))
                 (if _$e150745_ (values _$e150745_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys150709_)))
                                          (let ((__tmp153262
                                                 (let ((__tmp153263
                                                        (let ((__tmp153264
                                                               (let ((__tmp153265
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153266
                                     (let ((__tmp153267
                                            (let ((__tmp153281
                                                   (let ((__tmp153282
                                                          (let ((__tmp153292
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt150723_ '())))
                        (__tmp153283
                         (let ((__tmp153284
                                (let ((__tmp153285
                                       (let ((__tmp153286
                                              (let ((__tmp153287
                                                     (let ((__tmp153289
                                                            (let ((__tmp153290
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153291 (length _kwargs150712_)))
                             (declare (not safe))
                             (cons __tmp153291 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp153290)))
                   (__tmp153288
                    (let () (declare (not safe)) (cons '(%#quote 0) '()))))
               (declare (not safe))
               (cons __tmp153289 __tmp153288))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-symbolic-table)
                                                      __tmp153287))))
                                         (declare (not safe))
                                         (cons '%#call __tmp153286))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp153285
                                   _stx150669_))))
                           (declare (not safe))
                           (cons __tmp153284 '()))))
                    (declare (not safe))
                    (cons __tmp153292 __tmp153283))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153282 '())))
                                                  (__tmp153268
                                                   (let ((__tmp153269
                                                          (let ((__tmp153270
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp153271
                                (let ((__tmp153272
                                       (let ((__tmp153273
                                              (let ((__tmp153274
                                                     (let ((__tmp153279
                                                            (let ((__tmp153280
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main150708_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp153280)))
                   (__tmp153275
                    (let ((__tmp153277
                           (let ((__tmp153278
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt150723_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp153278)))
                          (__tmp153276
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs150711_ _xargs150748_))))
                      (declare (not safe))
                      (cons __tmp153277 __tmp153276))))
               (declare (not safe))
               (cons __tmp153279 __tmp153275))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp153274))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp153273
                                          _stx150669_))))
                                  (declare (not safe))
                                  (cons __tmp153272 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp153271 _kwset150736_))))
                    (declare (not safe))
                    (cons '%#begin __tmp153270))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153269 '()))))
                                              (declare (not safe))
                                              (cons __tmp153281 __tmp153268))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp153267))))
                                (declare (not safe))
                                (cons __tmp153266 '()))))
                         (declare (not safe))
                         (cons _kwbind150731_ __tmp153265))))
                  (declare (not safe))
                  (cons '%#let-values __tmp153264))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp153263
                                                    _stx150669_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0
                                             __tmp153262)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g150688150697_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e150693150754_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g150688150697_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e150694150757_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g150688150697_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys150760_ _e150694150757_)
                               (_e150695150762_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g150688150697_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main150765_ _e150695150762_))
                          (declare (not safe))
                          (_K150692150751_ _main150765_ _keys150760_))
                        (let () (declare (not safe)) (_else150690150705_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self150671150679_
                 'gxc#!kw-lambda::t))
              (let* ((_e150675150770_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150671150679_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e150676150773_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150671150679_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table150776_ _e150676150773_)
                     (_e150677150778_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150671150679_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch150781_ _e150677150778_))
                (declare (not safe))
                (_K150674150767_ _dispatch150781_ _table150776_))
              (let () (declare (not safe)) (_E150673150683_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx150281_ _args150282_)
        (let _lp150284_ ((_rest150286_ _args150282_)
                         (_pargs150287_ '())
                         (_kwargs150288_ '()))
          (let* ((___stx152332152333_ _rest150286_)
                 (_g150294150346_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx152332152333_)))))
            (let ((___kont152334152335_
                   (lambda (_L150525_ _L150526_)
                     (let ((__tmp153302
                            (let ()
                              (declare (not safe))
                              (cons _L150526_ _pargs150287_))))
                       (declare (not safe))
                       (_lp150284_ _L150525_ __tmp153302 _kwargs150288_))))
                  (___kont152336152337_
                   (lambda (_L150471_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L150471_ _pargs150287_))
                             (reverse _kwargs150288_))))
                  (___kont152338152339_
                   (lambda (_L150418_ _L150419_ _L150420_)
                     (let ((_kw150437_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L150420_))))
                       (if (assq _kw150437_ _kwargs150288_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx150281_
                              _kw150437_))
                           (let ((__tmp153303
                                  (let ((__tmp153304
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw150437_ _L150419_))))
                                    (declare (not safe))
                                    (cons __tmp153304 _kwargs150288_))))
                             (declare (not safe))
                             (_lp150284_
                              _L150418_
                              _pargs150287_
                              __tmp153303))))))
                  (___kont152340152341_
                   (lambda (_L150366_ _L150367_)
                     (let ((__tmp153305
                            (let ()
                              (declare (not safe))
                              (cons _L150367_ _pargs150287_))))
                       (declare (not safe))
                       (_lp150284_ _L150366_ __tmp153305 _kwargs150288_))))
                  (___kont152342152343_
                   (lambda ()
                     (values (reverse _pargs150287_)
                             (reverse _kwargs150288_)))))
              (let* ((_g150293150353_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx152332152333_))
                            (___kont152342152343_)
                            (let () (declare (not safe)) (_g150294150346_)))))
                     (___match152439152440_
                      (lambda (_e150327150386_
                               _hd150326150389_
                               _tl150325150391_
                               _e150330150394_
                               _hd150329150397_
                               _tl150328150399_
                               _e150333150402_
                               _hd150332150405_
                               _tl150331150407_
                               _e150336150410_
                               _hd150335150413_
                               _tl150334150415_)
                        (let ((_L150418_ _tl150334150415_)
                              (_L150419_ _hd150335150413_)
                              (_L150420_ _hd150332150405_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L150420_))
                              (___kont152338152339_
                               _L150418_
                               _L150419_
                               _L150420_)
                              (___kont152340152341_
                               _tl150325150391_
                               _hd150326150389_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx152332152333_))
                    (let ((_e150300150490_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx152332152333_))))
                      (let ((_tl150298150495_
                             (let ()
                               (declare (not safe))
                               (##cdr _e150300150490_)))
                            (_hd150299150493_
                             (let ()
                               (declare (not safe))
                               (##car _e150300150490_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd150299150493_))
                            (let ((_e150303150498_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd150299150493_))))
                              (let ((_tl150301150503_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e150303150498_)))
                                    (_hd150302150501_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e150303150498_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd150302150501_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd150302150501_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl150301150503_))
                                            (let ((_e150306150506_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl150301150503_))))
                                              (let ((_tl150304150511_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e150306150506_)))
                                                    (_hd150305150509_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e150306150506_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd150305150509_))
                                                    (let ((_e150307150514_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd150305150509_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e150307150514_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl150304150511_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl150298150495_))
                          (let ((_e150310150517_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl150298150495_))))
                            (let ((_tl150308150522_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e150310150517_)))
                                  (_hd150309150520_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e150310150517_))))
                              (___kont152334152335_
                               _tl150308150522_
                               _hd150309150520_)))
                          (___kont152340152341_
                           _tl150298150495_
                           _hd150299150493_))
                      (___kont152340152341_ _tl150298150495_ _hd150299150493_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e150307150514_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl150304150511_))
                          (___kont152336152337_ _tl150298150495_)
                          (___kont152340152341_
                           _tl150298150495_
                           _hd150299150493_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl150304150511_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl150298150495_))
                              (let ((_e150336150410_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl150298150495_))))
                                (let ((_tl150334150415_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e150336150410_)))
                                      (_hd150335150413_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e150336150410_))))
                                  (___match152439152440_
                                   _e150300150490_
                                   _hd150299150493_
                                   _tl150298150495_
                                   _e150303150498_
                                   _hd150302150501_
                                   _tl150301150503_
                                   _e150306150506_
                                   _hd150305150509_
                                   _tl150304150511_
                                   _e150336150410_
                                   _hd150335150413_
                                   _tl150334150415_)))
                              (___kont152340152341_
                               _tl150298150495_
                               _hd150299150493_))
                          (___kont152340152341_
                           _tl150298150495_
                           _hd150299150493_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl150304150511_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl150298150495_))
                                                            (let ((_e150336150410_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl150298150495_))))
                      (let ((_tl150334150415_
                             (let ()
                               (declare (not safe))
                               (##cdr _e150336150410_)))
                            (_hd150335150413_
                             (let ()
                               (declare (not safe))
                               (##car _e150336150410_))))
                        (___match152439152440_
                         _e150300150490_
                         _hd150299150493_
                         _tl150298150495_
                         _e150303150498_
                         _hd150302150501_
                         _tl150301150503_
                         _e150306150506_
                         _hd150305150509_
                         _tl150304150511_
                         _e150336150410_
                         _hd150335150413_
                         _tl150334150415_)))
                    (___kont152340152341_ _tl150298150495_ _hd150299150493_))
                (___kont152340152341_ _tl150298150495_ _hd150299150493_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont152340152341_
                                             _tl150298150495_
                                             _hd150299150493_))
                                        (___kont152340152341_
                                         _tl150298150495_
                                         _hd150299150493_))
                                    (___kont152340152341_
                                     _tl150298150495_
                                     _hd150299150493_))))
                            (___kont152340152341_
                             _tl150298150495_
                             _hd150299150493_))))
                    (let () (declare (not safe)) (_g150293150353_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self150277_ _stx150278_ _args150279_)
        (let () (declare (not safe)) (gxc#xform-call% _stx150278_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
