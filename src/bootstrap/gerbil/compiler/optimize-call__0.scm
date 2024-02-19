(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1708352928)
  (begin
    (define gxc#&optimize-call
      (make-promise
       (lambda ()
         (let ((_tbl152104_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp152395 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-merge! _tbl152104_ __tmp152395))
           (let ()
             (declare (not safe))
             (hash-put! _tbl152104_ '%#call gxc#optimize-call%))
           _tbl152104_))))
    (define gxc#apply-optimize-call
      (lambda (_stx152087_ . _args152089_)
        (let ((__tmp152397
               (lambda ()
                 (declare (not safe))
                 (if (null? _args152089_)
                     (gxc#compile-e__0 _stx152087_)
                     (let ((_arg1152094_ (car _args152089_))
                           (_rest152096_ (cdr _args152089_)))
                       (if (null? _rest152096_)
                           (gxc#compile-e__1 _stx152087_ _arg1152094_)
                           (let ((_arg2152099_ (car _rest152096_))
                                 (_rest152101_ (cdr _rest152096_)))
                             (if (null? _rest152101_)
                                 (gxc#compile-e__2
                                  _stx152087_
                                  _arg1152094_
                                  _arg2152099_)
                                 (apply gxc#compile-e
                                        _stx152087_
                                        _arg1152094_
                                        _arg2152099_
                                        _rest152101_))))))))
              (__tmp152396 (force gxc#&optimize-call)))
          (declare (not safe))
          (call-with-parameters
           __tmp152397
           gxc#current-compile-methods
           __tmp152396))))
    (define gxc#optimize-call%
      (lambda (_stx151942_)
        (let* ((___stx152145152146_ _stx151942_)
               (_g151945151965_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx152145152146_)))))
          (let ((___kont152147152148_
                 (lambda (_L152009_ _L152010_)
                   (let* ((_rator-id152028_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L152010_)))
                          (_rator-type152030_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id152028_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type152030_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp152398
                                  (##structure-ref
                                   _rator-type152030_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id152028_
                              '" => "
                              _rator-type152030_
                              '" "
                              __tmp152398))
                           (let ((_optimized152033_
                                  (let ((__method152393
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type152030_
                                            'optimize-call))))
                                    (if __method152393
                                        (__method152393
                                         _rator-type152030_
                                         _stx151942_
                                         _L152009_)
                                        (let ()
                                          (declare (not safe))
                                          (error '"Missing method"
                                                 _rator-type152030_
                                                 'optimize-call))))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type152030_))
                                 _optimized152033_
                                 (let* ((___stx152127152128_ _optimized152033_)
                                        (_g152036152046_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx152127152128_)))))
                                   (let ((___kont152129152130_
                                          (lambda (_L152066_)
                                            (let ((__tmp152399
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L152066_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp152399
                                               _stx151942_))))
                                         (___kont152131152132_
                                          (lambda () _optimized152033_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx152127152128_))
                                         (let ((_e152041152058_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx152127152128_))))
                                           (let ((_tl152039152063_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e152041152058_)))
                                                 (_hd152040152061_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e152041152058_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd152040152061_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd152040152061_))
                                                     (___kont152129152130_
                                                      _tl152039152063_)
                                                     (___kont152131152132_))
                                                 (___kont152131152132_))))
                                         (___kont152131152132_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type152030_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx151942_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx151942_
                                _rator-type152030_)))))))
                (___kont152149152150_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _stx151942_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx152145152146_))
                (let ((_e151951151977_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx152145152146_))))
                  (let ((_tl151949151982_
                         (let () (declare (not safe)) (##cdr _e151951151977_)))
                        (_hd151950151980_
                         (let ()
                           (declare (not safe))
                           (##car _e151951151977_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl151949151982_))
                        (let ((_e151954151985_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl151949151982_))))
                          (let ((_tl151952151990_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e151954151985_)))
                                (_hd151953151988_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e151954151985_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd151953151988_))
                                (let ((_e151957151993_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd151953151988_))))
                                  (let ((_tl151955151998_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e151957151993_)))
                                        (_hd151956151996_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e151957151993_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd151956151996_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd151956151996_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl151955151998_))
                                                (let ((_e151960152001_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl151955151998_))))
                                                  (let ((_tl151958152006_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e151960152001_)))
                                                        (_hd151959152004_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e151960152001_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl151958152006_))
                                                        (___kont152147152148_
                                                         _tl151952151990_
                                                         _hd151959152004_)
                                                        (___kont152149152150_))))
                                                (___kont152149152150_))
                                            (___kont152149152150_))
                                        (___kont152149152150_))))
                                (___kont152149152150_))))
                        (___kont152149152150_))))
                (___kont152149152150_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self151896_ _stx151897_ _args151898_)
        (let* ((_g151900151910_
                (lambda (_g151901151907_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g151901151907_))))
               (_g151899151939_
                (lambda (_g151901151913_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g151901151913_))
                      (let ((_e151905151915_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g151901151913_))))
                        (let ((_hd151904151918_
                               (let ()
                                 (declare (not safe))
                                 (##car _e151905151915_)))
                              (_tl151903151920_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e151905151915_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl151903151920_))
                              ((lambda (_L151923_)
                                 (let* ((_klass151934_
                                         (let ((__tmp152400
                                                (##structure-ref
                                                 _self151896_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx151897_
                                            __tmp152400)))
                                        (_object151936_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L151923_))))
                                   (if (##structure-ref
                                        _klass151934_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp152416
                                              (let ((__tmp152417
                                                     (let ((__tmp152419
                                                            (let ((__tmp152420
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152421
                                  (##structure-ref
                                   _klass151934_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp152421 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp152420)))
                   (__tmp152418
                    (let () (declare (not safe)) (cons _object151936_ '()))))
               (declare (not safe))
               (cons __tmp152419 __tmp152418))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp152417))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp152416
                                          _stx151897_))
                                       (if (##structure-ref
                                            _klass151934_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp152410
                                                  (let ((__tmp152411
                                                         (let ((__tmp152413
                                                                (let ((__tmp152414
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp152415
                                      (##structure-ref
                                       _klass151934_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp152415 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp152414)))
                       (__tmp152412
                        (let ()
                          (declare (not safe))
                          (cons _object151936_ '()))))
                   (declare (not safe))
                   (cons __tmp152413 __tmp152412))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp152411))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152410
                                              _stx151897_))
                                           (let ((__tmp152401
                                                  (let ((__tmp152402
                                                         (let ((__tmp152408
                                                                (let ((__tmp152409
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp152409)))
                       (__tmp152403
                        (let ((__tmp152405
                               (let ((__tmp152406
                                      (let ((__tmp152407
                                             (##structure-ref
                                              _self151896_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp152407 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp152406)))
                              (__tmp152404
                               (let ()
                                 (declare (not safe))
                                 (cons _object151936_ '()))))
                          (declare (not safe))
                          (cons __tmp152405 __tmp152404))))
                   (declare (not safe))
                   (cons __tmp152408 __tmp152403))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp152402))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152401
                                              _stx151897_))))))
                               _hd151904151918_)
                              (let ()
                                (declare (not safe))
                                (_g151900151910_ _g151901151913_)))))
                      (let ()
                        (declare (not safe))
                        (_g151900151910_ _g151901151913_))))))
          (declare (not safe))
          (_g151899151939_ _args151898_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__t152106)
        (let ((__id152107
               (let ((__tmp152108
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t152106 'id))))
                 (if __tmp152108
                     __tmp152108
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self151896_ _stx151897_ _args151898_)
            (let* ((_g151900151910_
                    (lambda (_g151901151907_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g151901151907_))))
                   (_g151899151939_
                    (lambda (_g151901151913_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g151901151913_))
                          (let ((_e151905151915_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g151901151913_))))
                            (let ((_hd151904151918_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e151905151915_)))
                                  (_tl151903151920_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e151905151915_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl151903151920_))
                                  ((lambda (_L151923_)
                                     (let* ((_klass151934_
                                             (let ((__tmp152422
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self151896_
                                                       __id152107
                                                       __t152106
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx151897_
                                                __tmp152422)))
                                            (_object151936_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L151923_))))
                                       (if (##structure-ref
                                            _klass151934_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp152438
                                                  (let ((__tmp152439
                                                         (let ((__tmp152441
                                                                (let ((__tmp152442
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp152443
                                      (##structure-ref
                                       _klass151934_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp152443 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp152442)))
                       (__tmp152440
                        (let ()
                          (declare (not safe))
                          (cons _object151936_ '()))))
                   (declare (not safe))
                   (cons __tmp152441 __tmp152440))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp152439))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152438
                                              _stx151897_))
                                           (if (##structure-ref
                                                _klass151934_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp152432
                                                      (let ((__tmp152433
                                                             (let ((__tmp152435
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp152436
                                   (let ((__tmp152437
                                          (##structure-ref
                                           _klass151934_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp152437 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp152436)))
                           (__tmp152434
                            (let ()
                              (declare (not safe))
                              (cons _object151936_ '()))))
                       (declare (not safe))
                       (cons __tmp152435 __tmp152434))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp152433))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp152432
                                                  _stx151897_))
                                               (let ((__tmp152423
                                                      (let ((__tmp152424
                                                             (let ((__tmp152430
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp152431
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp152431)))
                           (__tmp152425
                            (let ((__tmp152427
                                   (let ((__tmp152428
                                          (let ((__tmp152429
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self151896_
                                                    __id152107
                                                    __t152106
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp152429 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp152428)))
                                  (__tmp152426
                                   (let ()
                                     (declare (not safe))
                                     (cons _object151936_ '()))))
                              (declare (not safe))
                              (cons __tmp152427 __tmp152426))))
                       (declare (not safe))
                       (cons __tmp152430 __tmp152425))))
                (declare (not safe))
                (cons '%#call __tmp152424))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp152423
                                                  _stx151897_))))))
                                   _hd151904151918_)
                                  (let ()
                                    (declare (not safe))
                                    (_g151900151910_ _g151901151913_)))))
                          (let ()
                            (declare (not safe))
                            (_g151900151910_ _g151901151913_))))))
              (declare (not safe))
              (_g151899151939_ _args151898_))))))
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
      (lambda (_self151616_ _stx151617_ _args151618_)
        (let* ((_klass151620_
                (let ((__tmp152444
                       (##structure-ref _self151616_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx151617_ __tmp152444)))
               (_fields151622_
                (length (##structure-ref _klass151620_ '5 gxc#!class::t '#f)))
               (_args151624_ (map gxc#compile-e _args151618_))
               (_inline-make-object151626_
                (let ((__tmp152445
                       (let ((__tmp152451
                              (let ((__tmp152452
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp152452)))
                             (__tmp152446
                              (let ((__tmp152448
                                     (let ((__tmp152449
                                            (let ((__tmp152450
                                                   (##structure-ref
                                                    _self151616_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp152450 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152449)))
                                    (__tmp152447
                                     (let ()
                                       (declare (not safe))
                                       (make-list__%
                                        _fields151622_
                                        '(%#quote #f)))))
                                (declare (not safe))
                                (cons __tmp152448 __tmp152447))))
                         (declare (not safe))
                         (cons __tmp152451 __tmp152446))))
                  (declare (not safe))
                  (cons '%#call __tmp152445))))
          (let ((_$e151629_
                 (##structure-ref _klass151620_ '6 gxc#!class::t '#f)))
            (if _$e151629_
                ((lambda (_ctor151632_)
                   (let ((_$obj151634_
                          (let ((__tmp152552 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp152552)))
                         (_ctor-impl151635_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass151620_
                             _ctor151632_))))
                     (let ((__tmp152553
                            (let ((__tmp152554
                                   (let ((__tmp152622
                                          (let ((__tmp152623
                                                 (let ((__tmp152625
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj151634_
                                                                '())))
                                                       (__tmp152624
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object151626_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp152625
                                                         __tmp152624))))
                                            (declare (not safe))
                                            (cons __tmp152623 '())))
                                         (__tmp152555
                                          (let ((__tmp152556
                                                 (let ((__tmp152557
                                                        (let ((__tmp152561
                                                               (if _ctor-impl151635_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152616
                                  (let ((__tmp152620
                                         (let ((__tmp152621
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl151635_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp152621)))
                                        (__tmp152617
                                         (let ((__tmp152618
                                                (let ((__tmp152619
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj151634_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp152619))))
                                           (declare (not safe))
                                           (cons __tmp152618 _args151624_))))
                                    (declare (not safe))
                                    (cons __tmp152620 __tmp152617))))
                             (declare (not safe))
                             (cons '%#call __tmp152616))
                           (let* ((_$ctor151637_
                                   (let ((__tmp152562 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp152562)))
                                  (__tmp152563
                                   (let ((__tmp152598
                                          (let ((__tmp152599
                                                 (let ((__tmp152615
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor151637_
                                                                '())))
                                                       (__tmp152600
                                                        (let ((__tmp152601
                                                               (let ((__tmp152602
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp152613
                                     (let ((__tmp152614
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152614)))
                                    (__tmp152603
                                     (let ((__tmp152610
                                            (let ((__tmp152611
                                                   (let ((__tmp152612
                                                          (##structure-ref
                                                           _self151616_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp152612 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp152611)))
                                           (__tmp152604
                                            (let ((__tmp152608
                                                   (let ((__tmp152609
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj151634_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152609)))
                                                  (__tmp152605
                                                   (let ((__tmp152606
                                                          (let ((__tmp152607
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _ctor151632_ '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp152607))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152606 '()))))
                                              (declare (not safe))
                                              (cons __tmp152608 __tmp152605))))
                                       (declare (not safe))
                                       (cons __tmp152610 __tmp152604))))
                                (declare (not safe))
                                (cons __tmp152613 __tmp152603))))
                         (declare (not safe))
                         (cons '%#call __tmp152602))))
                  (declare (not safe))
                  (cons __tmp152601 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp152615
                                                         __tmp152600))))
                                            (declare (not safe))
                                            (cons __tmp152599 '())))
                                         (__tmp152564
                                          (let ((__tmp152565
                                                 (let ((__tmp152566
                                                        (let ((__tmp152596
                                                               (let ((__tmp152597
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor151637_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp152597)))
                      (__tmp152567
                       (let ((__tmp152589
                              (let ((__tmp152590
                                     (let ((__tmp152594
                                            (let ((__tmp152595
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor151637_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp152595)))
                                           (__tmp152591
                                            (let ((__tmp152592
                                                   (let ((__tmp152593
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj151634_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152593))))
                                              (declare (not safe))
                                              (cons __tmp152592
                                                    _args151624_))))
                                       (declare (not safe))
                                       (cons __tmp152594 __tmp152591))))
                                (declare (not safe))
                                (cons '%#call __tmp152590)))
                             (__tmp152568
                              (let ((__tmp152569
                                     (let ((__tmp152570
                                            (let ((__tmp152587
                                                   (let ((__tmp152588
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152588)))
                                                  (__tmp152571
                                                   (let ((__tmp152585
                                                          (let ((__tmp152586
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp152586)))
                 (__tmp152572
                  (let ((__tmp152583
                         (let ((__tmp152584
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp152584)))
                        (__tmp152573
                         (let ((__tmp152580
                                (let ((__tmp152581
                                       (let ((__tmp152582
                                              (##structure-ref
                                               _self151616_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp152582 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp152581)))
                               (__tmp152574
                                (let ((__tmp152578
                                       (let ((__tmp152579
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp152579)))
                                      (__tmp152575
                                       (let ((__tmp152576
                                              (let ((__tmp152577
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor151632_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp152577))))
                                         (declare (not safe))
                                         (cons __tmp152576 '()))))
                                  (declare (not safe))
                                  (cons __tmp152578 __tmp152575))))
                           (declare (not safe))
                           (cons __tmp152580 __tmp152574))))
                    (declare (not safe))
                    (cons __tmp152583 __tmp152573))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152585
                                                           __tmp152572))))
                                              (declare (not safe))
                                              (cons __tmp152587 __tmp152571))))
                                       (declare (not safe))
                                       (cons '%#call __tmp152570))))
                                (declare (not safe))
                                (cons __tmp152569 '()))))
                         (declare (not safe))
                         (cons __tmp152589 __tmp152568))))
                  (declare (not safe))
                  (cons __tmp152596 __tmp152567))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp152566))))
                                            (declare (not safe))
                                            (cons __tmp152565 '()))))
                                     (declare (not safe))
                                     (cons __tmp152598 __tmp152564))))
                             (declare (not safe))
                             (cons '%#let-values __tmp152563))))
                      (__tmp152558
                       (let ((__tmp152559
                              (let ((__tmp152560
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj151634_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp152560))))
                         (declare (not safe))
                         (cons __tmp152559 '()))))
                  (declare (not safe))
                  (cons __tmp152561 __tmp152558))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp152557))))
                                            (declare (not safe))
                                            (cons __tmp152556 '()))))
                                     (declare (not safe))
                                     (cons __tmp152622 __tmp152555))))
                              (declare (not safe))
                              (cons '%#let-values __tmp152554))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp152553 _stx151617_))))
                 _$e151629_)
                (let ((_$e151639_
                       (##structure-ref _klass151620_ '9 gxc#!class::t '#f)))
                  (if _$e151639_
                      ((lambda (_metaclass151642_)
                         (let* ((_$obj151644_
                                 (let ((__tmp152514 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp152514)))
                                (_metakons151646_
                                 (let ((__tmp152515
                                        (let ()
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           _stx151617_
                                           _metaclass151642_))))
                                   (declare (not safe))
                                   (gxc#!class-lookup-method
                                    __tmp152515
                                    'instance-init!))))
                           (let ((__tmp152516
                                  (let ((__tmp152517
                                         (let ((__tmp152548
                                                (let ((__tmp152549
                                                       (let ((__tmp152551
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj151644_ '())))
                     (__tmp152550
                      (let ()
                        (declare (not safe))
                        (cons _inline-make-object151626_ '()))))
                 (declare (not safe))
                 (cons __tmp152551 __tmp152550))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152549 '())))
                                               (__tmp152518
                                                (let ((__tmp152519
                                                       (let ((__tmp152520
                                                              (let ((__tmp152524
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if _metakons151646_
                                 (let ((__tmp152538
                                        (let ((__tmp152546
                                               (let ((__tmp152547
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metakons151646_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp152547)))
                                              (__tmp152539
                                               (let ((__tmp152543
                                                      (let ((__tmp152544
                                                             (let ((__tmp152545
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self151616_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp152545 '()))))
                (declare (not safe))
                (cons '%#ref __tmp152544)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp152540
                                                      (let ((__tmp152541
                                                             (let ((__tmp152542
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _$obj151644_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp152542))))
                (declare (not safe))
                (cons __tmp152541 _args151624_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp152543
                                                       __tmp152540))))
                                          (declare (not safe))
                                          (cons __tmp152546 __tmp152539))))
                                   (declare (not safe))
                                   (cons '%#call __tmp152538))
                                 (let ((__tmp152525
                                        (let ((__tmp152536
                                               (let ((__tmp152537
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'call-method
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp152537)))
                                              (__tmp152526
                                               (let ((__tmp152533
                                                      (let ((__tmp152534
                                                             (let ((__tmp152535
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self151616_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp152535 '()))))
                (declare (not safe))
                (cons '%#ref __tmp152534)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp152527
                                                      (let ((__tmp152531
                                                             (let ((__tmp152532
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'instance-init! '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp152532)))
                    (__tmp152528
                     (let ((__tmp152529
                            (let ((__tmp152530
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj151644_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp152530))))
                       (declare (not safe))
                       (cons __tmp152529 _args151624_))))
                (declare (not safe))
                (cons __tmp152531 __tmp152528))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp152533
                                                       __tmp152527))))
                                          (declare (not safe))
                                          (cons __tmp152536 __tmp152526))))
                                   (declare (not safe))
                                   (cons '%#call __tmp152525))))
                            (__tmp152521
                             (let ((__tmp152522
                                    (let ((__tmp152523
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj151644_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp152523))))
                               (declare (not safe))
                               (cons __tmp152522 '()))))
                        (declare (not safe))
                        (cons __tmp152524 __tmp152521))))
                 (declare (not safe))
                 (cons '%#begin __tmp152520))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152519 '()))))
                                           (declare (not safe))
                                           (cons __tmp152548 __tmp152518))))
                                    (declare (not safe))
                                    (cons '%#let-values __tmp152517))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp152516 _stx151617_))))
                       _$e151639_)
                      (if (##structure-ref _klass151620_ '7 gxc#!class::t '#f)
                          (if (fx= (length _args151624_) _fields151622_)
                              (let ((__tmp152506
                                     (let ((__tmp152507
                                            (let ((__tmp152512
                                                   (let ((__tmp152513
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152513)))
                                                  (__tmp152508
                                                   (let ((__tmp152509
                                                          (let ((__tmp152510
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp152511
                                (##structure-ref
                                 _self151616_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp152511 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp152510))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152509
                                                           _args151624_))))
                                              (declare (not safe))
                                              (cons __tmp152512 __tmp152508))))
                                       (declare (not safe))
                                       (cons '%#call __tmp152507))))
                                (declare (not safe))
                                (gxc#xform-wrap-source
                                 __tmp152506
                                 _stx151617_))
                              (let ((__tmp152505
                                     (##structure-ref
                                      _self151616_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                    (__tmp152504
                                     (length (##structure-ref
                                              _klass151620_
                                              '5
                                              gxc#!class::t
                                              '#f))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"illegal struct constructor application; arity mismatch"
                                 _stx151617_
                                 __tmp152505
                                 __tmp152504)))
                          (let ((_$obj151649_
                                 (let ((__tmp152453 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp152453))))
                            (let _lp151651_ ((_rest151653_ _args151624_)
                                             (_initializers151654_ '()))
                              (let* ((___stx152183152184_ _rest151653_)
                                     (_g151658151679_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx152183152184_)))))
                                (let ((___kont152185152186_
                                       (lambda (_L151733_ _L151734_ _L151735_)
                                         (let* ((_slot151766_
                                                 (keyword->symbol
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e _L151735_))))
                                                (_off151768_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass151620_
                                                    _slot151766_))))
                                           (if _off151768_
                                               (let ((__tmp152455
                                                      (let ((__tmp152456
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off151768_ _L151734_))))
                (declare (not safe))
                (cons __tmp152456 _initializers151654_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp151651_
                                                  _L151733_
                                                  __tmp152455))
                                               (let ((__tmp152454
                                                      (##structure-ref
                                                       _self151616_
                                                       '1
                                                       gxc#!type::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"unknown slot"
                                                  _stx151617_
                                                  __tmp152454
                                                  _slot151766_))))))
                                      (___kont152187152188_
                                       (lambda ()
                                         (let ((__tmp152457
                                                (let ((__tmp152458
                                                       (let ((__tmp152481
                                                              (let ((__tmp152482
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp152484
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj151649_ '())))
                                   (__tmp152483
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object151626_ '()))))
                               (declare (not safe))
                               (cons __tmp152484 __tmp152483))))
                        (declare (not safe))
                        (cons __tmp152482 '())))
                     (__tmp152459
                      (let ((__tmp152460
                             (let ((__tmp152461
                                    (let ((__tmp152478
                                           (let ((__tmp152479
                                                  (let ((__tmp152480
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj151649_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp152480))))
                                             (declare (not safe))
                                             (cons __tmp152479 '())))
                                          (__tmp152462
                                           (let ((__tmp152463
                                                  (lambda (_i151693_ _r151694_)
                                                    (let ((__tmp152464
                                                           (let ((__tmp152465
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp152475
                                 (let ((__tmp152476
                                        (let ((__tmp152477
                                               (##structure-ref
                                                _self151616_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp152477 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp152476)))
                                (__tmp152466
                                 (let ((__tmp152472
                                        (let ((__tmp152473
                                               (let ((__tmp152474
                                                      (car _i151693_)))
                                                 (declare (not safe))
                                                 (cons __tmp152474 '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp152473)))
                                       (__tmp152467
                                        (let ((__tmp152470
                                               (let ((__tmp152471
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _$obj151649_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp152471)))
                                              (__tmp152468
                                               (let ((__tmp152469
                                                      (cdr _i151693_)))
                                                 (declare (not safe))
                                                 (cons __tmp152469 '()))))
                                          (declare (not safe))
                                          (cons __tmp152470 __tmp152468))))
                                   (declare (not safe))
                                   (cons __tmp152472 __tmp152467))))
                            (declare (not safe))
                            (cons __tmp152475 __tmp152466))))
                     (declare (not safe))
                     (cons '%#struct-unchecked-set! __tmp152465))))
              (declare (not safe))
              (cons __tmp152464 _r151694_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (foldl1 __tmp152463
                                                     '()
                                                     _initializers151654_))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp152478 __tmp152462))))
                               (declare (not safe))
                               (cons '%#begin __tmp152461))))
                        (declare (not safe))
                        (cons __tmp152460 '()))))
                 (declare (not safe))
                 (cons __tmp152481 __tmp152459))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp152458))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp152457
                                            _stx151617_))))
                                      (___kont152189152190_
                                       (lambda ()
                                         (let ((__tmp152485
                                                (let ((__tmp152486
                                                       (let ((__tmp152500
                                                              (let ((__tmp152501
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp152503
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj151649_ '())))
                                   (__tmp152502
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object151626_ '()))))
                               (declare (not safe))
                               (cons __tmp152503 __tmp152502))))
                        (declare (not safe))
                        (cons __tmp152501 '())))
                     (__tmp152487
                      (let ((__tmp152488
                             (let ((__tmp152489
                                    (let ((__tmp152493
                                           (let ((__tmp152494
                                                  (let ((__tmp152498
                                                         (let ((__tmp152499
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'class-instance-init! '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp152499)))
                (__tmp152495
                 (let ((__tmp152496
                        (let ((__tmp152497
                               (let ()
                                 (declare (not safe))
                                 (cons _$obj151649_ '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp152497))))
                   (declare (not safe))
                   (cons __tmp152496 _args151624_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp152498
                                                          __tmp152495))))
                                             (declare (not safe))
                                             (cons '%#call __tmp152494)))
                                          (__tmp152490
                                           (let ((__tmp152491
                                                  (let ((__tmp152492
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj151649_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp152492))))
                                             (declare (not safe))
                                             (cons __tmp152491 '()))))
                                      (declare (not safe))
                                      (cons __tmp152493 __tmp152490))))
                               (declare (not safe))
                               (cons '%#begin __tmp152489))))
                        (declare (not safe))
                        (cons __tmp152488 '()))))
                 (declare (not safe))
                 (cons __tmp152500 __tmp152487))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp152486))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp152485
                                            _stx151617_)))))
                                  (let* ((_g151656151696_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   ___stx152183152184_))
                                                (___kont152187152188_)
                                                (___kont152189152190_))))
                                         (___match152220152221_
                                          (lambda (_e151665151701_
                                                   _hd151664151704_
                                                   _tl151663151706_
                                                   _e151668151709_
                                                   _hd151667151712_
                                                   _tl151666151714_
                                                   _e151671151717_
                                                   _hd151670151720_
                                                   _tl151669151722_
                                                   _e151674151725_
                                                   _hd151673151728_
                                                   _tl151672151730_)
                                            (let ((_L151733_ _tl151672151730_)
                                                  (_L151734_ _hd151673151728_)
                                                  (_L151735_ _hd151670151720_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-keyword?
                                                     _L151735_))
                                                  (___kont152185152186_
                                                   _L151733_
                                                   _L151734_
                                                   _L151735_)
                                                  (___kont152189152190_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx152183152184_))
                                        (let ((_e151665151701_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx152183152184_))))
                                          (let ((_tl151663151706_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e151665151701_)))
                                                (_hd151664151704_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e151665151701_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd151664151704_))
                                                (let ((_e151668151709_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd151664151704_))))
                                                  (let ((_tl151666151714_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e151668151709_)))
                                                        (_hd151667151712_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e151668151709_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd151667151712_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#quote
                                                               _hd151667151712_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl151666151714_))
                        (let ((_e151671151717_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl151666151714_))))
                          (let ((_tl151669151722_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e151671151717_)))
                                (_hd151670151720_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e151671151717_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl151669151722_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl151663151706_))
                                    (let ((_e151674151725_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl151663151706_))))
                                      (let ((_tl151672151730_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e151674151725_)))
                                            (_hd151673151728_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e151674151725_))))
                                        (___match152220152221_
                                         _e151665151701_
                                         _hd151664151704_
                                         _tl151663151706_
                                         _e151668151709_
                                         _hd151667151712_
                                         _tl151666151714_
                                         _e151671151717_
                                         _hd151670151720_
                                         _tl151669151722_
                                         _e151674151725_
                                         _hd151673151728_
                                         _tl151672151730_)))
                                    (___kont152189152190_))
                                (___kont152189152190_))))
                        (___kont152189152190_))
                    (___kont152189152190_))
                (___kont152189152190_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont152189152190_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g151656151696_))))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__t152109)
        (let ((__id152110
               (let ((__tmp152111
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t152109 'id))))
                 (if __tmp152111
                     __tmp152111
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self151616_ _stx151617_ _args151618_)
            (let* ((_klass151620_
                    (let ((__tmp152626
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self151616_
                              __id152110
                              __t152109
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx151617_ __tmp152626)))
                   (_fields151622_
                    (length (##structure-ref
                             _klass151620_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args151624_ (map gxc#compile-e _args151618_))
                   (_inline-make-object151626_
                    (let ((__tmp152627
                           (let ((__tmp152633
                                  (let ((__tmp152634
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp152634)))
                                 (__tmp152628
                                  (let ((__tmp152630
                                         (let ((__tmp152631
                                                (let ((__tmp152632
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self151616_
                                                          __id152110
                                                          __t152109
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp152632 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp152631)))
                                        (__tmp152629
                                         (let ()
                                           (declare (not safe))
                                           (make-list__%
                                            _fields151622_
                                            '(%#quote #f)))))
                                    (declare (not safe))
                                    (cons __tmp152630 __tmp152629))))
                             (declare (not safe))
                             (cons __tmp152633 __tmp152628))))
                      (declare (not safe))
                      (cons '%#call __tmp152627))))
              (let ((_$e151629_
                     (##structure-ref _klass151620_ '6 gxc#!class::t '#f)))
                (if _$e151629_
                    ((lambda (_ctor151632_)
                       (let ((_$obj151634_
                              (let ((__tmp152734 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp152734)))
                             (_ctor-impl151635_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass151620_
                                 _ctor151632_))))
                         (let ((__tmp152735
                                (let ((__tmp152736
                                       (let ((__tmp152804
                                              (let ((__tmp152805
                                                     (let ((__tmp152807
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj151634_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp152806
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object151626_ '()))))
               (declare (not safe))
               (cons __tmp152807 __tmp152806))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp152805 '())))
                                             (__tmp152737
                                              (let ((__tmp152738
                                                     (let ((__tmp152739
                                                            (let ((__tmp152743
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl151635_
                               (let ((__tmp152798
                                      (let ((__tmp152802
                                             (let ((__tmp152803
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl151635_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp152803)))
                                            (__tmp152799
                                             (let ((__tmp152800
                                                    (let ((__tmp152801
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj151634_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp152801))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp152800
                                                     _args151624_))))
                                        (declare (not safe))
                                        (cons __tmp152802 __tmp152799))))
                                 (declare (not safe))
                                 (cons '%#call __tmp152798))
                               (let* ((_$ctor151637_
                                       (let ((__tmp152744
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp152744)))
                                      (__tmp152745
                                       (let ((__tmp152780
                                              (let ((__tmp152781
                                                     (let ((__tmp152797
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor151637_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp152782
                    (let ((__tmp152783
                           (let ((__tmp152784
                                  (let ((__tmp152795
                                         (let ((__tmp152796
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp152796)))
                                        (__tmp152785
                                         (let ((__tmp152792
                                                (let ((__tmp152793
                                                       (let ((__tmp152794
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self151616_
                         __id152110
                         __t152109
                         '#f))))
                 (declare (not safe))
                 (cons __tmp152794 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp152793)))
                                               (__tmp152786
                                                (let ((__tmp152790
                                                       (let ((__tmp152791
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj151634_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152791)))
              (__tmp152787
               (let ((__tmp152788
                      (let ((__tmp152789
                             (let ()
                               (declare (not safe))
                               (cons _ctor151632_ '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp152789))))
                 (declare (not safe))
                 (cons __tmp152788 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152790
                                                        __tmp152787))))
                                           (declare (not safe))
                                           (cons __tmp152792 __tmp152786))))
                                    (declare (not safe))
                                    (cons __tmp152795 __tmp152785))))
                             (declare (not safe))
                             (cons '%#call __tmp152784))))
                      (declare (not safe))
                      (cons __tmp152783 '()))))
               (declare (not safe))
               (cons __tmp152797 __tmp152782))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp152781 '())))
                                             (__tmp152746
                                              (let ((__tmp152747
                                                     (let ((__tmp152748
                                                            (let ((__tmp152778
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152779
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor151637_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp152779)))
                          (__tmp152749
                           (let ((__tmp152771
                                  (let ((__tmp152772
                                         (let ((__tmp152776
                                                (let ((__tmp152777
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor151637_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp152777)))
                                               (__tmp152773
                                                (let ((__tmp152774
                                                       (let ((__tmp152775
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj151634_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152775))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152774
                                                        _args151624_))))
                                           (declare (not safe))
                                           (cons __tmp152776 __tmp152773))))
                                    (declare (not safe))
                                    (cons '%#call __tmp152772)))
                                 (__tmp152750
                                  (let ((__tmp152751
                                         (let ((__tmp152752
                                                (let ((__tmp152769
                                                       (let ((__tmp152770
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152770)))
              (__tmp152753
               (let ((__tmp152767
                      (let ((__tmp152768
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp152768)))
                     (__tmp152754
                      (let ((__tmp152765
                             (let ((__tmp152766
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp152766)))
                            (__tmp152755
                             (let ((__tmp152762
                                    (let ((__tmp152763
                                           (let ((__tmp152764
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self151616_
                                                     __id152110
                                                     __t152109
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp152764 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp152763)))
                                   (__tmp152756
                                    (let ((__tmp152760
                                           (let ((__tmp152761
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp152761)))
                                          (__tmp152757
                                           (let ((__tmp152758
                                                  (let ((__tmp152759
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor151632_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp152759))))
                                             (declare (not safe))
                                             (cons __tmp152758 '()))))
                                      (declare (not safe))
                                      (cons __tmp152760 __tmp152757))))
                               (declare (not safe))
                               (cons __tmp152762 __tmp152756))))
                        (declare (not safe))
                        (cons __tmp152765 __tmp152755))))
                 (declare (not safe))
                 (cons __tmp152767 __tmp152754))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152769
                                                        __tmp152753))))
                                           (declare (not safe))
                                           (cons '%#call __tmp152752))))
                                    (declare (not safe))
                                    (cons __tmp152751 '()))))
                             (declare (not safe))
                             (cons __tmp152771 __tmp152750))))
                      (declare (not safe))
                      (cons __tmp152778 __tmp152749))))
               (declare (not safe))
               (cons '%#if __tmp152748))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp152747 '()))))
                                         (declare (not safe))
                                         (cons __tmp152780 __tmp152746))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp152745))))
                          (__tmp152740
                           (let ((__tmp152741
                                  (let ((__tmp152742
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj151634_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp152742))))
                             (declare (not safe))
                             (cons __tmp152741 '()))))
                      (declare (not safe))
                      (cons __tmp152743 __tmp152740))))
               (declare (not safe))
               (cons '%#begin __tmp152739))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp152738 '()))))
                                         (declare (not safe))
                                         (cons __tmp152804 __tmp152737))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp152736))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp152735 _stx151617_))))
                     _$e151629_)
                    (let ((_$e151639_
                           (##structure-ref
                            _klass151620_
                            '9
                            gxc#!class::t
                            '#f)))
                      (if _$e151639_
                          ((lambda (_metaclass151642_)
                             (let* ((_$obj151644_
                                     (let ((__tmp152696 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp152696)))
                                    (_metakons151646_
                                     (let ((__tmp152697
                                            (let ()
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               _stx151617_
                                               _metaclass151642_))))
                                       (declare (not safe))
                                       (gxc#!class-lookup-method
                                        __tmp152697
                                        'instance-init!))))
                               (let ((__tmp152698
                                      (let ((__tmp152699
                                             (let ((__tmp152730
                                                    (let ((__tmp152731
                                                           (let ((__tmp152733
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj151644_ '())))
                         (__tmp152732
                          (let ()
                            (declare (not safe))
                            (cons _inline-make-object151626_ '()))))
                     (declare (not safe))
                     (cons __tmp152733 __tmp152732))))
              (declare (not safe))
              (cons __tmp152731 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp152700
                                                    (let ((__tmp152701
                                                           (let ((__tmp152702
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp152706
                                 (if _metakons151646_
                                     (let ((__tmp152720
                                            (let ((__tmp152728
                                                   (let ((__tmp152729
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _metakons151646_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152729)))
                                                  (__tmp152721
                                                   (let ((__tmp152725
                                                          (let ((__tmp152726
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp152727
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self151616_
                                   __id152110
                                   __t152109
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp152727 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp152726)))
                 (__tmp152722
                  (let ((__tmp152723
                         (let ((__tmp152724
                                (let ()
                                  (declare (not safe))
                                  (cons _$obj151644_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp152724))))
                    (declare (not safe))
                    (cons __tmp152723 _args151624_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152725
                                                           __tmp152722))))
                                              (declare (not safe))
                                              (cons __tmp152728 __tmp152721))))
                                       (declare (not safe))
                                       (cons '%#call __tmp152720))
                                     (let ((__tmp152707
                                            (let ((__tmp152718
                                                   (let ((__tmp152719
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'call-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152719)))
                                                  (__tmp152708
                                                   (let ((__tmp152715
                                                          (let ((__tmp152716
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp152717
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self151616_
                                   __id152110
                                   __t152109
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp152717 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp152716)))
                 (__tmp152709
                  (let ((__tmp152713
                         (let ((__tmp152714
                                (let ()
                                  (declare (not safe))
                                  (cons 'instance-init! '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp152714)))
                        (__tmp152710
                         (let ((__tmp152711
                                (let ((__tmp152712
                                       (let ()
                                         (declare (not safe))
                                         (cons _$obj151644_ '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp152712))))
                           (declare (not safe))
                           (cons __tmp152711 _args151624_))))
                    (declare (not safe))
                    (cons __tmp152713 __tmp152710))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152715
                                                           __tmp152709))))
                                              (declare (not safe))
                                              (cons __tmp152718 __tmp152708))))
                                       (declare (not safe))
                                       (cons '%#call __tmp152707))))
                                (__tmp152703
                                 (let ((__tmp152704
                                        (let ((__tmp152705
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$obj151644_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp152705))))
                                   (declare (not safe))
                                   (cons __tmp152704 '()))))
                            (declare (not safe))
                            (cons __tmp152706 __tmp152703))))
                     (declare (not safe))
                     (cons '%#begin __tmp152702))))
              (declare (not safe))
              (cons __tmp152701 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp152730
                                                     __tmp152700))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp152699))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp152698
                                  _stx151617_))))
                           _$e151639_)
                          (if (##structure-ref
                               _klass151620_
                               '7
                               gxc#!class::t
                               '#f)
                              (if (fx= (length _args151624_) _fields151622_)
                                  (let ((__tmp152688
                                         (let ((__tmp152689
                                                (let ((__tmp152694
                                                       (let ((__tmp152695
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '##structure '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152695)))
              (__tmp152690
               (let ((__tmp152691
                      (let ((__tmp152692
                             (let ((__tmp152693
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self151616_
                                       __id152110
                                       __t152109
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp152693 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp152692))))
                 (declare (not safe))
                 (cons __tmp152691 _args151624_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152694
                                                        __tmp152690))))
                                           (declare (not safe))
                                           (cons '%#call __tmp152689))))
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp152688
                                     _stx151617_))
                                  (let ((__tmp152687
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _self151616_
                                            __id152110
                                            __t152109
                                            '#f)))
                                        (__tmp152686
                                         (length (##structure-ref
                                                  _klass151620_
                                                  '5
                                                  gxc#!class::t
                                                  '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _stx151617_
                                     __tmp152687
                                     __tmp152686)))
                              (let ((_$obj151649_
                                     (let ((__tmp152635 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp152635))))
                                (let _lp151651_ ((_rest151653_ _args151624_)
                                                 (_initializers151654_ '()))
                                  (let* ((___stx152225152226_ _rest151653_)
                                         (_g151658151679_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               ___stx152225152226_)))))
                                    (let ((___kont152227152228_
                                           (lambda (_L151733_
                                                    _L151734_
                                                    _L151735_)
                                             (let* ((_slot151766_
                                                     (keyword->symbol
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L151735_))))
                                                    (_off151768_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass151620_
                                                        _slot151766_))))
                                               (if _off151768_
                                                   (let ((__tmp152637
                                                          (let ((__tmp152638
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _off151768_ _L151734_))))
                    (declare (not safe))
                    (cons __tmp152638 _initializers151654_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp151651_
                                                      _L151733_
                                                      __tmp152637))
                                                   (let ((__tmp152636
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _self151616_
                                                             __id152110
                                                             __t152109
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"unknown slot"
                                                      _stx151617_
                                                      __tmp152636
                                                      _slot151766_))))))
                                          (___kont152229152230_
                                           (lambda ()
                                             (let ((__tmp152639
                                                    (let ((__tmp152640
                                                           (let ((__tmp152663
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp152664
                                 (let ((__tmp152666
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj151649_ '())))
                                       (__tmp152665
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object151626_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp152666 __tmp152665))))
                            (declare (not safe))
                            (cons __tmp152664 '())))
                         (__tmp152641
                          (let ((__tmp152642
                                 (let ((__tmp152643
                                        (let ((__tmp152660
                                               (let ((__tmp152661
                                                      (let ((__tmp152662
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj151649_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp152662))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp152661 '())))
                                              (__tmp152644
                                               (let ((__tmp152645
                                                      (lambda (_i151693_
                                                               _r151694_)
                                                        (let ((__tmp152646
                                                               (let ((__tmp152647
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp152657
                                     (let ((__tmp152658
                                            (let ((__tmp152659
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self151616_
                                                      __id152110
                                                      __t152109
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp152659 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152658)))
                                    (__tmp152648
                                     (let ((__tmp152654
                                            (let ((__tmp152655
                                                   (let ((__tmp152656
                                                          (car _i151693_)))
                                                     (declare (not safe))
                                                     (cons __tmp152656 '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp152655)))
                                           (__tmp152649
                                            (let ((__tmp152652
                                                   (let ((__tmp152653
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj151649_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152653)))
                                                  (__tmp152650
                                                   (let ((__tmp152651
                                                          (cdr _i151693_)))
                                                     (declare (not safe))
                                                     (cons __tmp152651 '()))))
                                              (declare (not safe))
                                              (cons __tmp152652 __tmp152650))))
                                       (declare (not safe))
                                       (cons __tmp152654 __tmp152649))))
                                (declare (not safe))
                                (cons __tmp152657 __tmp152648))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp152647))))
                  (declare (not safe))
                  (cons __tmp152646 _r151694_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl1 __tmp152645
                                                         '()
                                                         _initializers151654_))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp152660
                                                  __tmp152644))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp152643))))
                            (declare (not safe))
                            (cons __tmp152642 '()))))
                     (declare (not safe))
                     (cons __tmp152663 __tmp152641))))
              (declare (not safe))
              (cons '%#let-values __tmp152640))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp152639
                                                _stx151617_))))
                                          (___kont152231152232_
                                           (lambda ()
                                             (let ((__tmp152667
                                                    (let ((__tmp152668
                                                           (let ((__tmp152682
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp152683
                                 (let ((__tmp152685
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj151649_ '())))
                                       (__tmp152684
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object151626_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp152685 __tmp152684))))
                            (declare (not safe))
                            (cons __tmp152683 '())))
                         (__tmp152669
                          (let ((__tmp152670
                                 (let ((__tmp152671
                                        (let ((__tmp152675
                                               (let ((__tmp152676
                                                      (let ((__tmp152680
                                                             (let ((__tmp152681
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'class-instance-init! '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp152681)))
                    (__tmp152677
                     (let ((__tmp152678
                            (let ((__tmp152679
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj151649_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp152679))))
                       (declare (not safe))
                       (cons __tmp152678 _args151624_))))
                (declare (not safe))
                (cons __tmp152680 __tmp152677))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp152676)))
                                              (__tmp152672
                                               (let ((__tmp152673
                                                      (let ((__tmp152674
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj151649_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp152674))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp152673 '()))))
                                          (declare (not safe))
                                          (cons __tmp152675 __tmp152672))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp152671))))
                            (declare (not safe))
                            (cons __tmp152670 '()))))
                     (declare (not safe))
                     (cons __tmp152682 __tmp152669))))
              (declare (not safe))
              (cons '%#let-values __tmp152668))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp152667
                                                _stx151617_)))))
                                      (let* ((_g151656151696_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       ___stx152225152226_))
                                                    (___kont152229152230_)
                                                    (___kont152231152232_))))
                                             (___match152262152263_
                                              (lambda (_e151665151701_
                                                       _hd151664151704_
                                                       _tl151663151706_
                                                       _e151668151709_
                                                       _hd151667151712_
                                                       _tl151666151714_
                                                       _e151671151717_
                                                       _hd151670151720_
                                                       _tl151669151722_
                                                       _e151674151725_
                                                       _hd151673151728_
                                                       _tl151672151730_)
                                                (let ((_L151733_
                                                       _tl151672151730_)
                                                      (_L151734_
                                                       _hd151673151728_)
                                                      (_L151735_
                                                       _hd151670151720_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-keyword?
                                                         _L151735_))
                                                      (___kont152227152228_
                                                       _L151733_
                                                       _L151734_
                                                       _L151735_)
                                                      (___kont152231152232_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               ___stx152225152226_))
                                            (let ((_e151665151701_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      ___stx152225152226_))))
                                              (let ((_tl151663151706_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e151665151701_)))
                                                    (_hd151664151704_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e151665151701_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd151664151704_))
                                                    (let ((_e151668151709_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd151664151704_))))
                                                      (let ((_tl151666151714_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e151668151709_)))
                    (_hd151667151712_
                     (let () (declare (not safe)) (##car _e151668151709_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd151667151712_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd151667151712_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl151666151714_))
                            (let ((_e151671151717_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl151666151714_))))
                              (let ((_tl151669151722_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e151671151717_)))
                                    (_hd151670151720_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e151671151717_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl151669151722_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl151663151706_))
                                        (let ((_e151674151725_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl151663151706_))))
                                          (let ((_tl151672151730_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e151674151725_)))
                                                (_hd151673151728_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e151674151725_))))
                                            (___match152262152263_
                                             _e151665151701_
                                             _hd151664151704_
                                             _tl151663151706_
                                             _e151668151709_
                                             _hd151667151712_
                                             _tl151666151714_
                                             _e151671151717_
                                             _hd151670151720_
                                             _tl151669151722_
                                             _e151674151725_
                                             _hd151673151728_
                                             _tl151672151730_)))
                                        (___kont152231152232_))
                                    (___kont152231152232_))))
                            (___kont152231152232_))
                        (___kont152231152232_))
                    (___kont152231152232_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont152231152232_))))
                                            (let ()
                                              (declare (not safe))
                                              (_g151656151696_))))))))))))))))))
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
      (lambda (_self151439_ _stx151440_ _args151441_)
        (let* ((_g151443151453_
                (lambda (_g151444151450_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g151444151450_))))
               (_g151442151491_
                (lambda (_g151444151456_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g151444151456_))
                      (let ((_e151448151458_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g151444151456_))))
                        (let ((_hd151447151461_
                               (let ()
                                 (declare (not safe))
                                 (##car _e151448151458_)))
                              (_tl151446151463_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e151448151458_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl151446151463_))
                              ((lambda (_L151466_)
                                 (let* ((_klass151477_
                                         (let ((__tmp152808
                                                (##structure-ref
                                                 _self151439_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx151440_
                                            __tmp152808)))
                                        (_field151479_
                                         (let ((__tmp152809
                                                (##structure-ref
                                                 _self151439_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass151477_
                                            __tmp152809)))
                                        (_object151481_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L151466_))))
                                   (if (##structure-ref
                                        _klass151477_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp152886
                                              (let ((__tmp152895
                                                     (if (##structure-ref
                                                          _self151439_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp152887
                                                     (let ((__tmp152892
                                                            (let ((__tmp152893
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152894
                                  (##structure-ref
                                   _self151439_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp152894 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp152893)))
                   (__tmp152888
                    (let ((__tmp152890
                           (let ((__tmp152891
                                  (let ()
                                    (declare (not safe))
                                    (cons _field151479_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp152891)))
                          (__tmp152889
                           (let ()
                             (declare (not safe))
                             (cons _object151481_ '()))))
                      (declare (not safe))
                      (cons __tmp152890 __tmp152889))))
               (declare (not safe))
               (cons __tmp152892 __tmp152888))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp152895
                                                      __tmp152887))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp152886
                                          _stx151440_))
                                       (if (##structure-ref
                                            _klass151477_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp152876
                                                  (let ((__tmp152885
                                                         (if (##structure-ref
                                                              _self151439_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp152877
                                                         (let ((__tmp152882
                                                                (let ((__tmp152883
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp152884
                                      (##structure-ref
                                       _self151439_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp152884 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp152883)))
                       (__tmp152878
                        (let ((__tmp152880
                               (let ((__tmp152881
                                      (let ()
                                        (declare (not safe))
                                        (cons _field151479_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp152881)))
                              (__tmp152879
                               (let ()
                                 (declare (not safe))
                                 (cons _object151481_ '()))))
                          (declare (not safe))
                          (cons __tmp152880 __tmp152879))))
                   (declare (not safe))
                   (cons __tmp152882 __tmp152878))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp152885
                                                          __tmp152877))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152876
                                              _stx151440_))
                                           (let ((_$e151484_
                                                  (let ((__tmp152810
                                                         (##structure-ref
                                                          _self151439_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass151477_
                                                     __tmp152810))))
                                             (if _$e151484_
                                                 ((lambda (_klass151487_)
                                                    (let ((__tmp152866
                                                           (let ((__tmp152875
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self151439_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp152867
                          (let ((__tmp152872
                                 (let ((__tmp152873
                                        (let ((__tmp152874
                                               (##structure-ref
                                                _self151439_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp152874 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp152873)))
                                (__tmp152868
                                 (let ((__tmp152870
                                        (let ((__tmp152871
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field151479_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp152871)))
                                       (__tmp152869
                                        (let ()
                                          (declare (not safe))
                                          (cons _object151481_ '()))))
                                   (declare (not safe))
                                   (cons __tmp152870 __tmp152869))))
                            (declare (not safe))
                            (cons __tmp152872 __tmp152868))))
                     (declare (not safe))
                     (cons __tmp152875 __tmp152867))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp152866 _stx151440_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e151484_)
                                                 (if (##structure-ref
                                                      _self151439_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp152820
                                                            (let* ((_$obj151489_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp152821 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp152821)))
                           (__tmp152822
                            (let ((__tmp152862
                                   (let ((__tmp152863
                                          (let ((__tmp152865
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj151489_ '())))
                                                (__tmp152864
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object151481_ '()))))
                                            (declare (not safe))
                                            (cons __tmp152865 __tmp152864))))
                                     (declare (not safe))
                                     (cons __tmp152863 '())))
                                  (__tmp152823
                                   (let ((__tmp152824
                                          (let ((__tmp152825
                                                 (let ((__tmp152854
                                                        (let ((__tmp152855
                                                               (let ((__tmp152859
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp152860
                                     (let ((__tmp152861
                                            (##structure-ref
                                             _klass151477_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp152861 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp152860)))
                             (__tmp152856
                              (let ((__tmp152857
                                     (let ((__tmp152858
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj151489_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152858))))
                                (declare (not safe))
                                (cons __tmp152857 '()))))
                         (declare (not safe))
                         (cons __tmp152859 __tmp152856))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp152855)))
               (__tmp152826
                (let ((__tmp152843
                       (let ((__tmp152844
                              (let ((__tmp152851
                                     (let ((__tmp152852
                                            (let ((__tmp152853
                                                   (##structure-ref
                                                    _self151439_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp152853 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152852)))
                                    (__tmp152845
                                     (let ((__tmp152849
                                            (let ((__tmp152850
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field151479_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp152850)))
                                           (__tmp152846
                                            (let ((__tmp152847
                                                   (let ((__tmp152848
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj151489_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152848))))
                                              (declare (not safe))
                                              (cons __tmp152847 '()))))
                                       (declare (not safe))
                                       (cons __tmp152849 __tmp152846))))
                                (declare (not safe))
                                (cons __tmp152851 __tmp152845))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp152844)))
                      (__tmp152827
                       (let ((__tmp152828
                              (let ((__tmp152829
                                     (let ((__tmp152841
                                            (let ((__tmp152842
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp152842)))
                                           (__tmp152830
                                            (let ((__tmp152838
                                                   (let ((__tmp152839
                                                          (let ((__tmp152840
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self151439_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp152840 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152839)))
                                                  (__tmp152831
                                                   (let ((__tmp152836
                                                          (let ((__tmp152837
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj151489_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp152837)))
                 (__tmp152832
                  (let ((__tmp152833
                         (let ((__tmp152834
                                (let ((__tmp152835
                                       (##structure-ref
                                        _self151439_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp152835 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp152834))))
                    (declare (not safe))
                    (cons __tmp152833 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152836
                                                           __tmp152832))))
                                              (declare (not safe))
                                              (cons __tmp152838 __tmp152831))))
                                       (declare (not safe))
                                       (cons __tmp152841 __tmp152830))))
                                (declare (not safe))
                                (cons '%#call __tmp152829))))
                         (declare (not safe))
                         (cons __tmp152828 '()))))
                  (declare (not safe))
                  (cons __tmp152843 __tmp152827))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp152854
                                                         __tmp152826))))
                                            (declare (not safe))
                                            (cons '%#if __tmp152825))))
                                     (declare (not safe))
                                     (cons __tmp152824 '()))))
                              (declare (not safe))
                              (cons __tmp152862 __tmp152823))))
                      (declare (not safe))
                      (cons '%#let-values __tmp152822))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp152820 _stx151440_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp152811
                                                            (let ((__tmp152812
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152818
                                  (let ((__tmp152819
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp152819)))
                                 (__tmp152813
                                  (let ((__tmp152814
                                         (let ((__tmp152815
                                                (let ((__tmp152816
                                                       (let ((__tmp152817
                                                              (##structure-ref
                                                               _self151439_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp152817
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp152816))))
                                           (declare (not safe))
                                           (cons __tmp152815 '()))))
                                    (declare (not safe))
                                    (cons _object151481_ __tmp152814))))
                             (declare (not safe))
                             (cons __tmp152818 __tmp152813))))
                      (declare (not safe))
                      (cons '%#call __tmp152812))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp152811 _stx151440_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd151447151461_)
                              (let ()
                                (declare (not safe))
                                (_g151443151453_ _g151444151456_)))))
                      (let ()
                        (declare (not safe))
                        (_g151443151453_ _g151444151456_))))))
          (declare (not safe))
          (_g151442151491_ _args151441_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__t152112)
        (let ((__checked?152113
               (let ((__tmp152116
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t152112 'checked?))))
                 (if __tmp152116
                     __tmp152116
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot152114
               (let ((__tmp152117
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t152112 'slot))))
                 (if __tmp152117
                     __tmp152117
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id152115
               (let ((__tmp152118
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t152112 'id))))
                 (if __tmp152118
                     __tmp152118
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self151439_ _stx151440_ _args151441_)
            (let* ((_g151443151453_
                    (lambda (_g151444151450_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g151444151450_))))
                   (_g151442151491_
                    (lambda (_g151444151456_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g151444151456_))
                          (let ((_e151448151458_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g151444151456_))))
                            (let ((_hd151447151461_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e151448151458_)))
                                  (_tl151446151463_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e151448151458_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl151446151463_))
                                  ((lambda (_L151466_)
                                     (let* ((_klass151477_
                                             (let ((__tmp152896
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self151439_
                                                       __id152115
                                                       __t152112
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx151440_
                                                __tmp152896)))
                                            (_field151479_
                                             (let ((__tmp152897
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self151439_
                                                       __slot152114
                                                       __t152112
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass151477_
                                                __tmp152897)))
                                            (_object151481_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L151466_))))
                                       (if (##structure-ref
                                            _klass151477_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp152974
                                                  (let ((__tmp152983
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self151439_
                        __checked?152113
                        __t152112
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp152975
                 (let ((__tmp152980
                        (let ((__tmp152981
                               (let ((__tmp152982
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self151439_
                                         __id152115
                                         __t152112
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp152982 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp152981)))
                       (__tmp152976
                        (let ((__tmp152978
                               (let ((__tmp152979
                                      (let ()
                                        (declare (not safe))
                                        (cons _field151479_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp152979)))
                              (__tmp152977
                               (let ()
                                 (declare (not safe))
                                 (cons _object151481_ '()))))
                          (declare (not safe))
                          (cons __tmp152978 __tmp152977))))
                   (declare (not safe))
                   (cons __tmp152980 __tmp152976))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp152983
                                                          __tmp152975))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152974
                                              _stx151440_))
                                           (if (##structure-ref
                                                _klass151477_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp152964
                                                      (let ((__tmp152973
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self151439_
                            __checked?152113
                            __t152112
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp152965
                     (let ((__tmp152970
                            (let ((__tmp152971
                                   (let ((__tmp152972
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self151439_
                                             __id152115
                                             __t152112
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp152972 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp152971)))
                           (__tmp152966
                            (let ((__tmp152968
                                   (let ((__tmp152969
                                          (let ()
                                            (declare (not safe))
                                            (cons _field151479_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp152969)))
                                  (__tmp152967
                                   (let ()
                                     (declare (not safe))
                                     (cons _object151481_ '()))))
                              (declare (not safe))
                              (cons __tmp152968 __tmp152967))))
                       (declare (not safe))
                       (cons __tmp152970 __tmp152966))))
                (declare (not safe))
                (cons __tmp152973 __tmp152965))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp152964
                                                  _stx151440_))
                                               (let ((_$e151484_
                                                      (let ((__tmp152898
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self151439_
                        __slot152114
                        __t152112
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass151477_ __tmp152898))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e151484_
                                                     ((lambda (_klass151487_)
                                                        (let ((__tmp152954
                                                               (let ((__tmp152963
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self151439_
                                     __checked?152113
                                     __t152112
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp152955
                              (let ((__tmp152960
                                     (let ((__tmp152961
                                            (let ((__tmp152962
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self151439_
                                                      __id152115
                                                      __t152112
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp152962 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152961)))
                                    (__tmp152956
                                     (let ((__tmp152958
                                            (let ((__tmp152959
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field151479_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp152959)))
                                           (__tmp152957
                                            (let ()
                                              (declare (not safe))
                                              (cons _object151481_ '()))))
                                       (declare (not safe))
                                       (cons __tmp152958 __tmp152957))))
                                (declare (not safe))
                                (cons __tmp152960 __tmp152956))))
                         (declare (not safe))
                         (cons __tmp152963 __tmp152955))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp152954 _stx151440_)))
              _$e151484_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self151439_
                                                            __checked?152113
                                                            __t152112
                                                            '#f))
                                                         (let ((__tmp152908
                                                                (let* ((_$obj151489_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp152909 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp152909)))
                               (__tmp152910
                                (let ((__tmp152950
                                       (let ((__tmp152951
                                              (let ((__tmp152953
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj151489_
                                                             '())))
                                                    (__tmp152952
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object151481_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp152953
                                                      __tmp152952))))
                                         (declare (not safe))
                                         (cons __tmp152951 '())))
                                      (__tmp152911
                                       (let ((__tmp152912
                                              (let ((__tmp152913
                                                     (let ((__tmp152942
                                                            (let ((__tmp152943
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152947
                                  (let ((__tmp152948
                                         (let ((__tmp152949
                                                (##structure-ref
                                                 _klass151477_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp152949 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp152948)))
                                 (__tmp152944
                                  (let ((__tmp152945
                                         (let ((__tmp152946
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj151489_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp152946))))
                                    (declare (not safe))
                                    (cons __tmp152945 '()))))
                             (declare (not safe))
                             (cons __tmp152947 __tmp152944))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp152943)))
                   (__tmp152914
                    (let ((__tmp152931
                           (let ((__tmp152932
                                  (let ((__tmp152939
                                         (let ((__tmp152940
                                                (let ((__tmp152941
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self151439_
                                                          __id152115
                                                          __t152112
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp152941 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp152940)))
                                        (__tmp152933
                                         (let ((__tmp152937
                                                (let ((__tmp152938
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field151479_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp152938)))
                                               (__tmp152934
                                                (let ((__tmp152935
                                                       (let ((__tmp152936
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj151489_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152936))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152935 '()))))
                                           (declare (not safe))
                                           (cons __tmp152937 __tmp152934))))
                                    (declare (not safe))
                                    (cons __tmp152939 __tmp152933))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp152932)))
                          (__tmp152915
                           (let ((__tmp152916
                                  (let ((__tmp152917
                                         (let ((__tmp152929
                                                (let ((__tmp152930
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp152930)))
                                               (__tmp152918
                                                (let ((__tmp152926
                                                       (let ((__tmp152927
                                                              (let ((__tmp152928
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self151439_
                                __id152115
                                __t152112
                                '#f))))
                        (declare (not safe))
                        (cons __tmp152928 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152927)))
              (__tmp152919
               (let ((__tmp152924
                      (let ((__tmp152925
                             (let ()
                               (declare (not safe))
                               (cons _$obj151489_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp152925)))
                     (__tmp152920
                      (let ((__tmp152921
                             (let ((__tmp152922
                                    (let ((__tmp152923
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self151439_
                                              __slot152114
                                              __t152112
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp152923 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp152922))))
                        (declare (not safe))
                        (cons __tmp152921 '()))))
                 (declare (not safe))
                 (cons __tmp152924 __tmp152920))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152926
                                                        __tmp152919))))
                                           (declare (not safe))
                                           (cons __tmp152929 __tmp152918))))
                                    (declare (not safe))
                                    (cons '%#call __tmp152917))))
                             (declare (not safe))
                             (cons __tmp152916 '()))))
                      (declare (not safe))
                      (cons __tmp152931 __tmp152915))))
               (declare (not safe))
               (cons __tmp152942 __tmp152914))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp152913))))
                                         (declare (not safe))
                                         (cons __tmp152912 '()))))
                                  (declare (not safe))
                                  (cons __tmp152950 __tmp152911))))
                          (declare (not safe))
                          (cons '%#let-values __tmp152910))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp152908 _stx151440_))
                 (let ((__tmp152899
                        (let ((__tmp152900
                               (let ((__tmp152906
                                      (let ((__tmp152907
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp152907)))
                                     (__tmp152901
                                      (let ((__tmp152902
                                             (let ((__tmp152903
                                                    (let ((__tmp152904
                                                           (let ((__tmp152905
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self151439_
                             __slot152114
                             __t152112
                             '#f))))
                     (declare (not safe))
                     (cons __tmp152905 '()))))
              (declare (not safe))
              (cons '%#quote __tmp152904))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp152903 '()))))
                                        (declare (not safe))
                                        (cons _object151481_ __tmp152902))))
                                 (declare (not safe))
                                 (cons __tmp152906 __tmp152901))))
                          (declare (not safe))
                          (cons '%#call __tmp152900))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp152899 _stx151440_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd151447151461_)
                                  (let ()
                                    (declare (not safe))
                                    (_g151443151453_ _g151444151456_)))))
                          (let ()
                            (declare (not safe))
                            (_g151443151453_ _g151444151456_))))))
              (declare (not safe))
              (_g151442151491_ _args151441_))))))
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
      (lambda (_self151244_ _stx151245_ _args151246_)
        (let* ((_g151248151262_
                (lambda (_g151249151259_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g151249151259_))))
               (_g151247151314_
                (lambda (_g151249151265_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g151249151265_))
                      (let ((_e151254151267_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g151249151265_))))
                        (let ((_hd151253151270_
                               (let ()
                                 (declare (not safe))
                                 (##car _e151254151267_)))
                              (_tl151252151272_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e151254151267_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl151252151272_))
                              (let ((_e151257151275_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl151252151272_))))
                                (let ((_hd151256151278_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e151257151275_)))
                                      (_tl151255151280_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e151257151275_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl151255151280_))
                                      ((lambda (_L151283_ _L151284_)
                                         (let* ((_klass151298_
                                                 (let ((__tmp152984
                                                        (##structure-ref
                                                         _self151244_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx151245_
                                                    __tmp152984)))
                                                (_field151300_
                                                 (let ((__tmp152985
                                                        (##structure-ref
                                                         _self151244_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass151298_
                                                    __tmp152985)))
                                                (_object151302_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L151284_)))
                                                (_value151304_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L151283_))))
                                           (if (##structure-ref
                                                _klass151298_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp153067
                                                      (let ((__tmp153077
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self151244_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp153068
                     (let ((__tmp153074
                            (let ((__tmp153075
                                   (let ((__tmp153076
                                          (##structure-ref
                                           _self151244_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp153076 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp153075)))
                           (__tmp153069
                            (let ((__tmp153072
                                   (let ((__tmp153073
                                          (let ()
                                            (declare (not safe))
                                            (cons _field151300_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp153073)))
                                  (__tmp153070
                                   (let ((__tmp153071
                                          (let ()
                                            (declare (not safe))
                                            (cons _value151304_ '()))))
                                     (declare (not safe))
                                     (cons _object151302_ __tmp153071))))
                              (declare (not safe))
                              (cons __tmp153072 __tmp153070))))
                       (declare (not safe))
                       (cons __tmp153074 __tmp153069))))
                (declare (not safe))
                (cons __tmp153077 __tmp153068))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp153067
                                                  _stx151245_))
                                               (if (##structure-ref
                                                    _klass151298_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp153056
                                                          (let ((__tmp153066
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self151244_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp153057
                         (let ((__tmp153063
                                (let ((__tmp153064
                                       (let ((__tmp153065
                                              (##structure-ref
                                               _self151244_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp153065 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp153064)))
                               (__tmp153058
                                (let ((__tmp153061
                                       (let ((__tmp153062
                                              (let ()
                                                (declare (not safe))
                                                (cons _field151300_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp153062)))
                                      (__tmp153059
                                       (let ((__tmp153060
                                              (let ()
                                                (declare (not safe))
                                                (cons _value151304_ '()))))
                                         (declare (not safe))
                                         (cons _object151302_ __tmp153060))))
                                  (declare (not safe))
                                  (cons __tmp153061 __tmp153059))))
                           (declare (not safe))
                           (cons __tmp153063 __tmp153058))))
                    (declare (not safe))
                    (cons __tmp153066 __tmp153057))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp153056
                                                      _stx151245_))
                                                   (let ((_$e151307_
                                                          (let ((__tmp152986
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self151244_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass151298_ __tmp152986))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e151307_
                                                         ((lambda (_klass151310_)
                                                            (let ((__tmp153045
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153055
                                  (if (##structure-ref
                                       _self151244_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp153046
                                  (let ((__tmp153052
                                         (let ((__tmp153053
                                                (let ((__tmp153054
                                                       (##structure-ref
                                                        _self151244_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp153054 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153053)))
                                        (__tmp153047
                                         (let ((__tmp153050
                                                (let ((__tmp153051
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field151300_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp153051)))
                                               (__tmp153048
                                                (let ((__tmp153049
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value151304_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object151302_
                                                        __tmp153049))))
                                           (declare (not safe))
                                           (cons __tmp153050 __tmp153048))))
                                    (declare (not safe))
                                    (cons __tmp153052 __tmp153047))))
                             (declare (not safe))
                             (cons __tmp153055 __tmp153046))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp153045 _stx151245_)))
                  _$e151307_)
                 (if (##structure-ref _self151244_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp152997
                            (let* ((_$obj151312_
                                    (let ((__tmp152998 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp152998)))
                                   (__tmp152999
                                    (let ((__tmp153041
                                           (let ((__tmp153042
                                                  (let ((__tmp153044
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj151312_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp153043
                 (let () (declare (not safe)) (cons _object151302_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp153044
                                                          __tmp153043))))
                                             (declare (not safe))
                                             (cons __tmp153042 '())))
                                          (__tmp153000
                                           (let ((__tmp153001
                                                  (let ((__tmp153002
                                                         (let ((__tmp153033
                                                                (let ((__tmp153034
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp153038
                                      (let ((__tmp153039
                                             (let ((__tmp153040
                                                    (##structure-ref
                                                     _klass151298_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp153040 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp153039)))
                                     (__tmp153035
                                      (let ((__tmp153036
                                             (let ((__tmp153037
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj151312_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp153037))))
                                        (declare (not safe))
                                        (cons __tmp153036 '()))))
                                 (declare (not safe))
                                 (cons __tmp153038 __tmp153035))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp153034)))
                       (__tmp153003
                        (let ((__tmp153021
                               (let ((__tmp153022
                                      (let ((__tmp153030
                                             (let ((__tmp153031
                                                    (let ((__tmp153032
                                                           (##structure-ref
                                                            _self151244_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp153032 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp153031)))
                                            (__tmp153023
                                             (let ((__tmp153028
                                                    (let ((__tmp153029
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field151300_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp153029)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp153024
                                                    (let ((__tmp153026
                                                           (let ((__tmp153027
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj151312_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp153027)))
                  (__tmp153025
                   (let () (declare (not safe)) (cons _value151304_ '()))))
              (declare (not safe))
              (cons __tmp153026 __tmp153025))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153028
                                                     __tmp153024))))
                                        (declare (not safe))
                                        (cons __tmp153030 __tmp153023))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp153022)))
                              (__tmp153004
                               (let ((__tmp153005
                                      (let ((__tmp153006
                                             (let ((__tmp153019
                                                    (let ((__tmp153020
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp153020)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp153007
                                                    (let ((__tmp153016
                                                           (let ((__tmp153017
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp153018
                                 (##structure-ref
                                  _self151244_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp153018 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp153017)))
                  (__tmp153008
                   (let ((__tmp153014
                          (let ((__tmp153015
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj151312_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp153015)))
                         (__tmp153009
                          (let ((__tmp153011
                                 (let ((__tmp153012
                                        (let ((__tmp153013
                                               (##structure-ref
                                                _self151244_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp153013 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp153012)))
                                (__tmp153010
                                 (let ()
                                   (declare (not safe))
                                   (cons _value151304_ '()))))
                            (declare (not safe))
                            (cons __tmp153011 __tmp153010))))
                     (declare (not safe))
                     (cons __tmp153014 __tmp153009))))
              (declare (not safe))
              (cons __tmp153016 __tmp153008))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153019
                                                     __tmp153007))))
                                        (declare (not safe))
                                        (cons '%#call __tmp153006))))
                                 (declare (not safe))
                                 (cons __tmp153005 '()))))
                          (declare (not safe))
                          (cons __tmp153021 __tmp153004))))
                   (declare (not safe))
                   (cons __tmp153033 __tmp153003))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp153002))))
                                             (declare (not safe))
                                             (cons __tmp153001 '()))))
                                      (declare (not safe))
                                      (cons __tmp153041 __tmp153000))))
                              (declare (not safe))
                              (cons '%#let-values __tmp152999))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp152997 _stx151245_))
                     (let ((__tmp152987
                            (let ((__tmp152988
                                   (let ((__tmp152995
                                          (let ((__tmp152996
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp152996)))
                                         (__tmp152989
                                          (let ((__tmp152990
                                                 (let ((__tmp152992
                                                        (let ((__tmp152993
                                                               (let ((__tmp152994
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self151244_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp152994 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp152993)))
               (__tmp152991
                (let () (declare (not safe)) (cons _value151304_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp152992
                                                         __tmp152991))))
                                            (declare (not safe))
                                            (cons _object151302_
                                                  __tmp152990))))
                                     (declare (not safe))
                                     (cons __tmp152995 __tmp152989))))
                              (declare (not safe))
                              (cons '%#call __tmp152988))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp152987 _stx151245_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd151256151278_
                                       _hd151253151270_)
                                      (let ()
                                        (declare (not safe))
                                        (_g151248151262_ _g151249151265_)))))
                              (let ()
                                (declare (not safe))
                                (_g151248151262_ _g151249151265_)))))
                      (let ()
                        (declare (not safe))
                        (_g151248151262_ _g151249151265_))))))
          (declare (not safe))
          (_g151247151314_ _args151246_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__t152119)
        (let ((__checked?152120
               (let ((__tmp152123
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t152119 'checked?))))
                 (if __tmp152123
                     __tmp152123
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__id152121
               (let ((__tmp152124
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t152119 'id))))
                 (if __tmp152124
                     __tmp152124
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__slot152122
               (let ((__tmp152125
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t152119 'slot))))
                 (if __tmp152125
                     __tmp152125
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self151244_ _stx151245_ _args151246_)
            (let* ((_g151248151262_
                    (lambda (_g151249151259_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g151249151259_))))
                   (_g151247151314_
                    (lambda (_g151249151265_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g151249151265_))
                          (let ((_e151254151267_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g151249151265_))))
                            (let ((_hd151253151270_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e151254151267_)))
                                  (_tl151252151272_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e151254151267_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl151252151272_))
                                  (let ((_e151257151275_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl151252151272_))))
                                    (let ((_hd151256151278_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e151257151275_)))
                                          (_tl151255151280_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e151257151275_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl151255151280_))
                                          ((lambda (_L151283_ _L151284_)
                                             (let* ((_klass151298_
                                                     (let ((__tmp153078
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self151244_
                                                               __id152121
                                                               __t152119
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx151245_
                                                        __tmp153078)))
                                                    (_field151300_
                                                     (let ((__tmp153079
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self151244_
                                                               __slot152122
                                                               __t152119
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass151298_
                                                        __tmp153079)))
                                                    (_object151302_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L151284_)))
                                                    (_value151304_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L151283_))))
                                               (if (##structure-ref
                                                    _klass151298_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp153161
                                                          (let ((__tmp153171
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self151244_
                                __checked?152120
                                __t152119
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp153162
                         (let ((__tmp153168
                                (let ((__tmp153169
                                       (let ((__tmp153170
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self151244_
                                                 __id152121
                                                 __t152119
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp153170 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp153169)))
                               (__tmp153163
                                (let ((__tmp153166
                                       (let ((__tmp153167
                                              (let ()
                                                (declare (not safe))
                                                (cons _field151300_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp153167)))
                                      (__tmp153164
                                       (let ((__tmp153165
                                              (let ()
                                                (declare (not safe))
                                                (cons _value151304_ '()))))
                                         (declare (not safe))
                                         (cons _object151302_ __tmp153165))))
                                  (declare (not safe))
                                  (cons __tmp153166 __tmp153164))))
                           (declare (not safe))
                           (cons __tmp153168 __tmp153163))))
                    (declare (not safe))
                    (cons __tmp153171 __tmp153162))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp153161
                                                      _stx151245_))
                                                   (if (##structure-ref
                                                        _klass151298_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp153150
                                                              (let ((__tmp153160
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self151244_
                                    __checked?152120
                                    __t152119
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp153151
                             (let ((__tmp153157
                                    (let ((__tmp153158
                                           (let ((__tmp153159
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self151244_
                                                     __id152121
                                                     __t152119
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp153159 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp153158)))
                                   (__tmp153152
                                    (let ((__tmp153155
                                           (let ((__tmp153156
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field151300_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp153156)))
                                          (__tmp153153
                                           (let ((__tmp153154
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value151304_ '()))))
                                             (declare (not safe))
                                             (cons _object151302_
                                                   __tmp153154))))
                                      (declare (not safe))
                                      (cons __tmp153155 __tmp153153))))
                               (declare (not safe))
                               (cons __tmp153157 __tmp153152))))
                        (declare (not safe))
                        (cons __tmp153160 __tmp153151))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp153150 _stx151245_))
               (let ((_$e151307_
                      (let ((__tmp153080
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self151244_
                                __slot152122
                                __t152119
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass151298_
                         __tmp153080))))
                 (if _$e151307_
                     ((lambda (_klass151310_)
                        (let ((__tmp153139
                               (let ((__tmp153149
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self151244_
                                             __checked?152120
                                             __t152119
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp153140
                                      (let ((__tmp153146
                                             (let ((__tmp153147
                                                    (let ((__tmp153148
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self151244_
                                                              __id152121
                                                              __t152119
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp153148 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp153147)))
                                            (__tmp153141
                                             (let ((__tmp153144
                                                    (let ((__tmp153145
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field151300_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp153145)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp153142
                                                    (let ((__tmp153143
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value151304_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object151302_ __tmp153143))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153144
                                                     __tmp153142))))
                                        (declare (not safe))
                                        (cons __tmp153146 __tmp153141))))
                                 (declare (not safe))
                                 (cons __tmp153149 __tmp153140))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp153139 _stx151245_)))
                      _$e151307_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self151244_
                            __checked?152120
                            __t152119
                            '#f))
                         (let ((__tmp153091
                                (let* ((_$obj151312_
                                        (let ((__tmp153092 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp153092)))
                                       (__tmp153093
                                        (let ((__tmp153135
                                               (let ((__tmp153136
                                                      (let ((__tmp153138
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj151312_ '())))
                    (__tmp153137
                     (let () (declare (not safe)) (cons _object151302_ '()))))
                (declare (not safe))
                (cons __tmp153138 __tmp153137))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153136 '())))
                                              (__tmp153094
                                               (let ((__tmp153095
                                                      (let ((__tmp153096
                                                             (let ((__tmp153127
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp153128
                                   (let ((__tmp153132
                                          (let ((__tmp153133
                                                 (let ((__tmp153134
                                                        (##structure-ref
                                                         _klass151298_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp153134 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp153133)))
                                         (__tmp153129
                                          (let ((__tmp153130
                                                 (let ((__tmp153131
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj151312_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp153131))))
                                            (declare (not safe))
                                            (cons __tmp153130 '()))))
                                     (declare (not safe))
                                     (cons __tmp153132 __tmp153129))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp153128)))
                           (__tmp153097
                            (let ((__tmp153115
                                   (let ((__tmp153116
                                          (let ((__tmp153124
                                                 (let ((__tmp153125
                                                        (let ((__tmp153126
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self151244_
                          __id152121
                          __t152119
                          '#f))))
                  (declare (not safe))
                  (cons __tmp153126 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp153125)))
                                                (__tmp153117
                                                 (let ((__tmp153122
                                                        (let ((__tmp153123
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field151300_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp153123)))
               (__tmp153118
                (let ((__tmp153120
                       (let ((__tmp153121
                              (let ()
                                (declare (not safe))
                                (cons _$obj151312_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp153121)))
                      (__tmp153119
                       (let () (declare (not safe)) (cons _value151304_ '()))))
                  (declare (not safe))
                  (cons __tmp153120 __tmp153119))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153122
                                                         __tmp153118))))
                                            (declare (not safe))
                                            (cons __tmp153124 __tmp153117))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp153116)))
                                  (__tmp153098
                                   (let ((__tmp153099
                                          (let ((__tmp153100
                                                 (let ((__tmp153113
                                                        (let ((__tmp153114
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp153114)))
               (__tmp153101
                (let ((__tmp153110
                       (let ((__tmp153111
                              (let ((__tmp153112
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self151244_
                                        __id152121
                                        __t152119
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp153112 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp153111)))
                      (__tmp153102
                       (let ((__tmp153108
                              (let ((__tmp153109
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj151312_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp153109)))
                             (__tmp153103
                              (let ((__tmp153105
                                     (let ((__tmp153106
                                            (let ((__tmp153107
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self151244_
                                                      __slot152122
                                                      __t152119
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp153107 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp153106)))
                                    (__tmp153104
                                     (let ()
                                       (declare (not safe))
                                       (cons _value151304_ '()))))
                                (declare (not safe))
                                (cons __tmp153105 __tmp153104))))
                         (declare (not safe))
                         (cons __tmp153108 __tmp153103))))
                  (declare (not safe))
                  (cons __tmp153110 __tmp153102))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153113
                                                         __tmp153101))))
                                            (declare (not safe))
                                            (cons '%#call __tmp153100))))
                                     (declare (not safe))
                                     (cons __tmp153099 '()))))
                              (declare (not safe))
                              (cons __tmp153115 __tmp153098))))
                       (declare (not safe))
                       (cons __tmp153127 __tmp153097))))
                (declare (not safe))
                (cons '%#if __tmp153096))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153095 '()))))
                                          (declare (not safe))
                                          (cons __tmp153135 __tmp153094))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp153093))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp153091 _stx151245_))
                         (let ((__tmp153081
                                (let ((__tmp153082
                                       (let ((__tmp153089
                                              (let ((__tmp153090
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp153090)))
                                             (__tmp153083
                                              (let ((__tmp153084
                                                     (let ((__tmp153086
                                                            (let ((__tmp153087
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153088
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self151244_
                                     __slot152122
                                     __t152119
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp153088 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp153087)))
                   (__tmp153085
                    (let () (declare (not safe)) (cons _value151304_ '()))))
               (declare (not safe))
               (cons __tmp153086 __tmp153085))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object151302_
                                                      __tmp153084))))
                                         (declare (not safe))
                                         (cons __tmp153089 __tmp153083))))
                                  (declare (not safe))
                                  (cons '%#call __tmp153082))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp153081
                            _stx151245_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd151256151278_
                                           _hd151253151270_)
                                          (let ()
                                            (declare (not safe))
                                            (_g151248151262_
                                             _g151249151265_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g151248151262_ _g151249151265_)))))
                          (let ()
                            (declare (not safe))
                            (_g151248151262_ _g151249151265_))))))
              (declare (not safe))
              (_g151247151314_ _args151246_))))))
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
      (lambda (_self151078_ _stx151079_ _args151080_)
        (let* ((_self151081151090_ _self151078_)
               (_E151083151094_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self151081151090_))))
               (_K151084151101_
                (lambda (_inline151097_ _dispatch151098_ _arity151099_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self151078_ _args151080_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx151079_
                         _arity151099_)))
                  (if _inline151097_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp153177
                               (let ((__tmp153178
                                      (_inline151097_ _stx151079_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp153178
                                  _stx151079_))))
                          (declare (not safe))
                          (gxc#compile-e__0 __tmp153177)))
                      (if _dispatch151098_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch151098_))
                            (let ((__tmp153172
                                   (let ((__tmp153173
                                          (let ((__tmp153174
                                                 (let ((__tmp153175
                                                        (let ((__tmp153176
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch151098_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp153176))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153175
                                                         _args151080_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp153174))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp153173
                                      _stx151079_))))
                              (declare (not safe))
                              (gxc#compile-e__0 __tmp153172)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _stx151079_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self151081151090_ 'gxc#!lambda::t))
              (let* ((_e151085151104_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151081151090_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e151086151107_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151081151090_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity151110_ _e151086151107_)
                     (_e151087151112_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151081151090_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch151115_ _e151087151112_)
                     (_e151088151117_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151081151090_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline151120_ _e151088151117_))
                (declare (not safe))
                (_K151084151101_
                 _inline151120_
                 _dispatch151115_
                 _arity151110_))
              (let () (declare (not safe)) (_E151083151094_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self150917_ _stx150918_ _args150919_)
        (let* ((_self150920150927_ _self150917_)
               (_E150922150931_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self150920150927_))))
               (_K150923150945_
                (lambda (_clauses150934_)
                  (let ((_$e150940_
                         (let ((__tmp153179
                                (lambda (_g150935150937_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g150935150937_
                                     _args150919_)))))
                           (declare (not safe))
                           (find __tmp153179 _clauses150934_))))
                    (if _$e150940_
                        ((lambda (_clause150943_)
                           (let ((__method152394
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause150943_
                                     'optimize-call))))
                             (if __method152394
                                 (__method152394
                                  _clause150943_
                                  _stx150918_
                                  _args150919_)
                                 (let ()
                                   (declare (not safe))
                                   (error '"Missing method"
                                          _clause150943_
                                          'optimize-call)))))
                         _$e150940_)
                        (let ((__tmp153180
                               (map gxc#!lambda-arity _clauses150934_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx150918_
                           __tmp153180)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self150920150927_
                 'gxc#!case-lambda::t))
              (let* ((_e150924150948_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150920150927_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e150925150951_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150920150927_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses150954_ _e150925150951_))
                (declare (not safe))
                (_K150923150945_ _clauses150954_))
              (let () (declare (not safe)) (_E150922150931_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self150731_ _args150732_)
        (let* ((_self150733150740_ _self150731_)
               (_E150735150744_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self150733150740_))))
               (_K150736150784_
                (lambda (_arity150747_)
                  (let* ((_arity150748150757_ _arity150747_)
                         (_E150751150761_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (error '"No clause matching"
                                     _arity150748150757_)))))
                    (let ((_K150755150781_
                           (lambda ()
                             (fx= (length _args150732_) _arity150747_)))
                          (_K150752150767_
                           (lambda (_arity150765_)
                             (fx>= (length _args150732_) _arity150765_))))
                      (let ((_try-match150750150777_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity150748150757_))
                                   (let ((_tl150754150772_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity150748150757_)))
                                         (_hd150753150770_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity150748150757_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl150754150772_))
                                         (let ((_arity150775_
                                                _hd150753150770_))
                                           (declare (not safe))
                                           (_K150752150767_ _arity150775_))
                                         (let ()
                                           (declare (not safe))
                                           (_E150751150761_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E150751150761_))))))
                        (if (let ()
                              (declare (not safe))
                              (fixnum? _arity150748150757_))
                            (let () (declare (not safe)) (_K150755150781_))
                            (let ()
                              (declare (not safe))
                              (_try-match150750150777_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self150733150740_ 'gxc#!lambda::t))
              (let* ((_e150737150787_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150733150740_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e150738150790_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150733150740_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity150793_ _e150738150790_))
                (declare (not safe))
                (_K150736150784_ _arity150793_))
              (let () (declare (not safe)) (_E150735150744_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self150616_ _stx150617_ _args150618_)
        (let* ((_self150619150627_ _self150616_)
               (_E150621150631_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self150619150627_))))
               (_K150622150715_
                (lambda (_dispatch150634_ _table150635_)
                  (let* ((_g150636150645_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch150634_)))
                         (_else150638150653_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch150634_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _stx150617_))))
                         (_K150640150699_
                          (lambda (_main150656_ _keys150657_)
                            (let ((_g153181_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx150617_
                                      _args150618_))))
                              (begin
                                (let ((_g153182_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g153181_)
                                             (##vector-length _g153181_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g153182_ 2)))
                                      (error "Context expects 2 values"
                                             _g153182_)))
                                (let ((_pargs150659_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g153181_ 0)))
                                      (_kwargs150660_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g153181_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main150656_))
                                    (if _table150635_
                                        (let ((_xargs150667_
                                               (map (lambda (_key150662_)
                                                      (let ((_$e150664_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__0 _key150662_ _kwargs150660_))))
                (if _$e150664_ (values _$e150664_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys150657_)))
                                          (for-each
                                           (lambda (_kw150669_)
                                             (if (memq (car _kw150669_)
                                                       _keys150657_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx150617_
                                                    _keys150657_
                                                    _kw150669_))))
                                           _kwargs150660_)
                                          (let ((__tmp153234
                                                 (let ((__tmp153235
                                                        (let ((__tmp153236
                                                               (let ((__tmp153241
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153242
                                     (let ()
                                       (declare (not safe))
                                       (cons _main150656_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp153242)))
                             (__tmp153237
                              (let ((__tmp153239
                                     (let ((__tmp153240
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp153240)))
                                    (__tmp153238
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs150659_
                                               _xargs150667_))))
                                (declare (not safe))
                                (cons __tmp153239 __tmp153238))))
                         (declare (not safe))
                         (cons __tmp153241 __tmp153237))))
                  (declare (not safe))
                  (cons '%#call __tmp153236))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp153235
                                                    _stx150617_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0 __tmp153234)))
                                        (let* ((_kwt150671_
                                                (let ((__tmp153183
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp153183)))
                                               (_kwvars150674_
                                                (map (lambda (_g153184_)
                                                       (let ((__tmp153185
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp153185)))
                                                     _kwargs150660_))
                                               (_kwbind150679_
                                                (map (lambda (_kw150676_
                                                              _kwvar150677_)
                                                       (let ((__tmp153188
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar150677_ '())))
                     (__tmp153186
                      (let ((__tmp153187 (cdr _kw150676_)))
                        (declare (not safe))
                        (cons __tmp153187 '()))))
                 (declare (not safe))
                 (cons __tmp153188 __tmp153186)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs150660_
                                                     _kwvars150674_))
                                               (_kwset150684_
                                                (map (lambda (_kw150681_
                                                              _kwvar150682_)
                                                       (let ((__tmp153189
                                                              (let ((__tmp153190
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp153198
                                    (let ((__tmp153199
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt150671_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp153199)))
                                   (__tmp153191
                                    (let ((__tmp153195
                                           (let ((__tmp153196
                                                  (let ((__tmp153197
                                                         (car _kw150681_)))
                                                    (declare (not safe))
                                                    (cons __tmp153197 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp153196)))
                                          (__tmp153192
                                           (let ((__tmp153193
                                                  (let ((__tmp153194
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar150682_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp153194))))
                                             (declare (not safe))
                                             (cons __tmp153193 '()))))
                                      (declare (not safe))
                                      (cons __tmp153195 __tmp153192))))
                               (declare (not safe))
                               (cons __tmp153198 __tmp153191))))
                        (declare (not safe))
                        (cons '(%#ref symoblic-table-set!) __tmp153190))))
                 (declare (not safe))
                 (cons '%#call __tmp153189)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs150660_
                                                     _kwvars150674_))
                                               (_xkwargs150689_
                                                (map (lambda (_kw150686_
                                                              _kwvar150687_)
                                                       (let ((__tmp153202
                                                              (car _kw150686_))
                                                             (__tmp153200
                                                              (let ((__tmp153201
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar150687_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp153201))))
                 (declare (not safe))
                 (cons __tmp153202 __tmp153200)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs150660_
                                                     _kwvars150674_))
                                               (_xargs150696_
                                                (map (lambda (_key150691_)
                                                       (let ((_$e150693_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq__0 _key150691_ _xkwargs150689_))))
                 (if _$e150693_ (values _$e150693_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys150657_)))
                                          (let ((__tmp153203
                                                 (let ((__tmp153204
                                                        (let ((__tmp153205
                                                               (let ((__tmp153206
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153207
                                     (let ((__tmp153208
                                            (let ((__tmp153222
                                                   (let ((__tmp153223
                                                          (let ((__tmp153233
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt150671_ '())))
                        (__tmp153224
                         (let ((__tmp153225
                                (let ((__tmp153226
                                       (let ((__tmp153227
                                              (let ((__tmp153228
                                                     (let ((__tmp153230
                                                            (let ((__tmp153231
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153232 (length _kwargs150660_)))
                             (declare (not safe))
                             (cons __tmp153232 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp153231)))
                   (__tmp153229
                    (let () (declare (not safe)) (cons '(%#quote 0) '()))))
               (declare (not safe))
               (cons __tmp153230 __tmp153229))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-symbolic-table)
                                                      __tmp153228))))
                                         (declare (not safe))
                                         (cons '%#call __tmp153227))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp153226
                                   _stx150617_))))
                           (declare (not safe))
                           (cons __tmp153225 '()))))
                    (declare (not safe))
                    (cons __tmp153233 __tmp153224))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153223 '())))
                                                  (__tmp153209
                                                   (let ((__tmp153210
                                                          (let ((__tmp153211
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp153212
                                (let ((__tmp153213
                                       (let ((__tmp153214
                                              (let ((__tmp153215
                                                     (let ((__tmp153220
                                                            (let ((__tmp153221
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main150656_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp153221)))
                   (__tmp153216
                    (let ((__tmp153218
                           (let ((__tmp153219
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt150671_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp153219)))
                          (__tmp153217
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs150659_ _xargs150696_))))
                      (declare (not safe))
                      (cons __tmp153218 __tmp153217))))
               (declare (not safe))
               (cons __tmp153220 __tmp153216))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp153215))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp153214
                                          _stx150617_))))
                                  (declare (not safe))
                                  (cons __tmp153213 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp153212 _kwset150684_))))
                    (declare (not safe))
                    (cons '%#begin __tmp153211))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153210 '()))))
                                              (declare (not safe))
                                              (cons __tmp153222 __tmp153209))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp153208))))
                                (declare (not safe))
                                (cons __tmp153207 '()))))
                         (declare (not safe))
                         (cons _kwbind150679_ __tmp153206))))
                  (declare (not safe))
                  (cons '%#let-values __tmp153205))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp153204
                                                    _stx150617_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0
                                             __tmp153203)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g150636150645_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e150641150702_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g150636150645_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e150642150705_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g150636150645_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys150708_ _e150642150705_)
                               (_e150643150710_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g150636150645_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main150713_ _e150643150710_))
                          (declare (not safe))
                          (_K150640150699_ _main150713_ _keys150708_))
                        (let () (declare (not safe)) (_else150638150653_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self150619150627_
                 'gxc#!kw-lambda::t))
              (let* ((_e150623150718_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150619150627_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e150624150721_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150619150627_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table150724_ _e150624150721_)
                     (_e150625150726_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150619150627_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch150729_ _e150625150726_))
                (declare (not safe))
                (_K150622150715_ _dispatch150729_ _table150724_))
              (let () (declare (not safe)) (_E150621150631_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx150229_ _args150230_)
        (let _lp150232_ ((_rest150234_ _args150230_)
                         (_pargs150235_ '())
                         (_kwargs150236_ '()))
          (let* ((___stx152276152277_ _rest150234_)
                 (_g150242150294_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx152276152277_)))))
            (let ((___kont152278152279_
                   (lambda (_L150473_ _L150474_)
                     (let ((__tmp153243
                            (let ()
                              (declare (not safe))
                              (cons _L150474_ _pargs150235_))))
                       (declare (not safe))
                       (_lp150232_ _L150473_ __tmp153243 _kwargs150236_))))
                  (___kont152280152281_
                   (lambda (_L150419_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L150419_ _pargs150235_))
                             (reverse _kwargs150236_))))
                  (___kont152282152283_
                   (lambda (_L150366_ _L150367_ _L150368_)
                     (let ((_kw150385_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L150368_))))
                       (if (assq _kw150385_ _kwargs150236_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx150229_
                              _kw150385_))
                           (let ((__tmp153244
                                  (let ((__tmp153245
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw150385_ _L150367_))))
                                    (declare (not safe))
                                    (cons __tmp153245 _kwargs150236_))))
                             (declare (not safe))
                             (_lp150232_
                              _L150366_
                              _pargs150235_
                              __tmp153244))))))
                  (___kont152284152285_
                   (lambda (_L150314_ _L150315_)
                     (let ((__tmp153246
                            (let ()
                              (declare (not safe))
                              (cons _L150315_ _pargs150235_))))
                       (declare (not safe))
                       (_lp150232_ _L150314_ __tmp153246 _kwargs150236_))))
                  (___kont152286152287_
                   (lambda ()
                     (values (reverse _pargs150235_)
                             (reverse _kwargs150236_)))))
              (let* ((_g150241150301_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx152276152277_))
                            (___kont152286152287_)
                            (let () (declare (not safe)) (_g150242150294_)))))
                     (___match152383152384_
                      (lambda (_e150275150334_
                               _hd150274150337_
                               _tl150273150339_
                               _e150278150342_
                               _hd150277150345_
                               _tl150276150347_
                               _e150281150350_
                               _hd150280150353_
                               _tl150279150355_
                               _e150284150358_
                               _hd150283150361_
                               _tl150282150363_)
                        (let ((_L150366_ _tl150282150363_)
                              (_L150367_ _hd150283150361_)
                              (_L150368_ _hd150280150353_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L150368_))
                              (___kont152282152283_
                               _L150366_
                               _L150367_
                               _L150368_)
                              (___kont152284152285_
                               _tl150273150339_
                               _hd150274150337_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx152276152277_))
                    (let ((_e150248150438_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx152276152277_))))
                      (let ((_tl150246150443_
                             (let ()
                               (declare (not safe))
                               (##cdr _e150248150438_)))
                            (_hd150247150441_
                             (let ()
                               (declare (not safe))
                               (##car _e150248150438_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd150247150441_))
                            (let ((_e150251150446_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd150247150441_))))
                              (let ((_tl150249150451_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e150251150446_)))
                                    (_hd150250150449_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e150251150446_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd150250150449_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd150250150449_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl150249150451_))
                                            (let ((_e150254150454_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl150249150451_))))
                                              (let ((_tl150252150459_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e150254150454_)))
                                                    (_hd150253150457_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e150254150454_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd150253150457_))
                                                    (let ((_e150255150462_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd150253150457_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e150255150462_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl150252150459_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl150246150443_))
                          (let ((_e150258150465_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl150246150443_))))
                            (let ((_tl150256150470_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e150258150465_)))
                                  (_hd150257150468_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e150258150465_))))
                              (___kont152278152279_
                               _tl150256150470_
                               _hd150257150468_)))
                          (___kont152284152285_
                           _tl150246150443_
                           _hd150247150441_))
                      (___kont152284152285_ _tl150246150443_ _hd150247150441_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e150255150462_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl150252150459_))
                          (___kont152280152281_ _tl150246150443_)
                          (___kont152284152285_
                           _tl150246150443_
                           _hd150247150441_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl150252150459_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl150246150443_))
                              (let ((_e150284150358_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl150246150443_))))
                                (let ((_tl150282150363_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e150284150358_)))
                                      (_hd150283150361_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e150284150358_))))
                                  (___match152383152384_
                                   _e150248150438_
                                   _hd150247150441_
                                   _tl150246150443_
                                   _e150251150446_
                                   _hd150250150449_
                                   _tl150249150451_
                                   _e150254150454_
                                   _hd150253150457_
                                   _tl150252150459_
                                   _e150284150358_
                                   _hd150283150361_
                                   _tl150282150363_)))
                              (___kont152284152285_
                               _tl150246150443_
                               _hd150247150441_))
                          (___kont152284152285_
                           _tl150246150443_
                           _hd150247150441_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl150252150459_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl150246150443_))
                                                            (let ((_e150284150358_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl150246150443_))))
                      (let ((_tl150282150363_
                             (let ()
                               (declare (not safe))
                               (##cdr _e150284150358_)))
                            (_hd150283150361_
                             (let ()
                               (declare (not safe))
                               (##car _e150284150358_))))
                        (___match152383152384_
                         _e150248150438_
                         _hd150247150441_
                         _tl150246150443_
                         _e150251150446_
                         _hd150250150449_
                         _tl150249150451_
                         _e150254150454_
                         _hd150253150457_
                         _tl150252150459_
                         _e150284150358_
                         _hd150283150361_
                         _tl150282150363_)))
                    (___kont152284152285_ _tl150246150443_ _hd150247150441_))
                (___kont152284152285_ _tl150246150443_ _hd150247150441_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont152284152285_
                                             _tl150246150443_
                                             _hd150247150441_))
                                        (___kont152284152285_
                                         _tl150246150443_
                                         _hd150247150441_))
                                    (___kont152284152285_
                                     _tl150246150443_
                                     _hd150247150441_))))
                            (___kont152284152285_
                             _tl150246150443_
                             _hd150247150441_))))
                    (let () (declare (not safe)) (_g150241150301_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self150225_ _stx150226_ _args150227_)
        (let () (declare (not safe)) (gxc#xform-call% _stx150226_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
