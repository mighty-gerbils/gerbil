(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1710487497)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp153300 (list gxc#::basic-xform::t))
            (__tmp153298
             (let ((__tmp153299
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp153299 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp153300
         '()
         __tmp153298
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _$args153001_
        (apply make-instance gxc#::optimize-call::t _$args153001_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp153301
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
        (make-promise __tmp153301)))
    (define gxc#apply-optimize-call
      (lambda (_stx152993_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_self152996_
                (let ((__obj153295
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj153295))
               (__tmp153302
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self152996_ _stx152993_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp153302
           gxc#current-compile-method
           _self152996_))))
    (define gxc#optimize-call%
      (lambda (_self152847_ _stx152848_)
        (let* ((___stx153046153047_ _stx152848_)
               (_g152851152871_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx153046153047_)))))
          (let ((___kont153048153049_
                 (lambda (_L152915_ _L152916_)
                   (let* ((_rator-id152934_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L152916_)))
                          (_rator-type152936_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id152934_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type152936_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp153303
                                  (##structure-ref
                                   _rator-type152936_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id152934_
                              '" => "
                              _rator-type152936_
                              '" "
                              __tmp153303))
                           (let ((_optimized152939_
                                  (let ((__method153296
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type152936_
                                            'optimize-call))))
                                    (if __method153296
                                        (__method153296
                                         _rator-type152936_
                                         _self152847_
                                         _stx152848_
                                         _L152915_)
                                        (let ()
                                          (declare (not safe))
                                          (error '"Missing method"
                                                 _rator-type152936_
                                                 'optimize-call))))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type152936_))
                                 _optimized152939_
                                 (let* ((___stx153028153029_ _optimized152939_)
                                        (_g152942152952_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx153028153029_)))))
                                   (let ((___kont153030153031_
                                          (lambda (_L152972_)
                                            (let ((__tmp153304
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L152972_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp153304
                                               _stx152848_))))
                                         (___kont153032153033_
                                          (lambda () _optimized152939_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx153028153029_))
                                         (let ((_e152947152964_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx153028153029_))))
                                           (let ((_tl152945152969_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e152947152964_)))
                                                 (_hd152946152967_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e152947152964_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd152946152967_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd152946152967_))
                                                     (___kont153030153031_
                                                      _tl152945152969_)
                                                     (___kont153032153033_))
                                                 (___kont153032153033_))))
                                         (___kont153032153033_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type152936_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _self152847_ _stx152848_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx152848_
                                _rator-type152936_)))))))
                (___kont153050153051_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _self152847_ _stx152848_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx153046153047_))
                (let ((_e152857152883_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx153046153047_))))
                  (let ((_tl152855152888_
                         (let () (declare (not safe)) (##cdr _e152857152883_)))
                        (_hd152856152886_
                         (let ()
                           (declare (not safe))
                           (##car _e152857152883_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl152855152888_))
                        (let ((_e152860152891_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl152855152888_))))
                          (let ((_tl152858152896_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e152860152891_)))
                                (_hd152859152894_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e152860152891_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd152859152894_))
                                (let ((_e152863152899_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd152859152894_))))
                                  (let ((_tl152861152904_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e152863152899_)))
                                        (_hd152862152902_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e152863152899_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd152862152902_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd152862152902_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl152861152904_))
                                                (let ((_e152866152907_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl152861152904_))))
                                                  (let ((_tl152864152912_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e152866152907_)))
                                                        (_hd152865152910_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e152866152907_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl152864152912_))
                                                        (___kont153048153049_
                                                         _tl152858152896_
                                                         _hd152865152910_)
                                                        (___kont153050153051_))))
                                                (___kont153050153051_))
                                            (___kont153050153051_))
                                        (___kont153050153051_))))
                                (___kont153050153051_))))
                        (___kont153050153051_))))
                (___kont153050153051_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self152800_ _ctx152801_ _stx152802_ _args152803_)
        (let* ((_g152805152815_
                (lambda (_g152806152812_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g152806152812_))))
               (_g152804152844_
                (lambda (_g152806152818_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g152806152818_))
                      (let ((_e152810152820_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g152806152818_))))
                        (let ((_hd152809152823_
                               (let ()
                                 (declare (not safe))
                                 (##car _e152810152820_)))
                              (_tl152808152825_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e152810152820_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl152808152825_))
                              ((lambda (_L152828_)
                                 (let* ((_klass152839_
                                         (let ((__tmp153305
                                                (##structure-ref
                                                 _self152800_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx152802_
                                            __tmp153305)))
                                        (_object152841_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _ctx152801_
                                            _L152828_))))
                                   (if (##structure-ref
                                        _klass152839_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp153321
                                              (let ((__tmp153322
                                                     (let ((__tmp153324
                                                            (let ((__tmp153325
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153326
                                  (##structure-ref
                                   _klass152839_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp153326 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp153325)))
                   (__tmp153323
                    (let () (declare (not safe)) (cons _object152841_ '()))))
               (declare (not safe))
               (cons __tmp153324 __tmp153323))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp153322))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp153321
                                          _stx152802_))
                                       (if (##structure-ref
                                            _klass152839_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp153315
                                                  (let ((__tmp153316
                                                         (let ((__tmp153318
                                                                (let ((__tmp153319
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp153320
                                      (##structure-ref
                                       _klass152839_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp153320 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp153319)))
                       (__tmp153317
                        (let ()
                          (declare (not safe))
                          (cons _object152841_ '()))))
                   (declare (not safe))
                   (cons __tmp153318 __tmp153317))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp153316))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp153315
                                              _stx152802_))
                                           (let ((__tmp153306
                                                  (let ((__tmp153307
                                                         (let ((__tmp153313
                                                                (let ((__tmp153314
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp153314)))
                       (__tmp153308
                        (let ((__tmp153310
                               (let ((__tmp153311
                                      (let ((__tmp153312
                                             (##structure-ref
                                              _self152800_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp153312 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp153311)))
                              (__tmp153309
                               (let ()
                                 (declare (not safe))
                                 (cons _object152841_ '()))))
                          (declare (not safe))
                          (cons __tmp153310 __tmp153309))))
                   (declare (not safe))
                   (cons __tmp153313 __tmp153308))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp153307))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp153306
                                              _stx152802_))))))
                               _hd152809152823_)
                              (let ()
                                (declare (not safe))
                                (_g152805152815_ _g152806152818_)))))
                      (let ()
                        (declare (not safe))
                        (_g152805152815_ _g152806152818_))))))
          (declare (not safe))
          (_g152804152844_ _args152803_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__klass153003 __method-table153004)
        (let ((__id153005
               (let ((__slot153006
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass153003 'id))))
                 (if __slot153006
                     __slot153006
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self152800_ _ctx152801_ _stx152802_ _args152803_)
            (let* ((_g152805152815_
                    (lambda (_g152806152812_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g152806152812_))))
                   (_g152804152844_
                    (lambda (_g152806152818_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g152806152818_))
                          (let ((_e152810152820_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g152806152818_))))
                            (let ((_hd152809152823_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e152810152820_)))
                                  (_tl152808152825_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e152810152820_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl152808152825_))
                                  ((lambda (_L152828_)
                                     (let* ((_klass152839_
                                             (let ((__tmp153327
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self152800_
                                                       __id153005
                                                       __klass153003
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx152802_
                                                __tmp153327)))
                                            (_object152841_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _ctx152801_
                                                _L152828_))))
                                       (if (##structure-ref
                                            _klass152839_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp153343
                                                  (let ((__tmp153344
                                                         (let ((__tmp153346
                                                                (let ((__tmp153347
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp153348
                                      (##structure-ref
                                       _klass152839_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp153348 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp153347)))
                       (__tmp153345
                        (let ()
                          (declare (not safe))
                          (cons _object152841_ '()))))
                   (declare (not safe))
                   (cons __tmp153346 __tmp153345))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp153344))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp153343
                                              _stx152802_))
                                           (if (##structure-ref
                                                _klass152839_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp153337
                                                      (let ((__tmp153338
                                                             (let ((__tmp153340
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp153341
                                   (let ((__tmp153342
                                          (##structure-ref
                                           _klass152839_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp153342 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp153341)))
                           (__tmp153339
                            (let ()
                              (declare (not safe))
                              (cons _object152841_ '()))))
                       (declare (not safe))
                       (cons __tmp153340 __tmp153339))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp153338))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp153337
                                                  _stx152802_))
                                               (let ((__tmp153328
                                                      (let ((__tmp153329
                                                             (let ((__tmp153335
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp153336
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp153336)))
                           (__tmp153330
                            (let ((__tmp153332
                                   (let ((__tmp153333
                                          (let ((__tmp153334
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self152800_
                                                    __id153005
                                                    __klass153003
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp153334 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp153333)))
                                  (__tmp153331
                                   (let ()
                                     (declare (not safe))
                                     (cons _object152841_ '()))))
                              (declare (not safe))
                              (cons __tmp153332 __tmp153331))))
                       (declare (not safe))
                       (cons __tmp153335 __tmp153330))))
                (declare (not safe))
                (cons '%#call __tmp153329))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp153328
                                                  _stx152802_))))))
                                   _hd152809152823_)
                                  (let ()
                                    (declare (not safe))
                                    (_g152805152815_ _g152806152818_)))))
                          (let ()
                            (declare (not safe))
                            (_g152805152815_ _g152806152818_))))))
              (declare (not safe))
              (_g152804152844_ _args152803_))))))
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
      (lambda (_self152515_ _ctx152516_ _stx152517_ _args152518_)
        (let* ((_klass152520_
                (let ((__tmp153349
                       (##structure-ref _self152515_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx152517_ __tmp153349)))
               (_fields152522_
                (length (##structure-ref _klass152520_ '5 gxc#!class::t '#f)))
               (_args152528_
                (map (lambda (_g152523152525_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _ctx152516_ _g152523152525_)))
                     _args152518_))
               (_inline-make-object152530_
                (let ((__tmp153350
                       (let ((__tmp153356
                              (let ((__tmp153357
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp153357)))
                             (__tmp153351
                              (let ((__tmp153353
                                     (let ((__tmp153354
                                            (let ((__tmp153355
                                                   (##structure-ref
                                                    _self152515_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp153355 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153354)))
                                    (__tmp153352
                                     (make-list _fields152522_ '(%#quote #f))))
                                (declare (not safe))
                                (cons __tmp153353 __tmp153352))))
                         (declare (not safe))
                         (cons __tmp153356 __tmp153351))))
                  (declare (not safe))
                  (cons '%#call __tmp153350))))
          (let ((_$e152533_
                 (##structure-ref _klass152520_ '6 gxc#!class::t '#f)))
            (if _$e152533_
                ((lambda (_ctor152536_)
                   (let ((_$obj152538_
                          (let ((__tmp153458 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp153458)))
                         (_ctor-impl152539_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass152520_
                             _ctor152536_))))
                     (let ((__tmp153459
                            (let ((__tmp153460
                                   (let ((__tmp153528
                                          (let ((__tmp153529
                                                 (let ((__tmp153531
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj152538_
                                                                '())))
                                                       (__tmp153530
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object152530_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp153531
                                                         __tmp153530))))
                                            (declare (not safe))
                                            (cons __tmp153529 '())))
                                         (__tmp153461
                                          (let ((__tmp153462
                                                 (let ((__tmp153463
                                                        (let ((__tmp153467
                                                               (if _ctor-impl152539_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153522
                                  (let ((__tmp153526
                                         (let ((__tmp153527
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl152539_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153527)))
                                        (__tmp153523
                                         (let ((__tmp153524
                                                (let ((__tmp153525
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj152538_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp153525))))
                                           (declare (not safe))
                                           (cons __tmp153524 _args152528_))))
                                    (declare (not safe))
                                    (cons __tmp153526 __tmp153523))))
                             (declare (not safe))
                             (cons '%#call __tmp153522))
                           (let* ((_$ctor152541_
                                   (let ((__tmp153468 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp153468)))
                                  (__tmp153469
                                   (let ((__tmp153504
                                          (let ((__tmp153505
                                                 (let ((__tmp153521
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor152541_
                                                                '())))
                                                       (__tmp153506
                                                        (let ((__tmp153507
                                                               (let ((__tmp153508
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153519
                                     (let ((__tmp153520
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153520)))
                                    (__tmp153509
                                     (let ((__tmp153516
                                            (let ((__tmp153517
                                                   (let ((__tmp153518
                                                          (##structure-ref
                                                           _self152515_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp153518 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp153517)))
                                           (__tmp153510
                                            (let ((__tmp153514
                                                   (let ((__tmp153515
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj152538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153515)))
                                                  (__tmp153511
                                                   (let ((__tmp153512
                                                          (let ((__tmp153513
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _ctor152536_ '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp153513))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153512 '()))))
                                              (declare (not safe))
                                              (cons __tmp153514 __tmp153511))))
                                       (declare (not safe))
                                       (cons __tmp153516 __tmp153510))))
                                (declare (not safe))
                                (cons __tmp153519 __tmp153509))))
                         (declare (not safe))
                         (cons '%#call __tmp153508))))
                  (declare (not safe))
                  (cons __tmp153507 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153521
                                                         __tmp153506))))
                                            (declare (not safe))
                                            (cons __tmp153505 '())))
                                         (__tmp153470
                                          (let ((__tmp153471
                                                 (let ((__tmp153472
                                                        (let ((__tmp153502
                                                               (let ((__tmp153503
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor152541_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp153503)))
                      (__tmp153473
                       (let ((__tmp153495
                              (let ((__tmp153496
                                     (let ((__tmp153500
                                            (let ((__tmp153501
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor152541_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp153501)))
                                           (__tmp153497
                                            (let ((__tmp153498
                                                   (let ((__tmp153499
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj152538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153499))))
                                              (declare (not safe))
                                              (cons __tmp153498
                                                    _args152528_))))
                                       (declare (not safe))
                                       (cons __tmp153500 __tmp153497))))
                                (declare (not safe))
                                (cons '%#call __tmp153496)))
                             (__tmp153474
                              (let ((__tmp153475
                                     (let ((__tmp153476
                                            (let ((__tmp153493
                                                   (let ((__tmp153494
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153494)))
                                                  (__tmp153477
                                                   (let ((__tmp153491
                                                          (let ((__tmp153492
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp153492)))
                 (__tmp153478
                  (let ((__tmp153489
                         (let ((__tmp153490
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp153490)))
                        (__tmp153479
                         (let ((__tmp153486
                                (let ((__tmp153487
                                       (let ((__tmp153488
                                              (##structure-ref
                                               _self152515_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp153488 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp153487)))
                               (__tmp153480
                                (let ((__tmp153484
                                       (let ((__tmp153485
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp153485)))
                                      (__tmp153481
                                       (let ((__tmp153482
                                              (let ((__tmp153483
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor152536_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp153483))))
                                         (declare (not safe))
                                         (cons __tmp153482 '()))))
                                  (declare (not safe))
                                  (cons __tmp153484 __tmp153481))))
                           (declare (not safe))
                           (cons __tmp153486 __tmp153480))))
                    (declare (not safe))
                    (cons __tmp153489 __tmp153479))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153491
                                                           __tmp153478))))
                                              (declare (not safe))
                                              (cons __tmp153493 __tmp153477))))
                                       (declare (not safe))
                                       (cons '%#call __tmp153476))))
                                (declare (not safe))
                                (cons __tmp153475 '()))))
                         (declare (not safe))
                         (cons __tmp153495 __tmp153474))))
                  (declare (not safe))
                  (cons __tmp153502 __tmp153473))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp153472))))
                                            (declare (not safe))
                                            (cons __tmp153471 '()))))
                                     (declare (not safe))
                                     (cons __tmp153504 __tmp153470))))
                             (declare (not safe))
                             (cons '%#let-values __tmp153469))))
                      (__tmp153464
                       (let ((__tmp153465
                              (let ((__tmp153466
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj152538_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp153466))))
                         (declare (not safe))
                         (cons __tmp153465 '()))))
                  (declare (not safe))
                  (cons __tmp153467 __tmp153464))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp153463))))
                                            (declare (not safe))
                                            (cons __tmp153462 '()))))
                                     (declare (not safe))
                                     (cons __tmp153528 __tmp153461))))
                              (declare (not safe))
                              (cons '%#let-values __tmp153460))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp153459 _stx152517_))))
                 _$e152533_)
                (let ((_$e152543_
                       (##structure-ref _klass152520_ '9 gxc#!class::t '#f)))
                  (if _$e152543_
                      ((lambda (_metaclass152546_)
                         (let* ((_$obj152548_
                                 (let ((__tmp153420 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp153420)))
                                (_metakons152550_
                                 (let ((__tmp153421
                                        (let ()
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           _stx152517_
                                           _metaclass152546_))))
                                   (declare (not safe))
                                   (gxc#!class-lookup-method
                                    __tmp153421
                                    'instance-init!))))
                           (let ((__tmp153422
                                  (let ((__tmp153423
                                         (let ((__tmp153454
                                                (let ((__tmp153455
                                                       (let ((__tmp153457
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj152548_ '())))
                     (__tmp153456
                      (let ()
                        (declare (not safe))
                        (cons _inline-make-object152530_ '()))))
                 (declare (not safe))
                 (cons __tmp153457 __tmp153456))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153455 '())))
                                               (__tmp153424
                                                (let ((__tmp153425
                                                       (let ((__tmp153426
                                                              (let ((__tmp153430
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if _metakons152550_
                                 (let ((__tmp153444
                                        (let ((__tmp153452
                                               (let ((__tmp153453
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metakons152550_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp153453)))
                                              (__tmp153445
                                               (let ((__tmp153449
                                                      (let ((__tmp153450
                                                             (let ((__tmp153451
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self152515_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp153451 '()))))
                (declare (not safe))
                (cons '%#ref __tmp153450)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp153446
                                                      (let ((__tmp153447
                                                             (let ((__tmp153448
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _$obj152548_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp153448))))
                (declare (not safe))
                (cons __tmp153447 _args152528_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153449
                                                       __tmp153446))))
                                          (declare (not safe))
                                          (cons __tmp153452 __tmp153445))))
                                   (declare (not safe))
                                   (cons '%#call __tmp153444))
                                 (let ((__tmp153431
                                        (let ((__tmp153442
                                               (let ((__tmp153443
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'call-method
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp153443)))
                                              (__tmp153432
                                               (let ((__tmp153439
                                                      (let ((__tmp153440
                                                             (let ((__tmp153441
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self152515_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp153441 '()))))
                (declare (not safe))
                (cons '%#ref __tmp153440)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp153433
                                                      (let ((__tmp153437
                                                             (let ((__tmp153438
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'instance-init! '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp153438)))
                    (__tmp153434
                     (let ((__tmp153435
                            (let ((__tmp153436
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj152548_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp153436))))
                       (declare (not safe))
                       (cons __tmp153435 _args152528_))))
                (declare (not safe))
                (cons __tmp153437 __tmp153434))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153439
                                                       __tmp153433))))
                                          (declare (not safe))
                                          (cons __tmp153442 __tmp153432))))
                                   (declare (not safe))
                                   (cons '%#call __tmp153431))))
                            (__tmp153427
                             (let ((__tmp153428
                                    (let ((__tmp153429
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj152548_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp153429))))
                               (declare (not safe))
                               (cons __tmp153428 '()))))
                        (declare (not safe))
                        (cons __tmp153430 __tmp153427))))
                 (declare (not safe))
                 (cons '%#begin __tmp153426))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153425 '()))))
                                           (declare (not safe))
                                           (cons __tmp153454 __tmp153424))))
                                    (declare (not safe))
                                    (cons '%#let-values __tmp153423))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp153422 _stx152517_))))
                       _$e152543_)
                      (if (##structure-ref _klass152520_ '7 gxc#!class::t '#f)
                          (if (fx= (length _args152528_) _fields152522_)
                              (let ((__tmp153412
                                     (let ((__tmp153413
                                            (let ((__tmp153418
                                                   (let ((__tmp153419
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153419)))
                                                  (__tmp153414
                                                   (let ((__tmp153415
                                                          (let ((__tmp153416
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp153417
                                (##structure-ref
                                 _self152515_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp153417 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp153416))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153415
                                                           _args152528_))))
                                              (declare (not safe))
                                              (cons __tmp153418 __tmp153414))))
                                       (declare (not safe))
                                       (cons '%#call __tmp153413))))
                                (declare (not safe))
                                (gxc#xform-wrap-source
                                 __tmp153412
                                 _stx152517_))
                              (let ((__tmp153411
                                     (##structure-ref
                                      _self152515_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                    (__tmp153410
                                     (length (##structure-ref
                                              _klass152520_
                                              '5
                                              gxc#!class::t
                                              '#f))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"illegal struct constructor application; arity mismatch"
                                 _stx152517_
                                 __tmp153411
                                 __tmp153410)))
                          (let ((_$obj152553_
                                 (let ((__tmp153358 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp153358))))
                            (let _lp152555_ ((_rest152557_ _args152528_)
                                             (_initializers152558_ '()))
                              (let* ((___stx153084153085_ _rest152557_)
                                     (_g152562152583_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx153084153085_)))))
                                (let ((___kont153086153087_
                                       (lambda (_L152637_ _L152638_ _L152639_)
                                         (let* ((_slot152670_
                                                 (let ((__tmp153359
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L152639_))))
                                                   (declare (not safe))
                                                   (keyword->symbol
                                                    __tmp153359)))
                                                (_off152672_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass152520_
                                                    _slot152670_))))
                                           (if _off152672_
                                               (let ((__tmp153361
                                                      (let ((__tmp153362
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off152672_ _L152638_))))
                (declare (not safe))
                (cons __tmp153362 _initializers152558_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp152555_
                                                  _L152637_
                                                  __tmp153361))
                                               (let ((__tmp153360
                                                      (##structure-ref
                                                       _self152515_
                                                       '1
                                                       gxc#!type::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"unknown slot"
                                                  _stx152517_
                                                  __tmp153360
                                                  _slot152670_))))))
                                      (___kont153088153089_
                                       (lambda ()
                                         (let ((__tmp153363
                                                (let ((__tmp153364
                                                       (let ((__tmp153387
                                                              (let ((__tmp153388
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp153390
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj152553_ '())))
                                   (__tmp153389
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object152530_ '()))))
                               (declare (not safe))
                               (cons __tmp153390 __tmp153389))))
                        (declare (not safe))
                        (cons __tmp153388 '())))
                     (__tmp153365
                      (let ((__tmp153366
                             (let ((__tmp153367
                                    (let ((__tmp153384
                                           (let ((__tmp153385
                                                  (let ((__tmp153386
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj152553_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp153386))))
                                             (declare (not safe))
                                             (cons __tmp153385 '())))
                                          (__tmp153368
                                           (let ((__tmp153369
                                                  (lambda (_i152597_ _r152598_)
                                                    (let ((__tmp153370
                                                           (let ((__tmp153371
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp153381
                                 (let ((__tmp153382
                                        (let ((__tmp153383
                                               (##structure-ref
                                                _self152515_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp153383 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp153382)))
                                (__tmp153372
                                 (let ((__tmp153378
                                        (let ((__tmp153379
                                               (let ((__tmp153380
                                                      (car _i152597_)))
                                                 (declare (not safe))
                                                 (cons __tmp153380 '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp153379)))
                                       (__tmp153373
                                        (let ((__tmp153376
                                               (let ((__tmp153377
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _$obj152553_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp153377)))
                                              (__tmp153374
                                               (let ((__tmp153375
                                                      (cdr _i152597_)))
                                                 (declare (not safe))
                                                 (cons __tmp153375 '()))))
                                          (declare (not safe))
                                          (cons __tmp153376 __tmp153374))))
                                   (declare (not safe))
                                   (cons __tmp153378 __tmp153373))))
                            (declare (not safe))
                            (cons __tmp153381 __tmp153372))))
                     (declare (not safe))
                     (cons '%#struct-unchecked-set! __tmp153371))))
              (declare (not safe))
              (cons __tmp153370 _r152598_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (foldl1 __tmp153369
                                                     '()
                                                     _initializers152558_))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp153384 __tmp153368))))
                               (declare (not safe))
                               (cons '%#begin __tmp153367))))
                        (declare (not safe))
                        (cons __tmp153366 '()))))
                 (declare (not safe))
                 (cons __tmp153387 __tmp153365))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp153364))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp153363
                                            _stx152517_))))
                                      (___kont153090153091_
                                       (lambda ()
                                         (let ((__tmp153391
                                                (let ((__tmp153392
                                                       (let ((__tmp153406
                                                              (let ((__tmp153407
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp153409
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj152553_ '())))
                                   (__tmp153408
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object152530_ '()))))
                               (declare (not safe))
                               (cons __tmp153409 __tmp153408))))
                        (declare (not safe))
                        (cons __tmp153407 '())))
                     (__tmp153393
                      (let ((__tmp153394
                             (let ((__tmp153395
                                    (let ((__tmp153399
                                           (let ((__tmp153400
                                                  (let ((__tmp153404
                                                         (let ((__tmp153405
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'class-instance-init! '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp153405)))
                (__tmp153401
                 (let ((__tmp153402
                        (let ((__tmp153403
                               (let ()
                                 (declare (not safe))
                                 (cons _$obj152553_ '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp153403))))
                   (declare (not safe))
                   (cons __tmp153402 _args152528_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp153404
                                                          __tmp153401))))
                                             (declare (not safe))
                                             (cons '%#call __tmp153400)))
                                          (__tmp153396
                                           (let ((__tmp153397
                                                  (let ((__tmp153398
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj152553_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp153398))))
                                             (declare (not safe))
                                             (cons __tmp153397 '()))))
                                      (declare (not safe))
                                      (cons __tmp153399 __tmp153396))))
                               (declare (not safe))
                               (cons '%#begin __tmp153395))))
                        (declare (not safe))
                        (cons __tmp153394 '()))))
                 (declare (not safe))
                 (cons __tmp153406 __tmp153393))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp153392))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp153391
                                            _stx152517_)))))
                                  (let* ((_g152560152600_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   ___stx153084153085_))
                                                (___kont153088153089_)
                                                (___kont153090153091_))))
                                         (___match153121153122_
                                          (lambda (_e152569152605_
                                                   _hd152568152608_
                                                   _tl152567152610_
                                                   _e152572152613_
                                                   _hd152571152616_
                                                   _tl152570152618_
                                                   _e152575152621_
                                                   _hd152574152624_
                                                   _tl152573152626_
                                                   _e152578152629_
                                                   _hd152577152632_
                                                   _tl152576152634_)
                                            (let ((_L152637_ _tl152576152634_)
                                                  (_L152638_ _hd152577152632_)
                                                  (_L152639_ _hd152574152624_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-keyword?
                                                     _L152639_))
                                                  (___kont153086153087_
                                                   _L152637_
                                                   _L152638_
                                                   _L152639_)
                                                  (___kont153090153091_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx153084153085_))
                                        (let ((_e152569152605_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx153084153085_))))
                                          (let ((_tl152567152610_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e152569152605_)))
                                                (_hd152568152608_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e152569152605_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd152568152608_))
                                                (let ((_e152572152613_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd152568152608_))))
                                                  (let ((_tl152570152618_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e152572152613_)))
                                                        (_hd152571152616_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e152572152613_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd152571152616_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#quote
                                                               _hd152571152616_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl152570152618_))
                        (let ((_e152575152621_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl152570152618_))))
                          (let ((_tl152573152626_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e152575152621_)))
                                (_hd152574152624_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e152575152621_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl152573152626_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl152567152610_))
                                    (let ((_e152578152629_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl152567152610_))))
                                      (let ((_tl152576152634_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e152578152629_)))
                                            (_hd152577152632_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e152578152629_))))
                                        (___match153121153122_
                                         _e152569152605_
                                         _hd152568152608_
                                         _tl152567152610_
                                         _e152572152613_
                                         _hd152571152616_
                                         _tl152570152618_
                                         _e152575152621_
                                         _hd152574152624_
                                         _tl152573152626_
                                         _e152578152629_
                                         _hd152577152632_
                                         _tl152576152634_)))
                                    (___kont153090153091_))
                                (___kont153090153091_))))
                        (___kont153090153091_))
                    (___kont153090153091_))
                (___kont153090153091_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont153090153091_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g152560152600_))))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__klass153007 __method-table153008)
        (let ((__id153009
               (let ((__slot153010
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass153007 'id))))
                 (if __slot153010
                     __slot153010
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self152515_ _ctx152516_ _stx152517_ _args152518_)
            (let* ((_klass152520_
                    (let ((__tmp153532
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self152515_
                              __id153009
                              __klass153007
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx152517_ __tmp153532)))
                   (_fields152522_
                    (length (##structure-ref
                             _klass152520_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args152528_
                    (map (lambda (_g152523152525_)
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _ctx152516_ _g152523152525_)))
                         _args152518_))
                   (_inline-make-object152530_
                    (let ((__tmp153533
                           (let ((__tmp153539
                                  (let ((__tmp153540
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp153540)))
                                 (__tmp153534
                                  (let ((__tmp153536
                                         (let ((__tmp153537
                                                (let ((__tmp153538
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self152515_
                                                          __id153009
                                                          __klass153007
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp153538 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153537)))
                                        (__tmp153535
                                         (make-list
                                          _fields152522_
                                          '(%#quote #f))))
                                    (declare (not safe))
                                    (cons __tmp153536 __tmp153535))))
                             (declare (not safe))
                             (cons __tmp153539 __tmp153534))))
                      (declare (not safe))
                      (cons '%#call __tmp153533))))
              (let ((_$e152533_
                     (##structure-ref _klass152520_ '6 gxc#!class::t '#f)))
                (if _$e152533_
                    ((lambda (_ctor152536_)
                       (let ((_$obj152538_
                              (let ((__tmp153641 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp153641)))
                             (_ctor-impl152539_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass152520_
                                 _ctor152536_))))
                         (let ((__tmp153642
                                (let ((__tmp153643
                                       (let ((__tmp153711
                                              (let ((__tmp153712
                                                     (let ((__tmp153714
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj152538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp153713
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object152530_ '()))))
               (declare (not safe))
               (cons __tmp153714 __tmp153713))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp153712 '())))
                                             (__tmp153644
                                              (let ((__tmp153645
                                                     (let ((__tmp153646
                                                            (let ((__tmp153650
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl152539_
                               (let ((__tmp153705
                                      (let ((__tmp153709
                                             (let ((__tmp153710
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl152539_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp153710)))
                                            (__tmp153706
                                             (let ((__tmp153707
                                                    (let ((__tmp153708
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj152538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp153708))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153707
                                                     _args152528_))))
                                        (declare (not safe))
                                        (cons __tmp153709 __tmp153706))))
                                 (declare (not safe))
                                 (cons '%#call __tmp153705))
                               (let* ((_$ctor152541_
                                       (let ((__tmp153651
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp153651)))
                                      (__tmp153652
                                       (let ((__tmp153687
                                              (let ((__tmp153688
                                                     (let ((__tmp153704
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor152541_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp153689
                    (let ((__tmp153690
                           (let ((__tmp153691
                                  (let ((__tmp153702
                                         (let ((__tmp153703
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153703)))
                                        (__tmp153692
                                         (let ((__tmp153699
                                                (let ((__tmp153700
                                                       (let ((__tmp153701
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self152515_
                         __id153009
                         __klass153007
                         '#f))))
                 (declare (not safe))
                 (cons __tmp153701 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp153700)))
                                               (__tmp153693
                                                (let ((__tmp153697
                                                       (let ((__tmp153698
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj152538_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153698)))
              (__tmp153694
               (let ((__tmp153695
                      (let ((__tmp153696
                             (let ()
                               (declare (not safe))
                               (cons _ctor152536_ '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp153696))))
                 (declare (not safe))
                 (cons __tmp153695 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153697
                                                        __tmp153694))))
                                           (declare (not safe))
                                           (cons __tmp153699 __tmp153693))))
                                    (declare (not safe))
                                    (cons __tmp153702 __tmp153692))))
                             (declare (not safe))
                             (cons '%#call __tmp153691))))
                      (declare (not safe))
                      (cons __tmp153690 '()))))
               (declare (not safe))
               (cons __tmp153704 __tmp153689))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp153688 '())))
                                             (__tmp153653
                                              (let ((__tmp153654
                                                     (let ((__tmp153655
                                                            (let ((__tmp153685
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153686
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor152541_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp153686)))
                          (__tmp153656
                           (let ((__tmp153678
                                  (let ((__tmp153679
                                         (let ((__tmp153683
                                                (let ((__tmp153684
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor152541_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp153684)))
                                               (__tmp153680
                                                (let ((__tmp153681
                                                       (let ((__tmp153682
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj152538_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153682))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153681
                                                        _args152528_))))
                                           (declare (not safe))
                                           (cons __tmp153683 __tmp153680))))
                                    (declare (not safe))
                                    (cons '%#call __tmp153679)))
                                 (__tmp153657
                                  (let ((__tmp153658
                                         (let ((__tmp153659
                                                (let ((__tmp153676
                                                       (let ((__tmp153677
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153677)))
              (__tmp153660
               (let ((__tmp153674
                      (let ((__tmp153675
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp153675)))
                     (__tmp153661
                      (let ((__tmp153672
                             (let ((__tmp153673
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp153673)))
                            (__tmp153662
                             (let ((__tmp153669
                                    (let ((__tmp153670
                                           (let ((__tmp153671
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self152515_
                                                     __id153009
                                                     __klass153007
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp153671 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp153670)))
                                   (__tmp153663
                                    (let ((__tmp153667
                                           (let ((__tmp153668
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp153668)))
                                          (__tmp153664
                                           (let ((__tmp153665
                                                  (let ((__tmp153666
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor152536_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp153666))))
                                             (declare (not safe))
                                             (cons __tmp153665 '()))))
                                      (declare (not safe))
                                      (cons __tmp153667 __tmp153664))))
                               (declare (not safe))
                               (cons __tmp153669 __tmp153663))))
                        (declare (not safe))
                        (cons __tmp153672 __tmp153662))))
                 (declare (not safe))
                 (cons __tmp153674 __tmp153661))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153676
                                                        __tmp153660))))
                                           (declare (not safe))
                                           (cons '%#call __tmp153659))))
                                    (declare (not safe))
                                    (cons __tmp153658 '()))))
                             (declare (not safe))
                             (cons __tmp153678 __tmp153657))))
                      (declare (not safe))
                      (cons __tmp153685 __tmp153656))))
               (declare (not safe))
               (cons '%#if __tmp153655))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp153654 '()))))
                                         (declare (not safe))
                                         (cons __tmp153687 __tmp153653))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp153652))))
                          (__tmp153647
                           (let ((__tmp153648
                                  (let ((__tmp153649
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj152538_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp153649))))
                             (declare (not safe))
                             (cons __tmp153648 '()))))
                      (declare (not safe))
                      (cons __tmp153650 __tmp153647))))
               (declare (not safe))
               (cons '%#begin __tmp153646))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp153645 '()))))
                                         (declare (not safe))
                                         (cons __tmp153711 __tmp153644))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp153643))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp153642 _stx152517_))))
                     _$e152533_)
                    (let ((_$e152543_
                           (##structure-ref
                            _klass152520_
                            '9
                            gxc#!class::t
                            '#f)))
                      (if _$e152543_
                          ((lambda (_metaclass152546_)
                             (let* ((_$obj152548_
                                     (let ((__tmp153603 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp153603)))
                                    (_metakons152550_
                                     (let ((__tmp153604
                                            (let ()
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               _stx152517_
                                               _metaclass152546_))))
                                       (declare (not safe))
                                       (gxc#!class-lookup-method
                                        __tmp153604
                                        'instance-init!))))
                               (let ((__tmp153605
                                      (let ((__tmp153606
                                             (let ((__tmp153637
                                                    (let ((__tmp153638
                                                           (let ((__tmp153640
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj152548_ '())))
                         (__tmp153639
                          (let ()
                            (declare (not safe))
                            (cons _inline-make-object152530_ '()))))
                     (declare (not safe))
                     (cons __tmp153640 __tmp153639))))
              (declare (not safe))
              (cons __tmp153638 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp153607
                                                    (let ((__tmp153608
                                                           (let ((__tmp153609
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp153613
                                 (if _metakons152550_
                                     (let ((__tmp153627
                                            (let ((__tmp153635
                                                   (let ((__tmp153636
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _metakons152550_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153636)))
                                                  (__tmp153628
                                                   (let ((__tmp153632
                                                          (let ((__tmp153633
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp153634
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self152515_
                                   __id153009
                                   __klass153007
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp153634 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp153633)))
                 (__tmp153629
                  (let ((__tmp153630
                         (let ((__tmp153631
                                (let ()
                                  (declare (not safe))
                                  (cons _$obj152548_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp153631))))
                    (declare (not safe))
                    (cons __tmp153630 _args152528_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153632
                                                           __tmp153629))))
                                              (declare (not safe))
                                              (cons __tmp153635 __tmp153628))))
                                       (declare (not safe))
                                       (cons '%#call __tmp153627))
                                     (let ((__tmp153614
                                            (let ((__tmp153625
                                                   (let ((__tmp153626
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'call-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153626)))
                                                  (__tmp153615
                                                   (let ((__tmp153622
                                                          (let ((__tmp153623
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp153624
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self152515_
                                   __id153009
                                   __klass153007
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp153624 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp153623)))
                 (__tmp153616
                  (let ((__tmp153620
                         (let ((__tmp153621
                                (let ()
                                  (declare (not safe))
                                  (cons 'instance-init! '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp153621)))
                        (__tmp153617
                         (let ((__tmp153618
                                (let ((__tmp153619
                                       (let ()
                                         (declare (not safe))
                                         (cons _$obj152548_ '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp153619))))
                           (declare (not safe))
                           (cons __tmp153618 _args152528_))))
                    (declare (not safe))
                    (cons __tmp153620 __tmp153617))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153622
                                                           __tmp153616))))
                                              (declare (not safe))
                                              (cons __tmp153625 __tmp153615))))
                                       (declare (not safe))
                                       (cons '%#call __tmp153614))))
                                (__tmp153610
                                 (let ((__tmp153611
                                        (let ((__tmp153612
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$obj152548_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp153612))))
                                   (declare (not safe))
                                   (cons __tmp153611 '()))))
                            (declare (not safe))
                            (cons __tmp153613 __tmp153610))))
                     (declare (not safe))
                     (cons '%#begin __tmp153609))))
              (declare (not safe))
              (cons __tmp153608 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153637
                                                     __tmp153607))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp153606))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp153605
                                  _stx152517_))))
                           _$e152543_)
                          (if (##structure-ref
                               _klass152520_
                               '7
                               gxc#!class::t
                               '#f)
                              (if (fx= (length _args152528_) _fields152522_)
                                  (let ((__tmp153595
                                         (let ((__tmp153596
                                                (let ((__tmp153601
                                                       (let ((__tmp153602
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '##structure '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153602)))
              (__tmp153597
               (let ((__tmp153598
                      (let ((__tmp153599
                             (let ((__tmp153600
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self152515_
                                       __id153009
                                       __klass153007
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp153600 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp153599))))
                 (declare (not safe))
                 (cons __tmp153598 _args152528_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153601
                                                        __tmp153597))))
                                           (declare (not safe))
                                           (cons '%#call __tmp153596))))
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp153595
                                     _stx152517_))
                                  (let ((__tmp153594
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _self152515_
                                            __id153009
                                            __klass153007
                                            '#f)))
                                        (__tmp153593
                                         (length (##structure-ref
                                                  _klass152520_
                                                  '5
                                                  gxc#!class::t
                                                  '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _stx152517_
                                     __tmp153594
                                     __tmp153593)))
                              (let ((_$obj152553_
                                     (let ((__tmp153541 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp153541))))
                                (let _lp152555_ ((_rest152557_ _args152528_)
                                                 (_initializers152558_ '()))
                                  (let* ((___stx153126153127_ _rest152557_)
                                         (_g152562152583_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               ___stx153126153127_)))))
                                    (let ((___kont153128153129_
                                           (lambda (_L152637_
                                                    _L152638_
                                                    _L152639_)
                                             (let* ((_slot152670_
                                                     (let ((__tmp153542
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L152639_))))
                                                       (declare (not safe))
                                                       (keyword->symbol
                                                        __tmp153542)))
                                                    (_off152672_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass152520_
                                                        _slot152670_))))
                                               (if _off152672_
                                                   (let ((__tmp153544
                                                          (let ((__tmp153545
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _off152672_ _L152638_))))
                    (declare (not safe))
                    (cons __tmp153545 _initializers152558_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp152555_
                                                      _L152637_
                                                      __tmp153544))
                                                   (let ((__tmp153543
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _self152515_
                                                             __id153009
                                                             __klass153007
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"unknown slot"
                                                      _stx152517_
                                                      __tmp153543
                                                      _slot152670_))))))
                                          (___kont153130153131_
                                           (lambda ()
                                             (let ((__tmp153546
                                                    (let ((__tmp153547
                                                           (let ((__tmp153570
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp153571
                                 (let ((__tmp153573
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj152553_ '())))
                                       (__tmp153572
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object152530_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp153573 __tmp153572))))
                            (declare (not safe))
                            (cons __tmp153571 '())))
                         (__tmp153548
                          (let ((__tmp153549
                                 (let ((__tmp153550
                                        (let ((__tmp153567
                                               (let ((__tmp153568
                                                      (let ((__tmp153569
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj152553_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp153569))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153568 '())))
                                              (__tmp153551
                                               (let ((__tmp153552
                                                      (lambda (_i152597_
                                                               _r152598_)
                                                        (let ((__tmp153553
                                                               (let ((__tmp153554
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153564
                                     (let ((__tmp153565
                                            (let ((__tmp153566
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self152515_
                                                      __id153009
                                                      __klass153007
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp153566 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153565)))
                                    (__tmp153555
                                     (let ((__tmp153561
                                            (let ((__tmp153562
                                                   (let ((__tmp153563
                                                          (car _i152597_)))
                                                     (declare (not safe))
                                                     (cons __tmp153563 '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp153562)))
                                           (__tmp153556
                                            (let ((__tmp153559
                                                   (let ((__tmp153560
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj152553_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153560)))
                                                  (__tmp153557
                                                   (let ((__tmp153558
                                                          (cdr _i152597_)))
                                                     (declare (not safe))
                                                     (cons __tmp153558 '()))))
                                              (declare (not safe))
                                              (cons __tmp153559 __tmp153557))))
                                       (declare (not safe))
                                       (cons __tmp153561 __tmp153556))))
                                (declare (not safe))
                                (cons __tmp153564 __tmp153555))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp153554))))
                  (declare (not safe))
                  (cons __tmp153553 _r152598_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl1 __tmp153552
                                                         '()
                                                         _initializers152558_))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp153567
                                                  __tmp153551))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp153550))))
                            (declare (not safe))
                            (cons __tmp153549 '()))))
                     (declare (not safe))
                     (cons __tmp153570 __tmp153548))))
              (declare (not safe))
              (cons '%#let-values __tmp153547))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp153546
                                                _stx152517_))))
                                          (___kont153132153133_
                                           (lambda ()
                                             (let ((__tmp153574
                                                    (let ((__tmp153575
                                                           (let ((__tmp153589
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp153590
                                 (let ((__tmp153592
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj152553_ '())))
                                       (__tmp153591
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object152530_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp153592 __tmp153591))))
                            (declare (not safe))
                            (cons __tmp153590 '())))
                         (__tmp153576
                          (let ((__tmp153577
                                 (let ((__tmp153578
                                        (let ((__tmp153582
                                               (let ((__tmp153583
                                                      (let ((__tmp153587
                                                             (let ((__tmp153588
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'class-instance-init! '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp153588)))
                    (__tmp153584
                     (let ((__tmp153585
                            (let ((__tmp153586
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj152553_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp153586))))
                       (declare (not safe))
                       (cons __tmp153585 _args152528_))))
                (declare (not safe))
                (cons __tmp153587 __tmp153584))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp153583)))
                                              (__tmp153579
                                               (let ((__tmp153580
                                                      (let ((__tmp153581
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj152553_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp153581))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153580 '()))))
                                          (declare (not safe))
                                          (cons __tmp153582 __tmp153579))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp153578))))
                            (declare (not safe))
                            (cons __tmp153577 '()))))
                     (declare (not safe))
                     (cons __tmp153589 __tmp153576))))
              (declare (not safe))
              (cons '%#let-values __tmp153575))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp153574
                                                _stx152517_)))))
                                      (let* ((_g152560152600_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       ___stx153126153127_))
                                                    (___kont153130153131_)
                                                    (___kont153132153133_))))
                                             (___match153163153164_
                                              (lambda (_e152569152605_
                                                       _hd152568152608_
                                                       _tl152567152610_
                                                       _e152572152613_
                                                       _hd152571152616_
                                                       _tl152570152618_
                                                       _e152575152621_
                                                       _hd152574152624_
                                                       _tl152573152626_
                                                       _e152578152629_
                                                       _hd152577152632_
                                                       _tl152576152634_)
                                                (let ((_L152637_
                                                       _tl152576152634_)
                                                      (_L152638_
                                                       _hd152577152632_)
                                                      (_L152639_
                                                       _hd152574152624_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-keyword?
                                                         _L152639_))
                                                      (___kont153128153129_
                                                       _L152637_
                                                       _L152638_
                                                       _L152639_)
                                                      (___kont153132153133_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               ___stx153126153127_))
                                            (let ((_e152569152605_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      ___stx153126153127_))))
                                              (let ((_tl152567152610_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e152569152605_)))
                                                    (_hd152568152608_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e152569152605_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd152568152608_))
                                                    (let ((_e152572152613_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd152568152608_))))
                                                      (let ((_tl152570152618_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e152572152613_)))
                    (_hd152571152616_
                     (let () (declare (not safe)) (##car _e152572152613_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd152571152616_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd152571152616_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl152570152618_))
                            (let ((_e152575152621_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl152570152618_))))
                              (let ((_tl152573152626_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e152575152621_)))
                                    (_hd152574152624_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e152575152621_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl152573152626_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl152567152610_))
                                        (let ((_e152578152629_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl152567152610_))))
                                          (let ((_tl152576152634_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e152578152629_)))
                                                (_hd152577152632_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e152578152629_))))
                                            (___match153163153164_
                                             _e152569152605_
                                             _hd152568152608_
                                             _tl152567152610_
                                             _e152572152613_
                                             _hd152571152616_
                                             _tl152570152618_
                                             _e152575152621_
                                             _hd152574152624_
                                             _tl152573152626_
                                             _e152578152629_
                                             _hd152577152632_
                                             _tl152576152634_)))
                                        (___kont153132153133_))
                                    (___kont153132153133_))))
                            (___kont153132153133_))
                        (___kont153132153133_))
                    (___kont153132153133_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont153132153133_))))
                                            (let ()
                                              (declare (not safe))
                                              (_g152560152600_))))))))))))))))))
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
      (lambda (_self152337_ _ctx152338_ _stx152339_ _args152340_)
        (let* ((_g152342152352_
                (lambda (_g152343152349_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g152343152349_))))
               (_g152341152390_
                (lambda (_g152343152355_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g152343152355_))
                      (let ((_e152347152357_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g152343152355_))))
                        (let ((_hd152346152360_
                               (let ()
                                 (declare (not safe))
                                 (##car _e152347152357_)))
                              (_tl152345152362_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e152347152357_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl152345152362_))
                              ((lambda (_L152365_)
                                 (let* ((_klass152376_
                                         (let ((__tmp153715
                                                (##structure-ref
                                                 _self152337_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx152339_
                                            __tmp153715)))
                                        (_field152378_
                                         (let ((__tmp153716
                                                (##structure-ref
                                                 _self152337_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass152376_
                                            __tmp153716)))
                                        (_object152380_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _ctx152338_
                                            _L152365_))))
                                   (if (##structure-ref
                                        _klass152376_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp153793
                                              (let ((__tmp153802
                                                     (if (##structure-ref
                                                          _self152337_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp153794
                                                     (let ((__tmp153799
                                                            (let ((__tmp153800
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153801
                                  (##structure-ref
                                   _self152337_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp153801 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp153800)))
                   (__tmp153795
                    (let ((__tmp153797
                           (let ((__tmp153798
                                  (let ()
                                    (declare (not safe))
                                    (cons _field152378_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp153798)))
                          (__tmp153796
                           (let ()
                             (declare (not safe))
                             (cons _object152380_ '()))))
                      (declare (not safe))
                      (cons __tmp153797 __tmp153796))))
               (declare (not safe))
               (cons __tmp153799 __tmp153795))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp153802
                                                      __tmp153794))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp153793
                                          _stx152339_))
                                       (if (##structure-ref
                                            _klass152376_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp153783
                                                  (let ((__tmp153792
                                                         (if (##structure-ref
                                                              _self152337_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp153784
                                                         (let ((__tmp153789
                                                                (let ((__tmp153790
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp153791
                                      (##structure-ref
                                       _self152337_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp153791 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp153790)))
                       (__tmp153785
                        (let ((__tmp153787
                               (let ((__tmp153788
                                      (let ()
                                        (declare (not safe))
                                        (cons _field152378_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp153788)))
                              (__tmp153786
                               (let ()
                                 (declare (not safe))
                                 (cons _object152380_ '()))))
                          (declare (not safe))
                          (cons __tmp153787 __tmp153786))))
                   (declare (not safe))
                   (cons __tmp153789 __tmp153785))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp153792
                                                          __tmp153784))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp153783
                                              _stx152339_))
                                           (let ((_$e152383_
                                                  (let ((__tmp153717
                                                         (##structure-ref
                                                          _self152337_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass152376_
                                                     __tmp153717))))
                                             (if _$e152383_
                                                 ((lambda (_klass152386_)
                                                    (let ((__tmp153773
                                                           (let ((__tmp153782
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self152337_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp153774
                          (let ((__tmp153779
                                 (let ((__tmp153780
                                        (let ((__tmp153781
                                               (##structure-ref
                                                _self152337_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp153781 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp153780)))
                                (__tmp153775
                                 (let ((__tmp153777
                                        (let ((__tmp153778
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field152378_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp153778)))
                                       (__tmp153776
                                        (let ()
                                          (declare (not safe))
                                          (cons _object152380_ '()))))
                                   (declare (not safe))
                                   (cons __tmp153777 __tmp153776))))
                            (declare (not safe))
                            (cons __tmp153779 __tmp153775))))
                     (declare (not safe))
                     (cons __tmp153782 __tmp153774))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp153773 _stx152339_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e152383_)
                                                 (if (##structure-ref
                                                      _self152337_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp153727
                                                            (let* ((_$obj152388_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp153728 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp153728)))
                           (__tmp153729
                            (let ((__tmp153769
                                   (let ((__tmp153770
                                          (let ((__tmp153772
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj152388_ '())))
                                                (__tmp153771
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object152380_ '()))))
                                            (declare (not safe))
                                            (cons __tmp153772 __tmp153771))))
                                     (declare (not safe))
                                     (cons __tmp153770 '())))
                                  (__tmp153730
                                   (let ((__tmp153731
                                          (let ((__tmp153732
                                                 (let ((__tmp153761
                                                        (let ((__tmp153762
                                                               (let ((__tmp153766
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153767
                                     (let ((__tmp153768
                                            (##structure-ref
                                             _klass152376_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp153768 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp153767)))
                             (__tmp153763
                              (let ((__tmp153764
                                     (let ((__tmp153765
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj152388_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153765))))
                                (declare (not safe))
                                (cons __tmp153764 '()))))
                         (declare (not safe))
                         (cons __tmp153766 __tmp153763))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp153762)))
               (__tmp153733
                (let ((__tmp153750
                       (let ((__tmp153751
                              (let ((__tmp153758
                                     (let ((__tmp153759
                                            (let ((__tmp153760
                                                   (##structure-ref
                                                    _self152337_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp153760 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153759)))
                                    (__tmp153752
                                     (let ((__tmp153756
                                            (let ((__tmp153757
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field152378_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp153757)))
                                           (__tmp153753
                                            (let ((__tmp153754
                                                   (let ((__tmp153755
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj152388_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153755))))
                                              (declare (not safe))
                                              (cons __tmp153754 '()))))
                                       (declare (not safe))
                                       (cons __tmp153756 __tmp153753))))
                                (declare (not safe))
                                (cons __tmp153758 __tmp153752))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp153751)))
                      (__tmp153734
                       (let ((__tmp153735
                              (let ((__tmp153736
                                     (let ((__tmp153748
                                            (let ((__tmp153749
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp153749)))
                                           (__tmp153737
                                            (let ((__tmp153745
                                                   (let ((__tmp153746
                                                          (let ((__tmp153747
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self152337_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp153747 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153746)))
                                                  (__tmp153738
                                                   (let ((__tmp153743
                                                          (let ((__tmp153744
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj152388_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp153744)))
                 (__tmp153739
                  (let ((__tmp153740
                         (let ((__tmp153741
                                (let ((__tmp153742
                                       (##structure-ref
                                        _self152337_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp153742 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp153741))))
                    (declare (not safe))
                    (cons __tmp153740 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153743
                                                           __tmp153739))))
                                              (declare (not safe))
                                              (cons __tmp153745 __tmp153738))))
                                       (declare (not safe))
                                       (cons __tmp153748 __tmp153737))))
                                (declare (not safe))
                                (cons '%#call __tmp153736))))
                         (declare (not safe))
                         (cons __tmp153735 '()))))
                  (declare (not safe))
                  (cons __tmp153750 __tmp153734))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153761
                                                         __tmp153733))))
                                            (declare (not safe))
                                            (cons '%#if __tmp153732))))
                                     (declare (not safe))
                                     (cons __tmp153731 '()))))
                              (declare (not safe))
                              (cons __tmp153769 __tmp153730))))
                      (declare (not safe))
                      (cons '%#let-values __tmp153729))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp153727 _stx152339_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp153718
                                                            (let ((__tmp153719
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153725
                                  (let ((__tmp153726
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp153726)))
                                 (__tmp153720
                                  (let ((__tmp153721
                                         (let ((__tmp153722
                                                (let ((__tmp153723
                                                       (let ((__tmp153724
                                                              (##structure-ref
                                                               _self152337_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp153724
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp153723))))
                                           (declare (not safe))
                                           (cons __tmp153722 '()))))
                                    (declare (not safe))
                                    (cons _object152380_ __tmp153721))))
                             (declare (not safe))
                             (cons __tmp153725 __tmp153720))))
                      (declare (not safe))
                      (cons '%#call __tmp153719))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp153718 _stx152339_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd152346152360_)
                              (let ()
                                (declare (not safe))
                                (_g152342152352_ _g152343152355_)))))
                      (let ()
                        (declare (not safe))
                        (_g152342152352_ _g152343152355_))))))
          (declare (not safe))
          (_g152341152390_ _args152340_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass153011 __method-table153012)
        (let ((__slot153013
               (let ((__slot153016
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass153011 'slot))))
                 (if __slot153016
                     __slot153016
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__checked?153014
               (let ((__slot153017
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass153011 'checked?))))
                 (if __slot153017
                     __slot153017
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__id153015
               (let ((__slot153018
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass153011 'id))))
                 (if __slot153018
                     __slot153018
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self152337_ _ctx152338_ _stx152339_ _args152340_)
            (let* ((_g152342152352_
                    (lambda (_g152343152349_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g152343152349_))))
                   (_g152341152390_
                    (lambda (_g152343152355_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g152343152355_))
                          (let ((_e152347152357_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g152343152355_))))
                            (let ((_hd152346152360_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e152347152357_)))
                                  (_tl152345152362_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e152347152357_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl152345152362_))
                                  ((lambda (_L152365_)
                                     (let* ((_klass152376_
                                             (let ((__tmp153803
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self152337_
                                                       __id153015
                                                       __klass153011
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx152339_
                                                __tmp153803)))
                                            (_field152378_
                                             (let ((__tmp153804
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self152337_
                                                       __slot153013
                                                       __klass153011
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass152376_
                                                __tmp153804)))
                                            (_object152380_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _ctx152338_
                                                _L152365_))))
                                       (if (##structure-ref
                                            _klass152376_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp153881
                                                  (let ((__tmp153890
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self152337_
                        __checked?153014
                        __klass153011
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp153882
                 (let ((__tmp153887
                        (let ((__tmp153888
                               (let ((__tmp153889
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self152337_
                                         __id153015
                                         __klass153011
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp153889 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp153888)))
                       (__tmp153883
                        (let ((__tmp153885
                               (let ((__tmp153886
                                      (let ()
                                        (declare (not safe))
                                        (cons _field152378_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp153886)))
                              (__tmp153884
                               (let ()
                                 (declare (not safe))
                                 (cons _object152380_ '()))))
                          (declare (not safe))
                          (cons __tmp153885 __tmp153884))))
                   (declare (not safe))
                   (cons __tmp153887 __tmp153883))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp153890
                                                          __tmp153882))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp153881
                                              _stx152339_))
                                           (if (##structure-ref
                                                _klass152376_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp153871
                                                      (let ((__tmp153880
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self152337_
                            __checked?153014
                            __klass153011
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp153872
                     (let ((__tmp153877
                            (let ((__tmp153878
                                   (let ((__tmp153879
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self152337_
                                             __id153015
                                             __klass153011
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp153879 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp153878)))
                           (__tmp153873
                            (let ((__tmp153875
                                   (let ((__tmp153876
                                          (let ()
                                            (declare (not safe))
                                            (cons _field152378_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp153876)))
                                  (__tmp153874
                                   (let ()
                                     (declare (not safe))
                                     (cons _object152380_ '()))))
                              (declare (not safe))
                              (cons __tmp153875 __tmp153874))))
                       (declare (not safe))
                       (cons __tmp153877 __tmp153873))))
                (declare (not safe))
                (cons __tmp153880 __tmp153872))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp153871
                                                  _stx152339_))
                                               (let ((_$e152383_
                                                      (let ((__tmp153805
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self152337_
                        __slot153013
                        __klass153011
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass152376_ __tmp153805))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e152383_
                                                     ((lambda (_klass152386_)
                                                        (let ((__tmp153861
                                                               (let ((__tmp153870
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self152337_
                                     __checked?153014
                                     __klass153011
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp153862
                              (let ((__tmp153867
                                     (let ((__tmp153868
                                            (let ((__tmp153869
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self152337_
                                                      __id153015
                                                      __klass153011
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp153869 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153868)))
                                    (__tmp153863
                                     (let ((__tmp153865
                                            (let ((__tmp153866
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field152378_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp153866)))
                                           (__tmp153864
                                            (let ()
                                              (declare (not safe))
                                              (cons _object152380_ '()))))
                                       (declare (not safe))
                                       (cons __tmp153865 __tmp153864))))
                                (declare (not safe))
                                (cons __tmp153867 __tmp153863))))
                         (declare (not safe))
                         (cons __tmp153870 __tmp153862))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp153861 _stx152339_)))
              _$e152383_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self152337_
                                                            __checked?153014
                                                            __klass153011
                                                            '#f))
                                                         (let ((__tmp153815
                                                                (let* ((_$obj152388_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp153816 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp153816)))
                               (__tmp153817
                                (let ((__tmp153857
                                       (let ((__tmp153858
                                              (let ((__tmp153860
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj152388_
                                                             '())))
                                                    (__tmp153859
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object152380_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp153860
                                                      __tmp153859))))
                                         (declare (not safe))
                                         (cons __tmp153858 '())))
                                      (__tmp153818
                                       (let ((__tmp153819
                                              (let ((__tmp153820
                                                     (let ((__tmp153849
                                                            (let ((__tmp153850
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153854
                                  (let ((__tmp153855
                                         (let ((__tmp153856
                                                (##structure-ref
                                                 _klass152376_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp153856 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp153855)))
                                 (__tmp153851
                                  (let ((__tmp153852
                                         (let ((__tmp153853
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj152388_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153853))))
                                    (declare (not safe))
                                    (cons __tmp153852 '()))))
                             (declare (not safe))
                             (cons __tmp153854 __tmp153851))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp153850)))
                   (__tmp153821
                    (let ((__tmp153838
                           (let ((__tmp153839
                                  (let ((__tmp153846
                                         (let ((__tmp153847
                                                (let ((__tmp153848
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self152337_
                                                          __id153015
                                                          __klass153011
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp153848 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153847)))
                                        (__tmp153840
                                         (let ((__tmp153844
                                                (let ((__tmp153845
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field152378_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp153845)))
                                               (__tmp153841
                                                (let ((__tmp153842
                                                       (let ((__tmp153843
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj152388_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153843))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153842 '()))))
                                           (declare (not safe))
                                           (cons __tmp153844 __tmp153841))))
                                    (declare (not safe))
                                    (cons __tmp153846 __tmp153840))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp153839)))
                          (__tmp153822
                           (let ((__tmp153823
                                  (let ((__tmp153824
                                         (let ((__tmp153836
                                                (let ((__tmp153837
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp153837)))
                                               (__tmp153825
                                                (let ((__tmp153833
                                                       (let ((__tmp153834
                                                              (let ((__tmp153835
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self152337_
                                __id153015
                                __klass153011
                                '#f))))
                        (declare (not safe))
                        (cons __tmp153835 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153834)))
              (__tmp153826
               (let ((__tmp153831
                      (let ((__tmp153832
                             (let ()
                               (declare (not safe))
                               (cons _$obj152388_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp153832)))
                     (__tmp153827
                      (let ((__tmp153828
                             (let ((__tmp153829
                                    (let ((__tmp153830
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self152337_
                                              __slot153013
                                              __klass153011
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp153830 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp153829))))
                        (declare (not safe))
                        (cons __tmp153828 '()))))
                 (declare (not safe))
                 (cons __tmp153831 __tmp153827))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153833
                                                        __tmp153826))))
                                           (declare (not safe))
                                           (cons __tmp153836 __tmp153825))))
                                    (declare (not safe))
                                    (cons '%#call __tmp153824))))
                             (declare (not safe))
                             (cons __tmp153823 '()))))
                      (declare (not safe))
                      (cons __tmp153838 __tmp153822))))
               (declare (not safe))
               (cons __tmp153849 __tmp153821))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp153820))))
                                         (declare (not safe))
                                         (cons __tmp153819 '()))))
                                  (declare (not safe))
                                  (cons __tmp153857 __tmp153818))))
                          (declare (not safe))
                          (cons '%#let-values __tmp153817))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp153815 _stx152339_))
                 (let ((__tmp153806
                        (let ((__tmp153807
                               (let ((__tmp153813
                                      (let ((__tmp153814
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp153814)))
                                     (__tmp153808
                                      (let ((__tmp153809
                                             (let ((__tmp153810
                                                    (let ((__tmp153811
                                                           (let ((__tmp153812
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self152337_
                             __slot153013
                             __klass153011
                             '#f))))
                     (declare (not safe))
                     (cons __tmp153812 '()))))
              (declare (not safe))
              (cons '%#quote __tmp153811))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153810 '()))))
                                        (declare (not safe))
                                        (cons _object152380_ __tmp153809))))
                                 (declare (not safe))
                                 (cons __tmp153813 __tmp153808))))
                          (declare (not safe))
                          (cons '%#call __tmp153807))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp153806 _stx152339_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd152346152360_)
                                  (let ()
                                    (declare (not safe))
                                    (_g152342152352_ _g152343152355_)))))
                          (let ()
                            (declare (not safe))
                            (_g152342152352_ _g152343152355_))))))
              (declare (not safe))
              (_g152341152390_ _args152340_))))))
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
      (lambda (_self152141_ _ctx152142_ _stx152143_ _args152144_)
        (let* ((_g152146152160_
                (lambda (_g152147152157_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g152147152157_))))
               (_g152145152212_
                (lambda (_g152147152163_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g152147152163_))
                      (let ((_e152152152165_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g152147152163_))))
                        (let ((_hd152151152168_
                               (let ()
                                 (declare (not safe))
                                 (##car _e152152152165_)))
                              (_tl152150152170_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e152152152165_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl152150152170_))
                              (let ((_e152155152173_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl152150152170_))))
                                (let ((_hd152154152176_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e152155152173_)))
                                      (_tl152153152178_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e152155152173_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl152153152178_))
                                      ((lambda (_L152181_ _L152182_)
                                         (let* ((_klass152196_
                                                 (let ((__tmp153891
                                                        (##structure-ref
                                                         _self152141_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx152143_
                                                    __tmp153891)))
                                                (_field152198_
                                                 (let ((__tmp153892
                                                        (##structure-ref
                                                         _self152141_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass152196_
                                                    __tmp153892)))
                                                (_object152200_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _ctx152142_
                                                    _L152182_)))
                                                (_value152202_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _ctx152142_
                                                    _L152181_))))
                                           (if (##structure-ref
                                                _klass152196_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp153974
                                                      (let ((__tmp153984
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self152141_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp153975
                     (let ((__tmp153981
                            (let ((__tmp153982
                                   (let ((__tmp153983
                                          (##structure-ref
                                           _self152141_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp153983 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp153982)))
                           (__tmp153976
                            (let ((__tmp153979
                                   (let ((__tmp153980
                                          (let ()
                                            (declare (not safe))
                                            (cons _field152198_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp153980)))
                                  (__tmp153977
                                   (let ((__tmp153978
                                          (let ()
                                            (declare (not safe))
                                            (cons _value152202_ '()))))
                                     (declare (not safe))
                                     (cons _object152200_ __tmp153978))))
                              (declare (not safe))
                              (cons __tmp153979 __tmp153977))))
                       (declare (not safe))
                       (cons __tmp153981 __tmp153976))))
                (declare (not safe))
                (cons __tmp153984 __tmp153975))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp153974
                                                  _stx152143_))
                                               (if (##structure-ref
                                                    _klass152196_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp153963
                                                          (let ((__tmp153973
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self152141_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp153964
                         (let ((__tmp153970
                                (let ((__tmp153971
                                       (let ((__tmp153972
                                              (##structure-ref
                                               _self152141_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp153972 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp153971)))
                               (__tmp153965
                                (let ((__tmp153968
                                       (let ((__tmp153969
                                              (let ()
                                                (declare (not safe))
                                                (cons _field152198_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp153969)))
                                      (__tmp153966
                                       (let ((__tmp153967
                                              (let ()
                                                (declare (not safe))
                                                (cons _value152202_ '()))))
                                         (declare (not safe))
                                         (cons _object152200_ __tmp153967))))
                                  (declare (not safe))
                                  (cons __tmp153968 __tmp153966))))
                           (declare (not safe))
                           (cons __tmp153970 __tmp153965))))
                    (declare (not safe))
                    (cons __tmp153973 __tmp153964))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp153963
                                                      _stx152143_))
                                                   (let ((_$e152205_
                                                          (let ((__tmp153893
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self152141_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass152196_ __tmp153893))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e152205_
                                                         ((lambda (_klass152208_)
                                                            (let ((__tmp153952
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153962
                                  (if (##structure-ref
                                       _self152141_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp153953
                                  (let ((__tmp153959
                                         (let ((__tmp153960
                                                (let ((__tmp153961
                                                       (##structure-ref
                                                        _self152141_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp153961 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153960)))
                                        (__tmp153954
                                         (let ((__tmp153957
                                                (let ((__tmp153958
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field152198_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp153958)))
                                               (__tmp153955
                                                (let ((__tmp153956
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value152202_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object152200_
                                                        __tmp153956))))
                                           (declare (not safe))
                                           (cons __tmp153957 __tmp153955))))
                                    (declare (not safe))
                                    (cons __tmp153959 __tmp153954))))
                             (declare (not safe))
                             (cons __tmp153962 __tmp153953))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp153952 _stx152143_)))
                  _$e152205_)
                 (if (##structure-ref _self152141_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp153904
                            (let* ((_$obj152210_
                                    (let ((__tmp153905 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp153905)))
                                   (__tmp153906
                                    (let ((__tmp153948
                                           (let ((__tmp153949
                                                  (let ((__tmp153951
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj152210_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp153950
                 (let () (declare (not safe)) (cons _object152200_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp153951
                                                          __tmp153950))))
                                             (declare (not safe))
                                             (cons __tmp153949 '())))
                                          (__tmp153907
                                           (let ((__tmp153908
                                                  (let ((__tmp153909
                                                         (let ((__tmp153940
                                                                (let ((__tmp153941
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp153945
                                      (let ((__tmp153946
                                             (let ((__tmp153947
                                                    (##structure-ref
                                                     _klass152196_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp153947 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp153946)))
                                     (__tmp153942
                                      (let ((__tmp153943
                                             (let ((__tmp153944
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj152210_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp153944))))
                                        (declare (not safe))
                                        (cons __tmp153943 '()))))
                                 (declare (not safe))
                                 (cons __tmp153945 __tmp153942))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp153941)))
                       (__tmp153910
                        (let ((__tmp153928
                               (let ((__tmp153929
                                      (let ((__tmp153937
                                             (let ((__tmp153938
                                                    (let ((__tmp153939
                                                           (##structure-ref
                                                            _self152141_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp153939 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp153938)))
                                            (__tmp153930
                                             (let ((__tmp153935
                                                    (let ((__tmp153936
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field152198_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp153936)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp153931
                                                    (let ((__tmp153933
                                                           (let ((__tmp153934
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj152210_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp153934)))
                  (__tmp153932
                   (let () (declare (not safe)) (cons _value152202_ '()))))
              (declare (not safe))
              (cons __tmp153933 __tmp153932))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153935
                                                     __tmp153931))))
                                        (declare (not safe))
                                        (cons __tmp153937 __tmp153930))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp153929)))
                              (__tmp153911
                               (let ((__tmp153912
                                      (let ((__tmp153913
                                             (let ((__tmp153926
                                                    (let ((__tmp153927
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp153927)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp153914
                                                    (let ((__tmp153923
                                                           (let ((__tmp153924
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp153925
                                 (##structure-ref
                                  _self152141_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp153925 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp153924)))
                  (__tmp153915
                   (let ((__tmp153921
                          (let ((__tmp153922
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj152210_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp153922)))
                         (__tmp153916
                          (let ((__tmp153918
                                 (let ((__tmp153919
                                        (let ((__tmp153920
                                               (##structure-ref
                                                _self152141_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp153920 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp153919)))
                                (__tmp153917
                                 (let ()
                                   (declare (not safe))
                                   (cons _value152202_ '()))))
                            (declare (not safe))
                            (cons __tmp153918 __tmp153917))))
                     (declare (not safe))
                     (cons __tmp153921 __tmp153916))))
              (declare (not safe))
              (cons __tmp153923 __tmp153915))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153926
                                                     __tmp153914))))
                                        (declare (not safe))
                                        (cons '%#call __tmp153913))))
                                 (declare (not safe))
                                 (cons __tmp153912 '()))))
                          (declare (not safe))
                          (cons __tmp153928 __tmp153911))))
                   (declare (not safe))
                   (cons __tmp153940 __tmp153910))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp153909))))
                                             (declare (not safe))
                                             (cons __tmp153908 '()))))
                                      (declare (not safe))
                                      (cons __tmp153948 __tmp153907))))
                              (declare (not safe))
                              (cons '%#let-values __tmp153906))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp153904 _stx152143_))
                     (let ((__tmp153894
                            (let ((__tmp153895
                                   (let ((__tmp153902
                                          (let ((__tmp153903
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp153903)))
                                         (__tmp153896
                                          (let ((__tmp153897
                                                 (let ((__tmp153899
                                                        (let ((__tmp153900
                                                               (let ((__tmp153901
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self152141_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp153901 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp153900)))
               (__tmp153898
                (let () (declare (not safe)) (cons _value152202_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153899
                                                         __tmp153898))))
                                            (declare (not safe))
                                            (cons _object152200_
                                                  __tmp153897))))
                                     (declare (not safe))
                                     (cons __tmp153902 __tmp153896))))
                              (declare (not safe))
                              (cons '%#call __tmp153895))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp153894 _stx152143_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd152154152176_
                                       _hd152151152168_)
                                      (let ()
                                        (declare (not safe))
                                        (_g152146152160_ _g152147152163_)))))
                              (let ()
                                (declare (not safe))
                                (_g152146152160_ _g152147152163_)))))
                      (let ()
                        (declare (not safe))
                        (_g152146152160_ _g152147152163_))))))
          (declare (not safe))
          (_g152145152212_ _args152144_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass153019 __method-table153020)
        (let ((__slot153021
               (let ((__slot153024
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass153019 'slot))))
                 (if __slot153024
                     __slot153024
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__checked?153022
               (let ((__slot153025
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass153019 'checked?))))
                 (if __slot153025
                     __slot153025
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__id153023
               (let ((__slot153026
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass153019 'id))))
                 (if __slot153026
                     __slot153026
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self152141_ _ctx152142_ _stx152143_ _args152144_)
            (let* ((_g152146152160_
                    (lambda (_g152147152157_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g152147152157_))))
                   (_g152145152212_
                    (lambda (_g152147152163_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g152147152163_))
                          (let ((_e152152152165_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g152147152163_))))
                            (let ((_hd152151152168_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e152152152165_)))
                                  (_tl152150152170_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e152152152165_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl152150152170_))
                                  (let ((_e152155152173_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl152150152170_))))
                                    (let ((_hd152154152176_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e152155152173_)))
                                          (_tl152153152178_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e152155152173_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl152153152178_))
                                          ((lambda (_L152181_ _L152182_)
                                             (let* ((_klass152196_
                                                     (let ((__tmp153985
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self152141_
                                                               __id153023
                                                               __klass153019
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx152143_
                                                        __tmp153985)))
                                                    (_field152198_
                                                     (let ((__tmp153986
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self152141_
                                                               __slot153021
                                                               __klass153019
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass152196_
                                                        __tmp153986)))
                                                    (_object152200_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _ctx152142_
                                                        _L152182_)))
                                                    (_value152202_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _ctx152142_
                                                        _L152181_))))
                                               (if (##structure-ref
                                                    _klass152196_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp154068
                                                          (let ((__tmp154078
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self152141_
                                __checked?153022
                                __klass153019
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp154069
                         (let ((__tmp154075
                                (let ((__tmp154076
                                       (let ((__tmp154077
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self152141_
                                                 __id153023
                                                 __klass153019
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp154077 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp154076)))
                               (__tmp154070
                                (let ((__tmp154073
                                       (let ((__tmp154074
                                              (let ()
                                                (declare (not safe))
                                                (cons _field152198_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp154074)))
                                      (__tmp154071
                                       (let ((__tmp154072
                                              (let ()
                                                (declare (not safe))
                                                (cons _value152202_ '()))))
                                         (declare (not safe))
                                         (cons _object152200_ __tmp154072))))
                                  (declare (not safe))
                                  (cons __tmp154073 __tmp154071))))
                           (declare (not safe))
                           (cons __tmp154075 __tmp154070))))
                    (declare (not safe))
                    (cons __tmp154078 __tmp154069))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp154068
                                                      _stx152143_))
                                                   (if (##structure-ref
                                                        _klass152196_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp154057
                                                              (let ((__tmp154067
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self152141_
                                    __checked?153022
                                    __klass153019
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp154058
                             (let ((__tmp154064
                                    (let ((__tmp154065
                                           (let ((__tmp154066
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self152141_
                                                     __id153023
                                                     __klass153019
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp154066 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp154065)))
                                   (__tmp154059
                                    (let ((__tmp154062
                                           (let ((__tmp154063
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field152198_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp154063)))
                                          (__tmp154060
                                           (let ((__tmp154061
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value152202_ '()))))
                                             (declare (not safe))
                                             (cons _object152200_
                                                   __tmp154061))))
                                      (declare (not safe))
                                      (cons __tmp154062 __tmp154060))))
                               (declare (not safe))
                               (cons __tmp154064 __tmp154059))))
                        (declare (not safe))
                        (cons __tmp154067 __tmp154058))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp154057 _stx152143_))
               (let ((_$e152205_
                      (let ((__tmp153987
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self152141_
                                __slot153021
                                __klass153019
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass152196_
                         __tmp153987))))
                 (if _$e152205_
                     ((lambda (_klass152208_)
                        (let ((__tmp154046
                               (let ((__tmp154056
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self152141_
                                             __checked?153022
                                             __klass153019
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp154047
                                      (let ((__tmp154053
                                             (let ((__tmp154054
                                                    (let ((__tmp154055
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self152141_
                                                              __id153023
                                                              __klass153019
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp154055 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp154054)))
                                            (__tmp154048
                                             (let ((__tmp154051
                                                    (let ((__tmp154052
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field152198_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp154052)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp154049
                                                    (let ((__tmp154050
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value152202_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object152200_ __tmp154050))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp154051
                                                     __tmp154049))))
                                        (declare (not safe))
                                        (cons __tmp154053 __tmp154048))))
                                 (declare (not safe))
                                 (cons __tmp154056 __tmp154047))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp154046 _stx152143_)))
                      _$e152205_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self152141_
                            __checked?153022
                            __klass153019
                            '#f))
                         (let ((__tmp153998
                                (let* ((_$obj152210_
                                        (let ((__tmp153999 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp153999)))
                                       (__tmp154000
                                        (let ((__tmp154042
                                               (let ((__tmp154043
                                                      (let ((__tmp154045
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj152210_ '())))
                    (__tmp154044
                     (let () (declare (not safe)) (cons _object152200_ '()))))
                (declare (not safe))
                (cons __tmp154045 __tmp154044))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp154043 '())))
                                              (__tmp154001
                                               (let ((__tmp154002
                                                      (let ((__tmp154003
                                                             (let ((__tmp154034
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp154035
                                   (let ((__tmp154039
                                          (let ((__tmp154040
                                                 (let ((__tmp154041
                                                        (##structure-ref
                                                         _klass152196_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp154041 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp154040)))
                                         (__tmp154036
                                          (let ((__tmp154037
                                                 (let ((__tmp154038
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj152210_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp154038))))
                                            (declare (not safe))
                                            (cons __tmp154037 '()))))
                                     (declare (not safe))
                                     (cons __tmp154039 __tmp154036))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp154035)))
                           (__tmp154004
                            (let ((__tmp154022
                                   (let ((__tmp154023
                                          (let ((__tmp154031
                                                 (let ((__tmp154032
                                                        (let ((__tmp154033
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self152141_
                          __id153023
                          __klass153019
                          '#f))))
                  (declare (not safe))
                  (cons __tmp154033 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp154032)))
                                                (__tmp154024
                                                 (let ((__tmp154029
                                                        (let ((__tmp154030
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field152198_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp154030)))
               (__tmp154025
                (let ((__tmp154027
                       (let ((__tmp154028
                              (let ()
                                (declare (not safe))
                                (cons _$obj152210_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp154028)))
                      (__tmp154026
                       (let () (declare (not safe)) (cons _value152202_ '()))))
                  (declare (not safe))
                  (cons __tmp154027 __tmp154026))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp154029
                                                         __tmp154025))))
                                            (declare (not safe))
                                            (cons __tmp154031 __tmp154024))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp154023)))
                                  (__tmp154005
                                   (let ((__tmp154006
                                          (let ((__tmp154007
                                                 (let ((__tmp154020
                                                        (let ((__tmp154021
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp154021)))
               (__tmp154008
                (let ((__tmp154017
                       (let ((__tmp154018
                              (let ((__tmp154019
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self152141_
                                        __id153023
                                        __klass153019
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp154019 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp154018)))
                      (__tmp154009
                       (let ((__tmp154015
                              (let ((__tmp154016
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj152210_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp154016)))
                             (__tmp154010
                              (let ((__tmp154012
                                     (let ((__tmp154013
                                            (let ((__tmp154014
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self152141_
                                                      __slot153021
                                                      __klass153019
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp154014 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp154013)))
                                    (__tmp154011
                                     (let ()
                                       (declare (not safe))
                                       (cons _value152202_ '()))))
                                (declare (not safe))
                                (cons __tmp154012 __tmp154011))))
                         (declare (not safe))
                         (cons __tmp154015 __tmp154010))))
                  (declare (not safe))
                  (cons __tmp154017 __tmp154009))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp154020
                                                         __tmp154008))))
                                            (declare (not safe))
                                            (cons '%#call __tmp154007))))
                                     (declare (not safe))
                                     (cons __tmp154006 '()))))
                              (declare (not safe))
                              (cons __tmp154022 __tmp154005))))
                       (declare (not safe))
                       (cons __tmp154034 __tmp154004))))
                (declare (not safe))
                (cons '%#if __tmp154003))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp154002 '()))))
                                          (declare (not safe))
                                          (cons __tmp154042 __tmp154001))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp154000))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp153998 _stx152143_))
                         (let ((__tmp153988
                                (let ((__tmp153989
                                       (let ((__tmp153996
                                              (let ((__tmp153997
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp153997)))
                                             (__tmp153990
                                              (let ((__tmp153991
                                                     (let ((__tmp153993
                                                            (let ((__tmp153994
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153995
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self152141_
                                     __slot153021
                                     __klass153019
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp153995 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp153994)))
                   (__tmp153992
                    (let () (declare (not safe)) (cons _value152202_ '()))))
               (declare (not safe))
               (cons __tmp153993 __tmp153992))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object152200_
                                                      __tmp153991))))
                                         (declare (not safe))
                                         (cons __tmp153996 __tmp153990))))
                                  (declare (not safe))
                                  (cons '%#call __tmp153989))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp153988
                            _stx152143_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd152154152176_
                                           _hd152151152168_)
                                          (let ()
                                            (declare (not safe))
                                            (_g152146152160_
                                             _g152147152163_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g152146152160_ _g152147152163_)))))
                          (let ()
                            (declare (not safe))
                            (_g152146152160_ _g152147152163_))))))
              (declare (not safe))
              (_g152145152212_ _args152144_))))))
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
      (lambda (_self151974_ _ctx151975_ _stx151976_ _args151977_)
        (let* ((_self151978151987_ _self151974_)
               (_E151980151991_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self151978151987_))))
               (_K151981151998_
                (lambda (_inline151994_ _dispatch151995_ _arity151996_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self151974_ _args151977_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx151976_
                         _arity151996_)))
                  (if _inline151994_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp154084
                               (let ((__tmp154085
                                      (_inline151994_ _stx151976_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp154085
                                  _stx151976_))))
                          (declare (not safe))
                          (gxc#compile-e__1 _ctx151975_ __tmp154084)))
                      (if _dispatch151995_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch151995_))
                            (let ((__tmp154079
                                   (let ((__tmp154080
                                          (let ((__tmp154081
                                                 (let ((__tmp154082
                                                        (let ((__tmp154083
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch151995_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp154083))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp154082
                                                         _args151977_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp154081))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp154080
                                      _stx151976_))))
                              (declare (not safe))
                              (gxc#compile-e__1 _ctx151975_ __tmp154079)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _ctx151975_ _stx151976_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self151978151987_ 'gxc#!lambda::t))
              (let* ((_e151982152001_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151978151987_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e151983152004_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151978151987_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity152007_ _e151983152004_)
                     (_e151984152009_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151978151987_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch152012_ _e151984152009_)
                     (_e151985152014_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151978151987_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline152017_ _e151985152014_))
                (declare (not safe))
                (_K151981151998_
                 _inline152017_
                 _dispatch152012_
                 _arity152007_))
              (let () (declare (not safe)) (_E151980151991_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self151812_ _ctx151813_ _stx151814_ _args151815_)
        (let* ((_self151816151823_ _self151812_)
               (_E151818151827_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self151816151823_))))
               (_K151819151841_
                (lambda (_clauses151830_)
                  (let ((_$e151836_
                         (let ((__tmp154086
                                (lambda (_g151831151833_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g151831151833_
                                     _args151815_)))))
                           (declare (not safe))
                           (find __tmp154086 _clauses151830_))))
                    (if _$e151836_
                        ((lambda (_clause151839_)
                           (let ((__method153297
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause151839_
                                     'optimize-call))))
                             (if __method153297
                                 (__method153297
                                  _clause151839_
                                  _ctx151813_
                                  _stx151814_
                                  _args151815_)
                                 (let ()
                                   (declare (not safe))
                                   (error '"Missing method"
                                          _clause151839_
                                          'optimize-call)))))
                         _$e151836_)
                        (let ((__tmp154087
                               (map gxc#!lambda-arity _clauses151830_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx151814_
                           __tmp154087)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self151816151823_
                 'gxc#!case-lambda::t))
              (let* ((_e151820151844_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151816151823_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e151821151847_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151816151823_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses151850_ _e151821151847_))
                (declare (not safe))
                (_K151819151841_ _clauses151850_))
              (let () (declare (not safe)) (_E151818151827_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self151626_ _args151627_)
        (let* ((_self151628151635_ _self151626_)
               (_E151630151639_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self151628151635_))))
               (_K151631151679_
                (lambda (_arity151642_)
                  (let* ((_arity151643151652_ _arity151642_)
                         (_E151646151656_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (error '"No clause matching"
                                     _arity151643151652_)))))
                    (let ((_K151650151676_
                           (lambda ()
                             (fx= (length _args151627_) _arity151642_)))
                          (_K151647151662_
                           (lambda (_arity151660_)
                             (fx>= (length _args151627_) _arity151660_))))
                      (let ((_try-match151645151672_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity151643151652_))
                                   (let ((_tl151649151667_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity151643151652_)))
                                         (_hd151648151665_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity151643151652_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl151649151667_))
                                         (let ((_arity151670_
                                                _hd151648151665_))
                                           (declare (not safe))
                                           (_K151647151662_ _arity151670_))
                                         (let ()
                                           (declare (not safe))
                                           (_E151646151656_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E151646151656_))))))
                        (if (let ()
                              (declare (not safe))
                              (fixnum? _arity151643151652_))
                            (let () (declare (not safe)) (_K151650151676_))
                            (let ()
                              (declare (not safe))
                              (_try-match151645151672_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self151628151635_ 'gxc#!lambda::t))
              (let* ((_e151632151682_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151628151635_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e151633151685_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151628151635_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity151688_ _e151633151685_))
                (declare (not safe))
                (_K151631151679_ _arity151688_))
              (let () (declare (not safe)) (_E151630151639_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self151510_ _ctx151511_ _stx151512_ _args151513_)
        (let* ((_self151514151522_ _self151510_)
               (_E151516151526_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self151514151522_))))
               (_K151517151610_
                (lambda (_dispatch151529_ _table151530_)
                  (let* ((_g151531151540_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch151529_)))
                         (_else151533151548_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch151529_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _ctx151511_ _stx151512_))))
                         (_K151535151594_
                          (lambda (_main151551_ _keys151552_)
                            (let ((_g154088_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx151512_
                                      _args151513_))))
                              (begin
                                (let ((_g154089_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g154088_)
                                             (##vector-length _g154088_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g154089_ 2)))
                                      (error "Context expects 2 values"
                                             _g154089_)))
                                (let ((_pargs151554_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g154088_ 0)))
                                      (_kwargs151555_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g154088_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main151551_))
                                    (if _table151530_
                                        (let ((_xargs151562_
                                               (map (lambda (_key151557_)
                                                      (let ((_$e151559_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__0 _key151557_ _kwargs151555_))))
                (if _$e151559_ (values _$e151559_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys151552_)))
                                          (for-each
                                           (lambda (_kw151564_)
                                             (if (memq (car _kw151564_)
                                                       _keys151552_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx151512_
                                                    _keys151552_
                                                    _kw151564_))))
                                           _kwargs151555_)
                                          (let ((__tmp154141
                                                 (let ((__tmp154142
                                                        (let ((__tmp154143
                                                               (let ((__tmp154148
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp154149
                                     (let ()
                                       (declare (not safe))
                                       (cons _main151551_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp154149)))
                             (__tmp154144
                              (let ((__tmp154146
                                     (let ((__tmp154147
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp154147)))
                                    (__tmp154145
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs151554_
                                               _xargs151562_))))
                                (declare (not safe))
                                (cons __tmp154146 __tmp154145))))
                         (declare (not safe))
                         (cons __tmp154148 __tmp154144))))
                  (declare (not safe))
                  (cons '%#call __tmp154143))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp154142
                                                    _stx151512_))))
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _ctx151511_
                                             __tmp154141)))
                                        (let* ((_kwt151566_
                                                (let ((__tmp154090
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp154090)))
                                               (_kwvars151569_
                                                (map (lambda (_g154091_)
                                                       (let ((__tmp154092
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp154092)))
                                                     _kwargs151555_))
                                               (_kwbind151574_
                                                (map (lambda (_kw151571_
                                                              _kwvar151572_)
                                                       (let ((__tmp154095
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar151572_ '())))
                     (__tmp154093
                      (let ((__tmp154094 (cdr _kw151571_)))
                        (declare (not safe))
                        (cons __tmp154094 '()))))
                 (declare (not safe))
                 (cons __tmp154095 __tmp154093)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs151555_
                                                     _kwvars151569_))
                                               (_kwset151579_
                                                (map (lambda (_kw151576_
                                                              _kwvar151577_)
                                                       (let ((__tmp154096
                                                              (let ((__tmp154097
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp154105
                                    (let ((__tmp154106
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt151566_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp154106)))
                                   (__tmp154098
                                    (let ((__tmp154102
                                           (let ((__tmp154103
                                                  (let ((__tmp154104
                                                         (car _kw151576_)))
                                                    (declare (not safe))
                                                    (cons __tmp154104 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp154103)))
                                          (__tmp154099
                                           (let ((__tmp154100
                                                  (let ((__tmp154101
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar151577_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp154101))))
                                             (declare (not safe))
                                             (cons __tmp154100 '()))))
                                      (declare (not safe))
                                      (cons __tmp154102 __tmp154099))))
                               (declare (not safe))
                               (cons __tmp154105 __tmp154098))))
                        (declare (not safe))
                        (cons '(%#ref symbolic-table-set!) __tmp154097))))
                 (declare (not safe))
                 (cons '%#call __tmp154096)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs151555_
                                                     _kwvars151569_))
                                               (_xkwargs151584_
                                                (map (lambda (_kw151581_
                                                              _kwvar151582_)
                                                       (let ((__tmp154109
                                                              (car _kw151581_))
                                                             (__tmp154107
                                                              (let ((__tmp154108
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar151582_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp154108))))
                 (declare (not safe))
                 (cons __tmp154109 __tmp154107)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs151555_
                                                     _kwvars151569_))
                                               (_xargs151591_
                                                (map (lambda (_key151586_)
                                                       (let ((_$e151588_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq__0 _key151586_ _xkwargs151584_))))
                 (if _$e151588_ (values _$e151588_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys151552_)))
                                          (let ((__tmp154110
                                                 (let ((__tmp154111
                                                        (let ((__tmp154112
                                                               (let ((__tmp154113
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp154114
                                     (let ((__tmp154115
                                            (let ((__tmp154129
                                                   (let ((__tmp154130
                                                          (let ((__tmp154140
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt151566_ '())))
                        (__tmp154131
                         (let ((__tmp154132
                                (let ((__tmp154133
                                       (let ((__tmp154134
                                              (let ((__tmp154135
                                                     (let ((__tmp154137
                                                            (let ((__tmp154138
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp154139 (length _kwargs151555_)))
                             (declare (not safe))
                             (cons __tmp154139 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp154138)))
                   (__tmp154136
                    (let () (declare (not safe)) (cons '(%#quote 0) '()))))
               (declare (not safe))
               (cons __tmp154137 __tmp154136))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-symbolic-table)
                                                      __tmp154135))))
                                         (declare (not safe))
                                         (cons '%#call __tmp154134))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp154133
                                   _stx151512_))))
                           (declare (not safe))
                           (cons __tmp154132 '()))))
                    (declare (not safe))
                    (cons __tmp154140 __tmp154131))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp154130 '())))
                                                  (__tmp154116
                                                   (let ((__tmp154117
                                                          (let ((__tmp154118
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp154119
                                (let ((__tmp154120
                                       (let ((__tmp154121
                                              (let ((__tmp154122
                                                     (let ((__tmp154127
                                                            (let ((__tmp154128
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main151551_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp154128)))
                   (__tmp154123
                    (let ((__tmp154125
                           (let ((__tmp154126
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt151566_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp154126)))
                          (__tmp154124
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs151554_ _xargs151591_))))
                      (declare (not safe))
                      (cons __tmp154125 __tmp154124))))
               (declare (not safe))
               (cons __tmp154127 __tmp154123))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp154122))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp154121
                                          _stx151512_))))
                                  (declare (not safe))
                                  (cons __tmp154120 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp154119 _kwset151579_))))
                    (declare (not safe))
                    (cons '%#begin __tmp154118))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp154117 '()))))
                                              (declare (not safe))
                                              (cons __tmp154129 __tmp154116))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp154115))))
                                (declare (not safe))
                                (cons __tmp154114 '()))))
                         (declare (not safe))
                         (cons _kwbind151574_ __tmp154113))))
                  (declare (not safe))
                  (cons '%#let-values __tmp154112))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp154111
                                                    _stx151512_))))
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _ctx151511_
                                             __tmp154110)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g151531151540_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e151536151597_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g151531151540_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e151537151600_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g151531151540_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys151603_ _e151537151600_)
                               (_e151538151605_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g151531151540_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main151608_ _e151538151605_))
                          (declare (not safe))
                          (_K151535151594_ _main151608_ _keys151603_))
                        (let () (declare (not safe)) (_else151533151548_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self151514151522_
                 'gxc#!kw-lambda::t))
              (let* ((_e151518151613_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151514151522_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e151519151616_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151514151522_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table151619_ _e151519151616_)
                     (_e151520151621_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151514151522_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch151624_ _e151520151621_))
                (declare (not safe))
                (_K151517151610_ _dispatch151624_ _table151619_))
              (let () (declare (not safe)) (_E151516151526_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx151123_ _args151124_)
        (let _lp151126_ ((_rest151128_ _args151124_)
                         (_pargs151129_ '())
                         (_kwargs151130_ '()))
          (let* ((___stx153177153178_ _rest151128_)
                 (_g151136151188_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx153177153178_)))))
            (let ((___kont153179153180_
                   (lambda (_L151367_ _L151368_)
                     (let ((__tmp154150
                            (let ()
                              (declare (not safe))
                              (cons _L151368_ _pargs151129_))))
                       (declare (not safe))
                       (_lp151126_ _L151367_ __tmp154150 _kwargs151130_))))
                  (___kont153181153182_
                   (lambda (_L151313_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L151313_ _pargs151129_))
                             (reverse _kwargs151130_))))
                  (___kont153183153184_
                   (lambda (_L151260_ _L151261_ _L151262_)
                     (let ((_kw151279_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L151262_))))
                       (if (assq _kw151279_ _kwargs151130_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx151123_
                              _kw151279_))
                           (let ((__tmp154151
                                  (let ((__tmp154152
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw151279_ _L151261_))))
                                    (declare (not safe))
                                    (cons __tmp154152 _kwargs151130_))))
                             (declare (not safe))
                             (_lp151126_
                              _L151260_
                              _pargs151129_
                              __tmp154151))))))
                  (___kont153185153186_
                   (lambda (_L151208_ _L151209_)
                     (let ((__tmp154153
                            (let ()
                              (declare (not safe))
                              (cons _L151209_ _pargs151129_))))
                       (declare (not safe))
                       (_lp151126_ _L151208_ __tmp154153 _kwargs151130_))))
                  (___kont153187153188_
                   (lambda ()
                     (values (reverse _pargs151129_)
                             (reverse _kwargs151130_)))))
              (let* ((_g151135151195_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx153177153178_))
                            (___kont153187153188_)
                            (let () (declare (not safe)) (_g151136151188_)))))
                     (___match153284153285_
                      (lambda (_e151169151228_
                               _hd151168151231_
                               _tl151167151233_
                               _e151172151236_
                               _hd151171151239_
                               _tl151170151241_
                               _e151175151244_
                               _hd151174151247_
                               _tl151173151249_
                               _e151178151252_
                               _hd151177151255_
                               _tl151176151257_)
                        (let ((_L151260_ _tl151176151257_)
                              (_L151261_ _hd151177151255_)
                              (_L151262_ _hd151174151247_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L151262_))
                              (___kont153183153184_
                               _L151260_
                               _L151261_
                               _L151262_)
                              (___kont153185153186_
                               _tl151167151233_
                               _hd151168151231_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx153177153178_))
                    (let ((_e151142151332_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx153177153178_))))
                      (let ((_tl151140151337_
                             (let ()
                               (declare (not safe))
                               (##cdr _e151142151332_)))
                            (_hd151141151335_
                             (let ()
                               (declare (not safe))
                               (##car _e151142151332_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd151141151335_))
                            (let ((_e151145151340_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd151141151335_))))
                              (let ((_tl151143151345_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e151145151340_)))
                                    (_hd151144151343_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e151145151340_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd151144151343_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd151144151343_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl151143151345_))
                                            (let ((_e151148151348_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl151143151345_))))
                                              (let ((_tl151146151353_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e151148151348_)))
                                                    (_hd151147151351_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e151148151348_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd151147151351_))
                                                    (let ((_e151149151356_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd151147151351_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e151149151356_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl151146151353_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl151140151337_))
                          (let ((_e151152151359_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl151140151337_))))
                            (let ((_tl151150151364_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e151152151359_)))
                                  (_hd151151151362_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e151152151359_))))
                              (___kont153179153180_
                               _tl151150151364_
                               _hd151151151362_)))
                          (___kont153185153186_
                           _tl151140151337_
                           _hd151141151335_))
                      (___kont153185153186_ _tl151140151337_ _hd151141151335_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e151149151356_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl151146151353_))
                          (___kont153181153182_ _tl151140151337_)
                          (___kont153185153186_
                           _tl151140151337_
                           _hd151141151335_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl151146151353_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl151140151337_))
                              (let ((_e151178151252_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl151140151337_))))
                                (let ((_tl151176151257_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e151178151252_)))
                                      (_hd151177151255_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e151178151252_))))
                                  (___match153284153285_
                                   _e151142151332_
                                   _hd151141151335_
                                   _tl151140151337_
                                   _e151145151340_
                                   _hd151144151343_
                                   _tl151143151345_
                                   _e151148151348_
                                   _hd151147151351_
                                   _tl151146151353_
                                   _e151178151252_
                                   _hd151177151255_
                                   _tl151176151257_)))
                              (___kont153185153186_
                               _tl151140151337_
                               _hd151141151335_))
                          (___kont153185153186_
                           _tl151140151337_
                           _hd151141151335_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl151146151353_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl151140151337_))
                                                            (let ((_e151178151252_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl151140151337_))))
                      (let ((_tl151176151257_
                             (let ()
                               (declare (not safe))
                               (##cdr _e151178151252_)))
                            (_hd151177151255_
                             (let ()
                               (declare (not safe))
                               (##car _e151178151252_))))
                        (___match153284153285_
                         _e151142151332_
                         _hd151141151335_
                         _tl151140151337_
                         _e151145151340_
                         _hd151144151343_
                         _tl151143151345_
                         _e151148151348_
                         _hd151147151351_
                         _tl151146151353_
                         _e151178151252_
                         _hd151177151255_
                         _tl151176151257_)))
                    (___kont153185153186_ _tl151140151337_ _hd151141151335_))
                (___kont153185153186_ _tl151140151337_ _hd151141151335_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont153185153186_
                                             _tl151140151337_
                                             _hd151141151335_))
                                        (___kont153185153186_
                                         _tl151140151337_
                                         _hd151141151335_))
                                    (___kont153185153186_
                                     _tl151140151337_
                                     _hd151141151335_))))
                            (___kont153185153186_
                             _tl151140151337_
                             _hd151141151335_))))
                    (let () (declare (not safe)) (_g151135151195_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self151118_ _ctx151119_ _stx151120_ _args151121_)
        (let ()
          (declare (not safe))
          (gxc#xform-call% _ctx151119_ _stx151120_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
