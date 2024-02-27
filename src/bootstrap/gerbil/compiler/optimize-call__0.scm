(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1709038446)
  (begin
    (define gxc#&optimize-call
      (make-promise
       (lambda ()
         (let ((_tbl151926_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp152221 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-merge! _tbl151926_ __tmp152221))
           (let ()
             (declare (not safe))
             (hash-put! _tbl151926_ '%#call gxc#optimize-call%))
           _tbl151926_))))
    (define gxc#apply-optimize-call
      (lambda (_stx151909_ . _args151911_)
        (let ((__tmp152223
               (lambda ()
                 (declare (not safe))
                 (if (null? _args151911_)
                     (gxc#compile-e__0 _stx151909_)
                     (let ((_arg1151916_ (car _args151911_))
                           (_rest151918_ (cdr _args151911_)))
                       (if (null? _rest151918_)
                           (gxc#compile-e__1 _stx151909_ _arg1151916_)
                           (let ((_arg2151921_ (car _rest151918_))
                                 (_rest151923_ (cdr _rest151918_)))
                             (if (null? _rest151923_)
                                 (gxc#compile-e__2
                                  _stx151909_
                                  _arg1151916_
                                  _arg2151921_)
                                 (apply gxc#compile-e
                                        _stx151909_
                                        _arg1151916_
                                        _arg2151921_
                                        _rest151923_))))))))
              (__tmp152222 (force gxc#&optimize-call)))
          (declare (not safe))
          (call-with-parameters
           __tmp152223
           gxc#current-compile-methods
           __tmp152222))))
    (define gxc#optimize-call%
      (lambda (_stx151764_)
        (let* ((___stx151971151972_ _stx151764_)
               (_g151767151787_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx151971151972_)))))
          (let ((___kont151973151974_
                 (lambda (_L151831_ _L151832_)
                   (let* ((_rator-id151850_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L151832_)))
                          (_rator-type151852_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id151850_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type151852_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp152224
                                  (##structure-ref
                                   _rator-type151852_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id151850_
                              '" => "
                              _rator-type151852_
                              '" "
                              __tmp152224))
                           (let ((_optimized151855_
                                  (let ((__method152219
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type151852_
                                            'optimize-call))))
                                    (if __method152219
                                        (__method152219
                                         _rator-type151852_
                                         _stx151764_
                                         _L151831_)
                                        (let ()
                                          (declare (not safe))
                                          (error '"Missing method"
                                                 _rator-type151852_
                                                 'optimize-call))))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type151852_))
                                 _optimized151855_
                                 (let* ((___stx151953151954_ _optimized151855_)
                                        (_g151858151868_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx151953151954_)))))
                                   (let ((___kont151955151956_
                                          (lambda (_L151888_)
                                            (let ((__tmp152225
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L151888_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp152225
                                               _stx151764_))))
                                         (___kont151957151958_
                                          (lambda () _optimized151855_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx151953151954_))
                                         (let ((_e151863151880_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx151953151954_))))
                                           (let ((_tl151861151885_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e151863151880_)))
                                                 (_hd151862151883_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e151863151880_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd151862151883_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd151862151883_))
                                                     (___kont151955151956_
                                                      _tl151861151885_)
                                                     (___kont151957151958_))
                                                 (___kont151957151958_))))
                                         (___kont151957151958_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type151852_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx151764_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx151764_
                                _rator-type151852_)))))))
                (___kont151975151976_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _stx151764_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx151971151972_))
                (let ((_e151773151799_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx151971151972_))))
                  (let ((_tl151771151804_
                         (let () (declare (not safe)) (##cdr _e151773151799_)))
                        (_hd151772151802_
                         (let ()
                           (declare (not safe))
                           (##car _e151773151799_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl151771151804_))
                        (let ((_e151776151807_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl151771151804_))))
                          (let ((_tl151774151812_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e151776151807_)))
                                (_hd151775151810_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e151776151807_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd151775151810_))
                                (let ((_e151779151815_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd151775151810_))))
                                  (let ((_tl151777151820_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e151779151815_)))
                                        (_hd151778151818_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e151779151815_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd151778151818_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd151778151818_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl151777151820_))
                                                (let ((_e151782151823_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl151777151820_))))
                                                  (let ((_tl151780151828_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e151782151823_)))
                                                        (_hd151781151826_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e151782151823_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl151780151828_))
                                                        (___kont151973151974_
                                                         _tl151774151812_
                                                         _hd151781151826_)
                                                        (___kont151975151976_))))
                                                (___kont151975151976_))
                                            (___kont151975151976_))
                                        (___kont151975151976_))))
                                (___kont151975151976_))))
                        (___kont151975151976_))))
                (___kont151975151976_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self151718_ _stx151719_ _args151720_)
        (let* ((_g151722151732_
                (lambda (_g151723151729_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g151723151729_))))
               (_g151721151761_
                (lambda (_g151723151735_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g151723151735_))
                      (let ((_e151727151737_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g151723151735_))))
                        (let ((_hd151726151740_
                               (let ()
                                 (declare (not safe))
                                 (##car _e151727151737_)))
                              (_tl151725151742_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e151727151737_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl151725151742_))
                              ((lambda (_L151745_)
                                 (let* ((_klass151756_
                                         (let ((__tmp152226
                                                (##structure-ref
                                                 _self151718_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx151719_
                                            __tmp152226)))
                                        (_object151758_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L151745_))))
                                   (if (##structure-ref
                                        _klass151756_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp152242
                                              (let ((__tmp152243
                                                     (let ((__tmp152245
                                                            (let ((__tmp152246
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152247
                                  (##structure-ref
                                   _klass151756_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp152247 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp152246)))
                   (__tmp152244
                    (let () (declare (not safe)) (cons _object151758_ '()))))
               (declare (not safe))
               (cons __tmp152245 __tmp152244))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp152243))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp152242
                                          _stx151719_))
                                       (if (##structure-ref
                                            _klass151756_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp152236
                                                  (let ((__tmp152237
                                                         (let ((__tmp152239
                                                                (let ((__tmp152240
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp152241
                                      (##structure-ref
                                       _klass151756_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp152241 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp152240)))
                       (__tmp152238
                        (let ()
                          (declare (not safe))
                          (cons _object151758_ '()))))
                   (declare (not safe))
                   (cons __tmp152239 __tmp152238))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp152237))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152236
                                              _stx151719_))
                                           (let ((__tmp152227
                                                  (let ((__tmp152228
                                                         (let ((__tmp152234
                                                                (let ((__tmp152235
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp152235)))
                       (__tmp152229
                        (let ((__tmp152231
                               (let ((__tmp152232
                                      (let ((__tmp152233
                                             (##structure-ref
                                              _self151718_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp152233 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp152232)))
                              (__tmp152230
                               (let ()
                                 (declare (not safe))
                                 (cons _object151758_ '()))))
                          (declare (not safe))
                          (cons __tmp152231 __tmp152230))))
                   (declare (not safe))
                   (cons __tmp152234 __tmp152229))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp152228))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152227
                                              _stx151719_))))))
                               _hd151726151740_)
                              (let ()
                                (declare (not safe))
                                (_g151722151732_ _g151723151735_)))))
                      (let ()
                        (declare (not safe))
                        (_g151722151732_ _g151723151735_))))))
          (declare (not safe))
          (_g151721151761_ _args151720_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__klass151928 __method-table151929)
        (let ((__id151930
               (let ((__slot151931
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass151928 'id))))
                 (if __slot151931
                     __slot151931
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self151718_ _stx151719_ _args151720_)
            (let* ((_g151722151732_
                    (lambda (_g151723151729_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g151723151729_))))
                   (_g151721151761_
                    (lambda (_g151723151735_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g151723151735_))
                          (let ((_e151727151737_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g151723151735_))))
                            (let ((_hd151726151740_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e151727151737_)))
                                  (_tl151725151742_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e151727151737_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl151725151742_))
                                  ((lambda (_L151745_)
                                     (let* ((_klass151756_
                                             (let ((__tmp152248
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self151718_
                                                       __id151930
                                                       __klass151928
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx151719_
                                                __tmp152248)))
                                            (_object151758_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L151745_))))
                                       (if (##structure-ref
                                            _klass151756_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp152264
                                                  (let ((__tmp152265
                                                         (let ((__tmp152267
                                                                (let ((__tmp152268
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp152269
                                      (##structure-ref
                                       _klass151756_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp152269 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp152268)))
                       (__tmp152266
                        (let ()
                          (declare (not safe))
                          (cons _object151758_ '()))))
                   (declare (not safe))
                   (cons __tmp152267 __tmp152266))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp152265))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152264
                                              _stx151719_))
                                           (if (##structure-ref
                                                _klass151756_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp152258
                                                      (let ((__tmp152259
                                                             (let ((__tmp152261
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp152262
                                   (let ((__tmp152263
                                          (##structure-ref
                                           _klass151756_
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
                              (cons _object151758_ '()))))
                       (declare (not safe))
                       (cons __tmp152261 __tmp152260))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp152259))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp152258
                                                  _stx151719_))
                                               (let ((__tmp152249
                                                      (let ((__tmp152250
                                                             (let ((__tmp152256
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp152257
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp152257)))
                           (__tmp152251
                            (let ((__tmp152253
                                   (let ((__tmp152254
                                          (let ((__tmp152255
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self151718_
                                                    __id151930
                                                    __klass151928
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp152255 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp152254)))
                                  (__tmp152252
                                   (let ()
                                     (declare (not safe))
                                     (cons _object151758_ '()))))
                              (declare (not safe))
                              (cons __tmp152253 __tmp152252))))
                       (declare (not safe))
                       (cons __tmp152256 __tmp152251))))
                (declare (not safe))
                (cons '%#call __tmp152250))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp152249
                                                  _stx151719_))))))
                                   _hd151726151740_)
                                  (let ()
                                    (declare (not safe))
                                    (_g151722151732_ _g151723151735_)))))
                          (let ()
                            (declare (not safe))
                            (_g151722151732_ _g151723151735_))))))
              (declare (not safe))
              (_g151721151761_ _args151720_))))))
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
      (lambda (_self151438_ _stx151439_ _args151440_)
        (let* ((_klass151442_
                (let ((__tmp152270
                       (##structure-ref _self151438_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx151439_ __tmp152270)))
               (_fields151444_
                (length (##structure-ref _klass151442_ '5 gxc#!class::t '#f)))
               (_args151446_ (map gxc#compile-e _args151440_))
               (_inline-make-object151448_
                (let ((__tmp152271
                       (let ((__tmp152277
                              (let ((__tmp152278
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp152278)))
                             (__tmp152272
                              (let ((__tmp152274
                                     (let ((__tmp152275
                                            (let ((__tmp152276
                                                   (##structure-ref
                                                    _self151438_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp152276 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152275)))
                                    (__tmp152273
                                     (let ()
                                       (declare (not safe))
                                       (make-list__%
                                        _fields151444_
                                        '(%#quote #f)))))
                                (declare (not safe))
                                (cons __tmp152274 __tmp152273))))
                         (declare (not safe))
                         (cons __tmp152277 __tmp152272))))
                  (declare (not safe))
                  (cons '%#call __tmp152271))))
          (let ((_$e151451_
                 (##structure-ref _klass151442_ '6 gxc#!class::t '#f)))
            (if _$e151451_
                ((lambda (_ctor151454_)
                   (let ((_$obj151456_
                          (let ((__tmp152378 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp152378)))
                         (_ctor-impl151457_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass151442_
                             _ctor151454_))))
                     (let ((__tmp152379
                            (let ((__tmp152380
                                   (let ((__tmp152448
                                          (let ((__tmp152449
                                                 (let ((__tmp152451
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj151456_
                                                                '())))
                                                       (__tmp152450
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object151448_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp152451
                                                         __tmp152450))))
                                            (declare (not safe))
                                            (cons __tmp152449 '())))
                                         (__tmp152381
                                          (let ((__tmp152382
                                                 (let ((__tmp152383
                                                        (let ((__tmp152387
                                                               (if _ctor-impl151457_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152442
                                  (let ((__tmp152446
                                         (let ((__tmp152447
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl151457_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp152447)))
                                        (__tmp152443
                                         (let ((__tmp152444
                                                (let ((__tmp152445
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj151456_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp152445))))
                                           (declare (not safe))
                                           (cons __tmp152444 _args151446_))))
                                    (declare (not safe))
                                    (cons __tmp152446 __tmp152443))))
                             (declare (not safe))
                             (cons '%#call __tmp152442))
                           (let* ((_$ctor151459_
                                   (let ((__tmp152388 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp152388)))
                                  (__tmp152389
                                   (let ((__tmp152424
                                          (let ((__tmp152425
                                                 (let ((__tmp152441
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor151459_
                                                                '())))
                                                       (__tmp152426
                                                        (let ((__tmp152427
                                                               (let ((__tmp152428
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp152439
                                     (let ((__tmp152440
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152440)))
                                    (__tmp152429
                                     (let ((__tmp152436
                                            (let ((__tmp152437
                                                   (let ((__tmp152438
                                                          (##structure-ref
                                                           _self151438_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp152438 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp152437)))
                                           (__tmp152430
                                            (let ((__tmp152434
                                                   (let ((__tmp152435
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj151456_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152435)))
                                                  (__tmp152431
                                                   (let ((__tmp152432
                                                          (let ((__tmp152433
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _ctor151454_ '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp152433))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152432 '()))))
                                              (declare (not safe))
                                              (cons __tmp152434 __tmp152431))))
                                       (declare (not safe))
                                       (cons __tmp152436 __tmp152430))))
                                (declare (not safe))
                                (cons __tmp152439 __tmp152429))))
                         (declare (not safe))
                         (cons '%#call __tmp152428))))
                  (declare (not safe))
                  (cons __tmp152427 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp152441
                                                         __tmp152426))))
                                            (declare (not safe))
                                            (cons __tmp152425 '())))
                                         (__tmp152390
                                          (let ((__tmp152391
                                                 (let ((__tmp152392
                                                        (let ((__tmp152422
                                                               (let ((__tmp152423
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor151459_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp152423)))
                      (__tmp152393
                       (let ((__tmp152415
                              (let ((__tmp152416
                                     (let ((__tmp152420
                                            (let ((__tmp152421
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor151459_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp152421)))
                                           (__tmp152417
                                            (let ((__tmp152418
                                                   (let ((__tmp152419
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj151456_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152419))))
                                              (declare (not safe))
                                              (cons __tmp152418
                                                    _args151446_))))
                                       (declare (not safe))
                                       (cons __tmp152420 __tmp152417))))
                                (declare (not safe))
                                (cons '%#call __tmp152416)))
                             (__tmp152394
                              (let ((__tmp152395
                                     (let ((__tmp152396
                                            (let ((__tmp152413
                                                   (let ((__tmp152414
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152414)))
                                                  (__tmp152397
                                                   (let ((__tmp152411
                                                          (let ((__tmp152412
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp152412)))
                 (__tmp152398
                  (let ((__tmp152409
                         (let ((__tmp152410
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp152410)))
                        (__tmp152399
                         (let ((__tmp152406
                                (let ((__tmp152407
                                       (let ((__tmp152408
                                              (##structure-ref
                                               _self151438_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp152408 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp152407)))
                               (__tmp152400
                                (let ((__tmp152404
                                       (let ((__tmp152405
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp152405)))
                                      (__tmp152401
                                       (let ((__tmp152402
                                              (let ((__tmp152403
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor151454_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp152403))))
                                         (declare (not safe))
                                         (cons __tmp152402 '()))))
                                  (declare (not safe))
                                  (cons __tmp152404 __tmp152401))))
                           (declare (not safe))
                           (cons __tmp152406 __tmp152400))))
                    (declare (not safe))
                    (cons __tmp152409 __tmp152399))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152411
                                                           __tmp152398))))
                                              (declare (not safe))
                                              (cons __tmp152413 __tmp152397))))
                                       (declare (not safe))
                                       (cons '%#call __tmp152396))))
                                (declare (not safe))
                                (cons __tmp152395 '()))))
                         (declare (not safe))
                         (cons __tmp152415 __tmp152394))))
                  (declare (not safe))
                  (cons __tmp152422 __tmp152393))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp152392))))
                                            (declare (not safe))
                                            (cons __tmp152391 '()))))
                                     (declare (not safe))
                                     (cons __tmp152424 __tmp152390))))
                             (declare (not safe))
                             (cons '%#let-values __tmp152389))))
                      (__tmp152384
                       (let ((__tmp152385
                              (let ((__tmp152386
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj151456_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp152386))))
                         (declare (not safe))
                         (cons __tmp152385 '()))))
                  (declare (not safe))
                  (cons __tmp152387 __tmp152384))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp152383))))
                                            (declare (not safe))
                                            (cons __tmp152382 '()))))
                                     (declare (not safe))
                                     (cons __tmp152448 __tmp152381))))
                              (declare (not safe))
                              (cons '%#let-values __tmp152380))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp152379 _stx151439_))))
                 _$e151451_)
                (let ((_$e151461_
                       (##structure-ref _klass151442_ '9 gxc#!class::t '#f)))
                  (if _$e151461_
                      ((lambda (_metaclass151464_)
                         (let* ((_$obj151466_
                                 (let ((__tmp152340 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp152340)))
                                (_metakons151468_
                                 (let ((__tmp152341
                                        (let ()
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           _stx151439_
                                           _metaclass151464_))))
                                   (declare (not safe))
                                   (gxc#!class-lookup-method
                                    __tmp152341
                                    'instance-init!))))
                           (let ((__tmp152342
                                  (let ((__tmp152343
                                         (let ((__tmp152374
                                                (let ((__tmp152375
                                                       (let ((__tmp152377
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj151466_ '())))
                     (__tmp152376
                      (let ()
                        (declare (not safe))
                        (cons _inline-make-object151448_ '()))))
                 (declare (not safe))
                 (cons __tmp152377 __tmp152376))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152375 '())))
                                               (__tmp152344
                                                (let ((__tmp152345
                                                       (let ((__tmp152346
                                                              (let ((__tmp152350
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if _metakons151468_
                                 (let ((__tmp152364
                                        (let ((__tmp152372
                                               (let ((__tmp152373
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metakons151468_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp152373)))
                                              (__tmp152365
                                               (let ((__tmp152369
                                                      (let ((__tmp152370
                                                             (let ((__tmp152371
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self151438_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp152371 '()))))
                (declare (not safe))
                (cons '%#ref __tmp152370)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp152366
                                                      (let ((__tmp152367
                                                             (let ((__tmp152368
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _$obj151466_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp152368))))
                (declare (not safe))
                (cons __tmp152367 _args151446_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp152369
                                                       __tmp152366))))
                                          (declare (not safe))
                                          (cons __tmp152372 __tmp152365))))
                                   (declare (not safe))
                                   (cons '%#call __tmp152364))
                                 (let ((__tmp152351
                                        (let ((__tmp152362
                                               (let ((__tmp152363
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'call-method
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp152363)))
                                              (__tmp152352
                                               (let ((__tmp152359
                                                      (let ((__tmp152360
                                                             (let ((__tmp152361
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self151438_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp152361 '()))))
                (declare (not safe))
                (cons '%#ref __tmp152360)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp152353
                                                      (let ((__tmp152357
                                                             (let ((__tmp152358
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'instance-init! '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp152358)))
                    (__tmp152354
                     (let ((__tmp152355
                            (let ((__tmp152356
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj151466_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp152356))))
                       (declare (not safe))
                       (cons __tmp152355 _args151446_))))
                (declare (not safe))
                (cons __tmp152357 __tmp152354))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp152359
                                                       __tmp152353))))
                                          (declare (not safe))
                                          (cons __tmp152362 __tmp152352))))
                                   (declare (not safe))
                                   (cons '%#call __tmp152351))))
                            (__tmp152347
                             (let ((__tmp152348
                                    (let ((__tmp152349
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj151466_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp152349))))
                               (declare (not safe))
                               (cons __tmp152348 '()))))
                        (declare (not safe))
                        (cons __tmp152350 __tmp152347))))
                 (declare (not safe))
                 (cons '%#begin __tmp152346))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152345 '()))))
                                           (declare (not safe))
                                           (cons __tmp152374 __tmp152344))))
                                    (declare (not safe))
                                    (cons '%#let-values __tmp152343))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp152342 _stx151439_))))
                       _$e151461_)
                      (if (##structure-ref _klass151442_ '7 gxc#!class::t '#f)
                          (if (fx= (length _args151446_) _fields151444_)
                              (let ((__tmp152332
                                     (let ((__tmp152333
                                            (let ((__tmp152338
                                                   (let ((__tmp152339
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152339)))
                                                  (__tmp152334
                                                   (let ((__tmp152335
                                                          (let ((__tmp152336
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp152337
                                (##structure-ref
                                 _self151438_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp152337 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp152336))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152335
                                                           _args151446_))))
                                              (declare (not safe))
                                              (cons __tmp152338 __tmp152334))))
                                       (declare (not safe))
                                       (cons '%#call __tmp152333))))
                                (declare (not safe))
                                (gxc#xform-wrap-source
                                 __tmp152332
                                 _stx151439_))
                              (let ((__tmp152331
                                     (##structure-ref
                                      _self151438_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                    (__tmp152330
                                     (length (##structure-ref
                                              _klass151442_
                                              '5
                                              gxc#!class::t
                                              '#f))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"illegal struct constructor application; arity mismatch"
                                 _stx151439_
                                 __tmp152331
                                 __tmp152330)))
                          (let ((_$obj151471_
                                 (let ((__tmp152279 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp152279))))
                            (let _lp151473_ ((_rest151475_ _args151446_)
                                             (_initializers151476_ '()))
                              (let* ((___stx152009152010_ _rest151475_)
                                     (_g151480151501_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx152009152010_)))))
                                (let ((___kont152011152012_
                                       (lambda (_L151555_ _L151556_ _L151557_)
                                         (let* ((_slot151588_
                                                 (keyword->symbol
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e _L151557_))))
                                                (_off151590_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass151442_
                                                    _slot151588_))))
                                           (if _off151590_
                                               (let ((__tmp152281
                                                      (let ((__tmp152282
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off151590_ _L151556_))))
                (declare (not safe))
                (cons __tmp152282 _initializers151476_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp151473_
                                                  _L151555_
                                                  __tmp152281))
                                               (let ((__tmp152280
                                                      (##structure-ref
                                                       _self151438_
                                                       '1
                                                       gxc#!type::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"unknown slot"
                                                  _stx151439_
                                                  __tmp152280
                                                  _slot151588_))))))
                                      (___kont152013152014_
                                       (lambda ()
                                         (let ((__tmp152283
                                                (let ((__tmp152284
                                                       (let ((__tmp152307
                                                              (let ((__tmp152308
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp152310
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj151471_ '())))
                                   (__tmp152309
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object151448_ '()))))
                               (declare (not safe))
                               (cons __tmp152310 __tmp152309))))
                        (declare (not safe))
                        (cons __tmp152308 '())))
                     (__tmp152285
                      (let ((__tmp152286
                             (let ((__tmp152287
                                    (let ((__tmp152304
                                           (let ((__tmp152305
                                                  (let ((__tmp152306
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj151471_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp152306))))
                                             (declare (not safe))
                                             (cons __tmp152305 '())))
                                          (__tmp152288
                                           (let ((__tmp152289
                                                  (lambda (_i151515_ _r151516_)
                                                    (let ((__tmp152290
                                                           (let ((__tmp152291
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp152301
                                 (let ((__tmp152302
                                        (let ((__tmp152303
                                               (##structure-ref
                                                _self151438_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp152303 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp152302)))
                                (__tmp152292
                                 (let ((__tmp152298
                                        (let ((__tmp152299
                                               (let ((__tmp152300
                                                      (car _i151515_)))
                                                 (declare (not safe))
                                                 (cons __tmp152300 '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp152299)))
                                       (__tmp152293
                                        (let ((__tmp152296
                                               (let ((__tmp152297
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _$obj151471_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp152297)))
                                              (__tmp152294
                                               (let ((__tmp152295
                                                      (cdr _i151515_)))
                                                 (declare (not safe))
                                                 (cons __tmp152295 '()))))
                                          (declare (not safe))
                                          (cons __tmp152296 __tmp152294))))
                                   (declare (not safe))
                                   (cons __tmp152298 __tmp152293))))
                            (declare (not safe))
                            (cons __tmp152301 __tmp152292))))
                     (declare (not safe))
                     (cons '%#struct-unchecked-set! __tmp152291))))
              (declare (not safe))
              (cons __tmp152290 _r151516_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (foldl1 __tmp152289
                                                     '()
                                                     _initializers151476_))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp152304 __tmp152288))))
                               (declare (not safe))
                               (cons '%#begin __tmp152287))))
                        (declare (not safe))
                        (cons __tmp152286 '()))))
                 (declare (not safe))
                 (cons __tmp152307 __tmp152285))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp152284))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp152283
                                            _stx151439_))))
                                      (___kont152015152016_
                                       (lambda ()
                                         (let ((__tmp152311
                                                (let ((__tmp152312
                                                       (let ((__tmp152326
                                                              (let ((__tmp152327
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp152329
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj151471_ '())))
                                   (__tmp152328
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object151448_ '()))))
                               (declare (not safe))
                               (cons __tmp152329 __tmp152328))))
                        (declare (not safe))
                        (cons __tmp152327 '())))
                     (__tmp152313
                      (let ((__tmp152314
                             (let ((__tmp152315
                                    (let ((__tmp152319
                                           (let ((__tmp152320
                                                  (let ((__tmp152324
                                                         (let ((__tmp152325
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'class-instance-init! '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp152325)))
                (__tmp152321
                 (let ((__tmp152322
                        (let ((__tmp152323
                               (let ()
                                 (declare (not safe))
                                 (cons _$obj151471_ '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp152323))))
                   (declare (not safe))
                   (cons __tmp152322 _args151446_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp152324
                                                          __tmp152321))))
                                             (declare (not safe))
                                             (cons '%#call __tmp152320)))
                                          (__tmp152316
                                           (let ((__tmp152317
                                                  (let ((__tmp152318
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj151471_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp152318))))
                                             (declare (not safe))
                                             (cons __tmp152317 '()))))
                                      (declare (not safe))
                                      (cons __tmp152319 __tmp152316))))
                               (declare (not safe))
                               (cons '%#begin __tmp152315))))
                        (declare (not safe))
                        (cons __tmp152314 '()))))
                 (declare (not safe))
                 (cons __tmp152326 __tmp152313))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp152312))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp152311
                                            _stx151439_)))))
                                  (let* ((_g151478151518_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   ___stx152009152010_))
                                                (___kont152013152014_)
                                                (___kont152015152016_))))
                                         (___match152046152047_
                                          (lambda (_e151487151523_
                                                   _hd151486151526_
                                                   _tl151485151528_
                                                   _e151490151531_
                                                   _hd151489151534_
                                                   _tl151488151536_
                                                   _e151493151539_
                                                   _hd151492151542_
                                                   _tl151491151544_
                                                   _e151496151547_
                                                   _hd151495151550_
                                                   _tl151494151552_)
                                            (let ((_L151555_ _tl151494151552_)
                                                  (_L151556_ _hd151495151550_)
                                                  (_L151557_ _hd151492151542_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-keyword?
                                                     _L151557_))
                                                  (___kont152011152012_
                                                   _L151555_
                                                   _L151556_
                                                   _L151557_)
                                                  (___kont152015152016_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx152009152010_))
                                        (let ((_e151487151523_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx152009152010_))))
                                          (let ((_tl151485151528_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e151487151523_)))
                                                (_hd151486151526_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e151487151523_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd151486151526_))
                                                (let ((_e151490151531_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd151486151526_))))
                                                  (let ((_tl151488151536_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e151490151531_)))
                                                        (_hd151489151534_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e151490151531_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd151489151534_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#quote
                                                               _hd151489151534_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl151488151536_))
                        (let ((_e151493151539_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl151488151536_))))
                          (let ((_tl151491151544_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e151493151539_)))
                                (_hd151492151542_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e151493151539_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl151491151544_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl151485151528_))
                                    (let ((_e151496151547_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl151485151528_))))
                                      (let ((_tl151494151552_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e151496151547_)))
                                            (_hd151495151550_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e151496151547_))))
                                        (___match152046152047_
                                         _e151487151523_
                                         _hd151486151526_
                                         _tl151485151528_
                                         _e151490151531_
                                         _hd151489151534_
                                         _tl151488151536_
                                         _e151493151539_
                                         _hd151492151542_
                                         _tl151491151544_
                                         _e151496151547_
                                         _hd151495151550_
                                         _tl151494151552_)))
                                    (___kont152015152016_))
                                (___kont152015152016_))))
                        (___kont152015152016_))
                    (___kont152015152016_))
                (___kont152015152016_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont152015152016_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g151478151518_))))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__klass151932 __method-table151933)
        (let ((__id151934
               (let ((__slot151935
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass151932 'id))))
                 (if __slot151935
                     __slot151935
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self151438_ _stx151439_ _args151440_)
            (let* ((_klass151442_
                    (let ((__tmp152452
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self151438_
                              __id151934
                              __klass151932
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx151439_ __tmp152452)))
                   (_fields151444_
                    (length (##structure-ref
                             _klass151442_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args151446_ (map gxc#compile-e _args151440_))
                   (_inline-make-object151448_
                    (let ((__tmp152453
                           (let ((__tmp152459
                                  (let ((__tmp152460
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp152460)))
                                 (__tmp152454
                                  (let ((__tmp152456
                                         (let ((__tmp152457
                                                (let ((__tmp152458
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self151438_
                                                          __id151934
                                                          __klass151932
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp152458 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp152457)))
                                        (__tmp152455
                                         (let ()
                                           (declare (not safe))
                                           (make-list__%
                                            _fields151444_
                                            '(%#quote #f)))))
                                    (declare (not safe))
                                    (cons __tmp152456 __tmp152455))))
                             (declare (not safe))
                             (cons __tmp152459 __tmp152454))))
                      (declare (not safe))
                      (cons '%#call __tmp152453))))
              (let ((_$e151451_
                     (##structure-ref _klass151442_ '6 gxc#!class::t '#f)))
                (if _$e151451_
                    ((lambda (_ctor151454_)
                       (let ((_$obj151456_
                              (let ((__tmp152560 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp152560)))
                             (_ctor-impl151457_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass151442_
                                 _ctor151454_))))
                         (let ((__tmp152561
                                (let ((__tmp152562
                                       (let ((__tmp152630
                                              (let ((__tmp152631
                                                     (let ((__tmp152633
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj151456_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp152632
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object151448_ '()))))
               (declare (not safe))
               (cons __tmp152633 __tmp152632))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp152631 '())))
                                             (__tmp152563
                                              (let ((__tmp152564
                                                     (let ((__tmp152565
                                                            (let ((__tmp152569
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl151457_
                               (let ((__tmp152624
                                      (let ((__tmp152628
                                             (let ((__tmp152629
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl151457_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp152629)))
                                            (__tmp152625
                                             (let ((__tmp152626
                                                    (let ((__tmp152627
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj151456_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp152627))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp152626
                                                     _args151446_))))
                                        (declare (not safe))
                                        (cons __tmp152628 __tmp152625))))
                                 (declare (not safe))
                                 (cons '%#call __tmp152624))
                               (let* ((_$ctor151459_
                                       (let ((__tmp152570
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp152570)))
                                      (__tmp152571
                                       (let ((__tmp152606
                                              (let ((__tmp152607
                                                     (let ((__tmp152623
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor151459_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp152608
                    (let ((__tmp152609
                           (let ((__tmp152610
                                  (let ((__tmp152621
                                         (let ((__tmp152622
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp152622)))
                                        (__tmp152611
                                         (let ((__tmp152618
                                                (let ((__tmp152619
                                                       (let ((__tmp152620
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self151438_
                         __id151934
                         __klass151932
                         '#f))))
                 (declare (not safe))
                 (cons __tmp152620 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp152619)))
                                               (__tmp152612
                                                (let ((__tmp152616
                                                       (let ((__tmp152617
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj151456_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152617)))
              (__tmp152613
               (let ((__tmp152614
                      (let ((__tmp152615
                             (let ()
                               (declare (not safe))
                               (cons _ctor151454_ '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp152615))))
                 (declare (not safe))
                 (cons __tmp152614 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152616
                                                        __tmp152613))))
                                           (declare (not safe))
                                           (cons __tmp152618 __tmp152612))))
                                    (declare (not safe))
                                    (cons __tmp152621 __tmp152611))))
                             (declare (not safe))
                             (cons '%#call __tmp152610))))
                      (declare (not safe))
                      (cons __tmp152609 '()))))
               (declare (not safe))
               (cons __tmp152623 __tmp152608))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp152607 '())))
                                             (__tmp152572
                                              (let ((__tmp152573
                                                     (let ((__tmp152574
                                                            (let ((__tmp152604
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152605
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor151459_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp152605)))
                          (__tmp152575
                           (let ((__tmp152597
                                  (let ((__tmp152598
                                         (let ((__tmp152602
                                                (let ((__tmp152603
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor151459_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp152603)))
                                               (__tmp152599
                                                (let ((__tmp152600
                                                       (let ((__tmp152601
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj151456_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152601))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152600
                                                        _args151446_))))
                                           (declare (not safe))
                                           (cons __tmp152602 __tmp152599))))
                                    (declare (not safe))
                                    (cons '%#call __tmp152598)))
                                 (__tmp152576
                                  (let ((__tmp152577
                                         (let ((__tmp152578
                                                (let ((__tmp152595
                                                       (let ((__tmp152596
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152596)))
              (__tmp152579
               (let ((__tmp152593
                      (let ((__tmp152594
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp152594)))
                     (__tmp152580
                      (let ((__tmp152591
                             (let ((__tmp152592
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp152592)))
                            (__tmp152581
                             (let ((__tmp152588
                                    (let ((__tmp152589
                                           (let ((__tmp152590
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self151438_
                                                     __id151934
                                                     __klass151932
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp152590 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp152589)))
                                   (__tmp152582
                                    (let ((__tmp152586
                                           (let ((__tmp152587
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp152587)))
                                          (__tmp152583
                                           (let ((__tmp152584
                                                  (let ((__tmp152585
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor151454_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp152585))))
                                             (declare (not safe))
                                             (cons __tmp152584 '()))))
                                      (declare (not safe))
                                      (cons __tmp152586 __tmp152583))))
                               (declare (not safe))
                               (cons __tmp152588 __tmp152582))))
                        (declare (not safe))
                        (cons __tmp152591 __tmp152581))))
                 (declare (not safe))
                 (cons __tmp152593 __tmp152580))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152595
                                                        __tmp152579))))
                                           (declare (not safe))
                                           (cons '%#call __tmp152578))))
                                    (declare (not safe))
                                    (cons __tmp152577 '()))))
                             (declare (not safe))
                             (cons __tmp152597 __tmp152576))))
                      (declare (not safe))
                      (cons __tmp152604 __tmp152575))))
               (declare (not safe))
               (cons '%#if __tmp152574))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp152573 '()))))
                                         (declare (not safe))
                                         (cons __tmp152606 __tmp152572))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp152571))))
                          (__tmp152566
                           (let ((__tmp152567
                                  (let ((__tmp152568
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj151456_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp152568))))
                             (declare (not safe))
                             (cons __tmp152567 '()))))
                      (declare (not safe))
                      (cons __tmp152569 __tmp152566))))
               (declare (not safe))
               (cons '%#begin __tmp152565))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp152564 '()))))
                                         (declare (not safe))
                                         (cons __tmp152630 __tmp152563))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp152562))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp152561 _stx151439_))))
                     _$e151451_)
                    (let ((_$e151461_
                           (##structure-ref
                            _klass151442_
                            '9
                            gxc#!class::t
                            '#f)))
                      (if _$e151461_
                          ((lambda (_metaclass151464_)
                             (let* ((_$obj151466_
                                     (let ((__tmp152522 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp152522)))
                                    (_metakons151468_
                                     (let ((__tmp152523
                                            (let ()
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               _stx151439_
                                               _metaclass151464_))))
                                       (declare (not safe))
                                       (gxc#!class-lookup-method
                                        __tmp152523
                                        'instance-init!))))
                               (let ((__tmp152524
                                      (let ((__tmp152525
                                             (let ((__tmp152556
                                                    (let ((__tmp152557
                                                           (let ((__tmp152559
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj151466_ '())))
                         (__tmp152558
                          (let ()
                            (declare (not safe))
                            (cons _inline-make-object151448_ '()))))
                     (declare (not safe))
                     (cons __tmp152559 __tmp152558))))
              (declare (not safe))
              (cons __tmp152557 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp152526
                                                    (let ((__tmp152527
                                                           (let ((__tmp152528
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp152532
                                 (if _metakons151468_
                                     (let ((__tmp152546
                                            (let ((__tmp152554
                                                   (let ((__tmp152555
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _metakons151468_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152555)))
                                                  (__tmp152547
                                                   (let ((__tmp152551
                                                          (let ((__tmp152552
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp152553
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self151438_
                                   __id151934
                                   __klass151932
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp152553 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp152552)))
                 (__tmp152548
                  (let ((__tmp152549
                         (let ((__tmp152550
                                (let ()
                                  (declare (not safe))
                                  (cons _$obj151466_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp152550))))
                    (declare (not safe))
                    (cons __tmp152549 _args151446_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152551
                                                           __tmp152548))))
                                              (declare (not safe))
                                              (cons __tmp152554 __tmp152547))))
                                       (declare (not safe))
                                       (cons '%#call __tmp152546))
                                     (let ((__tmp152533
                                            (let ((__tmp152544
                                                   (let ((__tmp152545
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'call-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152545)))
                                                  (__tmp152534
                                                   (let ((__tmp152541
                                                          (let ((__tmp152542
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp152543
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self151438_
                                   __id151934
                                   __klass151932
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp152543 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp152542)))
                 (__tmp152535
                  (let ((__tmp152539
                         (let ((__tmp152540
                                (let ()
                                  (declare (not safe))
                                  (cons 'instance-init! '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp152540)))
                        (__tmp152536
                         (let ((__tmp152537
                                (let ((__tmp152538
                                       (let ()
                                         (declare (not safe))
                                         (cons _$obj151466_ '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp152538))))
                           (declare (not safe))
                           (cons __tmp152537 _args151446_))))
                    (declare (not safe))
                    (cons __tmp152539 __tmp152536))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152541
                                                           __tmp152535))))
                                              (declare (not safe))
                                              (cons __tmp152544 __tmp152534))))
                                       (declare (not safe))
                                       (cons '%#call __tmp152533))))
                                (__tmp152529
                                 (let ((__tmp152530
                                        (let ((__tmp152531
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$obj151466_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp152531))))
                                   (declare (not safe))
                                   (cons __tmp152530 '()))))
                            (declare (not safe))
                            (cons __tmp152532 __tmp152529))))
                     (declare (not safe))
                     (cons '%#begin __tmp152528))))
              (declare (not safe))
              (cons __tmp152527 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp152556
                                                     __tmp152526))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp152525))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp152524
                                  _stx151439_))))
                           _$e151461_)
                          (if (##structure-ref
                               _klass151442_
                               '7
                               gxc#!class::t
                               '#f)
                              (if (fx= (length _args151446_) _fields151444_)
                                  (let ((__tmp152514
                                         (let ((__tmp152515
                                                (let ((__tmp152520
                                                       (let ((__tmp152521
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '##structure '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152521)))
              (__tmp152516
               (let ((__tmp152517
                      (let ((__tmp152518
                             (let ((__tmp152519
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self151438_
                                       __id151934
                                       __klass151932
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp152519 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp152518))))
                 (declare (not safe))
                 (cons __tmp152517 _args151446_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152520
                                                        __tmp152516))))
                                           (declare (not safe))
                                           (cons '%#call __tmp152515))))
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp152514
                                     _stx151439_))
                                  (let ((__tmp152513
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _self151438_
                                            __id151934
                                            __klass151932
                                            '#f)))
                                        (__tmp152512
                                         (length (##structure-ref
                                                  _klass151442_
                                                  '5
                                                  gxc#!class::t
                                                  '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _stx151439_
                                     __tmp152513
                                     __tmp152512)))
                              (let ((_$obj151471_
                                     (let ((__tmp152461 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp152461))))
                                (let _lp151473_ ((_rest151475_ _args151446_)
                                                 (_initializers151476_ '()))
                                  (let* ((___stx152051152052_ _rest151475_)
                                         (_g151480151501_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               ___stx152051152052_)))))
                                    (let ((___kont152053152054_
                                           (lambda (_L151555_
                                                    _L151556_
                                                    _L151557_)
                                             (let* ((_slot151588_
                                                     (keyword->symbol
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L151557_))))
                                                    (_off151590_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass151442_
                                                        _slot151588_))))
                                               (if _off151590_
                                                   (let ((__tmp152463
                                                          (let ((__tmp152464
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _off151590_ _L151556_))))
                    (declare (not safe))
                    (cons __tmp152464 _initializers151476_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp151473_
                                                      _L151555_
                                                      __tmp152463))
                                                   (let ((__tmp152462
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _self151438_
                                                             __id151934
                                                             __klass151932
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"unknown slot"
                                                      _stx151439_
                                                      __tmp152462
                                                      _slot151588_))))))
                                          (___kont152055152056_
                                           (lambda ()
                                             (let ((__tmp152465
                                                    (let ((__tmp152466
                                                           (let ((__tmp152489
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp152490
                                 (let ((__tmp152492
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj151471_ '())))
                                       (__tmp152491
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object151448_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp152492 __tmp152491))))
                            (declare (not safe))
                            (cons __tmp152490 '())))
                         (__tmp152467
                          (let ((__tmp152468
                                 (let ((__tmp152469
                                        (let ((__tmp152486
                                               (let ((__tmp152487
                                                      (let ((__tmp152488
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj151471_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp152488))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp152487 '())))
                                              (__tmp152470
                                               (let ((__tmp152471
                                                      (lambda (_i151515_
                                                               _r151516_)
                                                        (let ((__tmp152472
                                                               (let ((__tmp152473
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp152483
                                     (let ((__tmp152484
                                            (let ((__tmp152485
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self151438_
                                                      __id151934
                                                      __klass151932
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp152485 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152484)))
                                    (__tmp152474
                                     (let ((__tmp152480
                                            (let ((__tmp152481
                                                   (let ((__tmp152482
                                                          (car _i151515_)))
                                                     (declare (not safe))
                                                     (cons __tmp152482 '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp152481)))
                                           (__tmp152475
                                            (let ((__tmp152478
                                                   (let ((__tmp152479
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj151471_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152479)))
                                                  (__tmp152476
                                                   (let ((__tmp152477
                                                          (cdr _i151515_)))
                                                     (declare (not safe))
                                                     (cons __tmp152477 '()))))
                                              (declare (not safe))
                                              (cons __tmp152478 __tmp152476))))
                                       (declare (not safe))
                                       (cons __tmp152480 __tmp152475))))
                                (declare (not safe))
                                (cons __tmp152483 __tmp152474))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp152473))))
                  (declare (not safe))
                  (cons __tmp152472 _r151516_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl1 __tmp152471
                                                         '()
                                                         _initializers151476_))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp152486
                                                  __tmp152470))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp152469))))
                            (declare (not safe))
                            (cons __tmp152468 '()))))
                     (declare (not safe))
                     (cons __tmp152489 __tmp152467))))
              (declare (not safe))
              (cons '%#let-values __tmp152466))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp152465
                                                _stx151439_))))
                                          (___kont152057152058_
                                           (lambda ()
                                             (let ((__tmp152493
                                                    (let ((__tmp152494
                                                           (let ((__tmp152508
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp152509
                                 (let ((__tmp152511
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj151471_ '())))
                                       (__tmp152510
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object151448_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp152511 __tmp152510))))
                            (declare (not safe))
                            (cons __tmp152509 '())))
                         (__tmp152495
                          (let ((__tmp152496
                                 (let ((__tmp152497
                                        (let ((__tmp152501
                                               (let ((__tmp152502
                                                      (let ((__tmp152506
                                                             (let ((__tmp152507
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'class-instance-init! '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp152507)))
                    (__tmp152503
                     (let ((__tmp152504
                            (let ((__tmp152505
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj151471_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp152505))))
                       (declare (not safe))
                       (cons __tmp152504 _args151446_))))
                (declare (not safe))
                (cons __tmp152506 __tmp152503))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp152502)))
                                              (__tmp152498
                                               (let ((__tmp152499
                                                      (let ((__tmp152500
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj151471_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp152500))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp152499 '()))))
                                          (declare (not safe))
                                          (cons __tmp152501 __tmp152498))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp152497))))
                            (declare (not safe))
                            (cons __tmp152496 '()))))
                     (declare (not safe))
                     (cons __tmp152508 __tmp152495))))
              (declare (not safe))
              (cons '%#let-values __tmp152494))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp152493
                                                _stx151439_)))))
                                      (let* ((_g151478151518_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       ___stx152051152052_))
                                                    (___kont152055152056_)
                                                    (___kont152057152058_))))
                                             (___match152088152089_
                                              (lambda (_e151487151523_
                                                       _hd151486151526_
                                                       _tl151485151528_
                                                       _e151490151531_
                                                       _hd151489151534_
                                                       _tl151488151536_
                                                       _e151493151539_
                                                       _hd151492151542_
                                                       _tl151491151544_
                                                       _e151496151547_
                                                       _hd151495151550_
                                                       _tl151494151552_)
                                                (let ((_L151555_
                                                       _tl151494151552_)
                                                      (_L151556_
                                                       _hd151495151550_)
                                                      (_L151557_
                                                       _hd151492151542_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-keyword?
                                                         _L151557_))
                                                      (___kont152053152054_
                                                       _L151555_
                                                       _L151556_
                                                       _L151557_)
                                                      (___kont152057152058_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               ___stx152051152052_))
                                            (let ((_e151487151523_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      ___stx152051152052_))))
                                              (let ((_tl151485151528_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e151487151523_)))
                                                    (_hd151486151526_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e151487151523_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd151486151526_))
                                                    (let ((_e151490151531_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd151486151526_))))
                                                      (let ((_tl151488151536_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e151490151531_)))
                    (_hd151489151534_
                     (let () (declare (not safe)) (##car _e151490151531_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd151489151534_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd151489151534_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl151488151536_))
                            (let ((_e151493151539_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl151488151536_))))
                              (let ((_tl151491151544_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e151493151539_)))
                                    (_hd151492151542_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e151493151539_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl151491151544_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl151485151528_))
                                        (let ((_e151496151547_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl151485151528_))))
                                          (let ((_tl151494151552_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e151496151547_)))
                                                (_hd151495151550_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e151496151547_))))
                                            (___match152088152089_
                                             _e151487151523_
                                             _hd151486151526_
                                             _tl151485151528_
                                             _e151490151531_
                                             _hd151489151534_
                                             _tl151488151536_
                                             _e151493151539_
                                             _hd151492151542_
                                             _tl151491151544_
                                             _e151496151547_
                                             _hd151495151550_
                                             _tl151494151552_)))
                                        (___kont152057152058_))
                                    (___kont152057152058_))))
                            (___kont152057152058_))
                        (___kont152057152058_))
                    (___kont152057152058_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont152057152058_))))
                                            (let ()
                                              (declare (not safe))
                                              (_g151478151518_))))))))))))))))))
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
      (lambda (_self151261_ _stx151262_ _args151263_)
        (let* ((_g151265151275_
                (lambda (_g151266151272_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g151266151272_))))
               (_g151264151313_
                (lambda (_g151266151278_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g151266151278_))
                      (let ((_e151270151280_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g151266151278_))))
                        (let ((_hd151269151283_
                               (let ()
                                 (declare (not safe))
                                 (##car _e151270151280_)))
                              (_tl151268151285_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e151270151280_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl151268151285_))
                              ((lambda (_L151288_)
                                 (let* ((_klass151299_
                                         (let ((__tmp152634
                                                (##structure-ref
                                                 _self151261_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx151262_
                                            __tmp152634)))
                                        (_field151301_
                                         (let ((__tmp152635
                                                (##structure-ref
                                                 _self151261_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass151299_
                                            __tmp152635)))
                                        (_object151303_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L151288_))))
                                   (if (##structure-ref
                                        _klass151299_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp152712
                                              (let ((__tmp152721
                                                     (if (##structure-ref
                                                          _self151261_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp152713
                                                     (let ((__tmp152718
                                                            (let ((__tmp152719
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152720
                                  (##structure-ref
                                   _self151261_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp152720 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp152719)))
                   (__tmp152714
                    (let ((__tmp152716
                           (let ((__tmp152717
                                  (let ()
                                    (declare (not safe))
                                    (cons _field151301_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp152717)))
                          (__tmp152715
                           (let ()
                             (declare (not safe))
                             (cons _object151303_ '()))))
                      (declare (not safe))
                      (cons __tmp152716 __tmp152715))))
               (declare (not safe))
               (cons __tmp152718 __tmp152714))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp152721
                                                      __tmp152713))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp152712
                                          _stx151262_))
                                       (if (##structure-ref
                                            _klass151299_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp152702
                                                  (let ((__tmp152711
                                                         (if (##structure-ref
                                                              _self151261_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp152703
                                                         (let ((__tmp152708
                                                                (let ((__tmp152709
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp152710
                                      (##structure-ref
                                       _self151261_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp152710 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp152709)))
                       (__tmp152704
                        (let ((__tmp152706
                               (let ((__tmp152707
                                      (let ()
                                        (declare (not safe))
                                        (cons _field151301_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp152707)))
                              (__tmp152705
                               (let ()
                                 (declare (not safe))
                                 (cons _object151303_ '()))))
                          (declare (not safe))
                          (cons __tmp152706 __tmp152705))))
                   (declare (not safe))
                   (cons __tmp152708 __tmp152704))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp152711
                                                          __tmp152703))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152702
                                              _stx151262_))
                                           (let ((_$e151306_
                                                  (let ((__tmp152636
                                                         (##structure-ref
                                                          _self151261_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass151299_
                                                     __tmp152636))))
                                             (if _$e151306_
                                                 ((lambda (_klass151309_)
                                                    (let ((__tmp152692
                                                           (let ((__tmp152701
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self151261_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp152693
                          (let ((__tmp152698
                                 (let ((__tmp152699
                                        (let ((__tmp152700
                                               (##structure-ref
                                                _self151261_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp152700 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp152699)))
                                (__tmp152694
                                 (let ((__tmp152696
                                        (let ((__tmp152697
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field151301_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp152697)))
                                       (__tmp152695
                                        (let ()
                                          (declare (not safe))
                                          (cons _object151303_ '()))))
                                   (declare (not safe))
                                   (cons __tmp152696 __tmp152695))))
                            (declare (not safe))
                            (cons __tmp152698 __tmp152694))))
                     (declare (not safe))
                     (cons __tmp152701 __tmp152693))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp152692 _stx151262_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e151306_)
                                                 (if (##structure-ref
                                                      _self151261_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp152646
                                                            (let* ((_$obj151311_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp152647 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp152647)))
                           (__tmp152648
                            (let ((__tmp152688
                                   (let ((__tmp152689
                                          (let ((__tmp152691
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj151311_ '())))
                                                (__tmp152690
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object151303_ '()))))
                                            (declare (not safe))
                                            (cons __tmp152691 __tmp152690))))
                                     (declare (not safe))
                                     (cons __tmp152689 '())))
                                  (__tmp152649
                                   (let ((__tmp152650
                                          (let ((__tmp152651
                                                 (let ((__tmp152680
                                                        (let ((__tmp152681
                                                               (let ((__tmp152685
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp152686
                                     (let ((__tmp152687
                                            (##structure-ref
                                             _klass151299_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp152687 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp152686)))
                             (__tmp152682
                              (let ((__tmp152683
                                     (let ((__tmp152684
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj151311_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152684))))
                                (declare (not safe))
                                (cons __tmp152683 '()))))
                         (declare (not safe))
                         (cons __tmp152685 __tmp152682))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp152681)))
               (__tmp152652
                (let ((__tmp152669
                       (let ((__tmp152670
                              (let ((__tmp152677
                                     (let ((__tmp152678
                                            (let ((__tmp152679
                                                   (##structure-ref
                                                    _self151261_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp152679 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152678)))
                                    (__tmp152671
                                     (let ((__tmp152675
                                            (let ((__tmp152676
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field151301_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp152676)))
                                           (__tmp152672
                                            (let ((__tmp152673
                                                   (let ((__tmp152674
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj151311_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152674))))
                                              (declare (not safe))
                                              (cons __tmp152673 '()))))
                                       (declare (not safe))
                                       (cons __tmp152675 __tmp152672))))
                                (declare (not safe))
                                (cons __tmp152677 __tmp152671))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp152670)))
                      (__tmp152653
                       (let ((__tmp152654
                              (let ((__tmp152655
                                     (let ((__tmp152667
                                            (let ((__tmp152668
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp152668)))
                                           (__tmp152656
                                            (let ((__tmp152664
                                                   (let ((__tmp152665
                                                          (let ((__tmp152666
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self151261_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp152666 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152665)))
                                                  (__tmp152657
                                                   (let ((__tmp152662
                                                          (let ((__tmp152663
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj151311_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp152663)))
                 (__tmp152658
                  (let ((__tmp152659
                         (let ((__tmp152660
                                (let ((__tmp152661
                                       (##structure-ref
                                        _self151261_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp152661 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp152660))))
                    (declare (not safe))
                    (cons __tmp152659 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152662
                                                           __tmp152658))))
                                              (declare (not safe))
                                              (cons __tmp152664 __tmp152657))))
                                       (declare (not safe))
                                       (cons __tmp152667 __tmp152656))))
                                (declare (not safe))
                                (cons '%#call __tmp152655))))
                         (declare (not safe))
                         (cons __tmp152654 '()))))
                  (declare (not safe))
                  (cons __tmp152669 __tmp152653))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp152680
                                                         __tmp152652))))
                                            (declare (not safe))
                                            (cons '%#if __tmp152651))))
                                     (declare (not safe))
                                     (cons __tmp152650 '()))))
                              (declare (not safe))
                              (cons __tmp152688 __tmp152649))))
                      (declare (not safe))
                      (cons '%#let-values __tmp152648))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp152646 _stx151262_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp152637
                                                            (let ((__tmp152638
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152644
                                  (let ((__tmp152645
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp152645)))
                                 (__tmp152639
                                  (let ((__tmp152640
                                         (let ((__tmp152641
                                                (let ((__tmp152642
                                                       (let ((__tmp152643
                                                              (##structure-ref
                                                               _self151261_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp152643
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp152642))))
                                           (declare (not safe))
                                           (cons __tmp152641 '()))))
                                    (declare (not safe))
                                    (cons _object151303_ __tmp152640))))
                             (declare (not safe))
                             (cons __tmp152644 __tmp152639))))
                      (declare (not safe))
                      (cons '%#call __tmp152638))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp152637 _stx151262_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd151269151283_)
                              (let ()
                                (declare (not safe))
                                (_g151265151275_ _g151266151278_)))))
                      (let ()
                        (declare (not safe))
                        (_g151265151275_ _g151266151278_))))))
          (declare (not safe))
          (_g151264151313_ _args151263_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass151936 __method-table151937)
        (let ((__checked?151938
               (let ((__slot151941
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass151936 'checked?))))
                 (if __slot151941
                     __slot151941
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__id151939
               (let ((__slot151942
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass151936 'id))))
                 (if __slot151942
                     __slot151942
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__slot151940
               (let ((__slot151943
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass151936 'slot))))
                 (if __slot151943
                     __slot151943
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self151261_ _stx151262_ _args151263_)
            (let* ((_g151265151275_
                    (lambda (_g151266151272_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g151266151272_))))
                   (_g151264151313_
                    (lambda (_g151266151278_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g151266151278_))
                          (let ((_e151270151280_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g151266151278_))))
                            (let ((_hd151269151283_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e151270151280_)))
                                  (_tl151268151285_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e151270151280_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl151268151285_))
                                  ((lambda (_L151288_)
                                     (let* ((_klass151299_
                                             (let ((__tmp152722
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self151261_
                                                       __id151939
                                                       __klass151936
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx151262_
                                                __tmp152722)))
                                            (_field151301_
                                             (let ((__tmp152723
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self151261_
                                                       __slot151940
                                                       __klass151936
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass151299_
                                                __tmp152723)))
                                            (_object151303_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L151288_))))
                                       (if (##structure-ref
                                            _klass151299_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp152800
                                                  (let ((__tmp152809
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self151261_
                        __checked?151938
                        __klass151936
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp152801
                 (let ((__tmp152806
                        (let ((__tmp152807
                               (let ((__tmp152808
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self151261_
                                         __id151939
                                         __klass151936
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp152808 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp152807)))
                       (__tmp152802
                        (let ((__tmp152804
                               (let ((__tmp152805
                                      (let ()
                                        (declare (not safe))
                                        (cons _field151301_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp152805)))
                              (__tmp152803
                               (let ()
                                 (declare (not safe))
                                 (cons _object151303_ '()))))
                          (declare (not safe))
                          (cons __tmp152804 __tmp152803))))
                   (declare (not safe))
                   (cons __tmp152806 __tmp152802))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp152809
                                                          __tmp152801))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152800
                                              _stx151262_))
                                           (if (##structure-ref
                                                _klass151299_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp152790
                                                      (let ((__tmp152799
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self151261_
                            __checked?151938
                            __klass151936
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp152791
                     (let ((__tmp152796
                            (let ((__tmp152797
                                   (let ((__tmp152798
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self151261_
                                             __id151939
                                             __klass151936
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp152798 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp152797)))
                           (__tmp152792
                            (let ((__tmp152794
                                   (let ((__tmp152795
                                          (let ()
                                            (declare (not safe))
                                            (cons _field151301_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp152795)))
                                  (__tmp152793
                                   (let ()
                                     (declare (not safe))
                                     (cons _object151303_ '()))))
                              (declare (not safe))
                              (cons __tmp152794 __tmp152793))))
                       (declare (not safe))
                       (cons __tmp152796 __tmp152792))))
                (declare (not safe))
                (cons __tmp152799 __tmp152791))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp152790
                                                  _stx151262_))
                                               (let ((_$e151306_
                                                      (let ((__tmp152724
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self151261_
                        __slot151940
                        __klass151936
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass151299_ __tmp152724))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e151306_
                                                     ((lambda (_klass151309_)
                                                        (let ((__tmp152780
                                                               (let ((__tmp152789
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self151261_
                                     __checked?151938
                                     __klass151936
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp152781
                              (let ((__tmp152786
                                     (let ((__tmp152787
                                            (let ((__tmp152788
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self151261_
                                                      __id151939
                                                      __klass151936
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp152788 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152787)))
                                    (__tmp152782
                                     (let ((__tmp152784
                                            (let ((__tmp152785
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field151301_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp152785)))
                                           (__tmp152783
                                            (let ()
                                              (declare (not safe))
                                              (cons _object151303_ '()))))
                                       (declare (not safe))
                                       (cons __tmp152784 __tmp152783))))
                                (declare (not safe))
                                (cons __tmp152786 __tmp152782))))
                         (declare (not safe))
                         (cons __tmp152789 __tmp152781))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp152780 _stx151262_)))
              _$e151306_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self151261_
                                                            __checked?151938
                                                            __klass151936
                                                            '#f))
                                                         (let ((__tmp152734
                                                                (let* ((_$obj151311_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp152735 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp152735)))
                               (__tmp152736
                                (let ((__tmp152776
                                       (let ((__tmp152777
                                              (let ((__tmp152779
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj151311_
                                                             '())))
                                                    (__tmp152778
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object151303_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp152779
                                                      __tmp152778))))
                                         (declare (not safe))
                                         (cons __tmp152777 '())))
                                      (__tmp152737
                                       (let ((__tmp152738
                                              (let ((__tmp152739
                                                     (let ((__tmp152768
                                                            (let ((__tmp152769
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152773
                                  (let ((__tmp152774
                                         (let ((__tmp152775
                                                (##structure-ref
                                                 _klass151299_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp152775 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp152774)))
                                 (__tmp152770
                                  (let ((__tmp152771
                                         (let ((__tmp152772
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj151311_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp152772))))
                                    (declare (not safe))
                                    (cons __tmp152771 '()))))
                             (declare (not safe))
                             (cons __tmp152773 __tmp152770))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp152769)))
                   (__tmp152740
                    (let ((__tmp152757
                           (let ((__tmp152758
                                  (let ((__tmp152765
                                         (let ((__tmp152766
                                                (let ((__tmp152767
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self151261_
                                                          __id151939
                                                          __klass151936
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp152767 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp152766)))
                                        (__tmp152759
                                         (let ((__tmp152763
                                                (let ((__tmp152764
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field151301_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp152764)))
                                               (__tmp152760
                                                (let ((__tmp152761
                                                       (let ((__tmp152762
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj151311_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152762))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152761 '()))))
                                           (declare (not safe))
                                           (cons __tmp152763 __tmp152760))))
                                    (declare (not safe))
                                    (cons __tmp152765 __tmp152759))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp152758)))
                          (__tmp152741
                           (let ((__tmp152742
                                  (let ((__tmp152743
                                         (let ((__tmp152755
                                                (let ((__tmp152756
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp152756)))
                                               (__tmp152744
                                                (let ((__tmp152752
                                                       (let ((__tmp152753
                                                              (let ((__tmp152754
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self151261_
                                __id151939
                                __klass151936
                                '#f))))
                        (declare (not safe))
                        (cons __tmp152754 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152753)))
              (__tmp152745
               (let ((__tmp152750
                      (let ((__tmp152751
                             (let ()
                               (declare (not safe))
                               (cons _$obj151311_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp152751)))
                     (__tmp152746
                      (let ((__tmp152747
                             (let ((__tmp152748
                                    (let ((__tmp152749
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self151261_
                                              __slot151940
                                              __klass151936
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp152749 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp152748))))
                        (declare (not safe))
                        (cons __tmp152747 '()))))
                 (declare (not safe))
                 (cons __tmp152750 __tmp152746))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152752
                                                        __tmp152745))))
                                           (declare (not safe))
                                           (cons __tmp152755 __tmp152744))))
                                    (declare (not safe))
                                    (cons '%#call __tmp152743))))
                             (declare (not safe))
                             (cons __tmp152742 '()))))
                      (declare (not safe))
                      (cons __tmp152757 __tmp152741))))
               (declare (not safe))
               (cons __tmp152768 __tmp152740))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp152739))))
                                         (declare (not safe))
                                         (cons __tmp152738 '()))))
                                  (declare (not safe))
                                  (cons __tmp152776 __tmp152737))))
                          (declare (not safe))
                          (cons '%#let-values __tmp152736))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp152734 _stx151262_))
                 (let ((__tmp152725
                        (let ((__tmp152726
                               (let ((__tmp152732
                                      (let ((__tmp152733
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp152733)))
                                     (__tmp152727
                                      (let ((__tmp152728
                                             (let ((__tmp152729
                                                    (let ((__tmp152730
                                                           (let ((__tmp152731
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self151261_
                             __slot151940
                             __klass151936
                             '#f))))
                     (declare (not safe))
                     (cons __tmp152731 '()))))
              (declare (not safe))
              (cons '%#quote __tmp152730))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp152729 '()))))
                                        (declare (not safe))
                                        (cons _object151303_ __tmp152728))))
                                 (declare (not safe))
                                 (cons __tmp152732 __tmp152727))))
                          (declare (not safe))
                          (cons '%#call __tmp152726))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp152725 _stx151262_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd151269151283_)
                                  (let ()
                                    (declare (not safe))
                                    (_g151265151275_ _g151266151278_)))))
                          (let ()
                            (declare (not safe))
                            (_g151265151275_ _g151266151278_))))))
              (declare (not safe))
              (_g151264151313_ _args151263_))))))
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
      (lambda (_self151066_ _stx151067_ _args151068_)
        (let* ((_g151070151084_
                (lambda (_g151071151081_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g151071151081_))))
               (_g151069151136_
                (lambda (_g151071151087_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g151071151087_))
                      (let ((_e151076151089_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g151071151087_))))
                        (let ((_hd151075151092_
                               (let ()
                                 (declare (not safe))
                                 (##car _e151076151089_)))
                              (_tl151074151094_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e151076151089_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl151074151094_))
                              (let ((_e151079151097_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl151074151094_))))
                                (let ((_hd151078151100_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e151079151097_)))
                                      (_tl151077151102_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e151079151097_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl151077151102_))
                                      ((lambda (_L151105_ _L151106_)
                                         (let* ((_klass151120_
                                                 (let ((__tmp152810
                                                        (##structure-ref
                                                         _self151066_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx151067_
                                                    __tmp152810)))
                                                (_field151122_
                                                 (let ((__tmp152811
                                                        (##structure-ref
                                                         _self151066_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass151120_
                                                    __tmp152811)))
                                                (_object151124_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L151106_)))
                                                (_value151126_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L151105_))))
                                           (if (##structure-ref
                                                _klass151120_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp152893
                                                      (let ((__tmp152903
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self151066_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp152894
                     (let ((__tmp152900
                            (let ((__tmp152901
                                   (let ((__tmp152902
                                          (##structure-ref
                                           _self151066_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp152902 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp152901)))
                           (__tmp152895
                            (let ((__tmp152898
                                   (let ((__tmp152899
                                          (let ()
                                            (declare (not safe))
                                            (cons _field151122_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp152899)))
                                  (__tmp152896
                                   (let ((__tmp152897
                                          (let ()
                                            (declare (not safe))
                                            (cons _value151126_ '()))))
                                     (declare (not safe))
                                     (cons _object151124_ __tmp152897))))
                              (declare (not safe))
                              (cons __tmp152898 __tmp152896))))
                       (declare (not safe))
                       (cons __tmp152900 __tmp152895))))
                (declare (not safe))
                (cons __tmp152903 __tmp152894))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp152893
                                                  _stx151067_))
                                               (if (##structure-ref
                                                    _klass151120_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp152882
                                                          (let ((__tmp152892
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self151066_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp152883
                         (let ((__tmp152889
                                (let ((__tmp152890
                                       (let ((__tmp152891
                                              (##structure-ref
                                               _self151066_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp152891 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp152890)))
                               (__tmp152884
                                (let ((__tmp152887
                                       (let ((__tmp152888
                                              (let ()
                                                (declare (not safe))
                                                (cons _field151122_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp152888)))
                                      (__tmp152885
                                       (let ((__tmp152886
                                              (let ()
                                                (declare (not safe))
                                                (cons _value151126_ '()))))
                                         (declare (not safe))
                                         (cons _object151124_ __tmp152886))))
                                  (declare (not safe))
                                  (cons __tmp152887 __tmp152885))))
                           (declare (not safe))
                           (cons __tmp152889 __tmp152884))))
                    (declare (not safe))
                    (cons __tmp152892 __tmp152883))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp152882
                                                      _stx151067_))
                                                   (let ((_$e151129_
                                                          (let ((__tmp152812
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self151066_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass151120_ __tmp152812))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e151129_
                                                         ((lambda (_klass151132_)
                                                            (let ((__tmp152871
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152881
                                  (if (##structure-ref
                                       _self151066_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp152872
                                  (let ((__tmp152878
                                         (let ((__tmp152879
                                                (let ((__tmp152880
                                                       (##structure-ref
                                                        _self151066_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp152880 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp152879)))
                                        (__tmp152873
                                         (let ((__tmp152876
                                                (let ((__tmp152877
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field151122_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp152877)))
                                               (__tmp152874
                                                (let ((__tmp152875
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value151126_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object151124_
                                                        __tmp152875))))
                                           (declare (not safe))
                                           (cons __tmp152876 __tmp152874))))
                                    (declare (not safe))
                                    (cons __tmp152878 __tmp152873))))
                             (declare (not safe))
                             (cons __tmp152881 __tmp152872))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp152871 _stx151067_)))
                  _$e151129_)
                 (if (##structure-ref _self151066_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp152823
                            (let* ((_$obj151134_
                                    (let ((__tmp152824 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp152824)))
                                   (__tmp152825
                                    (let ((__tmp152867
                                           (let ((__tmp152868
                                                  (let ((__tmp152870
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj151134_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp152869
                 (let () (declare (not safe)) (cons _object151124_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp152870
                                                          __tmp152869))))
                                             (declare (not safe))
                                             (cons __tmp152868 '())))
                                          (__tmp152826
                                           (let ((__tmp152827
                                                  (let ((__tmp152828
                                                         (let ((__tmp152859
                                                                (let ((__tmp152860
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp152864
                                      (let ((__tmp152865
                                             (let ((__tmp152866
                                                    (##structure-ref
                                                     _klass151120_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp152866 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp152865)))
                                     (__tmp152861
                                      (let ((__tmp152862
                                             (let ((__tmp152863
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj151134_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp152863))))
                                        (declare (not safe))
                                        (cons __tmp152862 '()))))
                                 (declare (not safe))
                                 (cons __tmp152864 __tmp152861))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp152860)))
                       (__tmp152829
                        (let ((__tmp152847
                               (let ((__tmp152848
                                      (let ((__tmp152856
                                             (let ((__tmp152857
                                                    (let ((__tmp152858
                                                           (##structure-ref
                                                            _self151066_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp152858 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp152857)))
                                            (__tmp152849
                                             (let ((__tmp152854
                                                    (let ((__tmp152855
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field151122_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp152855)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp152850
                                                    (let ((__tmp152852
                                                           (let ((__tmp152853
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj151134_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp152853)))
                  (__tmp152851
                   (let () (declare (not safe)) (cons _value151126_ '()))))
              (declare (not safe))
              (cons __tmp152852 __tmp152851))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp152854
                                                     __tmp152850))))
                                        (declare (not safe))
                                        (cons __tmp152856 __tmp152849))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp152848)))
                              (__tmp152830
                               (let ((__tmp152831
                                      (let ((__tmp152832
                                             (let ((__tmp152845
                                                    (let ((__tmp152846
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp152846)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp152833
                                                    (let ((__tmp152842
                                                           (let ((__tmp152843
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp152844
                                 (##structure-ref
                                  _self151066_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp152844 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp152843)))
                  (__tmp152834
                   (let ((__tmp152840
                          (let ((__tmp152841
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj151134_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp152841)))
                         (__tmp152835
                          (let ((__tmp152837
                                 (let ((__tmp152838
                                        (let ((__tmp152839
                                               (##structure-ref
                                                _self151066_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp152839 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp152838)))
                                (__tmp152836
                                 (let ()
                                   (declare (not safe))
                                   (cons _value151126_ '()))))
                            (declare (not safe))
                            (cons __tmp152837 __tmp152836))))
                     (declare (not safe))
                     (cons __tmp152840 __tmp152835))))
              (declare (not safe))
              (cons __tmp152842 __tmp152834))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp152845
                                                     __tmp152833))))
                                        (declare (not safe))
                                        (cons '%#call __tmp152832))))
                                 (declare (not safe))
                                 (cons __tmp152831 '()))))
                          (declare (not safe))
                          (cons __tmp152847 __tmp152830))))
                   (declare (not safe))
                   (cons __tmp152859 __tmp152829))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp152828))))
                                             (declare (not safe))
                                             (cons __tmp152827 '()))))
                                      (declare (not safe))
                                      (cons __tmp152867 __tmp152826))))
                              (declare (not safe))
                              (cons '%#let-values __tmp152825))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp152823 _stx151067_))
                     (let ((__tmp152813
                            (let ((__tmp152814
                                   (let ((__tmp152821
                                          (let ((__tmp152822
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp152822)))
                                         (__tmp152815
                                          (let ((__tmp152816
                                                 (let ((__tmp152818
                                                        (let ((__tmp152819
                                                               (let ((__tmp152820
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self151066_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp152820 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp152819)))
               (__tmp152817
                (let () (declare (not safe)) (cons _value151126_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp152818
                                                         __tmp152817))))
                                            (declare (not safe))
                                            (cons _object151124_
                                                  __tmp152816))))
                                     (declare (not safe))
                                     (cons __tmp152821 __tmp152815))))
                              (declare (not safe))
                              (cons '%#call __tmp152814))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp152813 _stx151067_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd151078151100_
                                       _hd151075151092_)
                                      (let ()
                                        (declare (not safe))
                                        (_g151070151084_ _g151071151087_)))))
                              (let ()
                                (declare (not safe))
                                (_g151070151084_ _g151071151087_)))))
                      (let ()
                        (declare (not safe))
                        (_g151070151084_ _g151071151087_))))))
          (declare (not safe))
          (_g151069151136_ _args151068_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass151944 __method-table151945)
        (let ((__id151946
               (let ((__slot151949
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass151944 'id))))
                 (if __slot151949
                     __slot151949
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__slot151947
               (let ((__slot151950
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass151944 'slot))))
                 (if __slot151950
                     __slot151950
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__checked?151948
               (let ((__slot151951
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass151944 'checked?))))
                 (if __slot151951
                     __slot151951
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self151066_ _stx151067_ _args151068_)
            (let* ((_g151070151084_
                    (lambda (_g151071151081_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g151071151081_))))
                   (_g151069151136_
                    (lambda (_g151071151087_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g151071151087_))
                          (let ((_e151076151089_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g151071151087_))))
                            (let ((_hd151075151092_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e151076151089_)))
                                  (_tl151074151094_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e151076151089_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl151074151094_))
                                  (let ((_e151079151097_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl151074151094_))))
                                    (let ((_hd151078151100_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e151079151097_)))
                                          (_tl151077151102_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e151079151097_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl151077151102_))
                                          ((lambda (_L151105_ _L151106_)
                                             (let* ((_klass151120_
                                                     (let ((__tmp152904
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self151066_
                                                               __id151946
                                                               __klass151944
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx151067_
                                                        __tmp152904)))
                                                    (_field151122_
                                                     (let ((__tmp152905
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self151066_
                                                               __slot151947
                                                               __klass151944
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass151120_
                                                        __tmp152905)))
                                                    (_object151124_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L151106_)))
                                                    (_value151126_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L151105_))))
                                               (if (##structure-ref
                                                    _klass151120_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp152987
                                                          (let ((__tmp152997
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self151066_
                                __checked?151948
                                __klass151944
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp152988
                         (let ((__tmp152994
                                (let ((__tmp152995
                                       (let ((__tmp152996
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self151066_
                                                 __id151946
                                                 __klass151944
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp152996 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp152995)))
                               (__tmp152989
                                (let ((__tmp152992
                                       (let ((__tmp152993
                                              (let ()
                                                (declare (not safe))
                                                (cons _field151122_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp152993)))
                                      (__tmp152990
                                       (let ((__tmp152991
                                              (let ()
                                                (declare (not safe))
                                                (cons _value151126_ '()))))
                                         (declare (not safe))
                                         (cons _object151124_ __tmp152991))))
                                  (declare (not safe))
                                  (cons __tmp152992 __tmp152990))))
                           (declare (not safe))
                           (cons __tmp152994 __tmp152989))))
                    (declare (not safe))
                    (cons __tmp152997 __tmp152988))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp152987
                                                      _stx151067_))
                                                   (if (##structure-ref
                                                        _klass151120_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp152976
                                                              (let ((__tmp152986
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self151066_
                                    __checked?151948
                                    __klass151944
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp152977
                             (let ((__tmp152983
                                    (let ((__tmp152984
                                           (let ((__tmp152985
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self151066_
                                                     __id151946
                                                     __klass151944
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp152985 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp152984)))
                                   (__tmp152978
                                    (let ((__tmp152981
                                           (let ((__tmp152982
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field151122_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp152982)))
                                          (__tmp152979
                                           (let ((__tmp152980
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value151126_ '()))))
                                             (declare (not safe))
                                             (cons _object151124_
                                                   __tmp152980))))
                                      (declare (not safe))
                                      (cons __tmp152981 __tmp152979))))
                               (declare (not safe))
                               (cons __tmp152983 __tmp152978))))
                        (declare (not safe))
                        (cons __tmp152986 __tmp152977))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp152976 _stx151067_))
               (let ((_$e151129_
                      (let ((__tmp152906
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self151066_
                                __slot151947
                                __klass151944
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass151120_
                         __tmp152906))))
                 (if _$e151129_
                     ((lambda (_klass151132_)
                        (let ((__tmp152965
                               (let ((__tmp152975
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self151066_
                                             __checked?151948
                                             __klass151944
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp152966
                                      (let ((__tmp152972
                                             (let ((__tmp152973
                                                    (let ((__tmp152974
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self151066_
                                                              __id151946
                                                              __klass151944
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp152974 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp152973)))
                                            (__tmp152967
                                             (let ((__tmp152970
                                                    (let ((__tmp152971
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field151122_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp152971)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp152968
                                                    (let ((__tmp152969
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value151126_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object151124_ __tmp152969))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp152970
                                                     __tmp152968))))
                                        (declare (not safe))
                                        (cons __tmp152972 __tmp152967))))
                                 (declare (not safe))
                                 (cons __tmp152975 __tmp152966))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp152965 _stx151067_)))
                      _$e151129_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self151066_
                            __checked?151948
                            __klass151944
                            '#f))
                         (let ((__tmp152917
                                (let* ((_$obj151134_
                                        (let ((__tmp152918 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp152918)))
                                       (__tmp152919
                                        (let ((__tmp152961
                                               (let ((__tmp152962
                                                      (let ((__tmp152964
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj151134_ '())))
                    (__tmp152963
                     (let () (declare (not safe)) (cons _object151124_ '()))))
                (declare (not safe))
                (cons __tmp152964 __tmp152963))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp152962 '())))
                                              (__tmp152920
                                               (let ((__tmp152921
                                                      (let ((__tmp152922
                                                             (let ((__tmp152953
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp152954
                                   (let ((__tmp152958
                                          (let ((__tmp152959
                                                 (let ((__tmp152960
                                                        (##structure-ref
                                                         _klass151120_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp152960 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp152959)))
                                         (__tmp152955
                                          (let ((__tmp152956
                                                 (let ((__tmp152957
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj151134_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp152957))))
                                            (declare (not safe))
                                            (cons __tmp152956 '()))))
                                     (declare (not safe))
                                     (cons __tmp152958 __tmp152955))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp152954)))
                           (__tmp152923
                            (let ((__tmp152941
                                   (let ((__tmp152942
                                          (let ((__tmp152950
                                                 (let ((__tmp152951
                                                        (let ((__tmp152952
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self151066_
                          __id151946
                          __klass151944
                          '#f))))
                  (declare (not safe))
                  (cons __tmp152952 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp152951)))
                                                (__tmp152943
                                                 (let ((__tmp152948
                                                        (let ((__tmp152949
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field151122_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp152949)))
               (__tmp152944
                (let ((__tmp152946
                       (let ((__tmp152947
                              (let ()
                                (declare (not safe))
                                (cons _$obj151134_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp152947)))
                      (__tmp152945
                       (let () (declare (not safe)) (cons _value151126_ '()))))
                  (declare (not safe))
                  (cons __tmp152946 __tmp152945))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp152948
                                                         __tmp152944))))
                                            (declare (not safe))
                                            (cons __tmp152950 __tmp152943))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp152942)))
                                  (__tmp152924
                                   (let ((__tmp152925
                                          (let ((__tmp152926
                                                 (let ((__tmp152939
                                                        (let ((__tmp152940
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp152940)))
               (__tmp152927
                (let ((__tmp152936
                       (let ((__tmp152937
                              (let ((__tmp152938
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self151066_
                                        __id151946
                                        __klass151944
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp152938 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp152937)))
                      (__tmp152928
                       (let ((__tmp152934
                              (let ((__tmp152935
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj151134_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp152935)))
                             (__tmp152929
                              (let ((__tmp152931
                                     (let ((__tmp152932
                                            (let ((__tmp152933
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self151066_
                                                      __slot151947
                                                      __klass151944
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp152933 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp152932)))
                                    (__tmp152930
                                     (let ()
                                       (declare (not safe))
                                       (cons _value151126_ '()))))
                                (declare (not safe))
                                (cons __tmp152931 __tmp152930))))
                         (declare (not safe))
                         (cons __tmp152934 __tmp152929))))
                  (declare (not safe))
                  (cons __tmp152936 __tmp152928))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp152939
                                                         __tmp152927))))
                                            (declare (not safe))
                                            (cons '%#call __tmp152926))))
                                     (declare (not safe))
                                     (cons __tmp152925 '()))))
                              (declare (not safe))
                              (cons __tmp152941 __tmp152924))))
                       (declare (not safe))
                       (cons __tmp152953 __tmp152923))))
                (declare (not safe))
                (cons '%#if __tmp152922))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp152921 '()))))
                                          (declare (not safe))
                                          (cons __tmp152961 __tmp152920))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp152919))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp152917 _stx151067_))
                         (let ((__tmp152907
                                (let ((__tmp152908
                                       (let ((__tmp152915
                                              (let ((__tmp152916
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp152916)))
                                             (__tmp152909
                                              (let ((__tmp152910
                                                     (let ((__tmp152912
                                                            (let ((__tmp152913
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152914
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self151066_
                                     __slot151947
                                     __klass151944
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp152914 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp152913)))
                   (__tmp152911
                    (let () (declare (not safe)) (cons _value151126_ '()))))
               (declare (not safe))
               (cons __tmp152912 __tmp152911))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object151124_
                                                      __tmp152910))))
                                         (declare (not safe))
                                         (cons __tmp152915 __tmp152909))))
                                  (declare (not safe))
                                  (cons '%#call __tmp152908))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp152907
                            _stx151067_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd151078151100_
                                           _hd151075151092_)
                                          (let ()
                                            (declare (not safe))
                                            (_g151070151084_
                                             _g151071151087_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g151070151084_ _g151071151087_)))))
                          (let ()
                            (declare (not safe))
                            (_g151070151084_ _g151071151087_))))))
              (declare (not safe))
              (_g151069151136_ _args151068_))))))
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
      (lambda (_self150900_ _stx150901_ _args150902_)
        (let* ((_self150903150912_ _self150900_)
               (_E150905150916_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self150903150912_))))
               (_K150906150923_
                (lambda (_inline150919_ _dispatch150920_ _arity150921_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self150900_ _args150902_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx150901_
                         _arity150921_)))
                  (if _inline150919_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp153003
                               (let ((__tmp153004
                                      (_inline150919_ _stx150901_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp153004
                                  _stx150901_))))
                          (declare (not safe))
                          (gxc#compile-e__0 __tmp153003)))
                      (if _dispatch150920_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch150920_))
                            (let ((__tmp152998
                                   (let ((__tmp152999
                                          (let ((__tmp153000
                                                 (let ((__tmp153001
                                                        (let ((__tmp153002
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch150920_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp153002))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153001
                                                         _args150902_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp153000))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp152999
                                      _stx150901_))))
                              (declare (not safe))
                              (gxc#compile-e__0 __tmp152998)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _stx150901_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self150903150912_ 'gxc#!lambda::t))
              (let* ((_e150907150926_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150903150912_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e150908150929_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150903150912_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity150932_ _e150908150929_)
                     (_e150909150934_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150903150912_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch150937_ _e150909150934_)
                     (_e150910150939_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150903150912_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline150942_ _e150910150939_))
                (declare (not safe))
                (_K150906150923_
                 _inline150942_
                 _dispatch150937_
                 _arity150932_))
              (let () (declare (not safe)) (_E150905150916_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self150739_ _stx150740_ _args150741_)
        (let* ((_self150742150749_ _self150739_)
               (_E150744150753_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self150742150749_))))
               (_K150745150767_
                (lambda (_clauses150756_)
                  (let ((_$e150762_
                         (let ((__tmp153005
                                (lambda (_g150757150759_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g150757150759_
                                     _args150741_)))))
                           (declare (not safe))
                           (find __tmp153005 _clauses150756_))))
                    (if _$e150762_
                        ((lambda (_clause150765_)
                           (let ((__method152220
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause150765_
                                     'optimize-call))))
                             (if __method152220
                                 (__method152220
                                  _clause150765_
                                  _stx150740_
                                  _args150741_)
                                 (let ()
                                   (declare (not safe))
                                   (error '"Missing method"
                                          _clause150765_
                                          'optimize-call)))))
                         _$e150762_)
                        (let ((__tmp153006
                               (map gxc#!lambda-arity _clauses150756_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx150740_
                           __tmp153006)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self150742150749_
                 'gxc#!case-lambda::t))
              (let* ((_e150746150770_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150742150749_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e150747150773_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150742150749_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses150776_ _e150747150773_))
                (declare (not safe))
                (_K150745150767_ _clauses150776_))
              (let () (declare (not safe)) (_E150744150753_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self150553_ _args150554_)
        (let* ((_self150555150562_ _self150553_)
               (_E150557150566_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self150555150562_))))
               (_K150558150606_
                (lambda (_arity150569_)
                  (let* ((_arity150570150579_ _arity150569_)
                         (_E150573150583_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (error '"No clause matching"
                                     _arity150570150579_)))))
                    (let ((_K150577150603_
                           (lambda ()
                             (fx= (length _args150554_) _arity150569_)))
                          (_K150574150589_
                           (lambda (_arity150587_)
                             (fx>= (length _args150554_) _arity150587_))))
                      (let ((_try-match150572150599_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity150570150579_))
                                   (let ((_tl150576150594_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity150570150579_)))
                                         (_hd150575150592_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity150570150579_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl150576150594_))
                                         (let ((_arity150597_
                                                _hd150575150592_))
                                           (declare (not safe))
                                           (_K150574150589_ _arity150597_))
                                         (let ()
                                           (declare (not safe))
                                           (_E150573150583_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E150573150583_))))))
                        (if (let ()
                              (declare (not safe))
                              (fixnum? _arity150570150579_))
                            (let () (declare (not safe)) (_K150577150603_))
                            (let ()
                              (declare (not safe))
                              (_try-match150572150599_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self150555150562_ 'gxc#!lambda::t))
              (let* ((_e150559150609_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150555150562_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e150560150612_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150555150562_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity150615_ _e150560150612_))
                (declare (not safe))
                (_K150558150606_ _arity150615_))
              (let () (declare (not safe)) (_E150557150566_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self150438_ _stx150439_ _args150440_)
        (let* ((_self150441150449_ _self150438_)
               (_E150443150453_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self150441150449_))))
               (_K150444150537_
                (lambda (_dispatch150456_ _table150457_)
                  (let* ((_g150458150467_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch150456_)))
                         (_else150460150475_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch150456_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _stx150439_))))
                         (_K150462150521_
                          (lambda (_main150478_ _keys150479_)
                            (let ((_g153007_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx150439_
                                      _args150440_))))
                              (begin
                                (let ((_g153008_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g153007_)
                                             (##vector-length _g153007_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g153008_ 2)))
                                      (error "Context expects 2 values"
                                             _g153008_)))
                                (let ((_pargs150481_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g153007_ 0)))
                                      (_kwargs150482_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g153007_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main150478_))
                                    (if _table150457_
                                        (let ((_xargs150489_
                                               (map (lambda (_key150484_)
                                                      (let ((_$e150486_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__0 _key150484_ _kwargs150482_))))
                (if _$e150486_ (values _$e150486_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys150479_)))
                                          (for-each
                                           (lambda (_kw150491_)
                                             (if (memq (car _kw150491_)
                                                       _keys150479_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx150439_
                                                    _keys150479_
                                                    _kw150491_))))
                                           _kwargs150482_)
                                          (let ((__tmp153060
                                                 (let ((__tmp153061
                                                        (let ((__tmp153062
                                                               (let ((__tmp153067
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153068
                                     (let ()
                                       (declare (not safe))
                                       (cons _main150478_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp153068)))
                             (__tmp153063
                              (let ((__tmp153065
                                     (let ((__tmp153066
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp153066)))
                                    (__tmp153064
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs150481_
                                               _xargs150489_))))
                                (declare (not safe))
                                (cons __tmp153065 __tmp153064))))
                         (declare (not safe))
                         (cons __tmp153067 __tmp153063))))
                  (declare (not safe))
                  (cons '%#call __tmp153062))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp153061
                                                    _stx150439_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0 __tmp153060)))
                                        (let* ((_kwt150493_
                                                (let ((__tmp153009
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp153009)))
                                               (_kwvars150496_
                                                (map (lambda (_g153010_)
                                                       (let ((__tmp153011
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp153011)))
                                                     _kwargs150482_))
                                               (_kwbind150501_
                                                (map (lambda (_kw150498_
                                                              _kwvar150499_)
                                                       (let ((__tmp153014
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar150499_ '())))
                     (__tmp153012
                      (let ((__tmp153013 (cdr _kw150498_)))
                        (declare (not safe))
                        (cons __tmp153013 '()))))
                 (declare (not safe))
                 (cons __tmp153014 __tmp153012)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs150482_
                                                     _kwvars150496_))
                                               (_kwset150506_
                                                (map (lambda (_kw150503_
                                                              _kwvar150504_)
                                                       (let ((__tmp153015
                                                              (let ((__tmp153016
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp153024
                                    (let ((__tmp153025
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt150493_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp153025)))
                                   (__tmp153017
                                    (let ((__tmp153021
                                           (let ((__tmp153022
                                                  (let ((__tmp153023
                                                         (car _kw150503_)))
                                                    (declare (not safe))
                                                    (cons __tmp153023 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp153022)))
                                          (__tmp153018
                                           (let ((__tmp153019
                                                  (let ((__tmp153020
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar150504_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp153020))))
                                             (declare (not safe))
                                             (cons __tmp153019 '()))))
                                      (declare (not safe))
                                      (cons __tmp153021 __tmp153018))))
                               (declare (not safe))
                               (cons __tmp153024 __tmp153017))))
                        (declare (not safe))
                        (cons '(%#ref symbolic-table-set!) __tmp153016))))
                 (declare (not safe))
                 (cons '%#call __tmp153015)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs150482_
                                                     _kwvars150496_))
                                               (_xkwargs150511_
                                                (map (lambda (_kw150508_
                                                              _kwvar150509_)
                                                       (let ((__tmp153028
                                                              (car _kw150508_))
                                                             (__tmp153026
                                                              (let ((__tmp153027
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar150509_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp153027))))
                 (declare (not safe))
                 (cons __tmp153028 __tmp153026)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs150482_
                                                     _kwvars150496_))
                                               (_xargs150518_
                                                (map (lambda (_key150513_)
                                                       (let ((_$e150515_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq__0 _key150513_ _xkwargs150511_))))
                 (if _$e150515_ (values _$e150515_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys150479_)))
                                          (let ((__tmp153029
                                                 (let ((__tmp153030
                                                        (let ((__tmp153031
                                                               (let ((__tmp153032
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153033
                                     (let ((__tmp153034
                                            (let ((__tmp153048
                                                   (let ((__tmp153049
                                                          (let ((__tmp153059
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt150493_ '())))
                        (__tmp153050
                         (let ((__tmp153051
                                (let ((__tmp153052
                                       (let ((__tmp153053
                                              (let ((__tmp153054
                                                     (let ((__tmp153056
                                                            (let ((__tmp153057
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153058 (length _kwargs150482_)))
                             (declare (not safe))
                             (cons __tmp153058 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp153057)))
                   (__tmp153055
                    (let () (declare (not safe)) (cons '(%#quote 0) '()))))
               (declare (not safe))
               (cons __tmp153056 __tmp153055))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-symbolic-table)
                                                      __tmp153054))))
                                         (declare (not safe))
                                         (cons '%#call __tmp153053))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp153052
                                   _stx150439_))))
                           (declare (not safe))
                           (cons __tmp153051 '()))))
                    (declare (not safe))
                    (cons __tmp153059 __tmp153050))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153049 '())))
                                                  (__tmp153035
                                                   (let ((__tmp153036
                                                          (let ((__tmp153037
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp153038
                                (let ((__tmp153039
                                       (let ((__tmp153040
                                              (let ((__tmp153041
                                                     (let ((__tmp153046
                                                            (let ((__tmp153047
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main150478_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp153047)))
                   (__tmp153042
                    (let ((__tmp153044
                           (let ((__tmp153045
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt150493_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp153045)))
                          (__tmp153043
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs150481_ _xargs150518_))))
                      (declare (not safe))
                      (cons __tmp153044 __tmp153043))))
               (declare (not safe))
               (cons __tmp153046 __tmp153042))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp153041))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp153040
                                          _stx150439_))))
                                  (declare (not safe))
                                  (cons __tmp153039 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp153038 _kwset150506_))))
                    (declare (not safe))
                    (cons '%#begin __tmp153037))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153036 '()))))
                                              (declare (not safe))
                                              (cons __tmp153048 __tmp153035))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp153034))))
                                (declare (not safe))
                                (cons __tmp153033 '()))))
                         (declare (not safe))
                         (cons _kwbind150501_ __tmp153032))))
                  (declare (not safe))
                  (cons '%#let-values __tmp153031))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp153030
                                                    _stx150439_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0
                                             __tmp153029)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g150458150467_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e150463150524_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g150458150467_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e150464150527_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g150458150467_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys150530_ _e150464150527_)
                               (_e150465150532_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g150458150467_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main150535_ _e150465150532_))
                          (declare (not safe))
                          (_K150462150521_ _main150535_ _keys150530_))
                        (let () (declare (not safe)) (_else150460150475_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self150441150449_
                 'gxc#!kw-lambda::t))
              (let* ((_e150445150540_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150441150449_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e150446150543_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150441150449_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table150546_ _e150446150543_)
                     (_e150447150548_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150441150449_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch150551_ _e150447150548_))
                (declare (not safe))
                (_K150444150537_ _dispatch150551_ _table150546_))
              (let () (declare (not safe)) (_E150443150453_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx150051_ _args150052_)
        (let _lp150054_ ((_rest150056_ _args150052_)
                         (_pargs150057_ '())
                         (_kwargs150058_ '()))
          (let* ((___stx152102152103_ _rest150056_)
                 (_g150064150116_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx152102152103_)))))
            (let ((___kont152104152105_
                   (lambda (_L150295_ _L150296_)
                     (let ((__tmp153069
                            (let ()
                              (declare (not safe))
                              (cons _L150296_ _pargs150057_))))
                       (declare (not safe))
                       (_lp150054_ _L150295_ __tmp153069 _kwargs150058_))))
                  (___kont152106152107_
                   (lambda (_L150241_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L150241_ _pargs150057_))
                             (reverse _kwargs150058_))))
                  (___kont152108152109_
                   (lambda (_L150188_ _L150189_ _L150190_)
                     (let ((_kw150207_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L150190_))))
                       (if (assq _kw150207_ _kwargs150058_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx150051_
                              _kw150207_))
                           (let ((__tmp153070
                                  (let ((__tmp153071
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw150207_ _L150189_))))
                                    (declare (not safe))
                                    (cons __tmp153071 _kwargs150058_))))
                             (declare (not safe))
                             (_lp150054_
                              _L150188_
                              _pargs150057_
                              __tmp153070))))))
                  (___kont152110152111_
                   (lambda (_L150136_ _L150137_)
                     (let ((__tmp153072
                            (let ()
                              (declare (not safe))
                              (cons _L150137_ _pargs150057_))))
                       (declare (not safe))
                       (_lp150054_ _L150136_ __tmp153072 _kwargs150058_))))
                  (___kont152112152113_
                   (lambda ()
                     (values (reverse _pargs150057_)
                             (reverse _kwargs150058_)))))
              (let* ((_g150063150123_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx152102152103_))
                            (___kont152112152113_)
                            (let () (declare (not safe)) (_g150064150116_)))))
                     (___match152209152210_
                      (lambda (_e150097150156_
                               _hd150096150159_
                               _tl150095150161_
                               _e150100150164_
                               _hd150099150167_
                               _tl150098150169_
                               _e150103150172_
                               _hd150102150175_
                               _tl150101150177_
                               _e150106150180_
                               _hd150105150183_
                               _tl150104150185_)
                        (let ((_L150188_ _tl150104150185_)
                              (_L150189_ _hd150105150183_)
                              (_L150190_ _hd150102150175_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L150190_))
                              (___kont152108152109_
                               _L150188_
                               _L150189_
                               _L150190_)
                              (___kont152110152111_
                               _tl150095150161_
                               _hd150096150159_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx152102152103_))
                    (let ((_e150070150260_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx152102152103_))))
                      (let ((_tl150068150265_
                             (let ()
                               (declare (not safe))
                               (##cdr _e150070150260_)))
                            (_hd150069150263_
                             (let ()
                               (declare (not safe))
                               (##car _e150070150260_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd150069150263_))
                            (let ((_e150073150268_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd150069150263_))))
                              (let ((_tl150071150273_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e150073150268_)))
                                    (_hd150072150271_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e150073150268_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd150072150271_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd150072150271_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl150071150273_))
                                            (let ((_e150076150276_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl150071150273_))))
                                              (let ((_tl150074150281_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e150076150276_)))
                                                    (_hd150075150279_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e150076150276_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd150075150279_))
                                                    (let ((_e150077150284_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd150075150279_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e150077150284_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl150074150281_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl150068150265_))
                          (let ((_e150080150287_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl150068150265_))))
                            (let ((_tl150078150292_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e150080150287_)))
                                  (_hd150079150290_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e150080150287_))))
                              (___kont152104152105_
                               _tl150078150292_
                               _hd150079150290_)))
                          (___kont152110152111_
                           _tl150068150265_
                           _hd150069150263_))
                      (___kont152110152111_ _tl150068150265_ _hd150069150263_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e150077150284_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl150074150281_))
                          (___kont152106152107_ _tl150068150265_)
                          (___kont152110152111_
                           _tl150068150265_
                           _hd150069150263_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl150074150281_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl150068150265_))
                              (let ((_e150106150180_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl150068150265_))))
                                (let ((_tl150104150185_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e150106150180_)))
                                      (_hd150105150183_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e150106150180_))))
                                  (___match152209152210_
                                   _e150070150260_
                                   _hd150069150263_
                                   _tl150068150265_
                                   _e150073150268_
                                   _hd150072150271_
                                   _tl150071150273_
                                   _e150076150276_
                                   _hd150075150279_
                                   _tl150074150281_
                                   _e150106150180_
                                   _hd150105150183_
                                   _tl150104150185_)))
                              (___kont152110152111_
                               _tl150068150265_
                               _hd150069150263_))
                          (___kont152110152111_
                           _tl150068150265_
                           _hd150069150263_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl150074150281_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl150068150265_))
                                                            (let ((_e150106150180_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl150068150265_))))
                      (let ((_tl150104150185_
                             (let ()
                               (declare (not safe))
                               (##cdr _e150106150180_)))
                            (_hd150105150183_
                             (let ()
                               (declare (not safe))
                               (##car _e150106150180_))))
                        (___match152209152210_
                         _e150070150260_
                         _hd150069150263_
                         _tl150068150265_
                         _e150073150268_
                         _hd150072150271_
                         _tl150071150273_
                         _e150076150276_
                         _hd150075150279_
                         _tl150074150281_
                         _e150106150180_
                         _hd150105150183_
                         _tl150104150185_)))
                    (___kont152110152111_ _tl150068150265_ _hd150069150263_))
                (___kont152110152111_ _tl150068150265_ _hd150069150263_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont152110152111_
                                             _tl150068150265_
                                             _hd150069150263_))
                                        (___kont152110152111_
                                         _tl150068150265_
                                         _hd150069150263_))
                                    (___kont152110152111_
                                     _tl150068150265_
                                     _hd150069150263_))))
                            (___kont152110152111_
                             _tl150068150265_
                             _hd150069150263_))))
                    (let () (declare (not safe)) (_g150063150123_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self150047_ _stx150048_ _args150049_)
        (let () (declare (not safe)) (gxc#xform-call% _stx150048_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
