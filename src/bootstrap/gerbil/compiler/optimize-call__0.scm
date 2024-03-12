(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1710238842)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp153220 (list gxc#::basic-xform::t))
            (__tmp153218
             (let ((__tmp153219
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp153219 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp153220
         '()
         __tmp153218
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _$args152921_
        (apply make-instance gxc#::optimize-call::t _$args152921_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp153221
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
        (make-promise __tmp153221)))
    (define gxc#apply-optimize-call
      (lambda (_stx152913_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_self152916_
                (let ((__obj153215
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj153215))
               (__tmp153222
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self152916_ _stx152913_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp153222
           gxc#current-compile-method
           _self152916_))))
    (define gxc#optimize-call%
      (lambda (_self152767_ _stx152768_)
        (let* ((___stx152966152967_ _stx152768_)
               (_g152771152791_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx152966152967_)))))
          (let ((___kont152968152969_
                 (lambda (_L152835_ _L152836_)
                   (let* ((_rator-id152854_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L152836_)))
                          (_rator-type152856_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id152854_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type152856_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp153223
                                  (##structure-ref
                                   _rator-type152856_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id152854_
                              '" => "
                              _rator-type152856_
                              '" "
                              __tmp153223))
                           (let ((_optimized152859_
                                  (let ((__method153216
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type152856_
                                            'optimize-call))))
                                    (if __method153216
                                        (__method153216
                                         _rator-type152856_
                                         _self152767_
                                         _stx152768_
                                         _L152835_)
                                        (let ()
                                          (declare (not safe))
                                          (error '"Missing method"
                                                 _rator-type152856_
                                                 'optimize-call))))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type152856_))
                                 _optimized152859_
                                 (let* ((___stx152948152949_ _optimized152859_)
                                        (_g152862152872_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx152948152949_)))))
                                   (let ((___kont152950152951_
                                          (lambda (_L152892_)
                                            (let ((__tmp153224
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L152892_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp153224
                                               _stx152768_))))
                                         (___kont152952152953_
                                          (lambda () _optimized152859_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx152948152949_))
                                         (let ((_e152867152884_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx152948152949_))))
                                           (let ((_tl152865152889_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e152867152884_)))
                                                 (_hd152866152887_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e152867152884_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd152866152887_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd152866152887_))
                                                     (___kont152950152951_
                                                      _tl152865152889_)
                                                     (___kont152952152953_))
                                                 (___kont152952152953_))))
                                         (___kont152952152953_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type152856_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _self152767_ _stx152768_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx152768_
                                _rator-type152856_)))))))
                (___kont152970152971_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _self152767_ _stx152768_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx152966152967_))
                (let ((_e152777152803_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx152966152967_))))
                  (let ((_tl152775152808_
                         (let () (declare (not safe)) (##cdr _e152777152803_)))
                        (_hd152776152806_
                         (let ()
                           (declare (not safe))
                           (##car _e152777152803_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl152775152808_))
                        (let ((_e152780152811_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl152775152808_))))
                          (let ((_tl152778152816_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e152780152811_)))
                                (_hd152779152814_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e152780152811_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd152779152814_))
                                (let ((_e152783152819_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd152779152814_))))
                                  (let ((_tl152781152824_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e152783152819_)))
                                        (_hd152782152822_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e152783152819_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd152782152822_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd152782152822_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl152781152824_))
                                                (let ((_e152786152827_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl152781152824_))))
                                                  (let ((_tl152784152832_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e152786152827_)))
                                                        (_hd152785152830_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e152786152827_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl152784152832_))
                                                        (___kont152968152969_
                                                         _tl152778152816_
                                                         _hd152785152830_)
                                                        (___kont152970152971_))))
                                                (___kont152970152971_))
                                            (___kont152970152971_))
                                        (___kont152970152971_))))
                                (___kont152970152971_))))
                        (___kont152970152971_))))
                (___kont152970152971_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self152720_ _ctx152721_ _stx152722_ _args152723_)
        (let* ((_g152725152735_
                (lambda (_g152726152732_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g152726152732_))))
               (_g152724152764_
                (lambda (_g152726152738_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g152726152738_))
                      (let ((_e152730152740_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g152726152738_))))
                        (let ((_hd152729152743_
                               (let ()
                                 (declare (not safe))
                                 (##car _e152730152740_)))
                              (_tl152728152745_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e152730152740_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl152728152745_))
                              ((lambda (_L152748_)
                                 (let* ((_klass152759_
                                         (let ((__tmp153225
                                                (##structure-ref
                                                 _self152720_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx152722_
                                            __tmp153225)))
                                        (_object152761_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _ctx152721_
                                            _L152748_))))
                                   (if (##structure-ref
                                        _klass152759_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp153241
                                              (let ((__tmp153242
                                                     (let ((__tmp153244
                                                            (let ((__tmp153245
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153246
                                  (##structure-ref
                                   _klass152759_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp153246 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp153245)))
                   (__tmp153243
                    (let () (declare (not safe)) (cons _object152761_ '()))))
               (declare (not safe))
               (cons __tmp153244 __tmp153243))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp153242))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp153241
                                          _stx152722_))
                                       (if (##structure-ref
                                            _klass152759_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp153235
                                                  (let ((__tmp153236
                                                         (let ((__tmp153238
                                                                (let ((__tmp153239
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp153240
                                      (##structure-ref
                                       _klass152759_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp153240 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp153239)))
                       (__tmp153237
                        (let ()
                          (declare (not safe))
                          (cons _object152761_ '()))))
                   (declare (not safe))
                   (cons __tmp153238 __tmp153237))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp153236))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp153235
                                              _stx152722_))
                                           (let ((__tmp153226
                                                  (let ((__tmp153227
                                                         (let ((__tmp153233
                                                                (let ((__tmp153234
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp153234)))
                       (__tmp153228
                        (let ((__tmp153230
                               (let ((__tmp153231
                                      (let ((__tmp153232
                                             (##structure-ref
                                              _self152720_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp153232 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp153231)))
                              (__tmp153229
                               (let ()
                                 (declare (not safe))
                                 (cons _object152761_ '()))))
                          (declare (not safe))
                          (cons __tmp153230 __tmp153229))))
                   (declare (not safe))
                   (cons __tmp153233 __tmp153228))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp153227))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp153226
                                              _stx152722_))))))
                               _hd152729152743_)
                              (let ()
                                (declare (not safe))
                                (_g152725152735_ _g152726152738_)))))
                      (let ()
                        (declare (not safe))
                        (_g152725152735_ _g152726152738_))))))
          (declare (not safe))
          (_g152724152764_ _args152723_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__klass152923 __method-table152924)
        (let ((__id152925
               (let ((__slot152926
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152923 'id))))
                 (if __slot152926
                     __slot152926
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self152720_ _ctx152721_ _stx152722_ _args152723_)
            (let* ((_g152725152735_
                    (lambda (_g152726152732_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g152726152732_))))
                   (_g152724152764_
                    (lambda (_g152726152738_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g152726152738_))
                          (let ((_e152730152740_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g152726152738_))))
                            (let ((_hd152729152743_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e152730152740_)))
                                  (_tl152728152745_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e152730152740_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl152728152745_))
                                  ((lambda (_L152748_)
                                     (let* ((_klass152759_
                                             (let ((__tmp153247
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self152720_
                                                       __id152925
                                                       __klass152923
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx152722_
                                                __tmp153247)))
                                            (_object152761_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _ctx152721_
                                                _L152748_))))
                                       (if (##structure-ref
                                            _klass152759_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp153263
                                                  (let ((__tmp153264
                                                         (let ((__tmp153266
                                                                (let ((__tmp153267
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp153268
                                      (##structure-ref
                                       _klass152759_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp153268 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp153267)))
                       (__tmp153265
                        (let ()
                          (declare (not safe))
                          (cons _object152761_ '()))))
                   (declare (not safe))
                   (cons __tmp153266 __tmp153265))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp153264))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp153263
                                              _stx152722_))
                                           (if (##structure-ref
                                                _klass152759_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp153257
                                                      (let ((__tmp153258
                                                             (let ((__tmp153260
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp153261
                                   (let ((__tmp153262
                                          (##structure-ref
                                           _klass152759_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp153262 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp153261)))
                           (__tmp153259
                            (let ()
                              (declare (not safe))
                              (cons _object152761_ '()))))
                       (declare (not safe))
                       (cons __tmp153260 __tmp153259))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp153258))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp153257
                                                  _stx152722_))
                                               (let ((__tmp153248
                                                      (let ((__tmp153249
                                                             (let ((__tmp153255
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp153256
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp153256)))
                           (__tmp153250
                            (let ((__tmp153252
                                   (let ((__tmp153253
                                          (let ((__tmp153254
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self152720_
                                                    __id152925
                                                    __klass152923
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp153254 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp153253)))
                                  (__tmp153251
                                   (let ()
                                     (declare (not safe))
                                     (cons _object152761_ '()))))
                              (declare (not safe))
                              (cons __tmp153252 __tmp153251))))
                       (declare (not safe))
                       (cons __tmp153255 __tmp153250))))
                (declare (not safe))
                (cons '%#call __tmp153249))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp153248
                                                  _stx152722_))))))
                                   _hd152729152743_)
                                  (let ()
                                    (declare (not safe))
                                    (_g152725152735_ _g152726152738_)))))
                          (let ()
                            (declare (not safe))
                            (_g152725152735_ _g152726152738_))))))
              (declare (not safe))
              (_g152724152764_ _args152723_))))))
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
      (lambda (_self152435_ _ctx152436_ _stx152437_ _args152438_)
        (let* ((_klass152440_
                (let ((__tmp153269
                       (##structure-ref _self152435_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx152437_ __tmp153269)))
               (_fields152442_
                (length (##structure-ref _klass152440_ '5 gxc#!class::t '#f)))
               (_args152448_
                (map (lambda (_g152443152445_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _ctx152436_ _g152443152445_)))
                     _args152438_))
               (_inline-make-object152450_
                (let ((__tmp153270
                       (let ((__tmp153276
                              (let ((__tmp153277
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp153277)))
                             (__tmp153271
                              (let ((__tmp153273
                                     (let ((__tmp153274
                                            (let ((__tmp153275
                                                   (##structure-ref
                                                    _self152435_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp153275 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153274)))
                                    (__tmp153272
                                     (make-list _fields152442_ '(%#quote #f))))
                                (declare (not safe))
                                (cons __tmp153273 __tmp153272))))
                         (declare (not safe))
                         (cons __tmp153276 __tmp153271))))
                  (declare (not safe))
                  (cons '%#call __tmp153270))))
          (let ((_$e152453_
                 (##structure-ref _klass152440_ '6 gxc#!class::t '#f)))
            (if _$e152453_
                ((lambda (_ctor152456_)
                   (let ((_$obj152458_
                          (let ((__tmp153378 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp153378)))
                         (_ctor-impl152459_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass152440_
                             _ctor152456_))))
                     (let ((__tmp153379
                            (let ((__tmp153380
                                   (let ((__tmp153448
                                          (let ((__tmp153449
                                                 (let ((__tmp153451
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj152458_
                                                                '())))
                                                       (__tmp153450
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object152450_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp153451
                                                         __tmp153450))))
                                            (declare (not safe))
                                            (cons __tmp153449 '())))
                                         (__tmp153381
                                          (let ((__tmp153382
                                                 (let ((__tmp153383
                                                        (let ((__tmp153387
                                                               (if _ctor-impl152459_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153442
                                  (let ((__tmp153446
                                         (let ((__tmp153447
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl152459_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153447)))
                                        (__tmp153443
                                         (let ((__tmp153444
                                                (let ((__tmp153445
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj152458_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp153445))))
                                           (declare (not safe))
                                           (cons __tmp153444 _args152448_))))
                                    (declare (not safe))
                                    (cons __tmp153446 __tmp153443))))
                             (declare (not safe))
                             (cons '%#call __tmp153442))
                           (let* ((_$ctor152461_
                                   (let ((__tmp153388 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp153388)))
                                  (__tmp153389
                                   (let ((__tmp153424
                                          (let ((__tmp153425
                                                 (let ((__tmp153441
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor152461_
                                                                '())))
                                                       (__tmp153426
                                                        (let ((__tmp153427
                                                               (let ((__tmp153428
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153439
                                     (let ((__tmp153440
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153440)))
                                    (__tmp153429
                                     (let ((__tmp153436
                                            (let ((__tmp153437
                                                   (let ((__tmp153438
                                                          (##structure-ref
                                                           _self152435_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp153438 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp153437)))
                                           (__tmp153430
                                            (let ((__tmp153434
                                                   (let ((__tmp153435
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj152458_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153435)))
                                                  (__tmp153431
                                                   (let ((__tmp153432
                                                          (let ((__tmp153433
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _ctor152456_ '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp153433))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153432 '()))))
                                              (declare (not safe))
                                              (cons __tmp153434 __tmp153431))))
                                       (declare (not safe))
                                       (cons __tmp153436 __tmp153430))))
                                (declare (not safe))
                                (cons __tmp153439 __tmp153429))))
                         (declare (not safe))
                         (cons '%#call __tmp153428))))
                  (declare (not safe))
                  (cons __tmp153427 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153441
                                                         __tmp153426))))
                                            (declare (not safe))
                                            (cons __tmp153425 '())))
                                         (__tmp153390
                                          (let ((__tmp153391
                                                 (let ((__tmp153392
                                                        (let ((__tmp153422
                                                               (let ((__tmp153423
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor152461_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp153423)))
                      (__tmp153393
                       (let ((__tmp153415
                              (let ((__tmp153416
                                     (let ((__tmp153420
                                            (let ((__tmp153421
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor152461_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp153421)))
                                           (__tmp153417
                                            (let ((__tmp153418
                                                   (let ((__tmp153419
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj152458_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153419))))
                                              (declare (not safe))
                                              (cons __tmp153418
                                                    _args152448_))))
                                       (declare (not safe))
                                       (cons __tmp153420 __tmp153417))))
                                (declare (not safe))
                                (cons '%#call __tmp153416)))
                             (__tmp153394
                              (let ((__tmp153395
                                     (let ((__tmp153396
                                            (let ((__tmp153413
                                                   (let ((__tmp153414
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153414)))
                                                  (__tmp153397
                                                   (let ((__tmp153411
                                                          (let ((__tmp153412
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp153412)))
                 (__tmp153398
                  (let ((__tmp153409
                         (let ((__tmp153410
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp153410)))
                        (__tmp153399
                         (let ((__tmp153406
                                (let ((__tmp153407
                                       (let ((__tmp153408
                                              (##structure-ref
                                               _self152435_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp153408 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp153407)))
                               (__tmp153400
                                (let ((__tmp153404
                                       (let ((__tmp153405
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp153405)))
                                      (__tmp153401
                                       (let ((__tmp153402
                                              (let ((__tmp153403
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor152456_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp153403))))
                                         (declare (not safe))
                                         (cons __tmp153402 '()))))
                                  (declare (not safe))
                                  (cons __tmp153404 __tmp153401))))
                           (declare (not safe))
                           (cons __tmp153406 __tmp153400))))
                    (declare (not safe))
                    (cons __tmp153409 __tmp153399))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153411
                                                           __tmp153398))))
                                              (declare (not safe))
                                              (cons __tmp153413 __tmp153397))))
                                       (declare (not safe))
                                       (cons '%#call __tmp153396))))
                                (declare (not safe))
                                (cons __tmp153395 '()))))
                         (declare (not safe))
                         (cons __tmp153415 __tmp153394))))
                  (declare (not safe))
                  (cons __tmp153422 __tmp153393))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp153392))))
                                            (declare (not safe))
                                            (cons __tmp153391 '()))))
                                     (declare (not safe))
                                     (cons __tmp153424 __tmp153390))))
                             (declare (not safe))
                             (cons '%#let-values __tmp153389))))
                      (__tmp153384
                       (let ((__tmp153385
                              (let ((__tmp153386
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj152458_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp153386))))
                         (declare (not safe))
                         (cons __tmp153385 '()))))
                  (declare (not safe))
                  (cons __tmp153387 __tmp153384))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp153383))))
                                            (declare (not safe))
                                            (cons __tmp153382 '()))))
                                     (declare (not safe))
                                     (cons __tmp153448 __tmp153381))))
                              (declare (not safe))
                              (cons '%#let-values __tmp153380))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp153379 _stx152437_))))
                 _$e152453_)
                (let ((_$e152463_
                       (##structure-ref _klass152440_ '9 gxc#!class::t '#f)))
                  (if _$e152463_
                      ((lambda (_metaclass152466_)
                         (let* ((_$obj152468_
                                 (let ((__tmp153340 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp153340)))
                                (_metakons152470_
                                 (let ((__tmp153341
                                        (let ()
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           _stx152437_
                                           _metaclass152466_))))
                                   (declare (not safe))
                                   (gxc#!class-lookup-method
                                    __tmp153341
                                    'instance-init!))))
                           (let ((__tmp153342
                                  (let ((__tmp153343
                                         (let ((__tmp153374
                                                (let ((__tmp153375
                                                       (let ((__tmp153377
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj152468_ '())))
                     (__tmp153376
                      (let ()
                        (declare (not safe))
                        (cons _inline-make-object152450_ '()))))
                 (declare (not safe))
                 (cons __tmp153377 __tmp153376))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153375 '())))
                                               (__tmp153344
                                                (let ((__tmp153345
                                                       (let ((__tmp153346
                                                              (let ((__tmp153350
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if _metakons152470_
                                 (let ((__tmp153364
                                        (let ((__tmp153372
                                               (let ((__tmp153373
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metakons152470_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp153373)))
                                              (__tmp153365
                                               (let ((__tmp153369
                                                      (let ((__tmp153370
                                                             (let ((__tmp153371
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self152435_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp153371 '()))))
                (declare (not safe))
                (cons '%#ref __tmp153370)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp153366
                                                      (let ((__tmp153367
                                                             (let ((__tmp153368
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _$obj152468_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp153368))))
                (declare (not safe))
                (cons __tmp153367 _args152448_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153369
                                                       __tmp153366))))
                                          (declare (not safe))
                                          (cons __tmp153372 __tmp153365))))
                                   (declare (not safe))
                                   (cons '%#call __tmp153364))
                                 (let ((__tmp153351
                                        (let ((__tmp153362
                                               (let ((__tmp153363
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'call-method
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp153363)))
                                              (__tmp153352
                                               (let ((__tmp153359
                                                      (let ((__tmp153360
                                                             (let ((__tmp153361
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self152435_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp153361 '()))))
                (declare (not safe))
                (cons '%#ref __tmp153360)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp153353
                                                      (let ((__tmp153357
                                                             (let ((__tmp153358
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'instance-init! '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp153358)))
                    (__tmp153354
                     (let ((__tmp153355
                            (let ((__tmp153356
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj152468_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp153356))))
                       (declare (not safe))
                       (cons __tmp153355 _args152448_))))
                (declare (not safe))
                (cons __tmp153357 __tmp153354))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153359
                                                       __tmp153353))))
                                          (declare (not safe))
                                          (cons __tmp153362 __tmp153352))))
                                   (declare (not safe))
                                   (cons '%#call __tmp153351))))
                            (__tmp153347
                             (let ((__tmp153348
                                    (let ((__tmp153349
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj152468_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp153349))))
                               (declare (not safe))
                               (cons __tmp153348 '()))))
                        (declare (not safe))
                        (cons __tmp153350 __tmp153347))))
                 (declare (not safe))
                 (cons '%#begin __tmp153346))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153345 '()))))
                                           (declare (not safe))
                                           (cons __tmp153374 __tmp153344))))
                                    (declare (not safe))
                                    (cons '%#let-values __tmp153343))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp153342 _stx152437_))))
                       _$e152463_)
                      (if (##structure-ref _klass152440_ '7 gxc#!class::t '#f)
                          (if (fx= (length _args152448_) _fields152442_)
                              (let ((__tmp153332
                                     (let ((__tmp153333
                                            (let ((__tmp153338
                                                   (let ((__tmp153339
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153339)))
                                                  (__tmp153334
                                                   (let ((__tmp153335
                                                          (let ((__tmp153336
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp153337
                                (##structure-ref
                                 _self152435_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp153337 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp153336))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153335
                                                           _args152448_))))
                                              (declare (not safe))
                                              (cons __tmp153338 __tmp153334))))
                                       (declare (not safe))
                                       (cons '%#call __tmp153333))))
                                (declare (not safe))
                                (gxc#xform-wrap-source
                                 __tmp153332
                                 _stx152437_))
                              (let ((__tmp153331
                                     (##structure-ref
                                      _self152435_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                    (__tmp153330
                                     (length (##structure-ref
                                              _klass152440_
                                              '5
                                              gxc#!class::t
                                              '#f))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"illegal struct constructor application; arity mismatch"
                                 _stx152437_
                                 __tmp153331
                                 __tmp153330)))
                          (let ((_$obj152473_
                                 (let ((__tmp153278 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp153278))))
                            (let _lp152475_ ((_rest152477_ _args152448_)
                                             (_initializers152478_ '()))
                              (let* ((___stx153004153005_ _rest152477_)
                                     (_g152482152503_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx153004153005_)))))
                                (let ((___kont153006153007_
                                       (lambda (_L152557_ _L152558_ _L152559_)
                                         (let* ((_slot152590_
                                                 (let ((__tmp153279
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L152559_))))
                                                   (declare (not safe))
                                                   (keyword->symbol
                                                    __tmp153279)))
                                                (_off152592_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass152440_
                                                    _slot152590_))))
                                           (if _off152592_
                                               (let ((__tmp153281
                                                      (let ((__tmp153282
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off152592_ _L152558_))))
                (declare (not safe))
                (cons __tmp153282 _initializers152478_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp152475_
                                                  _L152557_
                                                  __tmp153281))
                                               (let ((__tmp153280
                                                      (##structure-ref
                                                       _self152435_
                                                       '1
                                                       gxc#!type::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"unknown slot"
                                                  _stx152437_
                                                  __tmp153280
                                                  _slot152590_))))))
                                      (___kont153008153009_
                                       (lambda ()
                                         (let ((__tmp153283
                                                (let ((__tmp153284
                                                       (let ((__tmp153307
                                                              (let ((__tmp153308
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp153310
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj152473_ '())))
                                   (__tmp153309
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object152450_ '()))))
                               (declare (not safe))
                               (cons __tmp153310 __tmp153309))))
                        (declare (not safe))
                        (cons __tmp153308 '())))
                     (__tmp153285
                      (let ((__tmp153286
                             (let ((__tmp153287
                                    (let ((__tmp153304
                                           (let ((__tmp153305
                                                  (let ((__tmp153306
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj152473_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp153306))))
                                             (declare (not safe))
                                             (cons __tmp153305 '())))
                                          (__tmp153288
                                           (let ((__tmp153289
                                                  (lambda (_i152517_ _r152518_)
                                                    (let ((__tmp153290
                                                           (let ((__tmp153291
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp153301
                                 (let ((__tmp153302
                                        (let ((__tmp153303
                                               (##structure-ref
                                                _self152435_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp153303 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp153302)))
                                (__tmp153292
                                 (let ((__tmp153298
                                        (let ((__tmp153299
                                               (let ((__tmp153300
                                                      (car _i152517_)))
                                                 (declare (not safe))
                                                 (cons __tmp153300 '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp153299)))
                                       (__tmp153293
                                        (let ((__tmp153296
                                               (let ((__tmp153297
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _$obj152473_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp153297)))
                                              (__tmp153294
                                               (let ((__tmp153295
                                                      (cdr _i152517_)))
                                                 (declare (not safe))
                                                 (cons __tmp153295 '()))))
                                          (declare (not safe))
                                          (cons __tmp153296 __tmp153294))))
                                   (declare (not safe))
                                   (cons __tmp153298 __tmp153293))))
                            (declare (not safe))
                            (cons __tmp153301 __tmp153292))))
                     (declare (not safe))
                     (cons '%#struct-unchecked-set! __tmp153291))))
              (declare (not safe))
              (cons __tmp153290 _r152518_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (foldl1 __tmp153289
                                                     '()
                                                     _initializers152478_))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp153304 __tmp153288))))
                               (declare (not safe))
                               (cons '%#begin __tmp153287))))
                        (declare (not safe))
                        (cons __tmp153286 '()))))
                 (declare (not safe))
                 (cons __tmp153307 __tmp153285))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp153284))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp153283
                                            _stx152437_))))
                                      (___kont153010153011_
                                       (lambda ()
                                         (let ((__tmp153311
                                                (let ((__tmp153312
                                                       (let ((__tmp153326
                                                              (let ((__tmp153327
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp153329
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj152473_ '())))
                                   (__tmp153328
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object152450_ '()))))
                               (declare (not safe))
                               (cons __tmp153329 __tmp153328))))
                        (declare (not safe))
                        (cons __tmp153327 '())))
                     (__tmp153313
                      (let ((__tmp153314
                             (let ((__tmp153315
                                    (let ((__tmp153319
                                           (let ((__tmp153320
                                                  (let ((__tmp153324
                                                         (let ((__tmp153325
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'class-instance-init! '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp153325)))
                (__tmp153321
                 (let ((__tmp153322
                        (let ((__tmp153323
                               (let ()
                                 (declare (not safe))
                                 (cons _$obj152473_ '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp153323))))
                   (declare (not safe))
                   (cons __tmp153322 _args152448_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp153324
                                                          __tmp153321))))
                                             (declare (not safe))
                                             (cons '%#call __tmp153320)))
                                          (__tmp153316
                                           (let ((__tmp153317
                                                  (let ((__tmp153318
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj152473_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp153318))))
                                             (declare (not safe))
                                             (cons __tmp153317 '()))))
                                      (declare (not safe))
                                      (cons __tmp153319 __tmp153316))))
                               (declare (not safe))
                               (cons '%#begin __tmp153315))))
                        (declare (not safe))
                        (cons __tmp153314 '()))))
                 (declare (not safe))
                 (cons __tmp153326 __tmp153313))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp153312))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp153311
                                            _stx152437_)))))
                                  (let* ((_g152480152520_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   ___stx153004153005_))
                                                (___kont153008153009_)
                                                (___kont153010153011_))))
                                         (___match153041153042_
                                          (lambda (_e152489152525_
                                                   _hd152488152528_
                                                   _tl152487152530_
                                                   _e152492152533_
                                                   _hd152491152536_
                                                   _tl152490152538_
                                                   _e152495152541_
                                                   _hd152494152544_
                                                   _tl152493152546_
                                                   _e152498152549_
                                                   _hd152497152552_
                                                   _tl152496152554_)
                                            (let ((_L152557_ _tl152496152554_)
                                                  (_L152558_ _hd152497152552_)
                                                  (_L152559_ _hd152494152544_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-keyword?
                                                     _L152559_))
                                                  (___kont153006153007_
                                                   _L152557_
                                                   _L152558_
                                                   _L152559_)
                                                  (___kont153010153011_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx153004153005_))
                                        (let ((_e152489152525_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx153004153005_))))
                                          (let ((_tl152487152530_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e152489152525_)))
                                                (_hd152488152528_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e152489152525_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd152488152528_))
                                                (let ((_e152492152533_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd152488152528_))))
                                                  (let ((_tl152490152538_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e152492152533_)))
                                                        (_hd152491152536_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e152492152533_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd152491152536_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#quote
                                                               _hd152491152536_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl152490152538_))
                        (let ((_e152495152541_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl152490152538_))))
                          (let ((_tl152493152546_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e152495152541_)))
                                (_hd152494152544_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e152495152541_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl152493152546_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl152487152530_))
                                    (let ((_e152498152549_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl152487152530_))))
                                      (let ((_tl152496152554_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e152498152549_)))
                                            (_hd152497152552_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e152498152549_))))
                                        (___match153041153042_
                                         _e152489152525_
                                         _hd152488152528_
                                         _tl152487152530_
                                         _e152492152533_
                                         _hd152491152536_
                                         _tl152490152538_
                                         _e152495152541_
                                         _hd152494152544_
                                         _tl152493152546_
                                         _e152498152549_
                                         _hd152497152552_
                                         _tl152496152554_)))
                                    (___kont153010153011_))
                                (___kont153010153011_))))
                        (___kont153010153011_))
                    (___kont153010153011_))
                (___kont153010153011_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont153010153011_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g152480152520_))))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__klass152927 __method-table152928)
        (let ((__id152929
               (let ((__slot152930
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152927 'id))))
                 (if __slot152930
                     __slot152930
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self152435_ _ctx152436_ _stx152437_ _args152438_)
            (let* ((_klass152440_
                    (let ((__tmp153452
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self152435_
                              __id152929
                              __klass152927
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx152437_ __tmp153452)))
                   (_fields152442_
                    (length (##structure-ref
                             _klass152440_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args152448_
                    (map (lambda (_g152443152445_)
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _ctx152436_ _g152443152445_)))
                         _args152438_))
                   (_inline-make-object152450_
                    (let ((__tmp153453
                           (let ((__tmp153459
                                  (let ((__tmp153460
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp153460)))
                                 (__tmp153454
                                  (let ((__tmp153456
                                         (let ((__tmp153457
                                                (let ((__tmp153458
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self152435_
                                                          __id152929
                                                          __klass152927
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp153458 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153457)))
                                        (__tmp153455
                                         (make-list
                                          _fields152442_
                                          '(%#quote #f))))
                                    (declare (not safe))
                                    (cons __tmp153456 __tmp153455))))
                             (declare (not safe))
                             (cons __tmp153459 __tmp153454))))
                      (declare (not safe))
                      (cons '%#call __tmp153453))))
              (let ((_$e152453_
                     (##structure-ref _klass152440_ '6 gxc#!class::t '#f)))
                (if _$e152453_
                    ((lambda (_ctor152456_)
                       (let ((_$obj152458_
                              (let ((__tmp153561 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp153561)))
                             (_ctor-impl152459_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass152440_
                                 _ctor152456_))))
                         (let ((__tmp153562
                                (let ((__tmp153563
                                       (let ((__tmp153631
                                              (let ((__tmp153632
                                                     (let ((__tmp153634
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj152458_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp153633
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object152450_ '()))))
               (declare (not safe))
               (cons __tmp153634 __tmp153633))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp153632 '())))
                                             (__tmp153564
                                              (let ((__tmp153565
                                                     (let ((__tmp153566
                                                            (let ((__tmp153570
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl152459_
                               (let ((__tmp153625
                                      (let ((__tmp153629
                                             (let ((__tmp153630
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl152459_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp153630)))
                                            (__tmp153626
                                             (let ((__tmp153627
                                                    (let ((__tmp153628
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj152458_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp153628))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153627
                                                     _args152448_))))
                                        (declare (not safe))
                                        (cons __tmp153629 __tmp153626))))
                                 (declare (not safe))
                                 (cons '%#call __tmp153625))
                               (let* ((_$ctor152461_
                                       (let ((__tmp153571
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp153571)))
                                      (__tmp153572
                                       (let ((__tmp153607
                                              (let ((__tmp153608
                                                     (let ((__tmp153624
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor152461_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp153609
                    (let ((__tmp153610
                           (let ((__tmp153611
                                  (let ((__tmp153622
                                         (let ((__tmp153623
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153623)))
                                        (__tmp153612
                                         (let ((__tmp153619
                                                (let ((__tmp153620
                                                       (let ((__tmp153621
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self152435_
                         __id152929
                         __klass152927
                         '#f))))
                 (declare (not safe))
                 (cons __tmp153621 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp153620)))
                                               (__tmp153613
                                                (let ((__tmp153617
                                                       (let ((__tmp153618
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj152458_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153618)))
              (__tmp153614
               (let ((__tmp153615
                      (let ((__tmp153616
                             (let ()
                               (declare (not safe))
                               (cons _ctor152456_ '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp153616))))
                 (declare (not safe))
                 (cons __tmp153615 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153617
                                                        __tmp153614))))
                                           (declare (not safe))
                                           (cons __tmp153619 __tmp153613))))
                                    (declare (not safe))
                                    (cons __tmp153622 __tmp153612))))
                             (declare (not safe))
                             (cons '%#call __tmp153611))))
                      (declare (not safe))
                      (cons __tmp153610 '()))))
               (declare (not safe))
               (cons __tmp153624 __tmp153609))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp153608 '())))
                                             (__tmp153573
                                              (let ((__tmp153574
                                                     (let ((__tmp153575
                                                            (let ((__tmp153605
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153606
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor152461_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp153606)))
                          (__tmp153576
                           (let ((__tmp153598
                                  (let ((__tmp153599
                                         (let ((__tmp153603
                                                (let ((__tmp153604
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor152461_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp153604)))
                                               (__tmp153600
                                                (let ((__tmp153601
                                                       (let ((__tmp153602
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj152458_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153602))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153601
                                                        _args152448_))))
                                           (declare (not safe))
                                           (cons __tmp153603 __tmp153600))))
                                    (declare (not safe))
                                    (cons '%#call __tmp153599)))
                                 (__tmp153577
                                  (let ((__tmp153578
                                         (let ((__tmp153579
                                                (let ((__tmp153596
                                                       (let ((__tmp153597
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153597)))
              (__tmp153580
               (let ((__tmp153594
                      (let ((__tmp153595
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp153595)))
                     (__tmp153581
                      (let ((__tmp153592
                             (let ((__tmp153593
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp153593)))
                            (__tmp153582
                             (let ((__tmp153589
                                    (let ((__tmp153590
                                           (let ((__tmp153591
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self152435_
                                                     __id152929
                                                     __klass152927
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp153591 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp153590)))
                                   (__tmp153583
                                    (let ((__tmp153587
                                           (let ((__tmp153588
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp153588)))
                                          (__tmp153584
                                           (let ((__tmp153585
                                                  (let ((__tmp153586
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor152456_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp153586))))
                                             (declare (not safe))
                                             (cons __tmp153585 '()))))
                                      (declare (not safe))
                                      (cons __tmp153587 __tmp153584))))
                               (declare (not safe))
                               (cons __tmp153589 __tmp153583))))
                        (declare (not safe))
                        (cons __tmp153592 __tmp153582))))
                 (declare (not safe))
                 (cons __tmp153594 __tmp153581))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153596
                                                        __tmp153580))))
                                           (declare (not safe))
                                           (cons '%#call __tmp153579))))
                                    (declare (not safe))
                                    (cons __tmp153578 '()))))
                             (declare (not safe))
                             (cons __tmp153598 __tmp153577))))
                      (declare (not safe))
                      (cons __tmp153605 __tmp153576))))
               (declare (not safe))
               (cons '%#if __tmp153575))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp153574 '()))))
                                         (declare (not safe))
                                         (cons __tmp153607 __tmp153573))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp153572))))
                          (__tmp153567
                           (let ((__tmp153568
                                  (let ((__tmp153569
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj152458_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp153569))))
                             (declare (not safe))
                             (cons __tmp153568 '()))))
                      (declare (not safe))
                      (cons __tmp153570 __tmp153567))))
               (declare (not safe))
               (cons '%#begin __tmp153566))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp153565 '()))))
                                         (declare (not safe))
                                         (cons __tmp153631 __tmp153564))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp153563))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp153562 _stx152437_))))
                     _$e152453_)
                    (let ((_$e152463_
                           (##structure-ref
                            _klass152440_
                            '9
                            gxc#!class::t
                            '#f)))
                      (if _$e152463_
                          ((lambda (_metaclass152466_)
                             (let* ((_$obj152468_
                                     (let ((__tmp153523 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp153523)))
                                    (_metakons152470_
                                     (let ((__tmp153524
                                            (let ()
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               _stx152437_
                                               _metaclass152466_))))
                                       (declare (not safe))
                                       (gxc#!class-lookup-method
                                        __tmp153524
                                        'instance-init!))))
                               (let ((__tmp153525
                                      (let ((__tmp153526
                                             (let ((__tmp153557
                                                    (let ((__tmp153558
                                                           (let ((__tmp153560
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj152468_ '())))
                         (__tmp153559
                          (let ()
                            (declare (not safe))
                            (cons _inline-make-object152450_ '()))))
                     (declare (not safe))
                     (cons __tmp153560 __tmp153559))))
              (declare (not safe))
              (cons __tmp153558 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp153527
                                                    (let ((__tmp153528
                                                           (let ((__tmp153529
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp153533
                                 (if _metakons152470_
                                     (let ((__tmp153547
                                            (let ((__tmp153555
                                                   (let ((__tmp153556
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _metakons152470_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153556)))
                                                  (__tmp153548
                                                   (let ((__tmp153552
                                                          (let ((__tmp153553
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp153554
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self152435_
                                   __id152929
                                   __klass152927
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp153554 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp153553)))
                 (__tmp153549
                  (let ((__tmp153550
                         (let ((__tmp153551
                                (let ()
                                  (declare (not safe))
                                  (cons _$obj152468_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp153551))))
                    (declare (not safe))
                    (cons __tmp153550 _args152448_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153552
                                                           __tmp153549))))
                                              (declare (not safe))
                                              (cons __tmp153555 __tmp153548))))
                                       (declare (not safe))
                                       (cons '%#call __tmp153547))
                                     (let ((__tmp153534
                                            (let ((__tmp153545
                                                   (let ((__tmp153546
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'call-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153546)))
                                                  (__tmp153535
                                                   (let ((__tmp153542
                                                          (let ((__tmp153543
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp153544
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self152435_
                                   __id152929
                                   __klass152927
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp153544 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp153543)))
                 (__tmp153536
                  (let ((__tmp153540
                         (let ((__tmp153541
                                (let ()
                                  (declare (not safe))
                                  (cons 'instance-init! '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp153541)))
                        (__tmp153537
                         (let ((__tmp153538
                                (let ((__tmp153539
                                       (let ()
                                         (declare (not safe))
                                         (cons _$obj152468_ '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp153539))))
                           (declare (not safe))
                           (cons __tmp153538 _args152448_))))
                    (declare (not safe))
                    (cons __tmp153540 __tmp153537))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153542
                                                           __tmp153536))))
                                              (declare (not safe))
                                              (cons __tmp153545 __tmp153535))))
                                       (declare (not safe))
                                       (cons '%#call __tmp153534))))
                                (__tmp153530
                                 (let ((__tmp153531
                                        (let ((__tmp153532
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$obj152468_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp153532))))
                                   (declare (not safe))
                                   (cons __tmp153531 '()))))
                            (declare (not safe))
                            (cons __tmp153533 __tmp153530))))
                     (declare (not safe))
                     (cons '%#begin __tmp153529))))
              (declare (not safe))
              (cons __tmp153528 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153557
                                                     __tmp153527))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp153526))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp153525
                                  _stx152437_))))
                           _$e152463_)
                          (if (##structure-ref
                               _klass152440_
                               '7
                               gxc#!class::t
                               '#f)
                              (if (fx= (length _args152448_) _fields152442_)
                                  (let ((__tmp153515
                                         (let ((__tmp153516
                                                (let ((__tmp153521
                                                       (let ((__tmp153522
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '##structure '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153522)))
              (__tmp153517
               (let ((__tmp153518
                      (let ((__tmp153519
                             (let ((__tmp153520
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self152435_
                                       __id152929
                                       __klass152927
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp153520 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp153519))))
                 (declare (not safe))
                 (cons __tmp153518 _args152448_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153521
                                                        __tmp153517))))
                                           (declare (not safe))
                                           (cons '%#call __tmp153516))))
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp153515
                                     _stx152437_))
                                  (let ((__tmp153514
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _self152435_
                                            __id152929
                                            __klass152927
                                            '#f)))
                                        (__tmp153513
                                         (length (##structure-ref
                                                  _klass152440_
                                                  '5
                                                  gxc#!class::t
                                                  '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _stx152437_
                                     __tmp153514
                                     __tmp153513)))
                              (let ((_$obj152473_
                                     (let ((__tmp153461 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp153461))))
                                (let _lp152475_ ((_rest152477_ _args152448_)
                                                 (_initializers152478_ '()))
                                  (let* ((___stx153046153047_ _rest152477_)
                                         (_g152482152503_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               ___stx153046153047_)))))
                                    (let ((___kont153048153049_
                                           (lambda (_L152557_
                                                    _L152558_
                                                    _L152559_)
                                             (let* ((_slot152590_
                                                     (let ((__tmp153462
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L152559_))))
                                                       (declare (not safe))
                                                       (keyword->symbol
                                                        __tmp153462)))
                                                    (_off152592_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass152440_
                                                        _slot152590_))))
                                               (if _off152592_
                                                   (let ((__tmp153464
                                                          (let ((__tmp153465
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _off152592_ _L152558_))))
                    (declare (not safe))
                    (cons __tmp153465 _initializers152478_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp152475_
                                                      _L152557_
                                                      __tmp153464))
                                                   (let ((__tmp153463
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _self152435_
                                                             __id152929
                                                             __klass152927
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"unknown slot"
                                                      _stx152437_
                                                      __tmp153463
                                                      _slot152590_))))))
                                          (___kont153050153051_
                                           (lambda ()
                                             (let ((__tmp153466
                                                    (let ((__tmp153467
                                                           (let ((__tmp153490
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp153491
                                 (let ((__tmp153493
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj152473_ '())))
                                       (__tmp153492
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object152450_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp153493 __tmp153492))))
                            (declare (not safe))
                            (cons __tmp153491 '())))
                         (__tmp153468
                          (let ((__tmp153469
                                 (let ((__tmp153470
                                        (let ((__tmp153487
                                               (let ((__tmp153488
                                                      (let ((__tmp153489
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj152473_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp153489))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153488 '())))
                                              (__tmp153471
                                               (let ((__tmp153472
                                                      (lambda (_i152517_
                                                               _r152518_)
                                                        (let ((__tmp153473
                                                               (let ((__tmp153474
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153484
                                     (let ((__tmp153485
                                            (let ((__tmp153486
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self152435_
                                                      __id152929
                                                      __klass152927
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp153486 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153485)))
                                    (__tmp153475
                                     (let ((__tmp153481
                                            (let ((__tmp153482
                                                   (let ((__tmp153483
                                                          (car _i152517_)))
                                                     (declare (not safe))
                                                     (cons __tmp153483 '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp153482)))
                                           (__tmp153476
                                            (let ((__tmp153479
                                                   (let ((__tmp153480
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj152473_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153480)))
                                                  (__tmp153477
                                                   (let ((__tmp153478
                                                          (cdr _i152517_)))
                                                     (declare (not safe))
                                                     (cons __tmp153478 '()))))
                                              (declare (not safe))
                                              (cons __tmp153479 __tmp153477))))
                                       (declare (not safe))
                                       (cons __tmp153481 __tmp153476))))
                                (declare (not safe))
                                (cons __tmp153484 __tmp153475))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp153474))))
                  (declare (not safe))
                  (cons __tmp153473 _r152518_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl1 __tmp153472
                                                         '()
                                                         _initializers152478_))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp153487
                                                  __tmp153471))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp153470))))
                            (declare (not safe))
                            (cons __tmp153469 '()))))
                     (declare (not safe))
                     (cons __tmp153490 __tmp153468))))
              (declare (not safe))
              (cons '%#let-values __tmp153467))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp153466
                                                _stx152437_))))
                                          (___kont153052153053_
                                           (lambda ()
                                             (let ((__tmp153494
                                                    (let ((__tmp153495
                                                           (let ((__tmp153509
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp153510
                                 (let ((__tmp153512
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj152473_ '())))
                                       (__tmp153511
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object152450_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp153512 __tmp153511))))
                            (declare (not safe))
                            (cons __tmp153510 '())))
                         (__tmp153496
                          (let ((__tmp153497
                                 (let ((__tmp153498
                                        (let ((__tmp153502
                                               (let ((__tmp153503
                                                      (let ((__tmp153507
                                                             (let ((__tmp153508
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'class-instance-init! '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp153508)))
                    (__tmp153504
                     (let ((__tmp153505
                            (let ((__tmp153506
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj152473_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp153506))))
                       (declare (not safe))
                       (cons __tmp153505 _args152448_))))
                (declare (not safe))
                (cons __tmp153507 __tmp153504))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp153503)))
                                              (__tmp153499
                                               (let ((__tmp153500
                                                      (let ((__tmp153501
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj152473_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp153501))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153500 '()))))
                                          (declare (not safe))
                                          (cons __tmp153502 __tmp153499))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp153498))))
                            (declare (not safe))
                            (cons __tmp153497 '()))))
                     (declare (not safe))
                     (cons __tmp153509 __tmp153496))))
              (declare (not safe))
              (cons '%#let-values __tmp153495))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp153494
                                                _stx152437_)))))
                                      (let* ((_g152480152520_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       ___stx153046153047_))
                                                    (___kont153050153051_)
                                                    (___kont153052153053_))))
                                             (___match153083153084_
                                              (lambda (_e152489152525_
                                                       _hd152488152528_
                                                       _tl152487152530_
                                                       _e152492152533_
                                                       _hd152491152536_
                                                       _tl152490152538_
                                                       _e152495152541_
                                                       _hd152494152544_
                                                       _tl152493152546_
                                                       _e152498152549_
                                                       _hd152497152552_
                                                       _tl152496152554_)
                                                (let ((_L152557_
                                                       _tl152496152554_)
                                                      (_L152558_
                                                       _hd152497152552_)
                                                      (_L152559_
                                                       _hd152494152544_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-keyword?
                                                         _L152559_))
                                                      (___kont153048153049_
                                                       _L152557_
                                                       _L152558_
                                                       _L152559_)
                                                      (___kont153052153053_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               ___stx153046153047_))
                                            (let ((_e152489152525_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      ___stx153046153047_))))
                                              (let ((_tl152487152530_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e152489152525_)))
                                                    (_hd152488152528_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e152489152525_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd152488152528_))
                                                    (let ((_e152492152533_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd152488152528_))))
                                                      (let ((_tl152490152538_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e152492152533_)))
                    (_hd152491152536_
                     (let () (declare (not safe)) (##car _e152492152533_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd152491152536_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd152491152536_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl152490152538_))
                            (let ((_e152495152541_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl152490152538_))))
                              (let ((_tl152493152546_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e152495152541_)))
                                    (_hd152494152544_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e152495152541_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl152493152546_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl152487152530_))
                                        (let ((_e152498152549_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl152487152530_))))
                                          (let ((_tl152496152554_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e152498152549_)))
                                                (_hd152497152552_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e152498152549_))))
                                            (___match153083153084_
                                             _e152489152525_
                                             _hd152488152528_
                                             _tl152487152530_
                                             _e152492152533_
                                             _hd152491152536_
                                             _tl152490152538_
                                             _e152495152541_
                                             _hd152494152544_
                                             _tl152493152546_
                                             _e152498152549_
                                             _hd152497152552_
                                             _tl152496152554_)))
                                        (___kont153052153053_))
                                    (___kont153052153053_))))
                            (___kont153052153053_))
                        (___kont153052153053_))
                    (___kont153052153053_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont153052153053_))))
                                            (let ()
                                              (declare (not safe))
                                              (_g152480152520_))))))))))))))))))
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
      (lambda (_self152257_ _ctx152258_ _stx152259_ _args152260_)
        (let* ((_g152262152272_
                (lambda (_g152263152269_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g152263152269_))))
               (_g152261152310_
                (lambda (_g152263152275_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g152263152275_))
                      (let ((_e152267152277_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g152263152275_))))
                        (let ((_hd152266152280_
                               (let ()
                                 (declare (not safe))
                                 (##car _e152267152277_)))
                              (_tl152265152282_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e152267152277_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl152265152282_))
                              ((lambda (_L152285_)
                                 (let* ((_klass152296_
                                         (let ((__tmp153635
                                                (##structure-ref
                                                 _self152257_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx152259_
                                            __tmp153635)))
                                        (_field152298_
                                         (let ((__tmp153636
                                                (##structure-ref
                                                 _self152257_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass152296_
                                            __tmp153636)))
                                        (_object152300_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _ctx152258_
                                            _L152285_))))
                                   (if (##structure-ref
                                        _klass152296_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp153713
                                              (let ((__tmp153722
                                                     (if (##structure-ref
                                                          _self152257_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp153714
                                                     (let ((__tmp153719
                                                            (let ((__tmp153720
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153721
                                  (##structure-ref
                                   _self152257_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp153721 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp153720)))
                   (__tmp153715
                    (let ((__tmp153717
                           (let ((__tmp153718
                                  (let ()
                                    (declare (not safe))
                                    (cons _field152298_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp153718)))
                          (__tmp153716
                           (let ()
                             (declare (not safe))
                             (cons _object152300_ '()))))
                      (declare (not safe))
                      (cons __tmp153717 __tmp153716))))
               (declare (not safe))
               (cons __tmp153719 __tmp153715))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp153722
                                                      __tmp153714))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp153713
                                          _stx152259_))
                                       (if (##structure-ref
                                            _klass152296_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp153703
                                                  (let ((__tmp153712
                                                         (if (##structure-ref
                                                              _self152257_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp153704
                                                         (let ((__tmp153709
                                                                (let ((__tmp153710
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp153711
                                      (##structure-ref
                                       _self152257_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp153711 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp153710)))
                       (__tmp153705
                        (let ((__tmp153707
                               (let ((__tmp153708
                                      (let ()
                                        (declare (not safe))
                                        (cons _field152298_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp153708)))
                              (__tmp153706
                               (let ()
                                 (declare (not safe))
                                 (cons _object152300_ '()))))
                          (declare (not safe))
                          (cons __tmp153707 __tmp153706))))
                   (declare (not safe))
                   (cons __tmp153709 __tmp153705))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp153712
                                                          __tmp153704))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp153703
                                              _stx152259_))
                                           (let ((_$e152303_
                                                  (let ((__tmp153637
                                                         (##structure-ref
                                                          _self152257_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass152296_
                                                     __tmp153637))))
                                             (if _$e152303_
                                                 ((lambda (_klass152306_)
                                                    (let ((__tmp153693
                                                           (let ((__tmp153702
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self152257_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp153694
                          (let ((__tmp153699
                                 (let ((__tmp153700
                                        (let ((__tmp153701
                                               (##structure-ref
                                                _self152257_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp153701 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp153700)))
                                (__tmp153695
                                 (let ((__tmp153697
                                        (let ((__tmp153698
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field152298_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp153698)))
                                       (__tmp153696
                                        (let ()
                                          (declare (not safe))
                                          (cons _object152300_ '()))))
                                   (declare (not safe))
                                   (cons __tmp153697 __tmp153696))))
                            (declare (not safe))
                            (cons __tmp153699 __tmp153695))))
                     (declare (not safe))
                     (cons __tmp153702 __tmp153694))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp153693 _stx152259_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e152303_)
                                                 (if (##structure-ref
                                                      _self152257_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp153647
                                                            (let* ((_$obj152308_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp153648 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp153648)))
                           (__tmp153649
                            (let ((__tmp153689
                                   (let ((__tmp153690
                                          (let ((__tmp153692
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj152308_ '())))
                                                (__tmp153691
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object152300_ '()))))
                                            (declare (not safe))
                                            (cons __tmp153692 __tmp153691))))
                                     (declare (not safe))
                                     (cons __tmp153690 '())))
                                  (__tmp153650
                                   (let ((__tmp153651
                                          (let ((__tmp153652
                                                 (let ((__tmp153681
                                                        (let ((__tmp153682
                                                               (let ((__tmp153686
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153687
                                     (let ((__tmp153688
                                            (##structure-ref
                                             _klass152296_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp153688 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp153687)))
                             (__tmp153683
                              (let ((__tmp153684
                                     (let ((__tmp153685
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj152308_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153685))))
                                (declare (not safe))
                                (cons __tmp153684 '()))))
                         (declare (not safe))
                         (cons __tmp153686 __tmp153683))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp153682)))
               (__tmp153653
                (let ((__tmp153670
                       (let ((__tmp153671
                              (let ((__tmp153678
                                     (let ((__tmp153679
                                            (let ((__tmp153680
                                                   (##structure-ref
                                                    _self152257_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp153680 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153679)))
                                    (__tmp153672
                                     (let ((__tmp153676
                                            (let ((__tmp153677
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field152298_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp153677)))
                                           (__tmp153673
                                            (let ((__tmp153674
                                                   (let ((__tmp153675
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj152308_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153675))))
                                              (declare (not safe))
                                              (cons __tmp153674 '()))))
                                       (declare (not safe))
                                       (cons __tmp153676 __tmp153673))))
                                (declare (not safe))
                                (cons __tmp153678 __tmp153672))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp153671)))
                      (__tmp153654
                       (let ((__tmp153655
                              (let ((__tmp153656
                                     (let ((__tmp153668
                                            (let ((__tmp153669
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp153669)))
                                           (__tmp153657
                                            (let ((__tmp153665
                                                   (let ((__tmp153666
                                                          (let ((__tmp153667
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self152257_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp153667 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153666)))
                                                  (__tmp153658
                                                   (let ((__tmp153663
                                                          (let ((__tmp153664
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj152308_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp153664)))
                 (__tmp153659
                  (let ((__tmp153660
                         (let ((__tmp153661
                                (let ((__tmp153662
                                       (##structure-ref
                                        _self152257_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp153662 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp153661))))
                    (declare (not safe))
                    (cons __tmp153660 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153663
                                                           __tmp153659))))
                                              (declare (not safe))
                                              (cons __tmp153665 __tmp153658))))
                                       (declare (not safe))
                                       (cons __tmp153668 __tmp153657))))
                                (declare (not safe))
                                (cons '%#call __tmp153656))))
                         (declare (not safe))
                         (cons __tmp153655 '()))))
                  (declare (not safe))
                  (cons __tmp153670 __tmp153654))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153681
                                                         __tmp153653))))
                                            (declare (not safe))
                                            (cons '%#if __tmp153652))))
                                     (declare (not safe))
                                     (cons __tmp153651 '()))))
                              (declare (not safe))
                              (cons __tmp153689 __tmp153650))))
                      (declare (not safe))
                      (cons '%#let-values __tmp153649))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp153647 _stx152259_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp153638
                                                            (let ((__tmp153639
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153645
                                  (let ((__tmp153646
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp153646)))
                                 (__tmp153640
                                  (let ((__tmp153641
                                         (let ((__tmp153642
                                                (let ((__tmp153643
                                                       (let ((__tmp153644
                                                              (##structure-ref
                                                               _self152257_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp153644
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp153643))))
                                           (declare (not safe))
                                           (cons __tmp153642 '()))))
                                    (declare (not safe))
                                    (cons _object152300_ __tmp153641))))
                             (declare (not safe))
                             (cons __tmp153645 __tmp153640))))
                      (declare (not safe))
                      (cons '%#call __tmp153639))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp153638 _stx152259_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd152266152280_)
                              (let ()
                                (declare (not safe))
                                (_g152262152272_ _g152263152275_)))))
                      (let ()
                        (declare (not safe))
                        (_g152262152272_ _g152263152275_))))))
          (declare (not safe))
          (_g152261152310_ _args152260_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass152931 __method-table152932)
        (let ((__checked?152933
               (let ((__slot152936
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152931 'checked?))))
                 (if __slot152936
                     __slot152936
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__id152934
               (let ((__slot152937
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152931 'id))))
                 (if __slot152937
                     __slot152937
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__slot152935
               (let ((__slot152938
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152931 'slot))))
                 (if __slot152938
                     __slot152938
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self152257_ _ctx152258_ _stx152259_ _args152260_)
            (let* ((_g152262152272_
                    (lambda (_g152263152269_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g152263152269_))))
                   (_g152261152310_
                    (lambda (_g152263152275_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g152263152275_))
                          (let ((_e152267152277_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g152263152275_))))
                            (let ((_hd152266152280_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e152267152277_)))
                                  (_tl152265152282_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e152267152277_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl152265152282_))
                                  ((lambda (_L152285_)
                                     (let* ((_klass152296_
                                             (let ((__tmp153723
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self152257_
                                                       __id152934
                                                       __klass152931
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx152259_
                                                __tmp153723)))
                                            (_field152298_
                                             (let ((__tmp153724
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self152257_
                                                       __slot152935
                                                       __klass152931
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass152296_
                                                __tmp153724)))
                                            (_object152300_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _ctx152258_
                                                _L152285_))))
                                       (if (##structure-ref
                                            _klass152296_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp153801
                                                  (let ((__tmp153810
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self152257_
                        __checked?152933
                        __klass152931
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp153802
                 (let ((__tmp153807
                        (let ((__tmp153808
                               (let ((__tmp153809
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self152257_
                                         __id152934
                                         __klass152931
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp153809 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp153808)))
                       (__tmp153803
                        (let ((__tmp153805
                               (let ((__tmp153806
                                      (let ()
                                        (declare (not safe))
                                        (cons _field152298_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp153806)))
                              (__tmp153804
                               (let ()
                                 (declare (not safe))
                                 (cons _object152300_ '()))))
                          (declare (not safe))
                          (cons __tmp153805 __tmp153804))))
                   (declare (not safe))
                   (cons __tmp153807 __tmp153803))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp153810
                                                          __tmp153802))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp153801
                                              _stx152259_))
                                           (if (##structure-ref
                                                _klass152296_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp153791
                                                      (let ((__tmp153800
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self152257_
                            __checked?152933
                            __klass152931
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp153792
                     (let ((__tmp153797
                            (let ((__tmp153798
                                   (let ((__tmp153799
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self152257_
                                             __id152934
                                             __klass152931
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp153799 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp153798)))
                           (__tmp153793
                            (let ((__tmp153795
                                   (let ((__tmp153796
                                          (let ()
                                            (declare (not safe))
                                            (cons _field152298_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp153796)))
                                  (__tmp153794
                                   (let ()
                                     (declare (not safe))
                                     (cons _object152300_ '()))))
                              (declare (not safe))
                              (cons __tmp153795 __tmp153794))))
                       (declare (not safe))
                       (cons __tmp153797 __tmp153793))))
                (declare (not safe))
                (cons __tmp153800 __tmp153792))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp153791
                                                  _stx152259_))
                                               (let ((_$e152303_
                                                      (let ((__tmp153725
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self152257_
                        __slot152935
                        __klass152931
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass152296_ __tmp153725))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e152303_
                                                     ((lambda (_klass152306_)
                                                        (let ((__tmp153781
                                                               (let ((__tmp153790
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self152257_
                                     __checked?152933
                                     __klass152931
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp153782
                              (let ((__tmp153787
                                     (let ((__tmp153788
                                            (let ((__tmp153789
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self152257_
                                                      __id152934
                                                      __klass152931
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp153789 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153788)))
                                    (__tmp153783
                                     (let ((__tmp153785
                                            (let ((__tmp153786
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field152298_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp153786)))
                                           (__tmp153784
                                            (let ()
                                              (declare (not safe))
                                              (cons _object152300_ '()))))
                                       (declare (not safe))
                                       (cons __tmp153785 __tmp153784))))
                                (declare (not safe))
                                (cons __tmp153787 __tmp153783))))
                         (declare (not safe))
                         (cons __tmp153790 __tmp153782))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp153781 _stx152259_)))
              _$e152303_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self152257_
                                                            __checked?152933
                                                            __klass152931
                                                            '#f))
                                                         (let ((__tmp153735
                                                                (let* ((_$obj152308_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp153736 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp153736)))
                               (__tmp153737
                                (let ((__tmp153777
                                       (let ((__tmp153778
                                              (let ((__tmp153780
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj152308_
                                                             '())))
                                                    (__tmp153779
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object152300_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp153780
                                                      __tmp153779))))
                                         (declare (not safe))
                                         (cons __tmp153778 '())))
                                      (__tmp153738
                                       (let ((__tmp153739
                                              (let ((__tmp153740
                                                     (let ((__tmp153769
                                                            (let ((__tmp153770
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153774
                                  (let ((__tmp153775
                                         (let ((__tmp153776
                                                (##structure-ref
                                                 _klass152296_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp153776 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp153775)))
                                 (__tmp153771
                                  (let ((__tmp153772
                                         (let ((__tmp153773
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj152308_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153773))))
                                    (declare (not safe))
                                    (cons __tmp153772 '()))))
                             (declare (not safe))
                             (cons __tmp153774 __tmp153771))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp153770)))
                   (__tmp153741
                    (let ((__tmp153758
                           (let ((__tmp153759
                                  (let ((__tmp153766
                                         (let ((__tmp153767
                                                (let ((__tmp153768
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self152257_
                                                          __id152934
                                                          __klass152931
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp153768 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153767)))
                                        (__tmp153760
                                         (let ((__tmp153764
                                                (let ((__tmp153765
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field152298_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp153765)))
                                               (__tmp153761
                                                (let ((__tmp153762
                                                       (let ((__tmp153763
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj152308_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153763))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153762 '()))))
                                           (declare (not safe))
                                           (cons __tmp153764 __tmp153761))))
                                    (declare (not safe))
                                    (cons __tmp153766 __tmp153760))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp153759)))
                          (__tmp153742
                           (let ((__tmp153743
                                  (let ((__tmp153744
                                         (let ((__tmp153756
                                                (let ((__tmp153757
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp153757)))
                                               (__tmp153745
                                                (let ((__tmp153753
                                                       (let ((__tmp153754
                                                              (let ((__tmp153755
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self152257_
                                __id152934
                                __klass152931
                                '#f))))
                        (declare (not safe))
                        (cons __tmp153755 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153754)))
              (__tmp153746
               (let ((__tmp153751
                      (let ((__tmp153752
                             (let ()
                               (declare (not safe))
                               (cons _$obj152308_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp153752)))
                     (__tmp153747
                      (let ((__tmp153748
                             (let ((__tmp153749
                                    (let ((__tmp153750
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self152257_
                                              __slot152935
                                              __klass152931
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp153750 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp153749))))
                        (declare (not safe))
                        (cons __tmp153748 '()))))
                 (declare (not safe))
                 (cons __tmp153751 __tmp153747))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153753
                                                        __tmp153746))))
                                           (declare (not safe))
                                           (cons __tmp153756 __tmp153745))))
                                    (declare (not safe))
                                    (cons '%#call __tmp153744))))
                             (declare (not safe))
                             (cons __tmp153743 '()))))
                      (declare (not safe))
                      (cons __tmp153758 __tmp153742))))
               (declare (not safe))
               (cons __tmp153769 __tmp153741))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp153740))))
                                         (declare (not safe))
                                         (cons __tmp153739 '()))))
                                  (declare (not safe))
                                  (cons __tmp153777 __tmp153738))))
                          (declare (not safe))
                          (cons '%#let-values __tmp153737))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp153735 _stx152259_))
                 (let ((__tmp153726
                        (let ((__tmp153727
                               (let ((__tmp153733
                                      (let ((__tmp153734
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp153734)))
                                     (__tmp153728
                                      (let ((__tmp153729
                                             (let ((__tmp153730
                                                    (let ((__tmp153731
                                                           (let ((__tmp153732
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self152257_
                             __slot152935
                             __klass152931
                             '#f))))
                     (declare (not safe))
                     (cons __tmp153732 '()))))
              (declare (not safe))
              (cons '%#quote __tmp153731))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153730 '()))))
                                        (declare (not safe))
                                        (cons _object152300_ __tmp153729))))
                                 (declare (not safe))
                                 (cons __tmp153733 __tmp153728))))
                          (declare (not safe))
                          (cons '%#call __tmp153727))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp153726 _stx152259_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd152266152280_)
                                  (let ()
                                    (declare (not safe))
                                    (_g152262152272_ _g152263152275_)))))
                          (let ()
                            (declare (not safe))
                            (_g152262152272_ _g152263152275_))))))
              (declare (not safe))
              (_g152261152310_ _args152260_))))))
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
      (lambda (_self152061_ _ctx152062_ _stx152063_ _args152064_)
        (let* ((_g152066152080_
                (lambda (_g152067152077_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g152067152077_))))
               (_g152065152132_
                (lambda (_g152067152083_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g152067152083_))
                      (let ((_e152072152085_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g152067152083_))))
                        (let ((_hd152071152088_
                               (let ()
                                 (declare (not safe))
                                 (##car _e152072152085_)))
                              (_tl152070152090_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e152072152085_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl152070152090_))
                              (let ((_e152075152093_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl152070152090_))))
                                (let ((_hd152074152096_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e152075152093_)))
                                      (_tl152073152098_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e152075152093_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl152073152098_))
                                      ((lambda (_L152101_ _L152102_)
                                         (let* ((_klass152116_
                                                 (let ((__tmp153811
                                                        (##structure-ref
                                                         _self152061_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx152063_
                                                    __tmp153811)))
                                                (_field152118_
                                                 (let ((__tmp153812
                                                        (##structure-ref
                                                         _self152061_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass152116_
                                                    __tmp153812)))
                                                (_object152120_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _ctx152062_
                                                    _L152102_)))
                                                (_value152122_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _ctx152062_
                                                    _L152101_))))
                                           (if (##structure-ref
                                                _klass152116_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp153894
                                                      (let ((__tmp153904
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self152061_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp153895
                     (let ((__tmp153901
                            (let ((__tmp153902
                                   (let ((__tmp153903
                                          (##structure-ref
                                           _self152061_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp153903 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp153902)))
                           (__tmp153896
                            (let ((__tmp153899
                                   (let ((__tmp153900
                                          (let ()
                                            (declare (not safe))
                                            (cons _field152118_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp153900)))
                                  (__tmp153897
                                   (let ((__tmp153898
                                          (let ()
                                            (declare (not safe))
                                            (cons _value152122_ '()))))
                                     (declare (not safe))
                                     (cons _object152120_ __tmp153898))))
                              (declare (not safe))
                              (cons __tmp153899 __tmp153897))))
                       (declare (not safe))
                       (cons __tmp153901 __tmp153896))))
                (declare (not safe))
                (cons __tmp153904 __tmp153895))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp153894
                                                  _stx152063_))
                                               (if (##structure-ref
                                                    _klass152116_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp153883
                                                          (let ((__tmp153893
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self152061_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp153884
                         (let ((__tmp153890
                                (let ((__tmp153891
                                       (let ((__tmp153892
                                              (##structure-ref
                                               _self152061_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp153892 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp153891)))
                               (__tmp153885
                                (let ((__tmp153888
                                       (let ((__tmp153889
                                              (let ()
                                                (declare (not safe))
                                                (cons _field152118_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp153889)))
                                      (__tmp153886
                                       (let ((__tmp153887
                                              (let ()
                                                (declare (not safe))
                                                (cons _value152122_ '()))))
                                         (declare (not safe))
                                         (cons _object152120_ __tmp153887))))
                                  (declare (not safe))
                                  (cons __tmp153888 __tmp153886))))
                           (declare (not safe))
                           (cons __tmp153890 __tmp153885))))
                    (declare (not safe))
                    (cons __tmp153893 __tmp153884))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp153883
                                                      _stx152063_))
                                                   (let ((_$e152125_
                                                          (let ((__tmp153813
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self152061_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass152116_ __tmp153813))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e152125_
                                                         ((lambda (_klass152128_)
                                                            (let ((__tmp153872
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153882
                                  (if (##structure-ref
                                       _self152061_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp153873
                                  (let ((__tmp153879
                                         (let ((__tmp153880
                                                (let ((__tmp153881
                                                       (##structure-ref
                                                        _self152061_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp153881 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153880)))
                                        (__tmp153874
                                         (let ((__tmp153877
                                                (let ((__tmp153878
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field152118_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp153878)))
                                               (__tmp153875
                                                (let ((__tmp153876
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value152122_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object152120_
                                                        __tmp153876))))
                                           (declare (not safe))
                                           (cons __tmp153877 __tmp153875))))
                                    (declare (not safe))
                                    (cons __tmp153879 __tmp153874))))
                             (declare (not safe))
                             (cons __tmp153882 __tmp153873))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp153872 _stx152063_)))
                  _$e152125_)
                 (if (##structure-ref _self152061_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp153824
                            (let* ((_$obj152130_
                                    (let ((__tmp153825 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp153825)))
                                   (__tmp153826
                                    (let ((__tmp153868
                                           (let ((__tmp153869
                                                  (let ((__tmp153871
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj152130_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp153870
                 (let () (declare (not safe)) (cons _object152120_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp153871
                                                          __tmp153870))))
                                             (declare (not safe))
                                             (cons __tmp153869 '())))
                                          (__tmp153827
                                           (let ((__tmp153828
                                                  (let ((__tmp153829
                                                         (let ((__tmp153860
                                                                (let ((__tmp153861
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp153865
                                      (let ((__tmp153866
                                             (let ((__tmp153867
                                                    (##structure-ref
                                                     _klass152116_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp153867 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp153866)))
                                     (__tmp153862
                                      (let ((__tmp153863
                                             (let ((__tmp153864
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj152130_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp153864))))
                                        (declare (not safe))
                                        (cons __tmp153863 '()))))
                                 (declare (not safe))
                                 (cons __tmp153865 __tmp153862))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp153861)))
                       (__tmp153830
                        (let ((__tmp153848
                               (let ((__tmp153849
                                      (let ((__tmp153857
                                             (let ((__tmp153858
                                                    (let ((__tmp153859
                                                           (##structure-ref
                                                            _self152061_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp153859 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp153858)))
                                            (__tmp153850
                                             (let ((__tmp153855
                                                    (let ((__tmp153856
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field152118_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp153856)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp153851
                                                    (let ((__tmp153853
                                                           (let ((__tmp153854
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj152130_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp153854)))
                  (__tmp153852
                   (let () (declare (not safe)) (cons _value152122_ '()))))
              (declare (not safe))
              (cons __tmp153853 __tmp153852))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153855
                                                     __tmp153851))))
                                        (declare (not safe))
                                        (cons __tmp153857 __tmp153850))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp153849)))
                              (__tmp153831
                               (let ((__tmp153832
                                      (let ((__tmp153833
                                             (let ((__tmp153846
                                                    (let ((__tmp153847
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp153847)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp153834
                                                    (let ((__tmp153843
                                                           (let ((__tmp153844
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp153845
                                 (##structure-ref
                                  _self152061_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp153845 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp153844)))
                  (__tmp153835
                   (let ((__tmp153841
                          (let ((__tmp153842
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj152130_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp153842)))
                         (__tmp153836
                          (let ((__tmp153838
                                 (let ((__tmp153839
                                        (let ((__tmp153840
                                               (##structure-ref
                                                _self152061_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp153840 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp153839)))
                                (__tmp153837
                                 (let ()
                                   (declare (not safe))
                                   (cons _value152122_ '()))))
                            (declare (not safe))
                            (cons __tmp153838 __tmp153837))))
                     (declare (not safe))
                     (cons __tmp153841 __tmp153836))))
              (declare (not safe))
              (cons __tmp153843 __tmp153835))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153846
                                                     __tmp153834))))
                                        (declare (not safe))
                                        (cons '%#call __tmp153833))))
                                 (declare (not safe))
                                 (cons __tmp153832 '()))))
                          (declare (not safe))
                          (cons __tmp153848 __tmp153831))))
                   (declare (not safe))
                   (cons __tmp153860 __tmp153830))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp153829))))
                                             (declare (not safe))
                                             (cons __tmp153828 '()))))
                                      (declare (not safe))
                                      (cons __tmp153868 __tmp153827))))
                              (declare (not safe))
                              (cons '%#let-values __tmp153826))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp153824 _stx152063_))
                     (let ((__tmp153814
                            (let ((__tmp153815
                                   (let ((__tmp153822
                                          (let ((__tmp153823
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp153823)))
                                         (__tmp153816
                                          (let ((__tmp153817
                                                 (let ((__tmp153819
                                                        (let ((__tmp153820
                                                               (let ((__tmp153821
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self152061_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp153821 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp153820)))
               (__tmp153818
                (let () (declare (not safe)) (cons _value152122_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153819
                                                         __tmp153818))))
                                            (declare (not safe))
                                            (cons _object152120_
                                                  __tmp153817))))
                                     (declare (not safe))
                                     (cons __tmp153822 __tmp153816))))
                              (declare (not safe))
                              (cons '%#call __tmp153815))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp153814 _stx152063_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd152074152096_
                                       _hd152071152088_)
                                      (let ()
                                        (declare (not safe))
                                        (_g152066152080_ _g152067152083_)))))
                              (let ()
                                (declare (not safe))
                                (_g152066152080_ _g152067152083_)))))
                      (let ()
                        (declare (not safe))
                        (_g152066152080_ _g152067152083_))))))
          (declare (not safe))
          (_g152065152132_ _args152064_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass152939 __method-table152940)
        (let ((__checked?152941
               (let ((__slot152944
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152939 'checked?))))
                 (if __slot152944
                     __slot152944
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__id152942
               (let ((__slot152945
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152939 'id))))
                 (if __slot152945
                     __slot152945
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__slot152943
               (let ((__slot152946
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152939 'slot))))
                 (if __slot152946
                     __slot152946
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self152061_ _ctx152062_ _stx152063_ _args152064_)
            (let* ((_g152066152080_
                    (lambda (_g152067152077_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g152067152077_))))
                   (_g152065152132_
                    (lambda (_g152067152083_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g152067152083_))
                          (let ((_e152072152085_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g152067152083_))))
                            (let ((_hd152071152088_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e152072152085_)))
                                  (_tl152070152090_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e152072152085_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl152070152090_))
                                  (let ((_e152075152093_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl152070152090_))))
                                    (let ((_hd152074152096_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e152075152093_)))
                                          (_tl152073152098_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e152075152093_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl152073152098_))
                                          ((lambda (_L152101_ _L152102_)
                                             (let* ((_klass152116_
                                                     (let ((__tmp153905
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self152061_
                                                               __id152942
                                                               __klass152939
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx152063_
                                                        __tmp153905)))
                                                    (_field152118_
                                                     (let ((__tmp153906
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self152061_
                                                               __slot152943
                                                               __klass152939
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass152116_
                                                        __tmp153906)))
                                                    (_object152120_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _ctx152062_
                                                        _L152102_)))
                                                    (_value152122_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _ctx152062_
                                                        _L152101_))))
                                               (if (##structure-ref
                                                    _klass152116_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp153988
                                                          (let ((__tmp153998
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self152061_
                                __checked?152941
                                __klass152939
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp153989
                         (let ((__tmp153995
                                (let ((__tmp153996
                                       (let ((__tmp153997
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self152061_
                                                 __id152942
                                                 __klass152939
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp153997 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp153996)))
                               (__tmp153990
                                (let ((__tmp153993
                                       (let ((__tmp153994
                                              (let ()
                                                (declare (not safe))
                                                (cons _field152118_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp153994)))
                                      (__tmp153991
                                       (let ((__tmp153992
                                              (let ()
                                                (declare (not safe))
                                                (cons _value152122_ '()))))
                                         (declare (not safe))
                                         (cons _object152120_ __tmp153992))))
                                  (declare (not safe))
                                  (cons __tmp153993 __tmp153991))))
                           (declare (not safe))
                           (cons __tmp153995 __tmp153990))))
                    (declare (not safe))
                    (cons __tmp153998 __tmp153989))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp153988
                                                      _stx152063_))
                                                   (if (##structure-ref
                                                        _klass152116_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp153977
                                                              (let ((__tmp153987
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self152061_
                                    __checked?152941
                                    __klass152939
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp153978
                             (let ((__tmp153984
                                    (let ((__tmp153985
                                           (let ((__tmp153986
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self152061_
                                                     __id152942
                                                     __klass152939
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp153986 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp153985)))
                                   (__tmp153979
                                    (let ((__tmp153982
                                           (let ((__tmp153983
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field152118_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp153983)))
                                          (__tmp153980
                                           (let ((__tmp153981
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value152122_ '()))))
                                             (declare (not safe))
                                             (cons _object152120_
                                                   __tmp153981))))
                                      (declare (not safe))
                                      (cons __tmp153982 __tmp153980))))
                               (declare (not safe))
                               (cons __tmp153984 __tmp153979))))
                        (declare (not safe))
                        (cons __tmp153987 __tmp153978))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp153977 _stx152063_))
               (let ((_$e152125_
                      (let ((__tmp153907
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self152061_
                                __slot152943
                                __klass152939
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass152116_
                         __tmp153907))))
                 (if _$e152125_
                     ((lambda (_klass152128_)
                        (let ((__tmp153966
                               (let ((__tmp153976
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self152061_
                                             __checked?152941
                                             __klass152939
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp153967
                                      (let ((__tmp153973
                                             (let ((__tmp153974
                                                    (let ((__tmp153975
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self152061_
                                                              __id152942
                                                              __klass152939
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp153975 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp153974)))
                                            (__tmp153968
                                             (let ((__tmp153971
                                                    (let ((__tmp153972
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field152118_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp153972)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp153969
                                                    (let ((__tmp153970
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value152122_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object152120_ __tmp153970))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153971
                                                     __tmp153969))))
                                        (declare (not safe))
                                        (cons __tmp153973 __tmp153968))))
                                 (declare (not safe))
                                 (cons __tmp153976 __tmp153967))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp153966 _stx152063_)))
                      _$e152125_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self152061_
                            __checked?152941
                            __klass152939
                            '#f))
                         (let ((__tmp153918
                                (let* ((_$obj152130_
                                        (let ((__tmp153919 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp153919)))
                                       (__tmp153920
                                        (let ((__tmp153962
                                               (let ((__tmp153963
                                                      (let ((__tmp153965
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj152130_ '())))
                    (__tmp153964
                     (let () (declare (not safe)) (cons _object152120_ '()))))
                (declare (not safe))
                (cons __tmp153965 __tmp153964))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153963 '())))
                                              (__tmp153921
                                               (let ((__tmp153922
                                                      (let ((__tmp153923
                                                             (let ((__tmp153954
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp153955
                                   (let ((__tmp153959
                                          (let ((__tmp153960
                                                 (let ((__tmp153961
                                                        (##structure-ref
                                                         _klass152116_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp153961 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp153960)))
                                         (__tmp153956
                                          (let ((__tmp153957
                                                 (let ((__tmp153958
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj152130_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp153958))))
                                            (declare (not safe))
                                            (cons __tmp153957 '()))))
                                     (declare (not safe))
                                     (cons __tmp153959 __tmp153956))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp153955)))
                           (__tmp153924
                            (let ((__tmp153942
                                   (let ((__tmp153943
                                          (let ((__tmp153951
                                                 (let ((__tmp153952
                                                        (let ((__tmp153953
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self152061_
                          __id152942
                          __klass152939
                          '#f))))
                  (declare (not safe))
                  (cons __tmp153953 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp153952)))
                                                (__tmp153944
                                                 (let ((__tmp153949
                                                        (let ((__tmp153950
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field152118_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp153950)))
               (__tmp153945
                (let ((__tmp153947
                       (let ((__tmp153948
                              (let ()
                                (declare (not safe))
                                (cons _$obj152130_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp153948)))
                      (__tmp153946
                       (let () (declare (not safe)) (cons _value152122_ '()))))
                  (declare (not safe))
                  (cons __tmp153947 __tmp153946))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153949
                                                         __tmp153945))))
                                            (declare (not safe))
                                            (cons __tmp153951 __tmp153944))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp153943)))
                                  (__tmp153925
                                   (let ((__tmp153926
                                          (let ((__tmp153927
                                                 (let ((__tmp153940
                                                        (let ((__tmp153941
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp153941)))
               (__tmp153928
                (let ((__tmp153937
                       (let ((__tmp153938
                              (let ((__tmp153939
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self152061_
                                        __id152942
                                        __klass152939
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp153939 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp153938)))
                      (__tmp153929
                       (let ((__tmp153935
                              (let ((__tmp153936
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj152130_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp153936)))
                             (__tmp153930
                              (let ((__tmp153932
                                     (let ((__tmp153933
                                            (let ((__tmp153934
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self152061_
                                                      __slot152943
                                                      __klass152939
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp153934 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp153933)))
                                    (__tmp153931
                                     (let ()
                                       (declare (not safe))
                                       (cons _value152122_ '()))))
                                (declare (not safe))
                                (cons __tmp153932 __tmp153931))))
                         (declare (not safe))
                         (cons __tmp153935 __tmp153930))))
                  (declare (not safe))
                  (cons __tmp153937 __tmp153929))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153940
                                                         __tmp153928))))
                                            (declare (not safe))
                                            (cons '%#call __tmp153927))))
                                     (declare (not safe))
                                     (cons __tmp153926 '()))))
                              (declare (not safe))
                              (cons __tmp153942 __tmp153925))))
                       (declare (not safe))
                       (cons __tmp153954 __tmp153924))))
                (declare (not safe))
                (cons '%#if __tmp153923))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153922 '()))))
                                          (declare (not safe))
                                          (cons __tmp153962 __tmp153921))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp153920))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp153918 _stx152063_))
                         (let ((__tmp153908
                                (let ((__tmp153909
                                       (let ((__tmp153916
                                              (let ((__tmp153917
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp153917)))
                                             (__tmp153910
                                              (let ((__tmp153911
                                                     (let ((__tmp153913
                                                            (let ((__tmp153914
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153915
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self152061_
                                     __slot152943
                                     __klass152939
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp153915 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp153914)))
                   (__tmp153912
                    (let () (declare (not safe)) (cons _value152122_ '()))))
               (declare (not safe))
               (cons __tmp153913 __tmp153912))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object152120_
                                                      __tmp153911))))
                                         (declare (not safe))
                                         (cons __tmp153916 __tmp153910))))
                                  (declare (not safe))
                                  (cons '%#call __tmp153909))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp153908
                            _stx152063_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd152074152096_
                                           _hd152071152088_)
                                          (let ()
                                            (declare (not safe))
                                            (_g152066152080_
                                             _g152067152083_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g152066152080_ _g152067152083_)))))
                          (let ()
                            (declare (not safe))
                            (_g152066152080_ _g152067152083_))))))
              (declare (not safe))
              (_g152065152132_ _args152064_))))))
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
      (lambda (_self151894_ _ctx151895_ _stx151896_ _args151897_)
        (let* ((_self151898151907_ _self151894_)
               (_E151900151911_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self151898151907_))))
               (_K151901151918_
                (lambda (_inline151914_ _dispatch151915_ _arity151916_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self151894_ _args151897_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx151896_
                         _arity151916_)))
                  (if _inline151914_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp154004
                               (let ((__tmp154005
                                      (_inline151914_ _stx151896_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp154005
                                  _stx151896_))))
                          (declare (not safe))
                          (gxc#compile-e__1 _ctx151895_ __tmp154004)))
                      (if _dispatch151915_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch151915_))
                            (let ((__tmp153999
                                   (let ((__tmp154000
                                          (let ((__tmp154001
                                                 (let ((__tmp154002
                                                        (let ((__tmp154003
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch151915_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp154003))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp154002
                                                         _args151897_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp154001))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp154000
                                      _stx151896_))))
                              (declare (not safe))
                              (gxc#compile-e__1 _ctx151895_ __tmp153999)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _ctx151895_ _stx151896_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self151898151907_ 'gxc#!lambda::t))
              (let* ((_e151902151921_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151898151907_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e151903151924_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151898151907_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity151927_ _e151903151924_)
                     (_e151904151929_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151898151907_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch151932_ _e151904151929_)
                     (_e151905151934_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151898151907_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline151937_ _e151905151934_))
                (declare (not safe))
                (_K151901151918_
                 _inline151937_
                 _dispatch151932_
                 _arity151927_))
              (let () (declare (not safe)) (_E151900151911_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self151732_ _ctx151733_ _stx151734_ _args151735_)
        (let* ((_self151736151743_ _self151732_)
               (_E151738151747_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self151736151743_))))
               (_K151739151761_
                (lambda (_clauses151750_)
                  (let ((_$e151756_
                         (let ((__tmp154006
                                (lambda (_g151751151753_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g151751151753_
                                     _args151735_)))))
                           (declare (not safe))
                           (find __tmp154006 _clauses151750_))))
                    (if _$e151756_
                        ((lambda (_clause151759_)
                           (let ((__method153217
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause151759_
                                     'optimize-call))))
                             (if __method153217
                                 (__method153217
                                  _clause151759_
                                  _ctx151733_
                                  _stx151734_
                                  _args151735_)
                                 (let ()
                                   (declare (not safe))
                                   (error '"Missing method"
                                          _clause151759_
                                          'optimize-call)))))
                         _$e151756_)
                        (let ((__tmp154007
                               (map gxc#!lambda-arity _clauses151750_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx151734_
                           __tmp154007)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self151736151743_
                 'gxc#!case-lambda::t))
              (let* ((_e151740151764_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151736151743_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e151741151767_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151736151743_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses151770_ _e151741151767_))
                (declare (not safe))
                (_K151739151761_ _clauses151770_))
              (let () (declare (not safe)) (_E151738151747_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self151546_ _args151547_)
        (let* ((_self151548151555_ _self151546_)
               (_E151550151559_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self151548151555_))))
               (_K151551151599_
                (lambda (_arity151562_)
                  (let* ((_arity151563151572_ _arity151562_)
                         (_E151566151576_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (error '"No clause matching"
                                     _arity151563151572_)))))
                    (let ((_K151570151596_
                           (lambda ()
                             (fx= (length _args151547_) _arity151562_)))
                          (_K151567151582_
                           (lambda (_arity151580_)
                             (fx>= (length _args151547_) _arity151580_))))
                      (let ((_try-match151565151592_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity151563151572_))
                                   (let ((_tl151569151587_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity151563151572_)))
                                         (_hd151568151585_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity151563151572_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl151569151587_))
                                         (let ((_arity151590_
                                                _hd151568151585_))
                                           (declare (not safe))
                                           (_K151567151582_ _arity151590_))
                                         (let ()
                                           (declare (not safe))
                                           (_E151566151576_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E151566151576_))))))
                        (if (let ()
                              (declare (not safe))
                              (fixnum? _arity151563151572_))
                            (let () (declare (not safe)) (_K151570151596_))
                            (let ()
                              (declare (not safe))
                              (_try-match151565151592_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self151548151555_ 'gxc#!lambda::t))
              (let* ((_e151552151602_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151548151555_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e151553151605_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151548151555_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity151608_ _e151553151605_))
                (declare (not safe))
                (_K151551151599_ _arity151608_))
              (let () (declare (not safe)) (_E151550151559_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self151430_ _ctx151431_ _stx151432_ _args151433_)
        (let* ((_self151434151442_ _self151430_)
               (_E151436151446_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self151434151442_))))
               (_K151437151530_
                (lambda (_dispatch151449_ _table151450_)
                  (let* ((_g151451151460_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch151449_)))
                         (_else151453151468_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch151449_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _ctx151431_ _stx151432_))))
                         (_K151455151514_
                          (lambda (_main151471_ _keys151472_)
                            (let ((_g154008_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx151432_
                                      _args151433_))))
                              (begin
                                (let ((_g154009_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g154008_)
                                             (##vector-length _g154008_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g154009_ 2)))
                                      (error "Context expects 2 values"
                                             _g154009_)))
                                (let ((_pargs151474_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g154008_ 0)))
                                      (_kwargs151475_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g154008_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main151471_))
                                    (if _table151450_
                                        (let ((_xargs151482_
                                               (map (lambda (_key151477_)
                                                      (let ((_$e151479_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__0 _key151477_ _kwargs151475_))))
                (if _$e151479_ (values _$e151479_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys151472_)))
                                          (for-each
                                           (lambda (_kw151484_)
                                             (if (memq (car _kw151484_)
                                                       _keys151472_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx151432_
                                                    _keys151472_
                                                    _kw151484_))))
                                           _kwargs151475_)
                                          (let ((__tmp154061
                                                 (let ((__tmp154062
                                                        (let ((__tmp154063
                                                               (let ((__tmp154068
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp154069
                                     (let ()
                                       (declare (not safe))
                                       (cons _main151471_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp154069)))
                             (__tmp154064
                              (let ((__tmp154066
                                     (let ((__tmp154067
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp154067)))
                                    (__tmp154065
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs151474_
                                               _xargs151482_))))
                                (declare (not safe))
                                (cons __tmp154066 __tmp154065))))
                         (declare (not safe))
                         (cons __tmp154068 __tmp154064))))
                  (declare (not safe))
                  (cons '%#call __tmp154063))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp154062
                                                    _stx151432_))))
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _ctx151431_
                                             __tmp154061)))
                                        (let* ((_kwt151486_
                                                (let ((__tmp154010
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp154010)))
                                               (_kwvars151489_
                                                (map (lambda (_g154011_)
                                                       (let ((__tmp154012
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp154012)))
                                                     _kwargs151475_))
                                               (_kwbind151494_
                                                (map (lambda (_kw151491_
                                                              _kwvar151492_)
                                                       (let ((__tmp154015
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar151492_ '())))
                     (__tmp154013
                      (let ((__tmp154014 (cdr _kw151491_)))
                        (declare (not safe))
                        (cons __tmp154014 '()))))
                 (declare (not safe))
                 (cons __tmp154015 __tmp154013)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs151475_
                                                     _kwvars151489_))
                                               (_kwset151499_
                                                (map (lambda (_kw151496_
                                                              _kwvar151497_)
                                                       (let ((__tmp154016
                                                              (let ((__tmp154017
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp154025
                                    (let ((__tmp154026
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt151486_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp154026)))
                                   (__tmp154018
                                    (let ((__tmp154022
                                           (let ((__tmp154023
                                                  (let ((__tmp154024
                                                         (car _kw151496_)))
                                                    (declare (not safe))
                                                    (cons __tmp154024 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp154023)))
                                          (__tmp154019
                                           (let ((__tmp154020
                                                  (let ((__tmp154021
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar151497_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp154021))))
                                             (declare (not safe))
                                             (cons __tmp154020 '()))))
                                      (declare (not safe))
                                      (cons __tmp154022 __tmp154019))))
                               (declare (not safe))
                               (cons __tmp154025 __tmp154018))))
                        (declare (not safe))
                        (cons '(%#ref symbolic-table-set!) __tmp154017))))
                 (declare (not safe))
                 (cons '%#call __tmp154016)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs151475_
                                                     _kwvars151489_))
                                               (_xkwargs151504_
                                                (map (lambda (_kw151501_
                                                              _kwvar151502_)
                                                       (let ((__tmp154029
                                                              (car _kw151501_))
                                                             (__tmp154027
                                                              (let ((__tmp154028
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar151502_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp154028))))
                 (declare (not safe))
                 (cons __tmp154029 __tmp154027)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs151475_
                                                     _kwvars151489_))
                                               (_xargs151511_
                                                (map (lambda (_key151506_)
                                                       (let ((_$e151508_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq__0 _key151506_ _xkwargs151504_))))
                 (if _$e151508_ (values _$e151508_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys151472_)))
                                          (let ((__tmp154030
                                                 (let ((__tmp154031
                                                        (let ((__tmp154032
                                                               (let ((__tmp154033
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp154034
                                     (let ((__tmp154035
                                            (let ((__tmp154049
                                                   (let ((__tmp154050
                                                          (let ((__tmp154060
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt151486_ '())))
                        (__tmp154051
                         (let ((__tmp154052
                                (let ((__tmp154053
                                       (let ((__tmp154054
                                              (let ((__tmp154055
                                                     (let ((__tmp154057
                                                            (let ((__tmp154058
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp154059 (length _kwargs151475_)))
                             (declare (not safe))
                             (cons __tmp154059 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp154058)))
                   (__tmp154056
                    (let () (declare (not safe)) (cons '(%#quote 0) '()))))
               (declare (not safe))
               (cons __tmp154057 __tmp154056))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-symbolic-table)
                                                      __tmp154055))))
                                         (declare (not safe))
                                         (cons '%#call __tmp154054))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp154053
                                   _stx151432_))))
                           (declare (not safe))
                           (cons __tmp154052 '()))))
                    (declare (not safe))
                    (cons __tmp154060 __tmp154051))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp154050 '())))
                                                  (__tmp154036
                                                   (let ((__tmp154037
                                                          (let ((__tmp154038
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp154039
                                (let ((__tmp154040
                                       (let ((__tmp154041
                                              (let ((__tmp154042
                                                     (let ((__tmp154047
                                                            (let ((__tmp154048
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main151471_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp154048)))
                   (__tmp154043
                    (let ((__tmp154045
                           (let ((__tmp154046
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt151486_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp154046)))
                          (__tmp154044
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs151474_ _xargs151511_))))
                      (declare (not safe))
                      (cons __tmp154045 __tmp154044))))
               (declare (not safe))
               (cons __tmp154047 __tmp154043))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp154042))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp154041
                                          _stx151432_))))
                                  (declare (not safe))
                                  (cons __tmp154040 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp154039 _kwset151499_))))
                    (declare (not safe))
                    (cons '%#begin __tmp154038))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp154037 '()))))
                                              (declare (not safe))
                                              (cons __tmp154049 __tmp154036))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp154035))))
                                (declare (not safe))
                                (cons __tmp154034 '()))))
                         (declare (not safe))
                         (cons _kwbind151494_ __tmp154033))))
                  (declare (not safe))
                  (cons '%#let-values __tmp154032))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp154031
                                                    _stx151432_))))
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _ctx151431_
                                             __tmp154030)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g151451151460_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e151456151517_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g151451151460_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e151457151520_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g151451151460_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys151523_ _e151457151520_)
                               (_e151458151525_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g151451151460_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main151528_ _e151458151525_))
                          (declare (not safe))
                          (_K151455151514_ _main151528_ _keys151523_))
                        (let () (declare (not safe)) (_else151453151468_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self151434151442_
                 'gxc#!kw-lambda::t))
              (let* ((_e151438151533_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151434151442_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e151439151536_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151434151442_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table151539_ _e151439151536_)
                     (_e151440151541_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151434151442_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch151544_ _e151440151541_))
                (declare (not safe))
                (_K151437151530_ _dispatch151544_ _table151539_))
              (let () (declare (not safe)) (_E151436151446_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx151043_ _args151044_)
        (let _lp151046_ ((_rest151048_ _args151044_)
                         (_pargs151049_ '())
                         (_kwargs151050_ '()))
          (let* ((___stx153097153098_ _rest151048_)
                 (_g151056151108_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx153097153098_)))))
            (let ((___kont153099153100_
                   (lambda (_L151287_ _L151288_)
                     (let ((__tmp154070
                            (let ()
                              (declare (not safe))
                              (cons _L151288_ _pargs151049_))))
                       (declare (not safe))
                       (_lp151046_ _L151287_ __tmp154070 _kwargs151050_))))
                  (___kont153101153102_
                   (lambda (_L151233_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L151233_ _pargs151049_))
                             (reverse _kwargs151050_))))
                  (___kont153103153104_
                   (lambda (_L151180_ _L151181_ _L151182_)
                     (let ((_kw151199_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L151182_))))
                       (if (assq _kw151199_ _kwargs151050_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx151043_
                              _kw151199_))
                           (let ((__tmp154071
                                  (let ((__tmp154072
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw151199_ _L151181_))))
                                    (declare (not safe))
                                    (cons __tmp154072 _kwargs151050_))))
                             (declare (not safe))
                             (_lp151046_
                              _L151180_
                              _pargs151049_
                              __tmp154071))))))
                  (___kont153105153106_
                   (lambda (_L151128_ _L151129_)
                     (let ((__tmp154073
                            (let ()
                              (declare (not safe))
                              (cons _L151129_ _pargs151049_))))
                       (declare (not safe))
                       (_lp151046_ _L151128_ __tmp154073 _kwargs151050_))))
                  (___kont153107153108_
                   (lambda ()
                     (values (reverse _pargs151049_)
                             (reverse _kwargs151050_)))))
              (let* ((_g151055151115_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx153097153098_))
                            (___kont153107153108_)
                            (let () (declare (not safe)) (_g151056151108_)))))
                     (___match153204153205_
                      (lambda (_e151089151148_
                               _hd151088151151_
                               _tl151087151153_
                               _e151092151156_
                               _hd151091151159_
                               _tl151090151161_
                               _e151095151164_
                               _hd151094151167_
                               _tl151093151169_
                               _e151098151172_
                               _hd151097151175_
                               _tl151096151177_)
                        (let ((_L151180_ _tl151096151177_)
                              (_L151181_ _hd151097151175_)
                              (_L151182_ _hd151094151167_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L151182_))
                              (___kont153103153104_
                               _L151180_
                               _L151181_
                               _L151182_)
                              (___kont153105153106_
                               _tl151087151153_
                               _hd151088151151_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx153097153098_))
                    (let ((_e151062151252_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx153097153098_))))
                      (let ((_tl151060151257_
                             (let ()
                               (declare (not safe))
                               (##cdr _e151062151252_)))
                            (_hd151061151255_
                             (let ()
                               (declare (not safe))
                               (##car _e151062151252_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd151061151255_))
                            (let ((_e151065151260_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd151061151255_))))
                              (let ((_tl151063151265_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e151065151260_)))
                                    (_hd151064151263_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e151065151260_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd151064151263_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd151064151263_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl151063151265_))
                                            (let ((_e151068151268_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl151063151265_))))
                                              (let ((_tl151066151273_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e151068151268_)))
                                                    (_hd151067151271_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e151068151268_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd151067151271_))
                                                    (let ((_e151069151276_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd151067151271_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e151069151276_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl151066151273_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl151060151257_))
                          (let ((_e151072151279_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl151060151257_))))
                            (let ((_tl151070151284_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e151072151279_)))
                                  (_hd151071151282_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e151072151279_))))
                              (___kont153099153100_
                               _tl151070151284_
                               _hd151071151282_)))
                          (___kont153105153106_
                           _tl151060151257_
                           _hd151061151255_))
                      (___kont153105153106_ _tl151060151257_ _hd151061151255_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e151069151276_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl151066151273_))
                          (___kont153101153102_ _tl151060151257_)
                          (___kont153105153106_
                           _tl151060151257_
                           _hd151061151255_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl151066151273_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl151060151257_))
                              (let ((_e151098151172_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl151060151257_))))
                                (let ((_tl151096151177_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e151098151172_)))
                                      (_hd151097151175_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e151098151172_))))
                                  (___match153204153205_
                                   _e151062151252_
                                   _hd151061151255_
                                   _tl151060151257_
                                   _e151065151260_
                                   _hd151064151263_
                                   _tl151063151265_
                                   _e151068151268_
                                   _hd151067151271_
                                   _tl151066151273_
                                   _e151098151172_
                                   _hd151097151175_
                                   _tl151096151177_)))
                              (___kont153105153106_
                               _tl151060151257_
                               _hd151061151255_))
                          (___kont153105153106_
                           _tl151060151257_
                           _hd151061151255_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl151066151273_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl151060151257_))
                                                            (let ((_e151098151172_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl151060151257_))))
                      (let ((_tl151096151177_
                             (let ()
                               (declare (not safe))
                               (##cdr _e151098151172_)))
                            (_hd151097151175_
                             (let ()
                               (declare (not safe))
                               (##car _e151098151172_))))
                        (___match153204153205_
                         _e151062151252_
                         _hd151061151255_
                         _tl151060151257_
                         _e151065151260_
                         _hd151064151263_
                         _tl151063151265_
                         _e151068151268_
                         _hd151067151271_
                         _tl151066151273_
                         _e151098151172_
                         _hd151097151175_
                         _tl151096151177_)))
                    (___kont153105153106_ _tl151060151257_ _hd151061151255_))
                (___kont153105153106_ _tl151060151257_ _hd151061151255_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont153105153106_
                                             _tl151060151257_
                                             _hd151061151255_))
                                        (___kont153105153106_
                                         _tl151060151257_
                                         _hd151061151255_))
                                    (___kont153105153106_
                                     _tl151060151257_
                                     _hd151061151255_))))
                            (___kont153105153106_
                             _tl151060151257_
                             _hd151061151255_))))
                    (let () (declare (not safe)) (_g151055151115_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self151038_ _ctx151039_ _stx151040_ _args151041_)
        (let ()
          (declare (not safe))
          (gxc#xform-call% _ctx151039_ _stx151040_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
