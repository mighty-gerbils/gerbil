(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1708510106)
  (begin
    (define gxc#&optimize-call
      (make-promise
       (lambda ()
         (let ((_tbl151920_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp152215 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-merge! _tbl151920_ __tmp152215))
           (let ()
             (declare (not safe))
             (hash-put! _tbl151920_ '%#call gxc#optimize-call%))
           _tbl151920_))))
    (define gxc#apply-optimize-call
      (lambda (_stx151903_ . _args151905_)
        (let ((__tmp152217
               (lambda ()
                 (declare (not safe))
                 (if (null? _args151905_)
                     (gxc#compile-e__0 _stx151903_)
                     (let ((_arg1151910_ (car _args151905_))
                           (_rest151912_ (cdr _args151905_)))
                       (if (null? _rest151912_)
                           (gxc#compile-e__1 _stx151903_ _arg1151910_)
                           (let ((_arg2151915_ (car _rest151912_))
                                 (_rest151917_ (cdr _rest151912_)))
                             (if (null? _rest151917_)
                                 (gxc#compile-e__2
                                  _stx151903_
                                  _arg1151910_
                                  _arg2151915_)
                                 (apply gxc#compile-e
                                        _stx151903_
                                        _arg1151910_
                                        _arg2151915_
                                        _rest151917_))))))))
              (__tmp152216 (force gxc#&optimize-call)))
          (declare (not safe))
          (call-with-parameters
           __tmp152217
           gxc#current-compile-methods
           __tmp152216))))
    (define gxc#optimize-call%
      (lambda (_stx151758_)
        (let* ((___stx151965151966_ _stx151758_)
               (_g151761151781_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx151965151966_)))))
          (let ((___kont151967151968_
                 (lambda (_L151825_ _L151826_)
                   (let* ((_rator-id151844_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L151826_)))
                          (_rator-type151846_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id151844_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type151846_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp152218
                                  (##structure-ref
                                   _rator-type151846_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id151844_
                              '" => "
                              _rator-type151846_
                              '" "
                              __tmp152218))
                           (let ((_optimized151849_
                                  (let ((__method152213
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type151846_
                                            'optimize-call))))
                                    (if __method152213
                                        (__method152213
                                         _rator-type151846_
                                         _stx151758_
                                         _L151825_)
                                        (let ()
                                          (declare (not safe))
                                          (error '"Missing method"
                                                 _rator-type151846_
                                                 'optimize-call))))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type151846_))
                                 _optimized151849_
                                 (let* ((___stx151947151948_ _optimized151849_)
                                        (_g151852151862_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx151947151948_)))))
                                   (let ((___kont151949151950_
                                          (lambda (_L151882_)
                                            (let ((__tmp152219
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L151882_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp152219
                                               _stx151758_))))
                                         (___kont151951151952_
                                          (lambda () _optimized151849_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx151947151948_))
                                         (let ((_e151857151874_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx151947151948_))))
                                           (let ((_tl151855151879_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e151857151874_)))
                                                 (_hd151856151877_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e151857151874_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd151856151877_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd151856151877_))
                                                     (___kont151949151950_
                                                      _tl151855151879_)
                                                     (___kont151951151952_))
                                                 (___kont151951151952_))))
                                         (___kont151951151952_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type151846_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx151758_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx151758_
                                _rator-type151846_)))))))
                (___kont151969151970_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _stx151758_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx151965151966_))
                (let ((_e151767151793_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx151965151966_))))
                  (let ((_tl151765151798_
                         (let () (declare (not safe)) (##cdr _e151767151793_)))
                        (_hd151766151796_
                         (let ()
                           (declare (not safe))
                           (##car _e151767151793_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl151765151798_))
                        (let ((_e151770151801_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl151765151798_))))
                          (let ((_tl151768151806_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e151770151801_)))
                                (_hd151769151804_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e151770151801_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd151769151804_))
                                (let ((_e151773151809_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd151769151804_))))
                                  (let ((_tl151771151814_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e151773151809_)))
                                        (_hd151772151812_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e151773151809_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd151772151812_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd151772151812_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl151771151814_))
                                                (let ((_e151776151817_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl151771151814_))))
                                                  (let ((_tl151774151822_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e151776151817_)))
                                                        (_hd151775151820_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e151776151817_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl151774151822_))
                                                        (___kont151967151968_
                                                         _tl151768151806_
                                                         _hd151775151820_)
                                                        (___kont151969151970_))))
                                                (___kont151969151970_))
                                            (___kont151969151970_))
                                        (___kont151969151970_))))
                                (___kont151969151970_))))
                        (___kont151969151970_))))
                (___kont151969151970_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self151712_ _stx151713_ _args151714_)
        (let* ((_g151716151726_
                (lambda (_g151717151723_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g151717151723_))))
               (_g151715151755_
                (lambda (_g151717151729_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g151717151729_))
                      (let ((_e151721151731_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g151717151729_))))
                        (let ((_hd151720151734_
                               (let ()
                                 (declare (not safe))
                                 (##car _e151721151731_)))
                              (_tl151719151736_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e151721151731_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl151719151736_))
                              ((lambda (_L151739_)
                                 (let* ((_klass151750_
                                         (let ((__tmp152220
                                                (##structure-ref
                                                 _self151712_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx151713_
                                            __tmp152220)))
                                        (_object151752_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L151739_))))
                                   (if (##structure-ref
                                        _klass151750_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp152236
                                              (let ((__tmp152237
                                                     (let ((__tmp152239
                                                            (let ((__tmp152240
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152241
                                  (##structure-ref
                                   _klass151750_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp152241 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp152240)))
                   (__tmp152238
                    (let () (declare (not safe)) (cons _object151752_ '()))))
               (declare (not safe))
               (cons __tmp152239 __tmp152238))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp152237))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp152236
                                          _stx151713_))
                                       (if (##structure-ref
                                            _klass151750_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp152230
                                                  (let ((__tmp152231
                                                         (let ((__tmp152233
                                                                (let ((__tmp152234
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp152235
                                      (##structure-ref
                                       _klass151750_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp152235 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp152234)))
                       (__tmp152232
                        (let ()
                          (declare (not safe))
                          (cons _object151752_ '()))))
                   (declare (not safe))
                   (cons __tmp152233 __tmp152232))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp152231))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152230
                                              _stx151713_))
                                           (let ((__tmp152221
                                                  (let ((__tmp152222
                                                         (let ((__tmp152228
                                                                (let ((__tmp152229
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp152229)))
                       (__tmp152223
                        (let ((__tmp152225
                               (let ((__tmp152226
                                      (let ((__tmp152227
                                             (##structure-ref
                                              _self151712_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp152227 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp152226)))
                              (__tmp152224
                               (let ()
                                 (declare (not safe))
                                 (cons _object151752_ '()))))
                          (declare (not safe))
                          (cons __tmp152225 __tmp152224))))
                   (declare (not safe))
                   (cons __tmp152228 __tmp152223))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp152222))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152221
                                              _stx151713_))))))
                               _hd151720151734_)
                              (let ()
                                (declare (not safe))
                                (_g151716151726_ _g151717151729_)))))
                      (let ()
                        (declare (not safe))
                        (_g151716151726_ _g151717151729_))))))
          (declare (not safe))
          (_g151715151755_ _args151714_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__klass151922 __method-table151923)
        (let ((__id151924
               (let ((__slot151925
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass151922 'id))))
                 (if __slot151925
                     __slot151925
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self151712_ _stx151713_ _args151714_)
            (let* ((_g151716151726_
                    (lambda (_g151717151723_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g151717151723_))))
                   (_g151715151755_
                    (lambda (_g151717151729_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g151717151729_))
                          (let ((_e151721151731_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g151717151729_))))
                            (let ((_hd151720151734_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e151721151731_)))
                                  (_tl151719151736_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e151721151731_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl151719151736_))
                                  ((lambda (_L151739_)
                                     (let* ((_klass151750_
                                             (let ((__tmp152242
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self151712_
                                                       __id151924
                                                       __klass151922
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx151713_
                                                __tmp152242)))
                                            (_object151752_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L151739_))))
                                       (if (##structure-ref
                                            _klass151750_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp152258
                                                  (let ((__tmp152259
                                                         (let ((__tmp152261
                                                                (let ((__tmp152262
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp152263
                                      (##structure-ref
                                       _klass151750_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp152263 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp152262)))
                       (__tmp152260
                        (let ()
                          (declare (not safe))
                          (cons _object151752_ '()))))
                   (declare (not safe))
                   (cons __tmp152261 __tmp152260))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp152259))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152258
                                              _stx151713_))
                                           (if (##structure-ref
                                                _klass151750_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp152252
                                                      (let ((__tmp152253
                                                             (let ((__tmp152255
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp152256
                                   (let ((__tmp152257
                                          (##structure-ref
                                           _klass151750_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp152257 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp152256)))
                           (__tmp152254
                            (let ()
                              (declare (not safe))
                              (cons _object151752_ '()))))
                       (declare (not safe))
                       (cons __tmp152255 __tmp152254))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp152253))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp152252
                                                  _stx151713_))
                                               (let ((__tmp152243
                                                      (let ((__tmp152244
                                                             (let ((__tmp152250
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp152251
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp152251)))
                           (__tmp152245
                            (let ((__tmp152247
                                   (let ((__tmp152248
                                          (let ((__tmp152249
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self151712_
                                                    __id151924
                                                    __klass151922
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp152249 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp152248)))
                                  (__tmp152246
                                   (let ()
                                     (declare (not safe))
                                     (cons _object151752_ '()))))
                              (declare (not safe))
                              (cons __tmp152247 __tmp152246))))
                       (declare (not safe))
                       (cons __tmp152250 __tmp152245))))
                (declare (not safe))
                (cons '%#call __tmp152244))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp152243
                                                  _stx151713_))))))
                                   _hd151720151734_)
                                  (let ()
                                    (declare (not safe))
                                    (_g151716151726_ _g151717151729_)))))
                          (let ()
                            (declare (not safe))
                            (_g151716151726_ _g151717151729_))))))
              (declare (not safe))
              (_g151715151755_ _args151714_))))))
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
      (lambda (_self151432_ _stx151433_ _args151434_)
        (let* ((_klass151436_
                (let ((__tmp152264
                       (##structure-ref _self151432_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx151433_ __tmp152264)))
               (_fields151438_
                (length (##structure-ref _klass151436_ '5 gxc#!class::t '#f)))
               (_args151440_ (map gxc#compile-e _args151434_))
               (_inline-make-object151442_
                (let ((__tmp152265
                       (let ((__tmp152271
                              (let ((__tmp152272
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp152272)))
                             (__tmp152266
                              (let ((__tmp152268
                                     (let ((__tmp152269
                                            (let ((__tmp152270
                                                   (##structure-ref
                                                    _self151432_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp152270 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152269)))
                                    (__tmp152267
                                     (let ()
                                       (declare (not safe))
                                       (make-list__%
                                        _fields151438_
                                        '(%#quote #f)))))
                                (declare (not safe))
                                (cons __tmp152268 __tmp152267))))
                         (declare (not safe))
                         (cons __tmp152271 __tmp152266))))
                  (declare (not safe))
                  (cons '%#call __tmp152265))))
          (let ((_$e151445_
                 (##structure-ref _klass151436_ '6 gxc#!class::t '#f)))
            (if _$e151445_
                ((lambda (_ctor151448_)
                   (let ((_$obj151450_
                          (let ((__tmp152372 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp152372)))
                         (_ctor-impl151451_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass151436_
                             _ctor151448_))))
                     (let ((__tmp152373
                            (let ((__tmp152374
                                   (let ((__tmp152442
                                          (let ((__tmp152443
                                                 (let ((__tmp152445
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj151450_
                                                                '())))
                                                       (__tmp152444
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object151442_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp152445
                                                         __tmp152444))))
                                            (declare (not safe))
                                            (cons __tmp152443 '())))
                                         (__tmp152375
                                          (let ((__tmp152376
                                                 (let ((__tmp152377
                                                        (let ((__tmp152381
                                                               (if _ctor-impl151451_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152436
                                  (let ((__tmp152440
                                         (let ((__tmp152441
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl151451_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp152441)))
                                        (__tmp152437
                                         (let ((__tmp152438
                                                (let ((__tmp152439
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj151450_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp152439))))
                                           (declare (not safe))
                                           (cons __tmp152438 _args151440_))))
                                    (declare (not safe))
                                    (cons __tmp152440 __tmp152437))))
                             (declare (not safe))
                             (cons '%#call __tmp152436))
                           (let* ((_$ctor151453_
                                   (let ((__tmp152382 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp152382)))
                                  (__tmp152383
                                   (let ((__tmp152418
                                          (let ((__tmp152419
                                                 (let ((__tmp152435
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor151453_
                                                                '())))
                                                       (__tmp152420
                                                        (let ((__tmp152421
                                                               (let ((__tmp152422
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp152433
                                     (let ((__tmp152434
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152434)))
                                    (__tmp152423
                                     (let ((__tmp152430
                                            (let ((__tmp152431
                                                   (let ((__tmp152432
                                                          (##structure-ref
                                                           _self151432_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp152432 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp152431)))
                                           (__tmp152424
                                            (let ((__tmp152428
                                                   (let ((__tmp152429
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj151450_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152429)))
                                                  (__tmp152425
                                                   (let ((__tmp152426
                                                          (let ((__tmp152427
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _ctor151448_ '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp152427))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152426 '()))))
                                              (declare (not safe))
                                              (cons __tmp152428 __tmp152425))))
                                       (declare (not safe))
                                       (cons __tmp152430 __tmp152424))))
                                (declare (not safe))
                                (cons __tmp152433 __tmp152423))))
                         (declare (not safe))
                         (cons '%#call __tmp152422))))
                  (declare (not safe))
                  (cons __tmp152421 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp152435
                                                         __tmp152420))))
                                            (declare (not safe))
                                            (cons __tmp152419 '())))
                                         (__tmp152384
                                          (let ((__tmp152385
                                                 (let ((__tmp152386
                                                        (let ((__tmp152416
                                                               (let ((__tmp152417
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor151453_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp152417)))
                      (__tmp152387
                       (let ((__tmp152409
                              (let ((__tmp152410
                                     (let ((__tmp152414
                                            (let ((__tmp152415
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor151453_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp152415)))
                                           (__tmp152411
                                            (let ((__tmp152412
                                                   (let ((__tmp152413
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj151450_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152413))))
                                              (declare (not safe))
                                              (cons __tmp152412
                                                    _args151440_))))
                                       (declare (not safe))
                                       (cons __tmp152414 __tmp152411))))
                                (declare (not safe))
                                (cons '%#call __tmp152410)))
                             (__tmp152388
                              (let ((__tmp152389
                                     (let ((__tmp152390
                                            (let ((__tmp152407
                                                   (let ((__tmp152408
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152408)))
                                                  (__tmp152391
                                                   (let ((__tmp152405
                                                          (let ((__tmp152406
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp152406)))
                 (__tmp152392
                  (let ((__tmp152403
                         (let ((__tmp152404
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp152404)))
                        (__tmp152393
                         (let ((__tmp152400
                                (let ((__tmp152401
                                       (let ((__tmp152402
                                              (##structure-ref
                                               _self151432_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp152402 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp152401)))
                               (__tmp152394
                                (let ((__tmp152398
                                       (let ((__tmp152399
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp152399)))
                                      (__tmp152395
                                       (let ((__tmp152396
                                              (let ((__tmp152397
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor151448_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp152397))))
                                         (declare (not safe))
                                         (cons __tmp152396 '()))))
                                  (declare (not safe))
                                  (cons __tmp152398 __tmp152395))))
                           (declare (not safe))
                           (cons __tmp152400 __tmp152394))))
                    (declare (not safe))
                    (cons __tmp152403 __tmp152393))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152405
                                                           __tmp152392))))
                                              (declare (not safe))
                                              (cons __tmp152407 __tmp152391))))
                                       (declare (not safe))
                                       (cons '%#call __tmp152390))))
                                (declare (not safe))
                                (cons __tmp152389 '()))))
                         (declare (not safe))
                         (cons __tmp152409 __tmp152388))))
                  (declare (not safe))
                  (cons __tmp152416 __tmp152387))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp152386))))
                                            (declare (not safe))
                                            (cons __tmp152385 '()))))
                                     (declare (not safe))
                                     (cons __tmp152418 __tmp152384))))
                             (declare (not safe))
                             (cons '%#let-values __tmp152383))))
                      (__tmp152378
                       (let ((__tmp152379
                              (let ((__tmp152380
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj151450_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp152380))))
                         (declare (not safe))
                         (cons __tmp152379 '()))))
                  (declare (not safe))
                  (cons __tmp152381 __tmp152378))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp152377))))
                                            (declare (not safe))
                                            (cons __tmp152376 '()))))
                                     (declare (not safe))
                                     (cons __tmp152442 __tmp152375))))
                              (declare (not safe))
                              (cons '%#let-values __tmp152374))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp152373 _stx151433_))))
                 _$e151445_)
                (let ((_$e151455_
                       (##structure-ref _klass151436_ '9 gxc#!class::t '#f)))
                  (if _$e151455_
                      ((lambda (_metaclass151458_)
                         (let* ((_$obj151460_
                                 (let ((__tmp152334 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp152334)))
                                (_metakons151462_
                                 (let ((__tmp152335
                                        (let ()
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           _stx151433_
                                           _metaclass151458_))))
                                   (declare (not safe))
                                   (gxc#!class-lookup-method
                                    __tmp152335
                                    'instance-init!))))
                           (let ((__tmp152336
                                  (let ((__tmp152337
                                         (let ((__tmp152368
                                                (let ((__tmp152369
                                                       (let ((__tmp152371
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj151460_ '())))
                     (__tmp152370
                      (let ()
                        (declare (not safe))
                        (cons _inline-make-object151442_ '()))))
                 (declare (not safe))
                 (cons __tmp152371 __tmp152370))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152369 '())))
                                               (__tmp152338
                                                (let ((__tmp152339
                                                       (let ((__tmp152340
                                                              (let ((__tmp152344
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if _metakons151462_
                                 (let ((__tmp152358
                                        (let ((__tmp152366
                                               (let ((__tmp152367
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metakons151462_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp152367)))
                                              (__tmp152359
                                               (let ((__tmp152363
                                                      (let ((__tmp152364
                                                             (let ((__tmp152365
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self151432_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp152365 '()))))
                (declare (not safe))
                (cons '%#ref __tmp152364)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp152360
                                                      (let ((__tmp152361
                                                             (let ((__tmp152362
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _$obj151460_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp152362))))
                (declare (not safe))
                (cons __tmp152361 _args151440_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp152363
                                                       __tmp152360))))
                                          (declare (not safe))
                                          (cons __tmp152366 __tmp152359))))
                                   (declare (not safe))
                                   (cons '%#call __tmp152358))
                                 (let ((__tmp152345
                                        (let ((__tmp152356
                                               (let ((__tmp152357
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'call-method
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp152357)))
                                              (__tmp152346
                                               (let ((__tmp152353
                                                      (let ((__tmp152354
                                                             (let ((__tmp152355
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self151432_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp152355 '()))))
                (declare (not safe))
                (cons '%#ref __tmp152354)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp152347
                                                      (let ((__tmp152351
                                                             (let ((__tmp152352
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'instance-init! '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp152352)))
                    (__tmp152348
                     (let ((__tmp152349
                            (let ((__tmp152350
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj151460_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp152350))))
                       (declare (not safe))
                       (cons __tmp152349 _args151440_))))
                (declare (not safe))
                (cons __tmp152351 __tmp152348))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp152353
                                                       __tmp152347))))
                                          (declare (not safe))
                                          (cons __tmp152356 __tmp152346))))
                                   (declare (not safe))
                                   (cons '%#call __tmp152345))))
                            (__tmp152341
                             (let ((__tmp152342
                                    (let ((__tmp152343
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj151460_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp152343))))
                               (declare (not safe))
                               (cons __tmp152342 '()))))
                        (declare (not safe))
                        (cons __tmp152344 __tmp152341))))
                 (declare (not safe))
                 (cons '%#begin __tmp152340))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152339 '()))))
                                           (declare (not safe))
                                           (cons __tmp152368 __tmp152338))))
                                    (declare (not safe))
                                    (cons '%#let-values __tmp152337))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp152336 _stx151433_))))
                       _$e151455_)
                      (if (##structure-ref _klass151436_ '7 gxc#!class::t '#f)
                          (if (fx= (length _args151440_) _fields151438_)
                              (let ((__tmp152326
                                     (let ((__tmp152327
                                            (let ((__tmp152332
                                                   (let ((__tmp152333
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152333)))
                                                  (__tmp152328
                                                   (let ((__tmp152329
                                                          (let ((__tmp152330
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp152331
                                (##structure-ref
                                 _self151432_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp152331 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp152330))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152329
                                                           _args151440_))))
                                              (declare (not safe))
                                              (cons __tmp152332 __tmp152328))))
                                       (declare (not safe))
                                       (cons '%#call __tmp152327))))
                                (declare (not safe))
                                (gxc#xform-wrap-source
                                 __tmp152326
                                 _stx151433_))
                              (let ((__tmp152325
                                     (##structure-ref
                                      _self151432_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                    (__tmp152324
                                     (length (##structure-ref
                                              _klass151436_
                                              '5
                                              gxc#!class::t
                                              '#f))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"illegal struct constructor application; arity mismatch"
                                 _stx151433_
                                 __tmp152325
                                 __tmp152324)))
                          (let ((_$obj151465_
                                 (let ((__tmp152273 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp152273))))
                            (let _lp151467_ ((_rest151469_ _args151440_)
                                             (_initializers151470_ '()))
                              (let* ((___stx152003152004_ _rest151469_)
                                     (_g151474151495_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx152003152004_)))))
                                (let ((___kont152005152006_
                                       (lambda (_L151549_ _L151550_ _L151551_)
                                         (let* ((_slot151582_
                                                 (keyword->symbol
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e _L151551_))))
                                                (_off151584_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass151436_
                                                    _slot151582_))))
                                           (if _off151584_
                                               (let ((__tmp152275
                                                      (let ((__tmp152276
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off151584_ _L151550_))))
                (declare (not safe))
                (cons __tmp152276 _initializers151470_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp151467_
                                                  _L151549_
                                                  __tmp152275))
                                               (let ((__tmp152274
                                                      (##structure-ref
                                                       _self151432_
                                                       '1
                                                       gxc#!type::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"unknown slot"
                                                  _stx151433_
                                                  __tmp152274
                                                  _slot151582_))))))
                                      (___kont152007152008_
                                       (lambda ()
                                         (let ((__tmp152277
                                                (let ((__tmp152278
                                                       (let ((__tmp152301
                                                              (let ((__tmp152302
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp152304
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj151465_ '())))
                                   (__tmp152303
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object151442_ '()))))
                               (declare (not safe))
                               (cons __tmp152304 __tmp152303))))
                        (declare (not safe))
                        (cons __tmp152302 '())))
                     (__tmp152279
                      (let ((__tmp152280
                             (let ((__tmp152281
                                    (let ((__tmp152298
                                           (let ((__tmp152299
                                                  (let ((__tmp152300
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj151465_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp152300))))
                                             (declare (not safe))
                                             (cons __tmp152299 '())))
                                          (__tmp152282
                                           (let ((__tmp152283
                                                  (lambda (_i151509_ _r151510_)
                                                    (let ((__tmp152284
                                                           (let ((__tmp152285
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp152295
                                 (let ((__tmp152296
                                        (let ((__tmp152297
                                               (##structure-ref
                                                _self151432_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp152297 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp152296)))
                                (__tmp152286
                                 (let ((__tmp152292
                                        (let ((__tmp152293
                                               (let ((__tmp152294
                                                      (car _i151509_)))
                                                 (declare (not safe))
                                                 (cons __tmp152294 '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp152293)))
                                       (__tmp152287
                                        (let ((__tmp152290
                                               (let ((__tmp152291
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _$obj151465_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp152291)))
                                              (__tmp152288
                                               (let ((__tmp152289
                                                      (cdr _i151509_)))
                                                 (declare (not safe))
                                                 (cons __tmp152289 '()))))
                                          (declare (not safe))
                                          (cons __tmp152290 __tmp152288))))
                                   (declare (not safe))
                                   (cons __tmp152292 __tmp152287))))
                            (declare (not safe))
                            (cons __tmp152295 __tmp152286))))
                     (declare (not safe))
                     (cons '%#struct-unchecked-set! __tmp152285))))
              (declare (not safe))
              (cons __tmp152284 _r151510_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (foldl1 __tmp152283
                                                     '()
                                                     _initializers151470_))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp152298 __tmp152282))))
                               (declare (not safe))
                               (cons '%#begin __tmp152281))))
                        (declare (not safe))
                        (cons __tmp152280 '()))))
                 (declare (not safe))
                 (cons __tmp152301 __tmp152279))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp152278))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp152277
                                            _stx151433_))))
                                      (___kont152009152010_
                                       (lambda ()
                                         (let ((__tmp152305
                                                (let ((__tmp152306
                                                       (let ((__tmp152320
                                                              (let ((__tmp152321
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp152323
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj151465_ '())))
                                   (__tmp152322
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object151442_ '()))))
                               (declare (not safe))
                               (cons __tmp152323 __tmp152322))))
                        (declare (not safe))
                        (cons __tmp152321 '())))
                     (__tmp152307
                      (let ((__tmp152308
                             (let ((__tmp152309
                                    (let ((__tmp152313
                                           (let ((__tmp152314
                                                  (let ((__tmp152318
                                                         (let ((__tmp152319
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'class-instance-init! '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp152319)))
                (__tmp152315
                 (let ((__tmp152316
                        (let ((__tmp152317
                               (let ()
                                 (declare (not safe))
                                 (cons _$obj151465_ '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp152317))))
                   (declare (not safe))
                   (cons __tmp152316 _args151440_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp152318
                                                          __tmp152315))))
                                             (declare (not safe))
                                             (cons '%#call __tmp152314)))
                                          (__tmp152310
                                           (let ((__tmp152311
                                                  (let ((__tmp152312
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj151465_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp152312))))
                                             (declare (not safe))
                                             (cons __tmp152311 '()))))
                                      (declare (not safe))
                                      (cons __tmp152313 __tmp152310))))
                               (declare (not safe))
                               (cons '%#begin __tmp152309))))
                        (declare (not safe))
                        (cons __tmp152308 '()))))
                 (declare (not safe))
                 (cons __tmp152320 __tmp152307))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp152306))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp152305
                                            _stx151433_)))))
                                  (let* ((_g151472151512_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   ___stx152003152004_))
                                                (___kont152007152008_)
                                                (___kont152009152010_))))
                                         (___match152040152041_
                                          (lambda (_e151481151517_
                                                   _hd151480151520_
                                                   _tl151479151522_
                                                   _e151484151525_
                                                   _hd151483151528_
                                                   _tl151482151530_
                                                   _e151487151533_
                                                   _hd151486151536_
                                                   _tl151485151538_
                                                   _e151490151541_
                                                   _hd151489151544_
                                                   _tl151488151546_)
                                            (let ((_L151549_ _tl151488151546_)
                                                  (_L151550_ _hd151489151544_)
                                                  (_L151551_ _hd151486151536_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-keyword?
                                                     _L151551_))
                                                  (___kont152005152006_
                                                   _L151549_
                                                   _L151550_
                                                   _L151551_)
                                                  (___kont152009152010_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx152003152004_))
                                        (let ((_e151481151517_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx152003152004_))))
                                          (let ((_tl151479151522_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e151481151517_)))
                                                (_hd151480151520_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e151481151517_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd151480151520_))
                                                (let ((_e151484151525_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd151480151520_))))
                                                  (let ((_tl151482151530_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e151484151525_)))
                                                        (_hd151483151528_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e151484151525_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd151483151528_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#quote
                                                               _hd151483151528_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl151482151530_))
                        (let ((_e151487151533_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl151482151530_))))
                          (let ((_tl151485151538_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e151487151533_)))
                                (_hd151486151536_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e151487151533_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl151485151538_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl151479151522_))
                                    (let ((_e151490151541_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl151479151522_))))
                                      (let ((_tl151488151546_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e151490151541_)))
                                            (_hd151489151544_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e151490151541_))))
                                        (___match152040152041_
                                         _e151481151517_
                                         _hd151480151520_
                                         _tl151479151522_
                                         _e151484151525_
                                         _hd151483151528_
                                         _tl151482151530_
                                         _e151487151533_
                                         _hd151486151536_
                                         _tl151485151538_
                                         _e151490151541_
                                         _hd151489151544_
                                         _tl151488151546_)))
                                    (___kont152009152010_))
                                (___kont152009152010_))))
                        (___kont152009152010_))
                    (___kont152009152010_))
                (___kont152009152010_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont152009152010_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g151472151512_))))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__klass151926 __method-table151927)
        (let ((__id151928
               (let ((__slot151929
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass151926 'id))))
                 (if __slot151929
                     __slot151929
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self151432_ _stx151433_ _args151434_)
            (let* ((_klass151436_
                    (let ((__tmp152446
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self151432_
                              __id151928
                              __klass151926
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx151433_ __tmp152446)))
                   (_fields151438_
                    (length (##structure-ref
                             _klass151436_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args151440_ (map gxc#compile-e _args151434_))
                   (_inline-make-object151442_
                    (let ((__tmp152447
                           (let ((__tmp152453
                                  (let ((__tmp152454
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp152454)))
                                 (__tmp152448
                                  (let ((__tmp152450
                                         (let ((__tmp152451
                                                (let ((__tmp152452
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self151432_
                                                          __id151928
                                                          __klass151926
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp152452 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp152451)))
                                        (__tmp152449
                                         (let ()
                                           (declare (not safe))
                                           (make-list__%
                                            _fields151438_
                                            '(%#quote #f)))))
                                    (declare (not safe))
                                    (cons __tmp152450 __tmp152449))))
                             (declare (not safe))
                             (cons __tmp152453 __tmp152448))))
                      (declare (not safe))
                      (cons '%#call __tmp152447))))
              (let ((_$e151445_
                     (##structure-ref _klass151436_ '6 gxc#!class::t '#f)))
                (if _$e151445_
                    ((lambda (_ctor151448_)
                       (let ((_$obj151450_
                              (let ((__tmp152554 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp152554)))
                             (_ctor-impl151451_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass151436_
                                 _ctor151448_))))
                         (let ((__tmp152555
                                (let ((__tmp152556
                                       (let ((__tmp152624
                                              (let ((__tmp152625
                                                     (let ((__tmp152627
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj151450_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp152626
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object151442_ '()))))
               (declare (not safe))
               (cons __tmp152627 __tmp152626))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp152625 '())))
                                             (__tmp152557
                                              (let ((__tmp152558
                                                     (let ((__tmp152559
                                                            (let ((__tmp152563
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl151451_
                               (let ((__tmp152618
                                      (let ((__tmp152622
                                             (let ((__tmp152623
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl151451_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp152623)))
                                            (__tmp152619
                                             (let ((__tmp152620
                                                    (let ((__tmp152621
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj151450_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp152621))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp152620
                                                     _args151440_))))
                                        (declare (not safe))
                                        (cons __tmp152622 __tmp152619))))
                                 (declare (not safe))
                                 (cons '%#call __tmp152618))
                               (let* ((_$ctor151453_
                                       (let ((__tmp152564
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp152564)))
                                      (__tmp152565
                                       (let ((__tmp152600
                                              (let ((__tmp152601
                                                     (let ((__tmp152617
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor151453_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp152602
                    (let ((__tmp152603
                           (let ((__tmp152604
                                  (let ((__tmp152615
                                         (let ((__tmp152616
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp152616)))
                                        (__tmp152605
                                         (let ((__tmp152612
                                                (let ((__tmp152613
                                                       (let ((__tmp152614
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self151432_
                         __id151928
                         __klass151926
                         '#f))))
                 (declare (not safe))
                 (cons __tmp152614 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp152613)))
                                               (__tmp152606
                                                (let ((__tmp152610
                                                       (let ((__tmp152611
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj151450_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152611)))
              (__tmp152607
               (let ((__tmp152608
                      (let ((__tmp152609
                             (let ()
                               (declare (not safe))
                               (cons _ctor151448_ '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp152609))))
                 (declare (not safe))
                 (cons __tmp152608 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152610
                                                        __tmp152607))))
                                           (declare (not safe))
                                           (cons __tmp152612 __tmp152606))))
                                    (declare (not safe))
                                    (cons __tmp152615 __tmp152605))))
                             (declare (not safe))
                             (cons '%#call __tmp152604))))
                      (declare (not safe))
                      (cons __tmp152603 '()))))
               (declare (not safe))
               (cons __tmp152617 __tmp152602))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp152601 '())))
                                             (__tmp152566
                                              (let ((__tmp152567
                                                     (let ((__tmp152568
                                                            (let ((__tmp152598
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152599
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor151453_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp152599)))
                          (__tmp152569
                           (let ((__tmp152591
                                  (let ((__tmp152592
                                         (let ((__tmp152596
                                                (let ((__tmp152597
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor151453_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp152597)))
                                               (__tmp152593
                                                (let ((__tmp152594
                                                       (let ((__tmp152595
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj151450_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152595))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152594
                                                        _args151440_))))
                                           (declare (not safe))
                                           (cons __tmp152596 __tmp152593))))
                                    (declare (not safe))
                                    (cons '%#call __tmp152592)))
                                 (__tmp152570
                                  (let ((__tmp152571
                                         (let ((__tmp152572
                                                (let ((__tmp152589
                                                       (let ((__tmp152590
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152590)))
              (__tmp152573
               (let ((__tmp152587
                      (let ((__tmp152588
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp152588)))
                     (__tmp152574
                      (let ((__tmp152585
                             (let ((__tmp152586
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp152586)))
                            (__tmp152575
                             (let ((__tmp152582
                                    (let ((__tmp152583
                                           (let ((__tmp152584
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self151432_
                                                     __id151928
                                                     __klass151926
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp152584 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp152583)))
                                   (__tmp152576
                                    (let ((__tmp152580
                                           (let ((__tmp152581
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp152581)))
                                          (__tmp152577
                                           (let ((__tmp152578
                                                  (let ((__tmp152579
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor151448_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp152579))))
                                             (declare (not safe))
                                             (cons __tmp152578 '()))))
                                      (declare (not safe))
                                      (cons __tmp152580 __tmp152577))))
                               (declare (not safe))
                               (cons __tmp152582 __tmp152576))))
                        (declare (not safe))
                        (cons __tmp152585 __tmp152575))))
                 (declare (not safe))
                 (cons __tmp152587 __tmp152574))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152589
                                                        __tmp152573))))
                                           (declare (not safe))
                                           (cons '%#call __tmp152572))))
                                    (declare (not safe))
                                    (cons __tmp152571 '()))))
                             (declare (not safe))
                             (cons __tmp152591 __tmp152570))))
                      (declare (not safe))
                      (cons __tmp152598 __tmp152569))))
               (declare (not safe))
               (cons '%#if __tmp152568))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp152567 '()))))
                                         (declare (not safe))
                                         (cons __tmp152600 __tmp152566))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp152565))))
                          (__tmp152560
                           (let ((__tmp152561
                                  (let ((__tmp152562
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj151450_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp152562))))
                             (declare (not safe))
                             (cons __tmp152561 '()))))
                      (declare (not safe))
                      (cons __tmp152563 __tmp152560))))
               (declare (not safe))
               (cons '%#begin __tmp152559))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp152558 '()))))
                                         (declare (not safe))
                                         (cons __tmp152624 __tmp152557))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp152556))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp152555 _stx151433_))))
                     _$e151445_)
                    (let ((_$e151455_
                           (##structure-ref
                            _klass151436_
                            '9
                            gxc#!class::t
                            '#f)))
                      (if _$e151455_
                          ((lambda (_metaclass151458_)
                             (let* ((_$obj151460_
                                     (let ((__tmp152516 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp152516)))
                                    (_metakons151462_
                                     (let ((__tmp152517
                                            (let ()
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               _stx151433_
                                               _metaclass151458_))))
                                       (declare (not safe))
                                       (gxc#!class-lookup-method
                                        __tmp152517
                                        'instance-init!))))
                               (let ((__tmp152518
                                      (let ((__tmp152519
                                             (let ((__tmp152550
                                                    (let ((__tmp152551
                                                           (let ((__tmp152553
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj151460_ '())))
                         (__tmp152552
                          (let ()
                            (declare (not safe))
                            (cons _inline-make-object151442_ '()))))
                     (declare (not safe))
                     (cons __tmp152553 __tmp152552))))
              (declare (not safe))
              (cons __tmp152551 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp152520
                                                    (let ((__tmp152521
                                                           (let ((__tmp152522
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp152526
                                 (if _metakons151462_
                                     (let ((__tmp152540
                                            (let ((__tmp152548
                                                   (let ((__tmp152549
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _metakons151462_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152549)))
                                                  (__tmp152541
                                                   (let ((__tmp152545
                                                          (let ((__tmp152546
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp152547
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self151432_
                                   __id151928
                                   __klass151926
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp152547 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp152546)))
                 (__tmp152542
                  (let ((__tmp152543
                         (let ((__tmp152544
                                (let ()
                                  (declare (not safe))
                                  (cons _$obj151460_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp152544))))
                    (declare (not safe))
                    (cons __tmp152543 _args151440_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152545
                                                           __tmp152542))))
                                              (declare (not safe))
                                              (cons __tmp152548 __tmp152541))))
                                       (declare (not safe))
                                       (cons '%#call __tmp152540))
                                     (let ((__tmp152527
                                            (let ((__tmp152538
                                                   (let ((__tmp152539
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'call-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152539)))
                                                  (__tmp152528
                                                   (let ((__tmp152535
                                                          (let ((__tmp152536
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp152537
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self151432_
                                   __id151928
                                   __klass151926
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp152537 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp152536)))
                 (__tmp152529
                  (let ((__tmp152533
                         (let ((__tmp152534
                                (let ()
                                  (declare (not safe))
                                  (cons 'instance-init! '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp152534)))
                        (__tmp152530
                         (let ((__tmp152531
                                (let ((__tmp152532
                                       (let ()
                                         (declare (not safe))
                                         (cons _$obj151460_ '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp152532))))
                           (declare (not safe))
                           (cons __tmp152531 _args151440_))))
                    (declare (not safe))
                    (cons __tmp152533 __tmp152530))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152535
                                                           __tmp152529))))
                                              (declare (not safe))
                                              (cons __tmp152538 __tmp152528))))
                                       (declare (not safe))
                                       (cons '%#call __tmp152527))))
                                (__tmp152523
                                 (let ((__tmp152524
                                        (let ((__tmp152525
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$obj151460_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp152525))))
                                   (declare (not safe))
                                   (cons __tmp152524 '()))))
                            (declare (not safe))
                            (cons __tmp152526 __tmp152523))))
                     (declare (not safe))
                     (cons '%#begin __tmp152522))))
              (declare (not safe))
              (cons __tmp152521 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp152550
                                                     __tmp152520))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp152519))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp152518
                                  _stx151433_))))
                           _$e151455_)
                          (if (##structure-ref
                               _klass151436_
                               '7
                               gxc#!class::t
                               '#f)
                              (if (fx= (length _args151440_) _fields151438_)
                                  (let ((__tmp152508
                                         (let ((__tmp152509
                                                (let ((__tmp152514
                                                       (let ((__tmp152515
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '##structure '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152515)))
              (__tmp152510
               (let ((__tmp152511
                      (let ((__tmp152512
                             (let ((__tmp152513
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self151432_
                                       __id151928
                                       __klass151926
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp152513 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp152512))))
                 (declare (not safe))
                 (cons __tmp152511 _args151440_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152514
                                                        __tmp152510))))
                                           (declare (not safe))
                                           (cons '%#call __tmp152509))))
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp152508
                                     _stx151433_))
                                  (let ((__tmp152507
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _self151432_
                                            __id151928
                                            __klass151926
                                            '#f)))
                                        (__tmp152506
                                         (length (##structure-ref
                                                  _klass151436_
                                                  '5
                                                  gxc#!class::t
                                                  '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _stx151433_
                                     __tmp152507
                                     __tmp152506)))
                              (let ((_$obj151465_
                                     (let ((__tmp152455 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp152455))))
                                (let _lp151467_ ((_rest151469_ _args151440_)
                                                 (_initializers151470_ '()))
                                  (let* ((___stx152045152046_ _rest151469_)
                                         (_g151474151495_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               ___stx152045152046_)))))
                                    (let ((___kont152047152048_
                                           (lambda (_L151549_
                                                    _L151550_
                                                    _L151551_)
                                             (let* ((_slot151582_
                                                     (keyword->symbol
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L151551_))))
                                                    (_off151584_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass151436_
                                                        _slot151582_))))
                                               (if _off151584_
                                                   (let ((__tmp152457
                                                          (let ((__tmp152458
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _off151584_ _L151550_))))
                    (declare (not safe))
                    (cons __tmp152458 _initializers151470_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp151467_
                                                      _L151549_
                                                      __tmp152457))
                                                   (let ((__tmp152456
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _self151432_
                                                             __id151928
                                                             __klass151926
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"unknown slot"
                                                      _stx151433_
                                                      __tmp152456
                                                      _slot151582_))))))
                                          (___kont152049152050_
                                           (lambda ()
                                             (let ((__tmp152459
                                                    (let ((__tmp152460
                                                           (let ((__tmp152483
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp152484
                                 (let ((__tmp152486
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj151465_ '())))
                                       (__tmp152485
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object151442_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp152486 __tmp152485))))
                            (declare (not safe))
                            (cons __tmp152484 '())))
                         (__tmp152461
                          (let ((__tmp152462
                                 (let ((__tmp152463
                                        (let ((__tmp152480
                                               (let ((__tmp152481
                                                      (let ((__tmp152482
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj151465_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp152482))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp152481 '())))
                                              (__tmp152464
                                               (let ((__tmp152465
                                                      (lambda (_i151509_
                                                               _r151510_)
                                                        (let ((__tmp152466
                                                               (let ((__tmp152467
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp152477
                                     (let ((__tmp152478
                                            (let ((__tmp152479
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self151432_
                                                      __id151928
                                                      __klass151926
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp152479 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152478)))
                                    (__tmp152468
                                     (let ((__tmp152474
                                            (let ((__tmp152475
                                                   (let ((__tmp152476
                                                          (car _i151509_)))
                                                     (declare (not safe))
                                                     (cons __tmp152476 '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp152475)))
                                           (__tmp152469
                                            (let ((__tmp152472
                                                   (let ((__tmp152473
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj151465_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152473)))
                                                  (__tmp152470
                                                   (let ((__tmp152471
                                                          (cdr _i151509_)))
                                                     (declare (not safe))
                                                     (cons __tmp152471 '()))))
                                              (declare (not safe))
                                              (cons __tmp152472 __tmp152470))))
                                       (declare (not safe))
                                       (cons __tmp152474 __tmp152469))))
                                (declare (not safe))
                                (cons __tmp152477 __tmp152468))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp152467))))
                  (declare (not safe))
                  (cons __tmp152466 _r151510_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl1 __tmp152465
                                                         '()
                                                         _initializers151470_))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp152480
                                                  __tmp152464))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp152463))))
                            (declare (not safe))
                            (cons __tmp152462 '()))))
                     (declare (not safe))
                     (cons __tmp152483 __tmp152461))))
              (declare (not safe))
              (cons '%#let-values __tmp152460))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp152459
                                                _stx151433_))))
                                          (___kont152051152052_
                                           (lambda ()
                                             (let ((__tmp152487
                                                    (let ((__tmp152488
                                                           (let ((__tmp152502
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp152503
                                 (let ((__tmp152505
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj151465_ '())))
                                       (__tmp152504
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object151442_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp152505 __tmp152504))))
                            (declare (not safe))
                            (cons __tmp152503 '())))
                         (__tmp152489
                          (let ((__tmp152490
                                 (let ((__tmp152491
                                        (let ((__tmp152495
                                               (let ((__tmp152496
                                                      (let ((__tmp152500
                                                             (let ((__tmp152501
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'class-instance-init! '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp152501)))
                    (__tmp152497
                     (let ((__tmp152498
                            (let ((__tmp152499
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj151465_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp152499))))
                       (declare (not safe))
                       (cons __tmp152498 _args151440_))))
                (declare (not safe))
                (cons __tmp152500 __tmp152497))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp152496)))
                                              (__tmp152492
                                               (let ((__tmp152493
                                                      (let ((__tmp152494
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj151465_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp152494))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp152493 '()))))
                                          (declare (not safe))
                                          (cons __tmp152495 __tmp152492))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp152491))))
                            (declare (not safe))
                            (cons __tmp152490 '()))))
                     (declare (not safe))
                     (cons __tmp152502 __tmp152489))))
              (declare (not safe))
              (cons '%#let-values __tmp152488))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp152487
                                                _stx151433_)))))
                                      (let* ((_g151472151512_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       ___stx152045152046_))
                                                    (___kont152049152050_)
                                                    (___kont152051152052_))))
                                             (___match152082152083_
                                              (lambda (_e151481151517_
                                                       _hd151480151520_
                                                       _tl151479151522_
                                                       _e151484151525_
                                                       _hd151483151528_
                                                       _tl151482151530_
                                                       _e151487151533_
                                                       _hd151486151536_
                                                       _tl151485151538_
                                                       _e151490151541_
                                                       _hd151489151544_
                                                       _tl151488151546_)
                                                (let ((_L151549_
                                                       _tl151488151546_)
                                                      (_L151550_
                                                       _hd151489151544_)
                                                      (_L151551_
                                                       _hd151486151536_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-keyword?
                                                         _L151551_))
                                                      (___kont152047152048_
                                                       _L151549_
                                                       _L151550_
                                                       _L151551_)
                                                      (___kont152051152052_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               ___stx152045152046_))
                                            (let ((_e151481151517_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      ___stx152045152046_))))
                                              (let ((_tl151479151522_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e151481151517_)))
                                                    (_hd151480151520_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e151481151517_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd151480151520_))
                                                    (let ((_e151484151525_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd151480151520_))))
                                                      (let ((_tl151482151530_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e151484151525_)))
                    (_hd151483151528_
                     (let () (declare (not safe)) (##car _e151484151525_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd151483151528_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd151483151528_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl151482151530_))
                            (let ((_e151487151533_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl151482151530_))))
                              (let ((_tl151485151538_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e151487151533_)))
                                    (_hd151486151536_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e151487151533_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl151485151538_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl151479151522_))
                                        (let ((_e151490151541_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl151479151522_))))
                                          (let ((_tl151488151546_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e151490151541_)))
                                                (_hd151489151544_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e151490151541_))))
                                            (___match152082152083_
                                             _e151481151517_
                                             _hd151480151520_
                                             _tl151479151522_
                                             _e151484151525_
                                             _hd151483151528_
                                             _tl151482151530_
                                             _e151487151533_
                                             _hd151486151536_
                                             _tl151485151538_
                                             _e151490151541_
                                             _hd151489151544_
                                             _tl151488151546_)))
                                        (___kont152051152052_))
                                    (___kont152051152052_))))
                            (___kont152051152052_))
                        (___kont152051152052_))
                    (___kont152051152052_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont152051152052_))))
                                            (let ()
                                              (declare (not safe))
                                              (_g151472151512_))))))))))))))))))
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
      (lambda (_self151255_ _stx151256_ _args151257_)
        (let* ((_g151259151269_
                (lambda (_g151260151266_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g151260151266_))))
               (_g151258151307_
                (lambda (_g151260151272_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g151260151272_))
                      (let ((_e151264151274_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g151260151272_))))
                        (let ((_hd151263151277_
                               (let ()
                                 (declare (not safe))
                                 (##car _e151264151274_)))
                              (_tl151262151279_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e151264151274_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl151262151279_))
                              ((lambda (_L151282_)
                                 (let* ((_klass151293_
                                         (let ((__tmp152628
                                                (##structure-ref
                                                 _self151255_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx151256_
                                            __tmp152628)))
                                        (_field151295_
                                         (let ((__tmp152629
                                                (##structure-ref
                                                 _self151255_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass151293_
                                            __tmp152629)))
                                        (_object151297_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L151282_))))
                                   (if (##structure-ref
                                        _klass151293_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp152706
                                              (let ((__tmp152715
                                                     (if (##structure-ref
                                                          _self151255_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp152707
                                                     (let ((__tmp152712
                                                            (let ((__tmp152713
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152714
                                  (##structure-ref
                                   _self151255_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp152714 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp152713)))
                   (__tmp152708
                    (let ((__tmp152710
                           (let ((__tmp152711
                                  (let ()
                                    (declare (not safe))
                                    (cons _field151295_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp152711)))
                          (__tmp152709
                           (let ()
                             (declare (not safe))
                             (cons _object151297_ '()))))
                      (declare (not safe))
                      (cons __tmp152710 __tmp152709))))
               (declare (not safe))
               (cons __tmp152712 __tmp152708))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp152715
                                                      __tmp152707))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp152706
                                          _stx151256_))
                                       (if (##structure-ref
                                            _klass151293_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp152696
                                                  (let ((__tmp152705
                                                         (if (##structure-ref
                                                              _self151255_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp152697
                                                         (let ((__tmp152702
                                                                (let ((__tmp152703
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp152704
                                      (##structure-ref
                                       _self151255_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp152704 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp152703)))
                       (__tmp152698
                        (let ((__tmp152700
                               (let ((__tmp152701
                                      (let ()
                                        (declare (not safe))
                                        (cons _field151295_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp152701)))
                              (__tmp152699
                               (let ()
                                 (declare (not safe))
                                 (cons _object151297_ '()))))
                          (declare (not safe))
                          (cons __tmp152700 __tmp152699))))
                   (declare (not safe))
                   (cons __tmp152702 __tmp152698))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp152705
                                                          __tmp152697))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152696
                                              _stx151256_))
                                           (let ((_$e151300_
                                                  (let ((__tmp152630
                                                         (##structure-ref
                                                          _self151255_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass151293_
                                                     __tmp152630))))
                                             (if _$e151300_
                                                 ((lambda (_klass151303_)
                                                    (let ((__tmp152686
                                                           (let ((__tmp152695
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self151255_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp152687
                          (let ((__tmp152692
                                 (let ((__tmp152693
                                        (let ((__tmp152694
                                               (##structure-ref
                                                _self151255_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp152694 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp152693)))
                                (__tmp152688
                                 (let ((__tmp152690
                                        (let ((__tmp152691
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field151295_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp152691)))
                                       (__tmp152689
                                        (let ()
                                          (declare (not safe))
                                          (cons _object151297_ '()))))
                                   (declare (not safe))
                                   (cons __tmp152690 __tmp152689))))
                            (declare (not safe))
                            (cons __tmp152692 __tmp152688))))
                     (declare (not safe))
                     (cons __tmp152695 __tmp152687))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp152686 _stx151256_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e151300_)
                                                 (if (##structure-ref
                                                      _self151255_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp152640
                                                            (let* ((_$obj151305_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp152641 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp152641)))
                           (__tmp152642
                            (let ((__tmp152682
                                   (let ((__tmp152683
                                          (let ((__tmp152685
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj151305_ '())))
                                                (__tmp152684
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object151297_ '()))))
                                            (declare (not safe))
                                            (cons __tmp152685 __tmp152684))))
                                     (declare (not safe))
                                     (cons __tmp152683 '())))
                                  (__tmp152643
                                   (let ((__tmp152644
                                          (let ((__tmp152645
                                                 (let ((__tmp152674
                                                        (let ((__tmp152675
                                                               (let ((__tmp152679
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp152680
                                     (let ((__tmp152681
                                            (##structure-ref
                                             _klass151293_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp152681 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp152680)))
                             (__tmp152676
                              (let ((__tmp152677
                                     (let ((__tmp152678
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj151305_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152678))))
                                (declare (not safe))
                                (cons __tmp152677 '()))))
                         (declare (not safe))
                         (cons __tmp152679 __tmp152676))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp152675)))
               (__tmp152646
                (let ((__tmp152663
                       (let ((__tmp152664
                              (let ((__tmp152671
                                     (let ((__tmp152672
                                            (let ((__tmp152673
                                                   (##structure-ref
                                                    _self151255_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp152673 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152672)))
                                    (__tmp152665
                                     (let ((__tmp152669
                                            (let ((__tmp152670
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field151295_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp152670)))
                                           (__tmp152666
                                            (let ((__tmp152667
                                                   (let ((__tmp152668
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj151305_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152668))))
                                              (declare (not safe))
                                              (cons __tmp152667 '()))))
                                       (declare (not safe))
                                       (cons __tmp152669 __tmp152666))))
                                (declare (not safe))
                                (cons __tmp152671 __tmp152665))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp152664)))
                      (__tmp152647
                       (let ((__tmp152648
                              (let ((__tmp152649
                                     (let ((__tmp152661
                                            (let ((__tmp152662
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp152662)))
                                           (__tmp152650
                                            (let ((__tmp152658
                                                   (let ((__tmp152659
                                                          (let ((__tmp152660
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self151255_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp152660 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152659)))
                                                  (__tmp152651
                                                   (let ((__tmp152656
                                                          (let ((__tmp152657
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj151305_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp152657)))
                 (__tmp152652
                  (let ((__tmp152653
                         (let ((__tmp152654
                                (let ((__tmp152655
                                       (##structure-ref
                                        _self151255_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp152655 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp152654))))
                    (declare (not safe))
                    (cons __tmp152653 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152656
                                                           __tmp152652))))
                                              (declare (not safe))
                                              (cons __tmp152658 __tmp152651))))
                                       (declare (not safe))
                                       (cons __tmp152661 __tmp152650))))
                                (declare (not safe))
                                (cons '%#call __tmp152649))))
                         (declare (not safe))
                         (cons __tmp152648 '()))))
                  (declare (not safe))
                  (cons __tmp152663 __tmp152647))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp152674
                                                         __tmp152646))))
                                            (declare (not safe))
                                            (cons '%#if __tmp152645))))
                                     (declare (not safe))
                                     (cons __tmp152644 '()))))
                              (declare (not safe))
                              (cons __tmp152682 __tmp152643))))
                      (declare (not safe))
                      (cons '%#let-values __tmp152642))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp152640 _stx151256_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp152631
                                                            (let ((__tmp152632
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152638
                                  (let ((__tmp152639
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp152639)))
                                 (__tmp152633
                                  (let ((__tmp152634
                                         (let ((__tmp152635
                                                (let ((__tmp152636
                                                       (let ((__tmp152637
                                                              (##structure-ref
                                                               _self151255_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp152637
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp152636))))
                                           (declare (not safe))
                                           (cons __tmp152635 '()))))
                                    (declare (not safe))
                                    (cons _object151297_ __tmp152634))))
                             (declare (not safe))
                             (cons __tmp152638 __tmp152633))))
                      (declare (not safe))
                      (cons '%#call __tmp152632))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp152631 _stx151256_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd151263151277_)
                              (let ()
                                (declare (not safe))
                                (_g151259151269_ _g151260151272_)))))
                      (let ()
                        (declare (not safe))
                        (_g151259151269_ _g151260151272_))))))
          (declare (not safe))
          (_g151258151307_ _args151257_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass151930 __method-table151931)
        (let ((__checked?151932
               (let ((__slot151935
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass151930 'checked?))))
                 (if __slot151935
                     __slot151935
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__id151933
               (let ((__slot151936
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass151930 'id))))
                 (if __slot151936
                     __slot151936
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__slot151934
               (let ((__slot151937
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass151930 'slot))))
                 (if __slot151937
                     __slot151937
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self151255_ _stx151256_ _args151257_)
            (let* ((_g151259151269_
                    (lambda (_g151260151266_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g151260151266_))))
                   (_g151258151307_
                    (lambda (_g151260151272_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g151260151272_))
                          (let ((_e151264151274_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g151260151272_))))
                            (let ((_hd151263151277_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e151264151274_)))
                                  (_tl151262151279_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e151264151274_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl151262151279_))
                                  ((lambda (_L151282_)
                                     (let* ((_klass151293_
                                             (let ((__tmp152716
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self151255_
                                                       __id151933
                                                       __klass151930
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx151256_
                                                __tmp152716)))
                                            (_field151295_
                                             (let ((__tmp152717
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self151255_
                                                       __slot151934
                                                       __klass151930
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass151293_
                                                __tmp152717)))
                                            (_object151297_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L151282_))))
                                       (if (##structure-ref
                                            _klass151293_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp152794
                                                  (let ((__tmp152803
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self151255_
                        __checked?151932
                        __klass151930
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp152795
                 (let ((__tmp152800
                        (let ((__tmp152801
                               (let ((__tmp152802
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self151255_
                                         __id151933
                                         __klass151930
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp152802 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp152801)))
                       (__tmp152796
                        (let ((__tmp152798
                               (let ((__tmp152799
                                      (let ()
                                        (declare (not safe))
                                        (cons _field151295_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp152799)))
                              (__tmp152797
                               (let ()
                                 (declare (not safe))
                                 (cons _object151297_ '()))))
                          (declare (not safe))
                          (cons __tmp152798 __tmp152797))))
                   (declare (not safe))
                   (cons __tmp152800 __tmp152796))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp152803
                                                          __tmp152795))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152794
                                              _stx151256_))
                                           (if (##structure-ref
                                                _klass151293_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp152784
                                                      (let ((__tmp152793
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self151255_
                            __checked?151932
                            __klass151930
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp152785
                     (let ((__tmp152790
                            (let ((__tmp152791
                                   (let ((__tmp152792
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self151255_
                                             __id151933
                                             __klass151930
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp152792 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp152791)))
                           (__tmp152786
                            (let ((__tmp152788
                                   (let ((__tmp152789
                                          (let ()
                                            (declare (not safe))
                                            (cons _field151295_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp152789)))
                                  (__tmp152787
                                   (let ()
                                     (declare (not safe))
                                     (cons _object151297_ '()))))
                              (declare (not safe))
                              (cons __tmp152788 __tmp152787))))
                       (declare (not safe))
                       (cons __tmp152790 __tmp152786))))
                (declare (not safe))
                (cons __tmp152793 __tmp152785))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp152784
                                                  _stx151256_))
                                               (let ((_$e151300_
                                                      (let ((__tmp152718
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self151255_
                        __slot151934
                        __klass151930
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass151293_ __tmp152718))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e151300_
                                                     ((lambda (_klass151303_)
                                                        (let ((__tmp152774
                                                               (let ((__tmp152783
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self151255_
                                     __checked?151932
                                     __klass151930
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp152775
                              (let ((__tmp152780
                                     (let ((__tmp152781
                                            (let ((__tmp152782
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self151255_
                                                      __id151933
                                                      __klass151930
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp152782 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152781)))
                                    (__tmp152776
                                     (let ((__tmp152778
                                            (let ((__tmp152779
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field151295_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp152779)))
                                           (__tmp152777
                                            (let ()
                                              (declare (not safe))
                                              (cons _object151297_ '()))))
                                       (declare (not safe))
                                       (cons __tmp152778 __tmp152777))))
                                (declare (not safe))
                                (cons __tmp152780 __tmp152776))))
                         (declare (not safe))
                         (cons __tmp152783 __tmp152775))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp152774 _stx151256_)))
              _$e151300_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self151255_
                                                            __checked?151932
                                                            __klass151930
                                                            '#f))
                                                         (let ((__tmp152728
                                                                (let* ((_$obj151305_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp152729 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp152729)))
                               (__tmp152730
                                (let ((__tmp152770
                                       (let ((__tmp152771
                                              (let ((__tmp152773
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj151305_
                                                             '())))
                                                    (__tmp152772
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object151297_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp152773
                                                      __tmp152772))))
                                         (declare (not safe))
                                         (cons __tmp152771 '())))
                                      (__tmp152731
                                       (let ((__tmp152732
                                              (let ((__tmp152733
                                                     (let ((__tmp152762
                                                            (let ((__tmp152763
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152767
                                  (let ((__tmp152768
                                         (let ((__tmp152769
                                                (##structure-ref
                                                 _klass151293_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp152769 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp152768)))
                                 (__tmp152764
                                  (let ((__tmp152765
                                         (let ((__tmp152766
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj151305_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp152766))))
                                    (declare (not safe))
                                    (cons __tmp152765 '()))))
                             (declare (not safe))
                             (cons __tmp152767 __tmp152764))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp152763)))
                   (__tmp152734
                    (let ((__tmp152751
                           (let ((__tmp152752
                                  (let ((__tmp152759
                                         (let ((__tmp152760
                                                (let ((__tmp152761
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self151255_
                                                          __id151933
                                                          __klass151930
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp152761 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp152760)))
                                        (__tmp152753
                                         (let ((__tmp152757
                                                (let ((__tmp152758
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field151295_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp152758)))
                                               (__tmp152754
                                                (let ((__tmp152755
                                                       (let ((__tmp152756
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj151305_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152756))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152755 '()))))
                                           (declare (not safe))
                                           (cons __tmp152757 __tmp152754))))
                                    (declare (not safe))
                                    (cons __tmp152759 __tmp152753))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp152752)))
                          (__tmp152735
                           (let ((__tmp152736
                                  (let ((__tmp152737
                                         (let ((__tmp152749
                                                (let ((__tmp152750
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp152750)))
                                               (__tmp152738
                                                (let ((__tmp152746
                                                       (let ((__tmp152747
                                                              (let ((__tmp152748
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self151255_
                                __id151933
                                __klass151930
                                '#f))))
                        (declare (not safe))
                        (cons __tmp152748 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152747)))
              (__tmp152739
               (let ((__tmp152744
                      (let ((__tmp152745
                             (let ()
                               (declare (not safe))
                               (cons _$obj151305_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp152745)))
                     (__tmp152740
                      (let ((__tmp152741
                             (let ((__tmp152742
                                    (let ((__tmp152743
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self151255_
                                              __slot151934
                                              __klass151930
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp152743 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp152742))))
                        (declare (not safe))
                        (cons __tmp152741 '()))))
                 (declare (not safe))
                 (cons __tmp152744 __tmp152740))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152746
                                                        __tmp152739))))
                                           (declare (not safe))
                                           (cons __tmp152749 __tmp152738))))
                                    (declare (not safe))
                                    (cons '%#call __tmp152737))))
                             (declare (not safe))
                             (cons __tmp152736 '()))))
                      (declare (not safe))
                      (cons __tmp152751 __tmp152735))))
               (declare (not safe))
               (cons __tmp152762 __tmp152734))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp152733))))
                                         (declare (not safe))
                                         (cons __tmp152732 '()))))
                                  (declare (not safe))
                                  (cons __tmp152770 __tmp152731))))
                          (declare (not safe))
                          (cons '%#let-values __tmp152730))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp152728 _stx151256_))
                 (let ((__tmp152719
                        (let ((__tmp152720
                               (let ((__tmp152726
                                      (let ((__tmp152727
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp152727)))
                                     (__tmp152721
                                      (let ((__tmp152722
                                             (let ((__tmp152723
                                                    (let ((__tmp152724
                                                           (let ((__tmp152725
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self151255_
                             __slot151934
                             __klass151930
                             '#f))))
                     (declare (not safe))
                     (cons __tmp152725 '()))))
              (declare (not safe))
              (cons '%#quote __tmp152724))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp152723 '()))))
                                        (declare (not safe))
                                        (cons _object151297_ __tmp152722))))
                                 (declare (not safe))
                                 (cons __tmp152726 __tmp152721))))
                          (declare (not safe))
                          (cons '%#call __tmp152720))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp152719 _stx151256_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd151263151277_)
                                  (let ()
                                    (declare (not safe))
                                    (_g151259151269_ _g151260151272_)))))
                          (let ()
                            (declare (not safe))
                            (_g151259151269_ _g151260151272_))))))
              (declare (not safe))
              (_g151258151307_ _args151257_))))))
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
      (lambda (_self151060_ _stx151061_ _args151062_)
        (let* ((_g151064151078_
                (lambda (_g151065151075_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g151065151075_))))
               (_g151063151130_
                (lambda (_g151065151081_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g151065151081_))
                      (let ((_e151070151083_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g151065151081_))))
                        (let ((_hd151069151086_
                               (let ()
                                 (declare (not safe))
                                 (##car _e151070151083_)))
                              (_tl151068151088_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e151070151083_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl151068151088_))
                              (let ((_e151073151091_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl151068151088_))))
                                (let ((_hd151072151094_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e151073151091_)))
                                      (_tl151071151096_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e151073151091_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl151071151096_))
                                      ((lambda (_L151099_ _L151100_)
                                         (let* ((_klass151114_
                                                 (let ((__tmp152804
                                                        (##structure-ref
                                                         _self151060_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx151061_
                                                    __tmp152804)))
                                                (_field151116_
                                                 (let ((__tmp152805
                                                        (##structure-ref
                                                         _self151060_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass151114_
                                                    __tmp152805)))
                                                (_object151118_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L151100_)))
                                                (_value151120_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L151099_))))
                                           (if (##structure-ref
                                                _klass151114_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp152887
                                                      (let ((__tmp152897
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self151060_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp152888
                     (let ((__tmp152894
                            (let ((__tmp152895
                                   (let ((__tmp152896
                                          (##structure-ref
                                           _self151060_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp152896 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp152895)))
                           (__tmp152889
                            (let ((__tmp152892
                                   (let ((__tmp152893
                                          (let ()
                                            (declare (not safe))
                                            (cons _field151116_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp152893)))
                                  (__tmp152890
                                   (let ((__tmp152891
                                          (let ()
                                            (declare (not safe))
                                            (cons _value151120_ '()))))
                                     (declare (not safe))
                                     (cons _object151118_ __tmp152891))))
                              (declare (not safe))
                              (cons __tmp152892 __tmp152890))))
                       (declare (not safe))
                       (cons __tmp152894 __tmp152889))))
                (declare (not safe))
                (cons __tmp152897 __tmp152888))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp152887
                                                  _stx151061_))
                                               (if (##structure-ref
                                                    _klass151114_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp152876
                                                          (let ((__tmp152886
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self151060_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp152877
                         (let ((__tmp152883
                                (let ((__tmp152884
                                       (let ((__tmp152885
                                              (##structure-ref
                                               _self151060_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp152885 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp152884)))
                               (__tmp152878
                                (let ((__tmp152881
                                       (let ((__tmp152882
                                              (let ()
                                                (declare (not safe))
                                                (cons _field151116_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp152882)))
                                      (__tmp152879
                                       (let ((__tmp152880
                                              (let ()
                                                (declare (not safe))
                                                (cons _value151120_ '()))))
                                         (declare (not safe))
                                         (cons _object151118_ __tmp152880))))
                                  (declare (not safe))
                                  (cons __tmp152881 __tmp152879))))
                           (declare (not safe))
                           (cons __tmp152883 __tmp152878))))
                    (declare (not safe))
                    (cons __tmp152886 __tmp152877))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp152876
                                                      _stx151061_))
                                                   (let ((_$e151123_
                                                          (let ((__tmp152806
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self151060_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass151114_ __tmp152806))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e151123_
                                                         ((lambda (_klass151126_)
                                                            (let ((__tmp152865
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152875
                                  (if (##structure-ref
                                       _self151060_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp152866
                                  (let ((__tmp152872
                                         (let ((__tmp152873
                                                (let ((__tmp152874
                                                       (##structure-ref
                                                        _self151060_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp152874 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp152873)))
                                        (__tmp152867
                                         (let ((__tmp152870
                                                (let ((__tmp152871
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field151116_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp152871)))
                                               (__tmp152868
                                                (let ((__tmp152869
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value151120_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object151118_
                                                        __tmp152869))))
                                           (declare (not safe))
                                           (cons __tmp152870 __tmp152868))))
                                    (declare (not safe))
                                    (cons __tmp152872 __tmp152867))))
                             (declare (not safe))
                             (cons __tmp152875 __tmp152866))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp152865 _stx151061_)))
                  _$e151123_)
                 (if (##structure-ref _self151060_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp152817
                            (let* ((_$obj151128_
                                    (let ((__tmp152818 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp152818)))
                                   (__tmp152819
                                    (let ((__tmp152861
                                           (let ((__tmp152862
                                                  (let ((__tmp152864
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj151128_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp152863
                 (let () (declare (not safe)) (cons _object151118_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp152864
                                                          __tmp152863))))
                                             (declare (not safe))
                                             (cons __tmp152862 '())))
                                          (__tmp152820
                                           (let ((__tmp152821
                                                  (let ((__tmp152822
                                                         (let ((__tmp152853
                                                                (let ((__tmp152854
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp152858
                                      (let ((__tmp152859
                                             (let ((__tmp152860
                                                    (##structure-ref
                                                     _klass151114_
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
                                                      (cons _$obj151128_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp152857))))
                                        (declare (not safe))
                                        (cons __tmp152856 '()))))
                                 (declare (not safe))
                                 (cons __tmp152858 __tmp152855))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp152854)))
                       (__tmp152823
                        (let ((__tmp152841
                               (let ((__tmp152842
                                      (let ((__tmp152850
                                             (let ((__tmp152851
                                                    (let ((__tmp152852
                                                           (##structure-ref
                                                            _self151060_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp152852 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp152851)))
                                            (__tmp152843
                                             (let ((__tmp152848
                                                    (let ((__tmp152849
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field151116_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp152849)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp152844
                                                    (let ((__tmp152846
                                                           (let ((__tmp152847
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj151128_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp152847)))
                  (__tmp152845
                   (let () (declare (not safe)) (cons _value151120_ '()))))
              (declare (not safe))
              (cons __tmp152846 __tmp152845))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp152848
                                                     __tmp152844))))
                                        (declare (not safe))
                                        (cons __tmp152850 __tmp152843))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp152842)))
                              (__tmp152824
                               (let ((__tmp152825
                                      (let ((__tmp152826
                                             (let ((__tmp152839
                                                    (let ((__tmp152840
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp152840)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp152827
                                                    (let ((__tmp152836
                                                           (let ((__tmp152837
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp152838
                                 (##structure-ref
                                  _self151060_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp152838 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp152837)))
                  (__tmp152828
                   (let ((__tmp152834
                          (let ((__tmp152835
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj151128_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp152835)))
                         (__tmp152829
                          (let ((__tmp152831
                                 (let ((__tmp152832
                                        (let ((__tmp152833
                                               (##structure-ref
                                                _self151060_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp152833 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp152832)))
                                (__tmp152830
                                 (let ()
                                   (declare (not safe))
                                   (cons _value151120_ '()))))
                            (declare (not safe))
                            (cons __tmp152831 __tmp152830))))
                     (declare (not safe))
                     (cons __tmp152834 __tmp152829))))
              (declare (not safe))
              (cons __tmp152836 __tmp152828))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp152839
                                                     __tmp152827))))
                                        (declare (not safe))
                                        (cons '%#call __tmp152826))))
                                 (declare (not safe))
                                 (cons __tmp152825 '()))))
                          (declare (not safe))
                          (cons __tmp152841 __tmp152824))))
                   (declare (not safe))
                   (cons __tmp152853 __tmp152823))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp152822))))
                                             (declare (not safe))
                                             (cons __tmp152821 '()))))
                                      (declare (not safe))
                                      (cons __tmp152861 __tmp152820))))
                              (declare (not safe))
                              (cons '%#let-values __tmp152819))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp152817 _stx151061_))
                     (let ((__tmp152807
                            (let ((__tmp152808
                                   (let ((__tmp152815
                                          (let ((__tmp152816
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp152816)))
                                         (__tmp152809
                                          (let ((__tmp152810
                                                 (let ((__tmp152812
                                                        (let ((__tmp152813
                                                               (let ((__tmp152814
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self151060_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp152814 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp152813)))
               (__tmp152811
                (let () (declare (not safe)) (cons _value151120_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp152812
                                                         __tmp152811))))
                                            (declare (not safe))
                                            (cons _object151118_
                                                  __tmp152810))))
                                     (declare (not safe))
                                     (cons __tmp152815 __tmp152809))))
                              (declare (not safe))
                              (cons '%#call __tmp152808))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp152807 _stx151061_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd151072151094_
                                       _hd151069151086_)
                                      (let ()
                                        (declare (not safe))
                                        (_g151064151078_ _g151065151081_)))))
                              (let ()
                                (declare (not safe))
                                (_g151064151078_ _g151065151081_)))))
                      (let ()
                        (declare (not safe))
                        (_g151064151078_ _g151065151081_))))))
          (declare (not safe))
          (_g151063151130_ _args151062_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass151938 __method-table151939)
        (let ((__id151940
               (let ((__slot151943
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass151938 'id))))
                 (if __slot151943
                     __slot151943
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__slot151941
               (let ((__slot151944
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass151938 'slot))))
                 (if __slot151944
                     __slot151944
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__checked?151942
               (let ((__slot151945
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass151938 'checked?))))
                 (if __slot151945
                     __slot151945
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self151060_ _stx151061_ _args151062_)
            (let* ((_g151064151078_
                    (lambda (_g151065151075_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g151065151075_))))
                   (_g151063151130_
                    (lambda (_g151065151081_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g151065151081_))
                          (let ((_e151070151083_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g151065151081_))))
                            (let ((_hd151069151086_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e151070151083_)))
                                  (_tl151068151088_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e151070151083_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl151068151088_))
                                  (let ((_e151073151091_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl151068151088_))))
                                    (let ((_hd151072151094_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e151073151091_)))
                                          (_tl151071151096_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e151073151091_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl151071151096_))
                                          ((lambda (_L151099_ _L151100_)
                                             (let* ((_klass151114_
                                                     (let ((__tmp152898
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self151060_
                                                               __id151940
                                                               __klass151938
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx151061_
                                                        __tmp152898)))
                                                    (_field151116_
                                                     (let ((__tmp152899
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self151060_
                                                               __slot151941
                                                               __klass151938
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass151114_
                                                        __tmp152899)))
                                                    (_object151118_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L151100_)))
                                                    (_value151120_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L151099_))))
                                               (if (##structure-ref
                                                    _klass151114_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp152981
                                                          (let ((__tmp152991
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self151060_
                                __checked?151942
                                __klass151938
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp152982
                         (let ((__tmp152988
                                (let ((__tmp152989
                                       (let ((__tmp152990
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self151060_
                                                 __id151940
                                                 __klass151938
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp152990 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp152989)))
                               (__tmp152983
                                (let ((__tmp152986
                                       (let ((__tmp152987
                                              (let ()
                                                (declare (not safe))
                                                (cons _field151116_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp152987)))
                                      (__tmp152984
                                       (let ((__tmp152985
                                              (let ()
                                                (declare (not safe))
                                                (cons _value151120_ '()))))
                                         (declare (not safe))
                                         (cons _object151118_ __tmp152985))))
                                  (declare (not safe))
                                  (cons __tmp152986 __tmp152984))))
                           (declare (not safe))
                           (cons __tmp152988 __tmp152983))))
                    (declare (not safe))
                    (cons __tmp152991 __tmp152982))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp152981
                                                      _stx151061_))
                                                   (if (##structure-ref
                                                        _klass151114_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp152970
                                                              (let ((__tmp152980
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self151060_
                                    __checked?151942
                                    __klass151938
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp152971
                             (let ((__tmp152977
                                    (let ((__tmp152978
                                           (let ((__tmp152979
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self151060_
                                                     __id151940
                                                     __klass151938
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp152979 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp152978)))
                                   (__tmp152972
                                    (let ((__tmp152975
                                           (let ((__tmp152976
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field151116_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp152976)))
                                          (__tmp152973
                                           (let ((__tmp152974
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value151120_ '()))))
                                             (declare (not safe))
                                             (cons _object151118_
                                                   __tmp152974))))
                                      (declare (not safe))
                                      (cons __tmp152975 __tmp152973))))
                               (declare (not safe))
                               (cons __tmp152977 __tmp152972))))
                        (declare (not safe))
                        (cons __tmp152980 __tmp152971))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp152970 _stx151061_))
               (let ((_$e151123_
                      (let ((__tmp152900
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self151060_
                                __slot151941
                                __klass151938
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass151114_
                         __tmp152900))))
                 (if _$e151123_
                     ((lambda (_klass151126_)
                        (let ((__tmp152959
                               (let ((__tmp152969
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self151060_
                                             __checked?151942
                                             __klass151938
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp152960
                                      (let ((__tmp152966
                                             (let ((__tmp152967
                                                    (let ((__tmp152968
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self151060_
                                                              __id151940
                                                              __klass151938
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp152968 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp152967)))
                                            (__tmp152961
                                             (let ((__tmp152964
                                                    (let ((__tmp152965
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field151116_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp152965)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp152962
                                                    (let ((__tmp152963
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value151120_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object151118_ __tmp152963))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp152964
                                                     __tmp152962))))
                                        (declare (not safe))
                                        (cons __tmp152966 __tmp152961))))
                                 (declare (not safe))
                                 (cons __tmp152969 __tmp152960))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp152959 _stx151061_)))
                      _$e151123_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self151060_
                            __checked?151942
                            __klass151938
                            '#f))
                         (let ((__tmp152911
                                (let* ((_$obj151128_
                                        (let ((__tmp152912 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp152912)))
                                       (__tmp152913
                                        (let ((__tmp152955
                                               (let ((__tmp152956
                                                      (let ((__tmp152958
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj151128_ '())))
                    (__tmp152957
                     (let () (declare (not safe)) (cons _object151118_ '()))))
                (declare (not safe))
                (cons __tmp152958 __tmp152957))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp152956 '())))
                                              (__tmp152914
                                               (let ((__tmp152915
                                                      (let ((__tmp152916
                                                             (let ((__tmp152947
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp152948
                                   (let ((__tmp152952
                                          (let ((__tmp152953
                                                 (let ((__tmp152954
                                                        (##structure-ref
                                                         _klass151114_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp152954 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp152953)))
                                         (__tmp152949
                                          (let ((__tmp152950
                                                 (let ((__tmp152951
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj151128_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp152951))))
                                            (declare (not safe))
                                            (cons __tmp152950 '()))))
                                     (declare (not safe))
                                     (cons __tmp152952 __tmp152949))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp152948)))
                           (__tmp152917
                            (let ((__tmp152935
                                   (let ((__tmp152936
                                          (let ((__tmp152944
                                                 (let ((__tmp152945
                                                        (let ((__tmp152946
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self151060_
                          __id151940
                          __klass151938
                          '#f))))
                  (declare (not safe))
                  (cons __tmp152946 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp152945)))
                                                (__tmp152937
                                                 (let ((__tmp152942
                                                        (let ((__tmp152943
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field151116_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp152943)))
               (__tmp152938
                (let ((__tmp152940
                       (let ((__tmp152941
                              (let ()
                                (declare (not safe))
                                (cons _$obj151128_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp152941)))
                      (__tmp152939
                       (let () (declare (not safe)) (cons _value151120_ '()))))
                  (declare (not safe))
                  (cons __tmp152940 __tmp152939))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp152942
                                                         __tmp152938))))
                                            (declare (not safe))
                                            (cons __tmp152944 __tmp152937))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp152936)))
                                  (__tmp152918
                                   (let ((__tmp152919
                                          (let ((__tmp152920
                                                 (let ((__tmp152933
                                                        (let ((__tmp152934
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp152934)))
               (__tmp152921
                (let ((__tmp152930
                       (let ((__tmp152931
                              (let ((__tmp152932
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self151060_
                                        __id151940
                                        __klass151938
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp152932 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp152931)))
                      (__tmp152922
                       (let ((__tmp152928
                              (let ((__tmp152929
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj151128_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp152929)))
                             (__tmp152923
                              (let ((__tmp152925
                                     (let ((__tmp152926
                                            (let ((__tmp152927
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self151060_
                                                      __slot151941
                                                      __klass151938
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp152927 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp152926)))
                                    (__tmp152924
                                     (let ()
                                       (declare (not safe))
                                       (cons _value151120_ '()))))
                                (declare (not safe))
                                (cons __tmp152925 __tmp152924))))
                         (declare (not safe))
                         (cons __tmp152928 __tmp152923))))
                  (declare (not safe))
                  (cons __tmp152930 __tmp152922))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp152933
                                                         __tmp152921))))
                                            (declare (not safe))
                                            (cons '%#call __tmp152920))))
                                     (declare (not safe))
                                     (cons __tmp152919 '()))))
                              (declare (not safe))
                              (cons __tmp152935 __tmp152918))))
                       (declare (not safe))
                       (cons __tmp152947 __tmp152917))))
                (declare (not safe))
                (cons '%#if __tmp152916))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp152915 '()))))
                                          (declare (not safe))
                                          (cons __tmp152955 __tmp152914))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp152913))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp152911 _stx151061_))
                         (let ((__tmp152901
                                (let ((__tmp152902
                                       (let ((__tmp152909
                                              (let ((__tmp152910
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp152910)))
                                             (__tmp152903
                                              (let ((__tmp152904
                                                     (let ((__tmp152906
                                                            (let ((__tmp152907
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152908
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self151060_
                                     __slot151941
                                     __klass151938
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp152908 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp152907)))
                   (__tmp152905
                    (let () (declare (not safe)) (cons _value151120_ '()))))
               (declare (not safe))
               (cons __tmp152906 __tmp152905))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object151118_
                                                      __tmp152904))))
                                         (declare (not safe))
                                         (cons __tmp152909 __tmp152903))))
                                  (declare (not safe))
                                  (cons '%#call __tmp152902))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp152901
                            _stx151061_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd151072151094_
                                           _hd151069151086_)
                                          (let ()
                                            (declare (not safe))
                                            (_g151064151078_
                                             _g151065151081_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g151064151078_ _g151065151081_)))))
                          (let ()
                            (declare (not safe))
                            (_g151064151078_ _g151065151081_))))))
              (declare (not safe))
              (_g151063151130_ _args151062_))))))
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
      (lambda (_self150894_ _stx150895_ _args150896_)
        (let* ((_self150897150906_ _self150894_)
               (_E150899150910_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self150897150906_))))
               (_K150900150917_
                (lambda (_inline150913_ _dispatch150914_ _arity150915_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self150894_ _args150896_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx150895_
                         _arity150915_)))
                  (if _inline150913_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp152997
                               (let ((__tmp152998
                                      (_inline150913_ _stx150895_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp152998
                                  _stx150895_))))
                          (declare (not safe))
                          (gxc#compile-e__0 __tmp152997)))
                      (if _dispatch150914_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch150914_))
                            (let ((__tmp152992
                                   (let ((__tmp152993
                                          (let ((__tmp152994
                                                 (let ((__tmp152995
                                                        (let ((__tmp152996
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch150914_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp152996))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp152995
                                                         _args150896_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp152994))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp152993
                                      _stx150895_))))
                              (declare (not safe))
                              (gxc#compile-e__0 __tmp152992)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _stx150895_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self150897150906_ 'gxc#!lambda::t))
              (let* ((_e150901150920_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150897150906_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e150902150923_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150897150906_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity150926_ _e150902150923_)
                     (_e150903150928_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150897150906_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch150931_ _e150903150928_)
                     (_e150904150933_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150897150906_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline150936_ _e150904150933_))
                (declare (not safe))
                (_K150900150917_
                 _inline150936_
                 _dispatch150931_
                 _arity150926_))
              (let () (declare (not safe)) (_E150899150910_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self150733_ _stx150734_ _args150735_)
        (let* ((_self150736150743_ _self150733_)
               (_E150738150747_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self150736150743_))))
               (_K150739150761_
                (lambda (_clauses150750_)
                  (let ((_$e150756_
                         (let ((__tmp152999
                                (lambda (_g150751150753_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g150751150753_
                                     _args150735_)))))
                           (declare (not safe))
                           (find __tmp152999 _clauses150750_))))
                    (if _$e150756_
                        ((lambda (_clause150759_)
                           (let ((__method152214
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause150759_
                                     'optimize-call))))
                             (if __method152214
                                 (__method152214
                                  _clause150759_
                                  _stx150734_
                                  _args150735_)
                                 (let ()
                                   (declare (not safe))
                                   (error '"Missing method"
                                          _clause150759_
                                          'optimize-call)))))
                         _$e150756_)
                        (let ((__tmp153000
                               (map gxc#!lambda-arity _clauses150750_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx150734_
                           __tmp153000)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self150736150743_
                 'gxc#!case-lambda::t))
              (let* ((_e150740150764_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150736150743_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e150741150767_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150736150743_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses150770_ _e150741150767_))
                (declare (not safe))
                (_K150739150761_ _clauses150770_))
              (let () (declare (not safe)) (_E150738150747_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self150547_ _args150548_)
        (let* ((_self150549150556_ _self150547_)
               (_E150551150560_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self150549150556_))))
               (_K150552150600_
                (lambda (_arity150563_)
                  (let* ((_arity150564150573_ _arity150563_)
                         (_E150567150577_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (error '"No clause matching"
                                     _arity150564150573_)))))
                    (let ((_K150571150597_
                           (lambda ()
                             (fx= (length _args150548_) _arity150563_)))
                          (_K150568150583_
                           (lambda (_arity150581_)
                             (fx>= (length _args150548_) _arity150581_))))
                      (let ((_try-match150566150593_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity150564150573_))
                                   (let ((_tl150570150588_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity150564150573_)))
                                         (_hd150569150586_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity150564150573_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl150570150588_))
                                         (let ((_arity150591_
                                                _hd150569150586_))
                                           (declare (not safe))
                                           (_K150568150583_ _arity150591_))
                                         (let ()
                                           (declare (not safe))
                                           (_E150567150577_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E150567150577_))))))
                        (if (let ()
                              (declare (not safe))
                              (fixnum? _arity150564150573_))
                            (let () (declare (not safe)) (_K150571150597_))
                            (let ()
                              (declare (not safe))
                              (_try-match150566150593_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self150549150556_ 'gxc#!lambda::t))
              (let* ((_e150553150603_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150549150556_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e150554150606_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150549150556_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity150609_ _e150554150606_))
                (declare (not safe))
                (_K150552150600_ _arity150609_))
              (let () (declare (not safe)) (_E150551150560_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self150432_ _stx150433_ _args150434_)
        (let* ((_self150435150443_ _self150432_)
               (_E150437150447_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self150435150443_))))
               (_K150438150531_
                (lambda (_dispatch150450_ _table150451_)
                  (let* ((_g150452150461_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch150450_)))
                         (_else150454150469_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch150450_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _stx150433_))))
                         (_K150456150515_
                          (lambda (_main150472_ _keys150473_)
                            (let ((_g153001_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx150433_
                                      _args150434_))))
                              (begin
                                (let ((_g153002_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g153001_)
                                             (##vector-length _g153001_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g153002_ 2)))
                                      (error "Context expects 2 values"
                                             _g153002_)))
                                (let ((_pargs150475_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g153001_ 0)))
                                      (_kwargs150476_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g153001_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main150472_))
                                    (if _table150451_
                                        (let ((_xargs150483_
                                               (map (lambda (_key150478_)
                                                      (let ((_$e150480_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__0 _key150478_ _kwargs150476_))))
                (if _$e150480_ (values _$e150480_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys150473_)))
                                          (for-each
                                           (lambda (_kw150485_)
                                             (if (memq (car _kw150485_)
                                                       _keys150473_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx150433_
                                                    _keys150473_
                                                    _kw150485_))))
                                           _kwargs150476_)
                                          (let ((__tmp153054
                                                 (let ((__tmp153055
                                                        (let ((__tmp153056
                                                               (let ((__tmp153061
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153062
                                     (let ()
                                       (declare (not safe))
                                       (cons _main150472_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp153062)))
                             (__tmp153057
                              (let ((__tmp153059
                                     (let ((__tmp153060
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp153060)))
                                    (__tmp153058
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs150475_
                                               _xargs150483_))))
                                (declare (not safe))
                                (cons __tmp153059 __tmp153058))))
                         (declare (not safe))
                         (cons __tmp153061 __tmp153057))))
                  (declare (not safe))
                  (cons '%#call __tmp153056))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp153055
                                                    _stx150433_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0 __tmp153054)))
                                        (let* ((_kwt150487_
                                                (let ((__tmp153003
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp153003)))
                                               (_kwvars150490_
                                                (map (lambda (_g153004_)
                                                       (let ((__tmp153005
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp153005)))
                                                     _kwargs150476_))
                                               (_kwbind150495_
                                                (map (lambda (_kw150492_
                                                              _kwvar150493_)
                                                       (let ((__tmp153008
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar150493_ '())))
                     (__tmp153006
                      (let ((__tmp153007 (cdr _kw150492_)))
                        (declare (not safe))
                        (cons __tmp153007 '()))))
                 (declare (not safe))
                 (cons __tmp153008 __tmp153006)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs150476_
                                                     _kwvars150490_))
                                               (_kwset150500_
                                                (map (lambda (_kw150497_
                                                              _kwvar150498_)
                                                       (let ((__tmp153009
                                                              (let ((__tmp153010
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp153018
                                    (let ((__tmp153019
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt150487_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp153019)))
                                   (__tmp153011
                                    (let ((__tmp153015
                                           (let ((__tmp153016
                                                  (let ((__tmp153017
                                                         (car _kw150497_)))
                                                    (declare (not safe))
                                                    (cons __tmp153017 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp153016)))
                                          (__tmp153012
                                           (let ((__tmp153013
                                                  (let ((__tmp153014
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar150498_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp153014))))
                                             (declare (not safe))
                                             (cons __tmp153013 '()))))
                                      (declare (not safe))
                                      (cons __tmp153015 __tmp153012))))
                               (declare (not safe))
                               (cons __tmp153018 __tmp153011))))
                        (declare (not safe))
                        (cons '(%#ref symbolic-table-set!) __tmp153010))))
                 (declare (not safe))
                 (cons '%#call __tmp153009)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs150476_
                                                     _kwvars150490_))
                                               (_xkwargs150505_
                                                (map (lambda (_kw150502_
                                                              _kwvar150503_)
                                                       (let ((__tmp153022
                                                              (car _kw150502_))
                                                             (__tmp153020
                                                              (let ((__tmp153021
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar150503_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp153021))))
                 (declare (not safe))
                 (cons __tmp153022 __tmp153020)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs150476_
                                                     _kwvars150490_))
                                               (_xargs150512_
                                                (map (lambda (_key150507_)
                                                       (let ((_$e150509_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq__0 _key150507_ _xkwargs150505_))))
                 (if _$e150509_ (values _$e150509_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys150473_)))
                                          (let ((__tmp153023
                                                 (let ((__tmp153024
                                                        (let ((__tmp153025
                                                               (let ((__tmp153026
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153027
                                     (let ((__tmp153028
                                            (let ((__tmp153042
                                                   (let ((__tmp153043
                                                          (let ((__tmp153053
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt150487_ '())))
                        (__tmp153044
                         (let ((__tmp153045
                                (let ((__tmp153046
                                       (let ((__tmp153047
                                              (let ((__tmp153048
                                                     (let ((__tmp153050
                                                            (let ((__tmp153051
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153052 (length _kwargs150476_)))
                             (declare (not safe))
                             (cons __tmp153052 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp153051)))
                   (__tmp153049
                    (let () (declare (not safe)) (cons '(%#quote 0) '()))))
               (declare (not safe))
               (cons __tmp153050 __tmp153049))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-symbolic-table)
                                                      __tmp153048))))
                                         (declare (not safe))
                                         (cons '%#call __tmp153047))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp153046
                                   _stx150433_))))
                           (declare (not safe))
                           (cons __tmp153045 '()))))
                    (declare (not safe))
                    (cons __tmp153053 __tmp153044))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153043 '())))
                                                  (__tmp153029
                                                   (let ((__tmp153030
                                                          (let ((__tmp153031
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp153032
                                (let ((__tmp153033
                                       (let ((__tmp153034
                                              (let ((__tmp153035
                                                     (let ((__tmp153040
                                                            (let ((__tmp153041
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main150472_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp153041)))
                   (__tmp153036
                    (let ((__tmp153038
                           (let ((__tmp153039
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt150487_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp153039)))
                          (__tmp153037
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs150475_ _xargs150512_))))
                      (declare (not safe))
                      (cons __tmp153038 __tmp153037))))
               (declare (not safe))
               (cons __tmp153040 __tmp153036))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp153035))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp153034
                                          _stx150433_))))
                                  (declare (not safe))
                                  (cons __tmp153033 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp153032 _kwset150500_))))
                    (declare (not safe))
                    (cons '%#begin __tmp153031))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153030 '()))))
                                              (declare (not safe))
                                              (cons __tmp153042 __tmp153029))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp153028))))
                                (declare (not safe))
                                (cons __tmp153027 '()))))
                         (declare (not safe))
                         (cons _kwbind150495_ __tmp153026))))
                  (declare (not safe))
                  (cons '%#let-values __tmp153025))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp153024
                                                    _stx150433_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0
                                             __tmp153023)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g150452150461_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e150457150518_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g150452150461_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e150458150521_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g150452150461_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys150524_ _e150458150521_)
                               (_e150459150526_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g150452150461_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main150529_ _e150459150526_))
                          (declare (not safe))
                          (_K150456150515_ _main150529_ _keys150524_))
                        (let () (declare (not safe)) (_else150454150469_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self150435150443_
                 'gxc#!kw-lambda::t))
              (let* ((_e150439150534_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150435150443_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e150440150537_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150435150443_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table150540_ _e150440150537_)
                     (_e150441150542_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150435150443_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch150545_ _e150441150542_))
                (declare (not safe))
                (_K150438150531_ _dispatch150545_ _table150540_))
              (let () (declare (not safe)) (_E150437150447_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx150045_ _args150046_)
        (let _lp150048_ ((_rest150050_ _args150046_)
                         (_pargs150051_ '())
                         (_kwargs150052_ '()))
          (let* ((___stx152096152097_ _rest150050_)
                 (_g150058150110_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx152096152097_)))))
            (let ((___kont152098152099_
                   (lambda (_L150289_ _L150290_)
                     (let ((__tmp153063
                            (let ()
                              (declare (not safe))
                              (cons _L150290_ _pargs150051_))))
                       (declare (not safe))
                       (_lp150048_ _L150289_ __tmp153063 _kwargs150052_))))
                  (___kont152100152101_
                   (lambda (_L150235_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L150235_ _pargs150051_))
                             (reverse _kwargs150052_))))
                  (___kont152102152103_
                   (lambda (_L150182_ _L150183_ _L150184_)
                     (let ((_kw150201_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L150184_))))
                       (if (assq _kw150201_ _kwargs150052_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx150045_
                              _kw150201_))
                           (let ((__tmp153064
                                  (let ((__tmp153065
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw150201_ _L150183_))))
                                    (declare (not safe))
                                    (cons __tmp153065 _kwargs150052_))))
                             (declare (not safe))
                             (_lp150048_
                              _L150182_
                              _pargs150051_
                              __tmp153064))))))
                  (___kont152104152105_
                   (lambda (_L150130_ _L150131_)
                     (let ((__tmp153066
                            (let ()
                              (declare (not safe))
                              (cons _L150131_ _pargs150051_))))
                       (declare (not safe))
                       (_lp150048_ _L150130_ __tmp153066 _kwargs150052_))))
                  (___kont152106152107_
                   (lambda ()
                     (values (reverse _pargs150051_)
                             (reverse _kwargs150052_)))))
              (let* ((_g150057150117_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx152096152097_))
                            (___kont152106152107_)
                            (let () (declare (not safe)) (_g150058150110_)))))
                     (___match152203152204_
                      (lambda (_e150091150150_
                               _hd150090150153_
                               _tl150089150155_
                               _e150094150158_
                               _hd150093150161_
                               _tl150092150163_
                               _e150097150166_
                               _hd150096150169_
                               _tl150095150171_
                               _e150100150174_
                               _hd150099150177_
                               _tl150098150179_)
                        (let ((_L150182_ _tl150098150179_)
                              (_L150183_ _hd150099150177_)
                              (_L150184_ _hd150096150169_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L150184_))
                              (___kont152102152103_
                               _L150182_
                               _L150183_
                               _L150184_)
                              (___kont152104152105_
                               _tl150089150155_
                               _hd150090150153_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx152096152097_))
                    (let ((_e150064150254_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx152096152097_))))
                      (let ((_tl150062150259_
                             (let ()
                               (declare (not safe))
                               (##cdr _e150064150254_)))
                            (_hd150063150257_
                             (let ()
                               (declare (not safe))
                               (##car _e150064150254_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd150063150257_))
                            (let ((_e150067150262_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd150063150257_))))
                              (let ((_tl150065150267_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e150067150262_)))
                                    (_hd150066150265_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e150067150262_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd150066150265_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd150066150265_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl150065150267_))
                                            (let ((_e150070150270_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl150065150267_))))
                                              (let ((_tl150068150275_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e150070150270_)))
                                                    (_hd150069150273_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e150070150270_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd150069150273_))
                                                    (let ((_e150071150278_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd150069150273_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e150071150278_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl150068150275_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl150062150259_))
                          (let ((_e150074150281_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl150062150259_))))
                            (let ((_tl150072150286_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e150074150281_)))
                                  (_hd150073150284_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e150074150281_))))
                              (___kont152098152099_
                               _tl150072150286_
                               _hd150073150284_)))
                          (___kont152104152105_
                           _tl150062150259_
                           _hd150063150257_))
                      (___kont152104152105_ _tl150062150259_ _hd150063150257_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e150071150278_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl150068150275_))
                          (___kont152100152101_ _tl150062150259_)
                          (___kont152104152105_
                           _tl150062150259_
                           _hd150063150257_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl150068150275_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl150062150259_))
                              (let ((_e150100150174_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl150062150259_))))
                                (let ((_tl150098150179_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e150100150174_)))
                                      (_hd150099150177_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e150100150174_))))
                                  (___match152203152204_
                                   _e150064150254_
                                   _hd150063150257_
                                   _tl150062150259_
                                   _e150067150262_
                                   _hd150066150265_
                                   _tl150065150267_
                                   _e150070150270_
                                   _hd150069150273_
                                   _tl150068150275_
                                   _e150100150174_
                                   _hd150099150177_
                                   _tl150098150179_)))
                              (___kont152104152105_
                               _tl150062150259_
                               _hd150063150257_))
                          (___kont152104152105_
                           _tl150062150259_
                           _hd150063150257_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl150068150275_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl150062150259_))
                                                            (let ((_e150100150174_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl150062150259_))))
                      (let ((_tl150098150179_
                             (let ()
                               (declare (not safe))
                               (##cdr _e150100150174_)))
                            (_hd150099150177_
                             (let ()
                               (declare (not safe))
                               (##car _e150100150174_))))
                        (___match152203152204_
                         _e150064150254_
                         _hd150063150257_
                         _tl150062150259_
                         _e150067150262_
                         _hd150066150265_
                         _tl150065150267_
                         _e150070150270_
                         _hd150069150273_
                         _tl150068150275_
                         _e150100150174_
                         _hd150099150177_
                         _tl150098150179_)))
                    (___kont152104152105_ _tl150062150259_ _hd150063150257_))
                (___kont152104152105_ _tl150062150259_ _hd150063150257_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont152104152105_
                                             _tl150062150259_
                                             _hd150063150257_))
                                        (___kont152104152105_
                                         _tl150062150259_
                                         _hd150063150257_))
                                    (___kont152104152105_
                                     _tl150062150259_
                                     _hd150063150257_))))
                            (___kont152104152105_
                             _tl150062150259_
                             _hd150063150257_))))
                    (let () (declare (not safe)) (_g150057150117_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self150041_ _stx150042_ _args150043_)
        (let () (declare (not safe)) (gxc#xform-call% _stx150042_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
