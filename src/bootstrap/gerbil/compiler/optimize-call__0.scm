(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1708337971)
  (begin
    (define gxc#&optimize-call
      (make-promise
       (lambda ()
         (let ((_tbl280933_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp285210 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-merge! _tbl280933_ __tmp285210))
           (let ()
             (declare (not safe))
             (hash-put! _tbl280933_ '%#call gxc#optimize-call%))
           _tbl280933_))))
    (define gxc#apply-optimize-call
      (lambda (_stx280916_ . _args280918_)
        (let ((__tmp285212
               (lambda ()
                 (declare (not safe))
                 (if (null? _args280918_)
                     (gxc#compile-e__0 _stx280916_)
                     (let ((_arg1280923_ (car _args280918_))
                           (_rest280925_ (cdr _args280918_)))
                       (if (null? _rest280925_)
                           (gxc#compile-e__1 _stx280916_ _arg1280923_)
                           (let ((_arg2280928_ (car _rest280925_))
                                 (_rest280930_ (cdr _rest280925_)))
                             (if (null? _rest280930_)
                                 (gxc#compile-e__2
                                  _stx280916_
                                  _arg1280923_
                                  _arg2280928_)
                                 (apply gxc#compile-e
                                        _stx280916_
                                        _arg1280923_
                                        _arg2280928_
                                        _rest280930_))))))))
              (__tmp285211 (force gxc#&optimize-call)))
          (declare (not safe))
          (call-with-parameters
           __tmp285212
           gxc#current-compile-methods
           __tmp285211))))
    (define gxc#optimize-call%
      (lambda (_stx280771_)
        (let* ((___stx284960284961_ _stx280771_)
               (_g280774280794_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx284960284961_)))))
          (let ((___kont284962284963_
                 (lambda (_L280838_ _L280839_)
                   (let* ((_rator-id280857_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L280839_)))
                          (_rator-type280859_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id280857_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type280859_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp285213
                                  (##structure-ref
                                   _rator-type280859_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id280857_
                              '" => "
                              _rator-type280859_
                              '" "
                              __tmp285213))
                           (let ((_optimized280862_
                                  (let ((__method285208
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type280859_
                                            'optimize-call))))
                                    (if __method285208
                                        (__method285208
                                         _rator-type280859_
                                         _stx280771_
                                         _L280838_)
                                        (let ()
                                          (declare (not safe))
                                          (error '"Missing method"
                                                 _rator-type280859_
                                                 'optimize-call))))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type280859_))
                                 _optimized280862_
                                 (let* ((___stx284942284943_ _optimized280862_)
                                        (_g280865280875_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx284942284943_)))))
                                   (let ((___kont284944284945_
                                          (lambda (_L280895_)
                                            (let ((__tmp285214
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L280895_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp285214
                                               _stx280771_))))
                                         (___kont284946284947_
                                          (lambda () _optimized280862_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx284942284943_))
                                         (let ((_e280870280887_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx284942284943_))))
                                           (let ((_tl280868280892_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e280870280887_)))
                                                 (_hd280869280890_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e280870280887_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd280869280890_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd280869280890_))
                                                     (___kont284944284945_
                                                      _tl280868280892_)
                                                     (___kont284946284947_))
                                                 (___kont284946284947_))))
                                         (___kont284946284947_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type280859_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx280771_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx280771_
                                _rator-type280859_)))))))
                (___kont284964284965_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _stx280771_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx284960284961_))
                (let ((_e280780280806_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx284960284961_))))
                  (let ((_tl280778280811_
                         (let () (declare (not safe)) (##cdr _e280780280806_)))
                        (_hd280779280809_
                         (let ()
                           (declare (not safe))
                           (##car _e280780280806_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl280778280811_))
                        (let ((_e280783280814_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl280778280811_))))
                          (let ((_tl280781280819_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e280783280814_)))
                                (_hd280782280817_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e280783280814_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd280782280817_))
                                (let ((_e280786280822_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd280782280817_))))
                                  (let ((_tl280784280827_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e280786280822_)))
                                        (_hd280785280825_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e280786280822_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd280785280825_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd280785280825_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl280784280827_))
                                                (let ((_e280789280830_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl280784280827_))))
                                                  (let ((_tl280787280835_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e280789280830_)))
                                                        (_hd280788280833_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e280789280830_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl280787280835_))
                                                        (___kont284962284963_
                                                         _tl280781280819_
                                                         _hd280788280833_)
                                                        (___kont284964284965_))))
                                                (___kont284964284965_))
                                            (___kont284964284965_))
                                        (___kont284964284965_))))
                                (___kont284964284965_))))
                        (___kont284964284965_))))
                (___kont284964284965_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self280725_ _stx280726_ _args280727_)
        (let* ((_g280729280739_
                (lambda (_g280730280736_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g280730280736_))))
               (_g280728280768_
                (lambda (_g280730280742_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g280730280742_))
                      (let ((_e280734280744_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g280730280742_))))
                        (let ((_hd280733280747_
                               (let ()
                                 (declare (not safe))
                                 (##car _e280734280744_)))
                              (_tl280732280749_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e280734280744_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl280732280749_))
                              ((lambda (_L280752_)
                                 (let* ((_klass280763_
                                         (let ((__tmp285215
                                                (##structure-ref
                                                 _self280725_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx280726_
                                            __tmp285215)))
                                        (_object280765_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L280752_))))
                                   (if (##structure-ref
                                        _klass280763_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp285231
                                              (let ((__tmp285232
                                                     (let ((__tmp285234
                                                            (let ((__tmp285235
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp285236
                                  (##structure-ref
                                   _klass280763_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp285236 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp285235)))
                   (__tmp285233
                    (let () (declare (not safe)) (cons _object280765_ '()))))
               (declare (not safe))
               (cons __tmp285234 __tmp285233))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp285232))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp285231
                                          _stx280726_))
                                       (if (##structure-ref
                                            _klass280763_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp285225
                                                  (let ((__tmp285226
                                                         (let ((__tmp285228
                                                                (let ((__tmp285229
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp285230
                                      (##structure-ref
                                       _klass280763_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp285230 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp285229)))
                       (__tmp285227
                        (let ()
                          (declare (not safe))
                          (cons _object280765_ '()))))
                   (declare (not safe))
                   (cons __tmp285228 __tmp285227))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp285226))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp285225
                                              _stx280726_))
                                           (let ((__tmp285216
                                                  (let ((__tmp285217
                                                         (let ((__tmp285223
                                                                (let ((__tmp285224
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp285224)))
                       (__tmp285218
                        (let ((__tmp285220
                               (let ((__tmp285221
                                      (let ((__tmp285222
                                             (##structure-ref
                                              _self280725_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp285222 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp285221)))
                              (__tmp285219
                               (let ()
                                 (declare (not safe))
                                 (cons _object280765_ '()))))
                          (declare (not safe))
                          (cons __tmp285220 __tmp285219))))
                   (declare (not safe))
                   (cons __tmp285223 __tmp285218))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp285217))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp285216
                                              _stx280726_))))))
                               _hd280733280747_)
                              (let ()
                                (declare (not safe))
                                (_g280729280739_ _g280730280742_)))))
                      (let ()
                        (declare (not safe))
                        (_g280729280739_ _g280730280742_))))))
          (declare (not safe))
          (_g280728280768_ _args280727_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__t284921)
        (let ((__id284922
               (let ((__tmp284923
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t284921 'id))))
                 (if __tmp284923
                     __tmp284923
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self280725_ _stx280726_ _args280727_)
            (let* ((_g280729280739_
                    (lambda (_g280730280736_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g280730280736_))))
                   (_g280728280768_
                    (lambda (_g280730280742_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g280730280742_))
                          (let ((_e280734280744_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g280730280742_))))
                            (let ((_hd280733280747_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e280734280744_)))
                                  (_tl280732280749_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e280734280744_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl280732280749_))
                                  ((lambda (_L280752_)
                                     (let* ((_klass280763_
                                             (let ((__tmp285237
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self280725_
                                                       __id284922
                                                       __t284921
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx280726_
                                                __tmp285237)))
                                            (_object280765_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L280752_))))
                                       (if (##structure-ref
                                            _klass280763_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp285253
                                                  (let ((__tmp285254
                                                         (let ((__tmp285256
                                                                (let ((__tmp285257
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp285258
                                      (##structure-ref
                                       _klass280763_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp285258 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp285257)))
                       (__tmp285255
                        (let ()
                          (declare (not safe))
                          (cons _object280765_ '()))))
                   (declare (not safe))
                   (cons __tmp285256 __tmp285255))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp285254))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp285253
                                              _stx280726_))
                                           (if (##structure-ref
                                                _klass280763_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp285247
                                                      (let ((__tmp285248
                                                             (let ((__tmp285250
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp285251
                                   (let ((__tmp285252
                                          (##structure-ref
                                           _klass280763_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp285252 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp285251)))
                           (__tmp285249
                            (let ()
                              (declare (not safe))
                              (cons _object280765_ '()))))
                       (declare (not safe))
                       (cons __tmp285250 __tmp285249))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp285248))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp285247
                                                  _stx280726_))
                                               (let ((__tmp285238
                                                      (let ((__tmp285239
                                                             (let ((__tmp285245
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp285246
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp285246)))
                           (__tmp285240
                            (let ((__tmp285242
                                   (let ((__tmp285243
                                          (let ((__tmp285244
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self280725_
                                                    __id284922
                                                    __t284921
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp285244 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp285243)))
                                  (__tmp285241
                                   (let ()
                                     (declare (not safe))
                                     (cons _object280765_ '()))))
                              (declare (not safe))
                              (cons __tmp285242 __tmp285241))))
                       (declare (not safe))
                       (cons __tmp285245 __tmp285240))))
                (declare (not safe))
                (cons '%#call __tmp285239))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp285238
                                                  _stx280726_))))))
                                   _hd280733280747_)
                                  (let ()
                                    (declare (not safe))
                                    (_g280729280739_ _g280730280742_)))))
                          (let ()
                            (declare (not safe))
                            (_g280729280739_ _g280730280742_))))))
              (declare (not safe))
              (_g280728280768_ _args280727_))))))
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
      (lambda (_self280445_ _stx280446_ _args280447_)
        (let* ((_klass280449_
                (let ((__tmp285259
                       (##structure-ref _self280445_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx280446_ __tmp285259)))
               (_fields280451_
                (length (##structure-ref _klass280449_ '5 gxc#!class::t '#f)))
               (_args280453_ (map gxc#compile-e _args280447_))
               (_inline-make-object280455_
                (let ((__tmp285260
                       (let ((__tmp285266
                              (let ((__tmp285267
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp285267)))
                             (__tmp285261
                              (let ((__tmp285263
                                     (let ((__tmp285264
                                            (let ((__tmp285265
                                                   (##structure-ref
                                                    _self280445_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp285265 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp285264)))
                                    (__tmp285262
                                     (let ()
                                       (declare (not safe))
                                       (make-list__%
                                        _fields280451_
                                        '(%#quote #f)))))
                                (declare (not safe))
                                (cons __tmp285263 __tmp285262))))
                         (declare (not safe))
                         (cons __tmp285266 __tmp285261))))
                  (declare (not safe))
                  (cons '%#call __tmp285260))))
          (let ((_$e280458_
                 (##structure-ref _klass280449_ '6 gxc#!class::t '#f)))
            (if _$e280458_
                ((lambda (_ctor280461_)
                   (let ((_$obj280463_
                          (let ((__tmp285367 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp285367)))
                         (_ctor-impl280464_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass280449_
                             _ctor280461_))))
                     (let ((__tmp285368
                            (let ((__tmp285369
                                   (let ((__tmp285437
                                          (let ((__tmp285438
                                                 (let ((__tmp285440
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj280463_
                                                                '())))
                                                       (__tmp285439
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object280455_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp285440
                                                         __tmp285439))))
                                            (declare (not safe))
                                            (cons __tmp285438 '())))
                                         (__tmp285370
                                          (let ((__tmp285371
                                                 (let ((__tmp285372
                                                        (let ((__tmp285376
                                                               (if _ctor-impl280464_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp285431
                                  (let ((__tmp285435
                                         (let ((__tmp285436
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl280464_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp285436)))
                                        (__tmp285432
                                         (let ((__tmp285433
                                                (let ((__tmp285434
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj280463_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp285434))))
                                           (declare (not safe))
                                           (cons __tmp285433 _args280453_))))
                                    (declare (not safe))
                                    (cons __tmp285435 __tmp285432))))
                             (declare (not safe))
                             (cons '%#call __tmp285431))
                           (let* ((_$ctor280466_
                                   (let ((__tmp285377 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp285377)))
                                  (__tmp285378
                                   (let ((__tmp285413
                                          (let ((__tmp285414
                                                 (let ((__tmp285430
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor280466_
                                                                '())))
                                                       (__tmp285415
                                                        (let ((__tmp285416
                                                               (let ((__tmp285417
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp285428
                                     (let ((__tmp285429
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp285429)))
                                    (__tmp285418
                                     (let ((__tmp285425
                                            (let ((__tmp285426
                                                   (let ((__tmp285427
                                                          (##structure-ref
                                                           _self280445_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp285427 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp285426)))
                                           (__tmp285419
                                            (let ((__tmp285423
                                                   (let ((__tmp285424
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj280463_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp285424)))
                                                  (__tmp285420
                                                   (let ((__tmp285421
                                                          (let ((__tmp285422
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _ctor280461_ '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp285422))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp285421 '()))))
                                              (declare (not safe))
                                              (cons __tmp285423 __tmp285420))))
                                       (declare (not safe))
                                       (cons __tmp285425 __tmp285419))))
                                (declare (not safe))
                                (cons __tmp285428 __tmp285418))))
                         (declare (not safe))
                         (cons '%#call __tmp285417))))
                  (declare (not safe))
                  (cons __tmp285416 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp285430
                                                         __tmp285415))))
                                            (declare (not safe))
                                            (cons __tmp285414 '())))
                                         (__tmp285379
                                          (let ((__tmp285380
                                                 (let ((__tmp285381
                                                        (let ((__tmp285411
                                                               (let ((__tmp285412
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor280466_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp285412)))
                      (__tmp285382
                       (let ((__tmp285404
                              (let ((__tmp285405
                                     (let ((__tmp285409
                                            (let ((__tmp285410
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor280466_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp285410)))
                                           (__tmp285406
                                            (let ((__tmp285407
                                                   (let ((__tmp285408
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj280463_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp285408))))
                                              (declare (not safe))
                                              (cons __tmp285407
                                                    _args280453_))))
                                       (declare (not safe))
                                       (cons __tmp285409 __tmp285406))))
                                (declare (not safe))
                                (cons '%#call __tmp285405)))
                             (__tmp285383
                              (let ((__tmp285384
                                     (let ((__tmp285385
                                            (let ((__tmp285402
                                                   (let ((__tmp285403
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp285403)))
                                                  (__tmp285386
                                                   (let ((__tmp285400
                                                          (let ((__tmp285401
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp285401)))
                 (__tmp285387
                  (let ((__tmp285398
                         (let ((__tmp285399
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp285399)))
                        (__tmp285388
                         (let ((__tmp285395
                                (let ((__tmp285396
                                       (let ((__tmp285397
                                              (##structure-ref
                                               _self280445_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp285397 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp285396)))
                               (__tmp285389
                                (let ((__tmp285393
                                       (let ((__tmp285394
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp285394)))
                                      (__tmp285390
                                       (let ((__tmp285391
                                              (let ((__tmp285392
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor280461_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp285392))))
                                         (declare (not safe))
                                         (cons __tmp285391 '()))))
                                  (declare (not safe))
                                  (cons __tmp285393 __tmp285390))))
                           (declare (not safe))
                           (cons __tmp285395 __tmp285389))))
                    (declare (not safe))
                    (cons __tmp285398 __tmp285388))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp285400
                                                           __tmp285387))))
                                              (declare (not safe))
                                              (cons __tmp285402 __tmp285386))))
                                       (declare (not safe))
                                       (cons '%#call __tmp285385))))
                                (declare (not safe))
                                (cons __tmp285384 '()))))
                         (declare (not safe))
                         (cons __tmp285404 __tmp285383))))
                  (declare (not safe))
                  (cons __tmp285411 __tmp285382))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp285381))))
                                            (declare (not safe))
                                            (cons __tmp285380 '()))))
                                     (declare (not safe))
                                     (cons __tmp285413 __tmp285379))))
                             (declare (not safe))
                             (cons '%#let-values __tmp285378))))
                      (__tmp285373
                       (let ((__tmp285374
                              (let ((__tmp285375
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj280463_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp285375))))
                         (declare (not safe))
                         (cons __tmp285374 '()))))
                  (declare (not safe))
                  (cons __tmp285376 __tmp285373))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp285372))))
                                            (declare (not safe))
                                            (cons __tmp285371 '()))))
                                     (declare (not safe))
                                     (cons __tmp285437 __tmp285370))))
                              (declare (not safe))
                              (cons '%#let-values __tmp285369))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp285368 _stx280446_))))
                 _$e280458_)
                (let ((_$e280468_
                       (##structure-ref _klass280449_ '9 gxc#!class::t '#f)))
                  (if _$e280468_
                      ((lambda (_metaclass280471_)
                         (let* ((_$obj280473_
                                 (let ((__tmp285329 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp285329)))
                                (_metakons280475_
                                 (let ((__tmp285330
                                        (let ()
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           _stx280446_
                                           _metaclass280471_))))
                                   (declare (not safe))
                                   (gxc#!class-lookup-method
                                    __tmp285330
                                    'instance-init!))))
                           (let ((__tmp285331
                                  (let ((__tmp285332
                                         (let ((__tmp285363
                                                (let ((__tmp285364
                                                       (let ((__tmp285366
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj280473_ '())))
                     (__tmp285365
                      (let ()
                        (declare (not safe))
                        (cons _inline-make-object280455_ '()))))
                 (declare (not safe))
                 (cons __tmp285366 __tmp285365))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp285364 '())))
                                               (__tmp285333
                                                (let ((__tmp285334
                                                       (let ((__tmp285335
                                                              (let ((__tmp285339
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if _metakons280475_
                                 (let ((__tmp285353
                                        (let ((__tmp285361
                                               (let ((__tmp285362
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metakons280475_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp285362)))
                                              (__tmp285354
                                               (let ((__tmp285358
                                                      (let ((__tmp285359
                                                             (let ((__tmp285360
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self280445_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp285360 '()))))
                (declare (not safe))
                (cons '%#ref __tmp285359)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp285355
                                                      (let ((__tmp285356
                                                             (let ((__tmp285357
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _$obj280473_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp285357))))
                (declare (not safe))
                (cons __tmp285356 _args280453_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp285358
                                                       __tmp285355))))
                                          (declare (not safe))
                                          (cons __tmp285361 __tmp285354))))
                                   (declare (not safe))
                                   (cons '%#call __tmp285353))
                                 (let ((__tmp285340
                                        (let ((__tmp285351
                                               (let ((__tmp285352
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'call-method
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp285352)))
                                              (__tmp285341
                                               (let ((__tmp285348
                                                      (let ((__tmp285349
                                                             (let ((__tmp285350
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self280445_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp285350 '()))))
                (declare (not safe))
                (cons '%#ref __tmp285349)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp285342
                                                      (let ((__tmp285346
                                                             (let ((__tmp285347
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'instance-init! '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp285347)))
                    (__tmp285343
                     (let ((__tmp285344
                            (let ((__tmp285345
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj280473_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp285345))))
                       (declare (not safe))
                       (cons __tmp285344 _args280453_))))
                (declare (not safe))
                (cons __tmp285346 __tmp285343))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp285348
                                                       __tmp285342))))
                                          (declare (not safe))
                                          (cons __tmp285351 __tmp285341))))
                                   (declare (not safe))
                                   (cons '%#call __tmp285340))))
                            (__tmp285336
                             (let ((__tmp285337
                                    (let ((__tmp285338
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj280473_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp285338))))
                               (declare (not safe))
                               (cons __tmp285337 '()))))
                        (declare (not safe))
                        (cons __tmp285339 __tmp285336))))
                 (declare (not safe))
                 (cons '%#begin __tmp285335))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp285334 '()))))
                                           (declare (not safe))
                                           (cons __tmp285363 __tmp285333))))
                                    (declare (not safe))
                                    (cons '%#let-values __tmp285332))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp285331 _stx280446_))))
                       _$e280468_)
                      (if (##structure-ref _klass280449_ '7 gxc#!class::t '#f)
                          (if (fx= (length _args280453_) _fields280451_)
                              (let ((__tmp285321
                                     (let ((__tmp285322
                                            (let ((__tmp285327
                                                   (let ((__tmp285328
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp285328)))
                                                  (__tmp285323
                                                   (let ((__tmp285324
                                                          (let ((__tmp285325
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp285326
                                (##structure-ref
                                 _self280445_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp285326 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp285325))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp285324
                                                           _args280453_))))
                                              (declare (not safe))
                                              (cons __tmp285327 __tmp285323))))
                                       (declare (not safe))
                                       (cons '%#call __tmp285322))))
                                (declare (not safe))
                                (gxc#xform-wrap-source
                                 __tmp285321
                                 _stx280446_))
                              (let ((__tmp285320
                                     (##structure-ref
                                      _self280445_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                    (__tmp285319
                                     (length (##structure-ref
                                              _klass280449_
                                              '5
                                              gxc#!class::t
                                              '#f))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"illegal struct constructor application; arity mismatch"
                                 _stx280446_
                                 __tmp285320
                                 __tmp285319)))
                          (let ((_$obj280478_
                                 (let ((__tmp285268 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp285268))))
                            (let _lp280480_ ((_rest280482_ _args280453_)
                                             (_initializers280483_ '()))
                              (let* ((___stx284998284999_ _rest280482_)
                                     (_g280487280508_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx284998284999_)))))
                                (let ((___kont285000285001_
                                       (lambda (_L280562_ _L280563_ _L280564_)
                                         (let* ((_slot280595_
                                                 (keyword->symbol
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e _L280564_))))
                                                (_off280597_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass280449_
                                                    _slot280595_))))
                                           (if _off280597_
                                               (let ((__tmp285270
                                                      (let ((__tmp285271
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off280597_ _L280563_))))
                (declare (not safe))
                (cons __tmp285271 _initializers280483_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp280480_
                                                  _L280562_
                                                  __tmp285270))
                                               (let ((__tmp285269
                                                      (##structure-ref
                                                       _self280445_
                                                       '1
                                                       gxc#!type::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"unknown slot"
                                                  _stx280446_
                                                  __tmp285269
                                                  _slot280595_))))))
                                      (___kont285002285003_
                                       (lambda ()
                                         (let ((__tmp285272
                                                (let ((__tmp285273
                                                       (let ((__tmp285296
                                                              (let ((__tmp285297
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp285299
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj280478_ '())))
                                   (__tmp285298
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object280455_ '()))))
                               (declare (not safe))
                               (cons __tmp285299 __tmp285298))))
                        (declare (not safe))
                        (cons __tmp285297 '())))
                     (__tmp285274
                      (let ((__tmp285275
                             (let ((__tmp285276
                                    (let ((__tmp285293
                                           (let ((__tmp285294
                                                  (let ((__tmp285295
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj280478_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp285295))))
                                             (declare (not safe))
                                             (cons __tmp285294 '())))
                                          (__tmp285277
                                           (let ((__tmp285278
                                                  (lambda (_i280522_ _r280523_)
                                                    (let ((__tmp285279
                                                           (let ((__tmp285280
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp285290
                                 (let ((__tmp285291
                                        (let ((__tmp285292
                                               (##structure-ref
                                                _self280445_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp285292 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp285291)))
                                (__tmp285281
                                 (let ((__tmp285287
                                        (let ((__tmp285288
                                               (let ((__tmp285289
                                                      (car _i280522_)))
                                                 (declare (not safe))
                                                 (cons __tmp285289 '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp285288)))
                                       (__tmp285282
                                        (let ((__tmp285285
                                               (let ((__tmp285286
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _$obj280478_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp285286)))
                                              (__tmp285283
                                               (let ((__tmp285284
                                                      (cdr _i280522_)))
                                                 (declare (not safe))
                                                 (cons __tmp285284 '()))))
                                          (declare (not safe))
                                          (cons __tmp285285 __tmp285283))))
                                   (declare (not safe))
                                   (cons __tmp285287 __tmp285282))))
                            (declare (not safe))
                            (cons __tmp285290 __tmp285281))))
                     (declare (not safe))
                     (cons '%#struct-unchecked-set! __tmp285280))))
              (declare (not safe))
              (cons __tmp285279 _r280523_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (foldl1 __tmp285278
                                                     '()
                                                     _initializers280483_))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp285293 __tmp285277))))
                               (declare (not safe))
                               (cons '%#begin __tmp285276))))
                        (declare (not safe))
                        (cons __tmp285275 '()))))
                 (declare (not safe))
                 (cons __tmp285296 __tmp285274))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp285273))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp285272
                                            _stx280446_))))
                                      (___kont285004285005_
                                       (lambda ()
                                         (let ((__tmp285300
                                                (let ((__tmp285301
                                                       (let ((__tmp285315
                                                              (let ((__tmp285316
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp285318
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj280478_ '())))
                                   (__tmp285317
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object280455_ '()))))
                               (declare (not safe))
                               (cons __tmp285318 __tmp285317))))
                        (declare (not safe))
                        (cons __tmp285316 '())))
                     (__tmp285302
                      (let ((__tmp285303
                             (let ((__tmp285304
                                    (let ((__tmp285308
                                           (let ((__tmp285309
                                                  (let ((__tmp285313
                                                         (let ((__tmp285314
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'class-instance-init! '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp285314)))
                (__tmp285310
                 (let ((__tmp285311
                        (let ((__tmp285312
                               (let ()
                                 (declare (not safe))
                                 (cons _$obj280478_ '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp285312))))
                   (declare (not safe))
                   (cons __tmp285311 _args280453_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp285313
                                                          __tmp285310))))
                                             (declare (not safe))
                                             (cons '%#call __tmp285309)))
                                          (__tmp285305
                                           (let ((__tmp285306
                                                  (let ((__tmp285307
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj280478_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp285307))))
                                             (declare (not safe))
                                             (cons __tmp285306 '()))))
                                      (declare (not safe))
                                      (cons __tmp285308 __tmp285305))))
                               (declare (not safe))
                               (cons '%#begin __tmp285304))))
                        (declare (not safe))
                        (cons __tmp285303 '()))))
                 (declare (not safe))
                 (cons __tmp285315 __tmp285302))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp285301))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp285300
                                            _stx280446_)))))
                                  (let* ((_g280485280525_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   ___stx284998284999_))
                                                (___kont285002285003_)
                                                (___kont285004285005_))))
                                         (___match285035285036_
                                          (lambda (_e280494280530_
                                                   _hd280493280533_
                                                   _tl280492280535_
                                                   _e280497280538_
                                                   _hd280496280541_
                                                   _tl280495280543_
                                                   _e280500280546_
                                                   _hd280499280549_
                                                   _tl280498280551_
                                                   _e280503280554_
                                                   _hd280502280557_
                                                   _tl280501280559_)
                                            (let ((_L280562_ _tl280501280559_)
                                                  (_L280563_ _hd280502280557_)
                                                  (_L280564_ _hd280499280549_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-keyword?
                                                     _L280564_))
                                                  (___kont285000285001_
                                                   _L280562_
                                                   _L280563_
                                                   _L280564_)
                                                  (___kont285004285005_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx284998284999_))
                                        (let ((_e280494280530_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx284998284999_))))
                                          (let ((_tl280492280535_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e280494280530_)))
                                                (_hd280493280533_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e280494280530_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd280493280533_))
                                                (let ((_e280497280538_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd280493280533_))))
                                                  (let ((_tl280495280543_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e280497280538_)))
                                                        (_hd280496280541_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e280497280538_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd280496280541_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#quote
                                                               _hd280496280541_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl280495280543_))
                        (let ((_e280500280546_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl280495280543_))))
                          (let ((_tl280498280551_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e280500280546_)))
                                (_hd280499280549_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e280500280546_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl280498280551_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl280492280535_))
                                    (let ((_e280503280554_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl280492280535_))))
                                      (let ((_tl280501280559_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e280503280554_)))
                                            (_hd280502280557_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e280503280554_))))
                                        (___match285035285036_
                                         _e280494280530_
                                         _hd280493280533_
                                         _tl280492280535_
                                         _e280497280538_
                                         _hd280496280541_
                                         _tl280495280543_
                                         _e280500280546_
                                         _hd280499280549_
                                         _tl280498280551_
                                         _e280503280554_
                                         _hd280502280557_
                                         _tl280501280559_)))
                                    (___kont285004285005_))
                                (___kont285004285005_))))
                        (___kont285004285005_))
                    (___kont285004285005_))
                (___kont285004285005_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont285004285005_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g280485280525_))))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__t284924)
        (let ((__id284925
               (let ((__tmp284926
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t284924 'id))))
                 (if __tmp284926
                     __tmp284926
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self280445_ _stx280446_ _args280447_)
            (let* ((_klass280449_
                    (let ((__tmp285441
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self280445_
                              __id284925
                              __t284924
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx280446_ __tmp285441)))
                   (_fields280451_
                    (length (##structure-ref
                             _klass280449_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args280453_ (map gxc#compile-e _args280447_))
                   (_inline-make-object280455_
                    (let ((__tmp285442
                           (let ((__tmp285448
                                  (let ((__tmp285449
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp285449)))
                                 (__tmp285443
                                  (let ((__tmp285445
                                         (let ((__tmp285446
                                                (let ((__tmp285447
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self280445_
                                                          __id284925
                                                          __t284924
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp285447 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp285446)))
                                        (__tmp285444
                                         (let ()
                                           (declare (not safe))
                                           (make-list__%
                                            _fields280451_
                                            '(%#quote #f)))))
                                    (declare (not safe))
                                    (cons __tmp285445 __tmp285444))))
                             (declare (not safe))
                             (cons __tmp285448 __tmp285443))))
                      (declare (not safe))
                      (cons '%#call __tmp285442))))
              (let ((_$e280458_
                     (##structure-ref _klass280449_ '6 gxc#!class::t '#f)))
                (if _$e280458_
                    ((lambda (_ctor280461_)
                       (let ((_$obj280463_
                              (let ((__tmp285549 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp285549)))
                             (_ctor-impl280464_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass280449_
                                 _ctor280461_))))
                         (let ((__tmp285550
                                (let ((__tmp285551
                                       (let ((__tmp285619
                                              (let ((__tmp285620
                                                     (let ((__tmp285622
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj280463_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp285621
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object280455_ '()))))
               (declare (not safe))
               (cons __tmp285622 __tmp285621))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp285620 '())))
                                             (__tmp285552
                                              (let ((__tmp285553
                                                     (let ((__tmp285554
                                                            (let ((__tmp285558
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl280464_
                               (let ((__tmp285613
                                      (let ((__tmp285617
                                             (let ((__tmp285618
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl280464_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp285618)))
                                            (__tmp285614
                                             (let ((__tmp285615
                                                    (let ((__tmp285616
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj280463_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp285616))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp285615
                                                     _args280453_))))
                                        (declare (not safe))
                                        (cons __tmp285617 __tmp285614))))
                                 (declare (not safe))
                                 (cons '%#call __tmp285613))
                               (let* ((_$ctor280466_
                                       (let ((__tmp285559
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp285559)))
                                      (__tmp285560
                                       (let ((__tmp285595
                                              (let ((__tmp285596
                                                     (let ((__tmp285612
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor280466_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp285597
                    (let ((__tmp285598
                           (let ((__tmp285599
                                  (let ((__tmp285610
                                         (let ((__tmp285611
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp285611)))
                                        (__tmp285600
                                         (let ((__tmp285607
                                                (let ((__tmp285608
                                                       (let ((__tmp285609
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self280445_
                         __id284925
                         __t284924
                         '#f))))
                 (declare (not safe))
                 (cons __tmp285609 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp285608)))
                                               (__tmp285601
                                                (let ((__tmp285605
                                                       (let ((__tmp285606
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj280463_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp285606)))
              (__tmp285602
               (let ((__tmp285603
                      (let ((__tmp285604
                             (let ()
                               (declare (not safe))
                               (cons _ctor280461_ '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp285604))))
                 (declare (not safe))
                 (cons __tmp285603 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp285605
                                                        __tmp285602))))
                                           (declare (not safe))
                                           (cons __tmp285607 __tmp285601))))
                                    (declare (not safe))
                                    (cons __tmp285610 __tmp285600))))
                             (declare (not safe))
                             (cons '%#call __tmp285599))))
                      (declare (not safe))
                      (cons __tmp285598 '()))))
               (declare (not safe))
               (cons __tmp285612 __tmp285597))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp285596 '())))
                                             (__tmp285561
                                              (let ((__tmp285562
                                                     (let ((__tmp285563
                                                            (let ((__tmp285593
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp285594
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor280466_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp285594)))
                          (__tmp285564
                           (let ((__tmp285586
                                  (let ((__tmp285587
                                         (let ((__tmp285591
                                                (let ((__tmp285592
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor280466_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp285592)))
                                               (__tmp285588
                                                (let ((__tmp285589
                                                       (let ((__tmp285590
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj280463_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp285590))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp285589
                                                        _args280453_))))
                                           (declare (not safe))
                                           (cons __tmp285591 __tmp285588))))
                                    (declare (not safe))
                                    (cons '%#call __tmp285587)))
                                 (__tmp285565
                                  (let ((__tmp285566
                                         (let ((__tmp285567
                                                (let ((__tmp285584
                                                       (let ((__tmp285585
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp285585)))
              (__tmp285568
               (let ((__tmp285582
                      (let ((__tmp285583
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp285583)))
                     (__tmp285569
                      (let ((__tmp285580
                             (let ((__tmp285581
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp285581)))
                            (__tmp285570
                             (let ((__tmp285577
                                    (let ((__tmp285578
                                           (let ((__tmp285579
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self280445_
                                                     __id284925
                                                     __t284924
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp285579 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp285578)))
                                   (__tmp285571
                                    (let ((__tmp285575
                                           (let ((__tmp285576
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp285576)))
                                          (__tmp285572
                                           (let ((__tmp285573
                                                  (let ((__tmp285574
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor280461_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp285574))))
                                             (declare (not safe))
                                             (cons __tmp285573 '()))))
                                      (declare (not safe))
                                      (cons __tmp285575 __tmp285572))))
                               (declare (not safe))
                               (cons __tmp285577 __tmp285571))))
                        (declare (not safe))
                        (cons __tmp285580 __tmp285570))))
                 (declare (not safe))
                 (cons __tmp285582 __tmp285569))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp285584
                                                        __tmp285568))))
                                           (declare (not safe))
                                           (cons '%#call __tmp285567))))
                                    (declare (not safe))
                                    (cons __tmp285566 '()))))
                             (declare (not safe))
                             (cons __tmp285586 __tmp285565))))
                      (declare (not safe))
                      (cons __tmp285593 __tmp285564))))
               (declare (not safe))
               (cons '%#if __tmp285563))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp285562 '()))))
                                         (declare (not safe))
                                         (cons __tmp285595 __tmp285561))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp285560))))
                          (__tmp285555
                           (let ((__tmp285556
                                  (let ((__tmp285557
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj280463_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp285557))))
                             (declare (not safe))
                             (cons __tmp285556 '()))))
                      (declare (not safe))
                      (cons __tmp285558 __tmp285555))))
               (declare (not safe))
               (cons '%#begin __tmp285554))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp285553 '()))))
                                         (declare (not safe))
                                         (cons __tmp285619 __tmp285552))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp285551))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp285550 _stx280446_))))
                     _$e280458_)
                    (let ((_$e280468_
                           (##structure-ref
                            _klass280449_
                            '9
                            gxc#!class::t
                            '#f)))
                      (if _$e280468_
                          ((lambda (_metaclass280471_)
                             (let* ((_$obj280473_
                                     (let ((__tmp285511 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp285511)))
                                    (_metakons280475_
                                     (let ((__tmp285512
                                            (let ()
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               _stx280446_
                                               _metaclass280471_))))
                                       (declare (not safe))
                                       (gxc#!class-lookup-method
                                        __tmp285512
                                        'instance-init!))))
                               (let ((__tmp285513
                                      (let ((__tmp285514
                                             (let ((__tmp285545
                                                    (let ((__tmp285546
                                                           (let ((__tmp285548
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj280473_ '())))
                         (__tmp285547
                          (let ()
                            (declare (not safe))
                            (cons _inline-make-object280455_ '()))))
                     (declare (not safe))
                     (cons __tmp285548 __tmp285547))))
              (declare (not safe))
              (cons __tmp285546 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp285515
                                                    (let ((__tmp285516
                                                           (let ((__tmp285517
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp285521
                                 (if _metakons280475_
                                     (let ((__tmp285535
                                            (let ((__tmp285543
                                                   (let ((__tmp285544
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _metakons280475_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp285544)))
                                                  (__tmp285536
                                                   (let ((__tmp285540
                                                          (let ((__tmp285541
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp285542
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self280445_
                                   __id284925
                                   __t284924
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp285542 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp285541)))
                 (__tmp285537
                  (let ((__tmp285538
                         (let ((__tmp285539
                                (let ()
                                  (declare (not safe))
                                  (cons _$obj280473_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp285539))))
                    (declare (not safe))
                    (cons __tmp285538 _args280453_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp285540
                                                           __tmp285537))))
                                              (declare (not safe))
                                              (cons __tmp285543 __tmp285536))))
                                       (declare (not safe))
                                       (cons '%#call __tmp285535))
                                     (let ((__tmp285522
                                            (let ((__tmp285533
                                                   (let ((__tmp285534
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'call-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp285534)))
                                                  (__tmp285523
                                                   (let ((__tmp285530
                                                          (let ((__tmp285531
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp285532
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self280445_
                                   __id284925
                                   __t284924
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp285532 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp285531)))
                 (__tmp285524
                  (let ((__tmp285528
                         (let ((__tmp285529
                                (let ()
                                  (declare (not safe))
                                  (cons 'instance-init! '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp285529)))
                        (__tmp285525
                         (let ((__tmp285526
                                (let ((__tmp285527
                                       (let ()
                                         (declare (not safe))
                                         (cons _$obj280473_ '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp285527))))
                           (declare (not safe))
                           (cons __tmp285526 _args280453_))))
                    (declare (not safe))
                    (cons __tmp285528 __tmp285525))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp285530
                                                           __tmp285524))))
                                              (declare (not safe))
                                              (cons __tmp285533 __tmp285523))))
                                       (declare (not safe))
                                       (cons '%#call __tmp285522))))
                                (__tmp285518
                                 (let ((__tmp285519
                                        (let ((__tmp285520
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$obj280473_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp285520))))
                                   (declare (not safe))
                                   (cons __tmp285519 '()))))
                            (declare (not safe))
                            (cons __tmp285521 __tmp285518))))
                     (declare (not safe))
                     (cons '%#begin __tmp285517))))
              (declare (not safe))
              (cons __tmp285516 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp285545
                                                     __tmp285515))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp285514))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp285513
                                  _stx280446_))))
                           _$e280468_)
                          (if (##structure-ref
                               _klass280449_
                               '7
                               gxc#!class::t
                               '#f)
                              (if (fx= (length _args280453_) _fields280451_)
                                  (let ((__tmp285503
                                         (let ((__tmp285504
                                                (let ((__tmp285509
                                                       (let ((__tmp285510
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '##structure '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp285510)))
              (__tmp285505
               (let ((__tmp285506
                      (let ((__tmp285507
                             (let ((__tmp285508
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self280445_
                                       __id284925
                                       __t284924
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp285508 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp285507))))
                 (declare (not safe))
                 (cons __tmp285506 _args280453_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp285509
                                                        __tmp285505))))
                                           (declare (not safe))
                                           (cons '%#call __tmp285504))))
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp285503
                                     _stx280446_))
                                  (let ((__tmp285502
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _self280445_
                                            __id284925
                                            __t284924
                                            '#f)))
                                        (__tmp285501
                                         (length (##structure-ref
                                                  _klass280449_
                                                  '5
                                                  gxc#!class::t
                                                  '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _stx280446_
                                     __tmp285502
                                     __tmp285501)))
                              (let ((_$obj280478_
                                     (let ((__tmp285450 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp285450))))
                                (let _lp280480_ ((_rest280482_ _args280453_)
                                                 (_initializers280483_ '()))
                                  (let* ((___stx285040285041_ _rest280482_)
                                         (_g280487280508_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               ___stx285040285041_)))))
                                    (let ((___kont285042285043_
                                           (lambda (_L280562_
                                                    _L280563_
                                                    _L280564_)
                                             (let* ((_slot280595_
                                                     (keyword->symbol
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L280564_))))
                                                    (_off280597_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass280449_
                                                        _slot280595_))))
                                               (if _off280597_
                                                   (let ((__tmp285452
                                                          (let ((__tmp285453
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _off280597_ _L280563_))))
                    (declare (not safe))
                    (cons __tmp285453 _initializers280483_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp280480_
                                                      _L280562_
                                                      __tmp285452))
                                                   (let ((__tmp285451
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _self280445_
                                                             __id284925
                                                             __t284924
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"unknown slot"
                                                      _stx280446_
                                                      __tmp285451
                                                      _slot280595_))))))
                                          (___kont285044285045_
                                           (lambda ()
                                             (let ((__tmp285454
                                                    (let ((__tmp285455
                                                           (let ((__tmp285478
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp285479
                                 (let ((__tmp285481
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj280478_ '())))
                                       (__tmp285480
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object280455_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp285481 __tmp285480))))
                            (declare (not safe))
                            (cons __tmp285479 '())))
                         (__tmp285456
                          (let ((__tmp285457
                                 (let ((__tmp285458
                                        (let ((__tmp285475
                                               (let ((__tmp285476
                                                      (let ((__tmp285477
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj280478_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp285477))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp285476 '())))
                                              (__tmp285459
                                               (let ((__tmp285460
                                                      (lambda (_i280522_
                                                               _r280523_)
                                                        (let ((__tmp285461
                                                               (let ((__tmp285462
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp285472
                                     (let ((__tmp285473
                                            (let ((__tmp285474
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self280445_
                                                      __id284925
                                                      __t284924
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp285474 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp285473)))
                                    (__tmp285463
                                     (let ((__tmp285469
                                            (let ((__tmp285470
                                                   (let ((__tmp285471
                                                          (car _i280522_)))
                                                     (declare (not safe))
                                                     (cons __tmp285471 '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp285470)))
                                           (__tmp285464
                                            (let ((__tmp285467
                                                   (let ((__tmp285468
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj280478_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp285468)))
                                                  (__tmp285465
                                                   (let ((__tmp285466
                                                          (cdr _i280522_)))
                                                     (declare (not safe))
                                                     (cons __tmp285466 '()))))
                                              (declare (not safe))
                                              (cons __tmp285467 __tmp285465))))
                                       (declare (not safe))
                                       (cons __tmp285469 __tmp285464))))
                                (declare (not safe))
                                (cons __tmp285472 __tmp285463))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp285462))))
                  (declare (not safe))
                  (cons __tmp285461 _r280523_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl1 __tmp285460
                                                         '()
                                                         _initializers280483_))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp285475
                                                  __tmp285459))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp285458))))
                            (declare (not safe))
                            (cons __tmp285457 '()))))
                     (declare (not safe))
                     (cons __tmp285478 __tmp285456))))
              (declare (not safe))
              (cons '%#let-values __tmp285455))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp285454
                                                _stx280446_))))
                                          (___kont285046285047_
                                           (lambda ()
                                             (let ((__tmp285482
                                                    (let ((__tmp285483
                                                           (let ((__tmp285497
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp285498
                                 (let ((__tmp285500
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj280478_ '())))
                                       (__tmp285499
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object280455_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp285500 __tmp285499))))
                            (declare (not safe))
                            (cons __tmp285498 '())))
                         (__tmp285484
                          (let ((__tmp285485
                                 (let ((__tmp285486
                                        (let ((__tmp285490
                                               (let ((__tmp285491
                                                      (let ((__tmp285495
                                                             (let ((__tmp285496
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'class-instance-init! '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp285496)))
                    (__tmp285492
                     (let ((__tmp285493
                            (let ((__tmp285494
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj280478_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp285494))))
                       (declare (not safe))
                       (cons __tmp285493 _args280453_))))
                (declare (not safe))
                (cons __tmp285495 __tmp285492))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp285491)))
                                              (__tmp285487
                                               (let ((__tmp285488
                                                      (let ((__tmp285489
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj280478_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp285489))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp285488 '()))))
                                          (declare (not safe))
                                          (cons __tmp285490 __tmp285487))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp285486))))
                            (declare (not safe))
                            (cons __tmp285485 '()))))
                     (declare (not safe))
                     (cons __tmp285497 __tmp285484))))
              (declare (not safe))
              (cons '%#let-values __tmp285483))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp285482
                                                _stx280446_)))))
                                      (let* ((_g280485280525_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       ___stx285040285041_))
                                                    (___kont285044285045_)
                                                    (___kont285046285047_))))
                                             (___match285077285078_
                                              (lambda (_e280494280530_
                                                       _hd280493280533_
                                                       _tl280492280535_
                                                       _e280497280538_
                                                       _hd280496280541_
                                                       _tl280495280543_
                                                       _e280500280546_
                                                       _hd280499280549_
                                                       _tl280498280551_
                                                       _e280503280554_
                                                       _hd280502280557_
                                                       _tl280501280559_)
                                                (let ((_L280562_
                                                       _tl280501280559_)
                                                      (_L280563_
                                                       _hd280502280557_)
                                                      (_L280564_
                                                       _hd280499280549_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-keyword?
                                                         _L280564_))
                                                      (___kont285042285043_
                                                       _L280562_
                                                       _L280563_
                                                       _L280564_)
                                                      (___kont285046285047_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               ___stx285040285041_))
                                            (let ((_e280494280530_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      ___stx285040285041_))))
                                              (let ((_tl280492280535_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e280494280530_)))
                                                    (_hd280493280533_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e280494280530_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd280493280533_))
                                                    (let ((_e280497280538_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd280493280533_))))
                                                      (let ((_tl280495280543_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e280497280538_)))
                    (_hd280496280541_
                     (let () (declare (not safe)) (##car _e280497280538_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd280496280541_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd280496280541_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl280495280543_))
                            (let ((_e280500280546_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl280495280543_))))
                              (let ((_tl280498280551_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e280500280546_)))
                                    (_hd280499280549_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e280500280546_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl280498280551_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl280492280535_))
                                        (let ((_e280503280554_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl280492280535_))))
                                          (let ((_tl280501280559_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e280503280554_)))
                                                (_hd280502280557_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e280503280554_))))
                                            (___match285077285078_
                                             _e280494280530_
                                             _hd280493280533_
                                             _tl280492280535_
                                             _e280497280538_
                                             _hd280496280541_
                                             _tl280495280543_
                                             _e280500280546_
                                             _hd280499280549_
                                             _tl280498280551_
                                             _e280503280554_
                                             _hd280502280557_
                                             _tl280501280559_)))
                                        (___kont285046285047_))
                                    (___kont285046285047_))))
                            (___kont285046285047_))
                        (___kont285046285047_))
                    (___kont285046285047_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont285046285047_))))
                                            (let ()
                                              (declare (not safe))
                                              (_g280485280525_))))))))))))))))))
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
      (lambda (_self280268_ _stx280269_ _args280270_)
        (let* ((_g280272280282_
                (lambda (_g280273280279_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g280273280279_))))
               (_g280271280320_
                (lambda (_g280273280285_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g280273280285_))
                      (let ((_e280277280287_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g280273280285_))))
                        (let ((_hd280276280290_
                               (let ()
                                 (declare (not safe))
                                 (##car _e280277280287_)))
                              (_tl280275280292_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e280277280287_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl280275280292_))
                              ((lambda (_L280295_)
                                 (let* ((_klass280306_
                                         (let ((__tmp285623
                                                (##structure-ref
                                                 _self280268_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx280269_
                                            __tmp285623)))
                                        (_field280308_
                                         (let ((__tmp285624
                                                (##structure-ref
                                                 _self280268_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass280306_
                                            __tmp285624)))
                                        (_object280310_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L280295_))))
                                   (if (##structure-ref
                                        _klass280306_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp285701
                                              (let ((__tmp285710
                                                     (if (##structure-ref
                                                          _self280268_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp285702
                                                     (let ((__tmp285707
                                                            (let ((__tmp285708
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp285709
                                  (##structure-ref
                                   _self280268_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp285709 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp285708)))
                   (__tmp285703
                    (let ((__tmp285705
                           (let ((__tmp285706
                                  (let ()
                                    (declare (not safe))
                                    (cons _field280308_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp285706)))
                          (__tmp285704
                           (let ()
                             (declare (not safe))
                             (cons _object280310_ '()))))
                      (declare (not safe))
                      (cons __tmp285705 __tmp285704))))
               (declare (not safe))
               (cons __tmp285707 __tmp285703))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp285710
                                                      __tmp285702))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp285701
                                          _stx280269_))
                                       (if (##structure-ref
                                            _klass280306_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp285691
                                                  (let ((__tmp285700
                                                         (if (##structure-ref
                                                              _self280268_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp285692
                                                         (let ((__tmp285697
                                                                (let ((__tmp285698
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp285699
                                      (##structure-ref
                                       _self280268_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp285699 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp285698)))
                       (__tmp285693
                        (let ((__tmp285695
                               (let ((__tmp285696
                                      (let ()
                                        (declare (not safe))
                                        (cons _field280308_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp285696)))
                              (__tmp285694
                               (let ()
                                 (declare (not safe))
                                 (cons _object280310_ '()))))
                          (declare (not safe))
                          (cons __tmp285695 __tmp285694))))
                   (declare (not safe))
                   (cons __tmp285697 __tmp285693))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp285700
                                                          __tmp285692))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp285691
                                              _stx280269_))
                                           (let ((_$e280313_
                                                  (let ((__tmp285625
                                                         (##structure-ref
                                                          _self280268_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass280306_
                                                     __tmp285625))))
                                             (if _$e280313_
                                                 ((lambda (_klass280316_)
                                                    (let ((__tmp285681
                                                           (let ((__tmp285690
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self280268_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp285682
                          (let ((__tmp285687
                                 (let ((__tmp285688
                                        (let ((__tmp285689
                                               (##structure-ref
                                                _self280268_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp285689 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp285688)))
                                (__tmp285683
                                 (let ((__tmp285685
                                        (let ((__tmp285686
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field280308_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp285686)))
                                       (__tmp285684
                                        (let ()
                                          (declare (not safe))
                                          (cons _object280310_ '()))))
                                   (declare (not safe))
                                   (cons __tmp285685 __tmp285684))))
                            (declare (not safe))
                            (cons __tmp285687 __tmp285683))))
                     (declare (not safe))
                     (cons __tmp285690 __tmp285682))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp285681 _stx280269_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e280313_)
                                                 (if (##structure-ref
                                                      _self280268_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp285635
                                                            (let* ((_$obj280318_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp285636 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp285636)))
                           (__tmp285637
                            (let ((__tmp285677
                                   (let ((__tmp285678
                                          (let ((__tmp285680
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj280318_ '())))
                                                (__tmp285679
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object280310_ '()))))
                                            (declare (not safe))
                                            (cons __tmp285680 __tmp285679))))
                                     (declare (not safe))
                                     (cons __tmp285678 '())))
                                  (__tmp285638
                                   (let ((__tmp285639
                                          (let ((__tmp285640
                                                 (let ((__tmp285669
                                                        (let ((__tmp285670
                                                               (let ((__tmp285674
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp285675
                                     (let ((__tmp285676
                                            (##structure-ref
                                             _klass280306_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp285676 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp285675)))
                             (__tmp285671
                              (let ((__tmp285672
                                     (let ((__tmp285673
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj280318_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp285673))))
                                (declare (not safe))
                                (cons __tmp285672 '()))))
                         (declare (not safe))
                         (cons __tmp285674 __tmp285671))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp285670)))
               (__tmp285641
                (let ((__tmp285658
                       (let ((__tmp285659
                              (let ((__tmp285666
                                     (let ((__tmp285667
                                            (let ((__tmp285668
                                                   (##structure-ref
                                                    _self280268_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp285668 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp285667)))
                                    (__tmp285660
                                     (let ((__tmp285664
                                            (let ((__tmp285665
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field280308_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp285665)))
                                           (__tmp285661
                                            (let ((__tmp285662
                                                   (let ((__tmp285663
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj280318_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp285663))))
                                              (declare (not safe))
                                              (cons __tmp285662 '()))))
                                       (declare (not safe))
                                       (cons __tmp285664 __tmp285661))))
                                (declare (not safe))
                                (cons __tmp285666 __tmp285660))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp285659)))
                      (__tmp285642
                       (let ((__tmp285643
                              (let ((__tmp285644
                                     (let ((__tmp285656
                                            (let ((__tmp285657
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp285657)))
                                           (__tmp285645
                                            (let ((__tmp285653
                                                   (let ((__tmp285654
                                                          (let ((__tmp285655
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self280268_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp285655 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp285654)))
                                                  (__tmp285646
                                                   (let ((__tmp285651
                                                          (let ((__tmp285652
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj280318_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp285652)))
                 (__tmp285647
                  (let ((__tmp285648
                         (let ((__tmp285649
                                (let ((__tmp285650
                                       (##structure-ref
                                        _self280268_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp285650 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp285649))))
                    (declare (not safe))
                    (cons __tmp285648 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp285651
                                                           __tmp285647))))
                                              (declare (not safe))
                                              (cons __tmp285653 __tmp285646))))
                                       (declare (not safe))
                                       (cons __tmp285656 __tmp285645))))
                                (declare (not safe))
                                (cons '%#call __tmp285644))))
                         (declare (not safe))
                         (cons __tmp285643 '()))))
                  (declare (not safe))
                  (cons __tmp285658 __tmp285642))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp285669
                                                         __tmp285641))))
                                            (declare (not safe))
                                            (cons '%#if __tmp285640))))
                                     (declare (not safe))
                                     (cons __tmp285639 '()))))
                              (declare (not safe))
                              (cons __tmp285677 __tmp285638))))
                      (declare (not safe))
                      (cons '%#let-values __tmp285637))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp285635 _stx280269_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp285626
                                                            (let ((__tmp285627
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp285633
                                  (let ((__tmp285634
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp285634)))
                                 (__tmp285628
                                  (let ((__tmp285629
                                         (let ((__tmp285630
                                                (let ((__tmp285631
                                                       (let ((__tmp285632
                                                              (##structure-ref
                                                               _self280268_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp285632
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp285631))))
                                           (declare (not safe))
                                           (cons __tmp285630 '()))))
                                    (declare (not safe))
                                    (cons _object280310_ __tmp285629))))
                             (declare (not safe))
                             (cons __tmp285633 __tmp285628))))
                      (declare (not safe))
                      (cons '%#call __tmp285627))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp285626 _stx280269_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd280276280290_)
                              (let ()
                                (declare (not safe))
                                (_g280272280282_ _g280273280285_)))))
                      (let ()
                        (declare (not safe))
                        (_g280272280282_ _g280273280285_))))))
          (declare (not safe))
          (_g280271280320_ _args280270_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__t284927)
        (let ((__checked?284928
               (let ((__tmp284931
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t284927 'checked?))))
                 (if __tmp284931
                     __tmp284931
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__id284929
               (let ((__tmp284932
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t284927 'id))))
                 (if __tmp284932
                     __tmp284932
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__slot284930
               (let ((__tmp284933
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t284927 'slot))))
                 (if __tmp284933
                     __tmp284933
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self280268_ _stx280269_ _args280270_)
            (let* ((_g280272280282_
                    (lambda (_g280273280279_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g280273280279_))))
                   (_g280271280320_
                    (lambda (_g280273280285_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g280273280285_))
                          (let ((_e280277280287_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g280273280285_))))
                            (let ((_hd280276280290_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e280277280287_)))
                                  (_tl280275280292_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e280277280287_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl280275280292_))
                                  ((lambda (_L280295_)
                                     (let* ((_klass280306_
                                             (let ((__tmp285711
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self280268_
                                                       __id284929
                                                       __t284927
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx280269_
                                                __tmp285711)))
                                            (_field280308_
                                             (let ((__tmp285712
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self280268_
                                                       __slot284930
                                                       __t284927
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass280306_
                                                __tmp285712)))
                                            (_object280310_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L280295_))))
                                       (if (##structure-ref
                                            _klass280306_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp285789
                                                  (let ((__tmp285798
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self280268_
                        __checked?284928
                        __t284927
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp285790
                 (let ((__tmp285795
                        (let ((__tmp285796
                               (let ((__tmp285797
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self280268_
                                         __id284929
                                         __t284927
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp285797 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp285796)))
                       (__tmp285791
                        (let ((__tmp285793
                               (let ((__tmp285794
                                      (let ()
                                        (declare (not safe))
                                        (cons _field280308_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp285794)))
                              (__tmp285792
                               (let ()
                                 (declare (not safe))
                                 (cons _object280310_ '()))))
                          (declare (not safe))
                          (cons __tmp285793 __tmp285792))))
                   (declare (not safe))
                   (cons __tmp285795 __tmp285791))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp285798
                                                          __tmp285790))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp285789
                                              _stx280269_))
                                           (if (##structure-ref
                                                _klass280306_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp285779
                                                      (let ((__tmp285788
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self280268_
                            __checked?284928
                            __t284927
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp285780
                     (let ((__tmp285785
                            (let ((__tmp285786
                                   (let ((__tmp285787
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self280268_
                                             __id284929
                                             __t284927
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp285787 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp285786)))
                           (__tmp285781
                            (let ((__tmp285783
                                   (let ((__tmp285784
                                          (let ()
                                            (declare (not safe))
                                            (cons _field280308_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp285784)))
                                  (__tmp285782
                                   (let ()
                                     (declare (not safe))
                                     (cons _object280310_ '()))))
                              (declare (not safe))
                              (cons __tmp285783 __tmp285782))))
                       (declare (not safe))
                       (cons __tmp285785 __tmp285781))))
                (declare (not safe))
                (cons __tmp285788 __tmp285780))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp285779
                                                  _stx280269_))
                                               (let ((_$e280313_
                                                      (let ((__tmp285713
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self280268_
                        __slot284930
                        __t284927
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass280306_ __tmp285713))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e280313_
                                                     ((lambda (_klass280316_)
                                                        (let ((__tmp285769
                                                               (let ((__tmp285778
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self280268_
                                     __checked?284928
                                     __t284927
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp285770
                              (let ((__tmp285775
                                     (let ((__tmp285776
                                            (let ((__tmp285777
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self280268_
                                                      __id284929
                                                      __t284927
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp285777 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp285776)))
                                    (__tmp285771
                                     (let ((__tmp285773
                                            (let ((__tmp285774
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field280308_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp285774)))
                                           (__tmp285772
                                            (let ()
                                              (declare (not safe))
                                              (cons _object280310_ '()))))
                                       (declare (not safe))
                                       (cons __tmp285773 __tmp285772))))
                                (declare (not safe))
                                (cons __tmp285775 __tmp285771))))
                         (declare (not safe))
                         (cons __tmp285778 __tmp285770))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp285769 _stx280269_)))
              _$e280313_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self280268_
                                                            __checked?284928
                                                            __t284927
                                                            '#f))
                                                         (let ((__tmp285723
                                                                (let* ((_$obj280318_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp285724 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp285724)))
                               (__tmp285725
                                (let ((__tmp285765
                                       (let ((__tmp285766
                                              (let ((__tmp285768
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj280318_
                                                             '())))
                                                    (__tmp285767
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object280310_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp285768
                                                      __tmp285767))))
                                         (declare (not safe))
                                         (cons __tmp285766 '())))
                                      (__tmp285726
                                       (let ((__tmp285727
                                              (let ((__tmp285728
                                                     (let ((__tmp285757
                                                            (let ((__tmp285758
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp285762
                                  (let ((__tmp285763
                                         (let ((__tmp285764
                                                (##structure-ref
                                                 _klass280306_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp285764 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp285763)))
                                 (__tmp285759
                                  (let ((__tmp285760
                                         (let ((__tmp285761
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj280318_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp285761))))
                                    (declare (not safe))
                                    (cons __tmp285760 '()))))
                             (declare (not safe))
                             (cons __tmp285762 __tmp285759))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp285758)))
                   (__tmp285729
                    (let ((__tmp285746
                           (let ((__tmp285747
                                  (let ((__tmp285754
                                         (let ((__tmp285755
                                                (let ((__tmp285756
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self280268_
                                                          __id284929
                                                          __t284927
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp285756 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp285755)))
                                        (__tmp285748
                                         (let ((__tmp285752
                                                (let ((__tmp285753
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field280308_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp285753)))
                                               (__tmp285749
                                                (let ((__tmp285750
                                                       (let ((__tmp285751
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj280318_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp285751))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp285750 '()))))
                                           (declare (not safe))
                                           (cons __tmp285752 __tmp285749))))
                                    (declare (not safe))
                                    (cons __tmp285754 __tmp285748))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp285747)))
                          (__tmp285730
                           (let ((__tmp285731
                                  (let ((__tmp285732
                                         (let ((__tmp285744
                                                (let ((__tmp285745
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp285745)))
                                               (__tmp285733
                                                (let ((__tmp285741
                                                       (let ((__tmp285742
                                                              (let ((__tmp285743
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self280268_
                                __id284929
                                __t284927
                                '#f))))
                        (declare (not safe))
                        (cons __tmp285743 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp285742)))
              (__tmp285734
               (let ((__tmp285739
                      (let ((__tmp285740
                             (let ()
                               (declare (not safe))
                               (cons _$obj280318_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp285740)))
                     (__tmp285735
                      (let ((__tmp285736
                             (let ((__tmp285737
                                    (let ((__tmp285738
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self280268_
                                              __slot284930
                                              __t284927
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp285738 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp285737))))
                        (declare (not safe))
                        (cons __tmp285736 '()))))
                 (declare (not safe))
                 (cons __tmp285739 __tmp285735))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp285741
                                                        __tmp285734))))
                                           (declare (not safe))
                                           (cons __tmp285744 __tmp285733))))
                                    (declare (not safe))
                                    (cons '%#call __tmp285732))))
                             (declare (not safe))
                             (cons __tmp285731 '()))))
                      (declare (not safe))
                      (cons __tmp285746 __tmp285730))))
               (declare (not safe))
               (cons __tmp285757 __tmp285729))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp285728))))
                                         (declare (not safe))
                                         (cons __tmp285727 '()))))
                                  (declare (not safe))
                                  (cons __tmp285765 __tmp285726))))
                          (declare (not safe))
                          (cons '%#let-values __tmp285725))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp285723 _stx280269_))
                 (let ((__tmp285714
                        (let ((__tmp285715
                               (let ((__tmp285721
                                      (let ((__tmp285722
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp285722)))
                                     (__tmp285716
                                      (let ((__tmp285717
                                             (let ((__tmp285718
                                                    (let ((__tmp285719
                                                           (let ((__tmp285720
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self280268_
                             __slot284930
                             __t284927
                             '#f))))
                     (declare (not safe))
                     (cons __tmp285720 '()))))
              (declare (not safe))
              (cons '%#quote __tmp285719))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp285718 '()))))
                                        (declare (not safe))
                                        (cons _object280310_ __tmp285717))))
                                 (declare (not safe))
                                 (cons __tmp285721 __tmp285716))))
                          (declare (not safe))
                          (cons '%#call __tmp285715))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp285714 _stx280269_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd280276280290_)
                                  (let ()
                                    (declare (not safe))
                                    (_g280272280282_ _g280273280285_)))))
                          (let ()
                            (declare (not safe))
                            (_g280272280282_ _g280273280285_))))))
              (declare (not safe))
              (_g280271280320_ _args280270_))))))
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
      (lambda (_self280073_ _stx280074_ _args280075_)
        (let* ((_g280077280091_
                (lambda (_g280078280088_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g280078280088_))))
               (_g280076280143_
                (lambda (_g280078280094_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g280078280094_))
                      (let ((_e280083280096_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g280078280094_))))
                        (let ((_hd280082280099_
                               (let ()
                                 (declare (not safe))
                                 (##car _e280083280096_)))
                              (_tl280081280101_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e280083280096_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl280081280101_))
                              (let ((_e280086280104_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl280081280101_))))
                                (let ((_hd280085280107_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e280086280104_)))
                                      (_tl280084280109_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e280086280104_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl280084280109_))
                                      ((lambda (_L280112_ _L280113_)
                                         (let* ((_klass280127_
                                                 (let ((__tmp285799
                                                        (##structure-ref
                                                         _self280073_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx280074_
                                                    __tmp285799)))
                                                (_field280129_
                                                 (let ((__tmp285800
                                                        (##structure-ref
                                                         _self280073_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass280127_
                                                    __tmp285800)))
                                                (_object280131_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L280113_)))
                                                (_value280133_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L280112_))))
                                           (if (##structure-ref
                                                _klass280127_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp285882
                                                      (let ((__tmp285892
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self280073_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp285883
                     (let ((__tmp285889
                            (let ((__tmp285890
                                   (let ((__tmp285891
                                          (##structure-ref
                                           _self280073_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp285891 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp285890)))
                           (__tmp285884
                            (let ((__tmp285887
                                   (let ((__tmp285888
                                          (let ()
                                            (declare (not safe))
                                            (cons _field280129_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp285888)))
                                  (__tmp285885
                                   (let ((__tmp285886
                                          (let ()
                                            (declare (not safe))
                                            (cons _value280133_ '()))))
                                     (declare (not safe))
                                     (cons _object280131_ __tmp285886))))
                              (declare (not safe))
                              (cons __tmp285887 __tmp285885))))
                       (declare (not safe))
                       (cons __tmp285889 __tmp285884))))
                (declare (not safe))
                (cons __tmp285892 __tmp285883))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp285882
                                                  _stx280074_))
                                               (if (##structure-ref
                                                    _klass280127_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp285871
                                                          (let ((__tmp285881
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self280073_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp285872
                         (let ((__tmp285878
                                (let ((__tmp285879
                                       (let ((__tmp285880
                                              (##structure-ref
                                               _self280073_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp285880 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp285879)))
                               (__tmp285873
                                (let ((__tmp285876
                                       (let ((__tmp285877
                                              (let ()
                                                (declare (not safe))
                                                (cons _field280129_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp285877)))
                                      (__tmp285874
                                       (let ((__tmp285875
                                              (let ()
                                                (declare (not safe))
                                                (cons _value280133_ '()))))
                                         (declare (not safe))
                                         (cons _object280131_ __tmp285875))))
                                  (declare (not safe))
                                  (cons __tmp285876 __tmp285874))))
                           (declare (not safe))
                           (cons __tmp285878 __tmp285873))))
                    (declare (not safe))
                    (cons __tmp285881 __tmp285872))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp285871
                                                      _stx280074_))
                                                   (let ((_$e280136_
                                                          (let ((__tmp285801
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self280073_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass280127_ __tmp285801))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e280136_
                                                         ((lambda (_klass280139_)
                                                            (let ((__tmp285860
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp285870
                                  (if (##structure-ref
                                       _self280073_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp285861
                                  (let ((__tmp285867
                                         (let ((__tmp285868
                                                (let ((__tmp285869
                                                       (##structure-ref
                                                        _self280073_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp285869 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp285868)))
                                        (__tmp285862
                                         (let ((__tmp285865
                                                (let ((__tmp285866
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field280129_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp285866)))
                                               (__tmp285863
                                                (let ((__tmp285864
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value280133_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object280131_
                                                        __tmp285864))))
                                           (declare (not safe))
                                           (cons __tmp285865 __tmp285863))))
                                    (declare (not safe))
                                    (cons __tmp285867 __tmp285862))))
                             (declare (not safe))
                             (cons __tmp285870 __tmp285861))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp285860 _stx280074_)))
                  _$e280136_)
                 (if (##structure-ref _self280073_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp285812
                            (let* ((_$obj280141_
                                    (let ((__tmp285813 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp285813)))
                                   (__tmp285814
                                    (let ((__tmp285856
                                           (let ((__tmp285857
                                                  (let ((__tmp285859
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj280141_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp285858
                 (let () (declare (not safe)) (cons _object280131_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp285859
                                                          __tmp285858))))
                                             (declare (not safe))
                                             (cons __tmp285857 '())))
                                          (__tmp285815
                                           (let ((__tmp285816
                                                  (let ((__tmp285817
                                                         (let ((__tmp285848
                                                                (let ((__tmp285849
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp285853
                                      (let ((__tmp285854
                                             (let ((__tmp285855
                                                    (##structure-ref
                                                     _klass280127_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp285855 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp285854)))
                                     (__tmp285850
                                      (let ((__tmp285851
                                             (let ((__tmp285852
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj280141_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp285852))))
                                        (declare (not safe))
                                        (cons __tmp285851 '()))))
                                 (declare (not safe))
                                 (cons __tmp285853 __tmp285850))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp285849)))
                       (__tmp285818
                        (let ((__tmp285836
                               (let ((__tmp285837
                                      (let ((__tmp285845
                                             (let ((__tmp285846
                                                    (let ((__tmp285847
                                                           (##structure-ref
                                                            _self280073_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp285847 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp285846)))
                                            (__tmp285838
                                             (let ((__tmp285843
                                                    (let ((__tmp285844
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field280129_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp285844)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp285839
                                                    (let ((__tmp285841
                                                           (let ((__tmp285842
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj280141_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp285842)))
                  (__tmp285840
                   (let () (declare (not safe)) (cons _value280133_ '()))))
              (declare (not safe))
              (cons __tmp285841 __tmp285840))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp285843
                                                     __tmp285839))))
                                        (declare (not safe))
                                        (cons __tmp285845 __tmp285838))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp285837)))
                              (__tmp285819
                               (let ((__tmp285820
                                      (let ((__tmp285821
                                             (let ((__tmp285834
                                                    (let ((__tmp285835
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp285835)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp285822
                                                    (let ((__tmp285831
                                                           (let ((__tmp285832
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp285833
                                 (##structure-ref
                                  _self280073_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp285833 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp285832)))
                  (__tmp285823
                   (let ((__tmp285829
                          (let ((__tmp285830
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj280141_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp285830)))
                         (__tmp285824
                          (let ((__tmp285826
                                 (let ((__tmp285827
                                        (let ((__tmp285828
                                               (##structure-ref
                                                _self280073_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp285828 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp285827)))
                                (__tmp285825
                                 (let ()
                                   (declare (not safe))
                                   (cons _value280133_ '()))))
                            (declare (not safe))
                            (cons __tmp285826 __tmp285825))))
                     (declare (not safe))
                     (cons __tmp285829 __tmp285824))))
              (declare (not safe))
              (cons __tmp285831 __tmp285823))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp285834
                                                     __tmp285822))))
                                        (declare (not safe))
                                        (cons '%#call __tmp285821))))
                                 (declare (not safe))
                                 (cons __tmp285820 '()))))
                          (declare (not safe))
                          (cons __tmp285836 __tmp285819))))
                   (declare (not safe))
                   (cons __tmp285848 __tmp285818))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp285817))))
                                             (declare (not safe))
                                             (cons __tmp285816 '()))))
                                      (declare (not safe))
                                      (cons __tmp285856 __tmp285815))))
                              (declare (not safe))
                              (cons '%#let-values __tmp285814))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp285812 _stx280074_))
                     (let ((__tmp285802
                            (let ((__tmp285803
                                   (let ((__tmp285810
                                          (let ((__tmp285811
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp285811)))
                                         (__tmp285804
                                          (let ((__tmp285805
                                                 (let ((__tmp285807
                                                        (let ((__tmp285808
                                                               (let ((__tmp285809
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self280073_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp285809 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp285808)))
               (__tmp285806
                (let () (declare (not safe)) (cons _value280133_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp285807
                                                         __tmp285806))))
                                            (declare (not safe))
                                            (cons _object280131_
                                                  __tmp285805))))
                                     (declare (not safe))
                                     (cons __tmp285810 __tmp285804))))
                              (declare (not safe))
                              (cons '%#call __tmp285803))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp285802 _stx280074_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd280085280107_
                                       _hd280082280099_)
                                      (let ()
                                        (declare (not safe))
                                        (_g280077280091_ _g280078280094_)))))
                              (let ()
                                (declare (not safe))
                                (_g280077280091_ _g280078280094_)))))
                      (let ()
                        (declare (not safe))
                        (_g280077280091_ _g280078280094_))))))
          (declare (not safe))
          (_g280076280143_ _args280075_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__t284934)
        (let ((__slot284935
               (let ((__tmp284938
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t284934 'slot))))
                 (if __tmp284938
                     __tmp284938
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id284936
               (let ((__tmp284939
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t284934 'id))))
                 (if __tmp284939
                     __tmp284939
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?284937
               (let ((__tmp284940
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t284934 'checked?))))
                 (if __tmp284940
                     __tmp284940
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self280073_ _stx280074_ _args280075_)
            (let* ((_g280077280091_
                    (lambda (_g280078280088_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g280078280088_))))
                   (_g280076280143_
                    (lambda (_g280078280094_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g280078280094_))
                          (let ((_e280083280096_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g280078280094_))))
                            (let ((_hd280082280099_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e280083280096_)))
                                  (_tl280081280101_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e280083280096_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl280081280101_))
                                  (let ((_e280086280104_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl280081280101_))))
                                    (let ((_hd280085280107_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e280086280104_)))
                                          (_tl280084280109_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e280086280104_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl280084280109_))
                                          ((lambda (_L280112_ _L280113_)
                                             (let* ((_klass280127_
                                                     (let ((__tmp285893
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self280073_
                                                               __id284936
                                                               __t284934
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx280074_
                                                        __tmp285893)))
                                                    (_field280129_
                                                     (let ((__tmp285894
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self280073_
                                                               __slot284935
                                                               __t284934
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass280127_
                                                        __tmp285894)))
                                                    (_object280131_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L280113_)))
                                                    (_value280133_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L280112_))))
                                               (if (##structure-ref
                                                    _klass280127_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp285976
                                                          (let ((__tmp285986
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self280073_
                                __checked?284937
                                __t284934
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp285977
                         (let ((__tmp285983
                                (let ((__tmp285984
                                       (let ((__tmp285985
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self280073_
                                                 __id284936
                                                 __t284934
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp285985 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp285984)))
                               (__tmp285978
                                (let ((__tmp285981
                                       (let ((__tmp285982
                                              (let ()
                                                (declare (not safe))
                                                (cons _field280129_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp285982)))
                                      (__tmp285979
                                       (let ((__tmp285980
                                              (let ()
                                                (declare (not safe))
                                                (cons _value280133_ '()))))
                                         (declare (not safe))
                                         (cons _object280131_ __tmp285980))))
                                  (declare (not safe))
                                  (cons __tmp285981 __tmp285979))))
                           (declare (not safe))
                           (cons __tmp285983 __tmp285978))))
                    (declare (not safe))
                    (cons __tmp285986 __tmp285977))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp285976
                                                      _stx280074_))
                                                   (if (##structure-ref
                                                        _klass280127_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp285965
                                                              (let ((__tmp285975
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self280073_
                                    __checked?284937
                                    __t284934
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp285966
                             (let ((__tmp285972
                                    (let ((__tmp285973
                                           (let ((__tmp285974
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self280073_
                                                     __id284936
                                                     __t284934
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp285974 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp285973)))
                                   (__tmp285967
                                    (let ((__tmp285970
                                           (let ((__tmp285971
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field280129_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp285971)))
                                          (__tmp285968
                                           (let ((__tmp285969
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value280133_ '()))))
                                             (declare (not safe))
                                             (cons _object280131_
                                                   __tmp285969))))
                                      (declare (not safe))
                                      (cons __tmp285970 __tmp285968))))
                               (declare (not safe))
                               (cons __tmp285972 __tmp285967))))
                        (declare (not safe))
                        (cons __tmp285975 __tmp285966))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp285965 _stx280074_))
               (let ((_$e280136_
                      (let ((__tmp285895
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self280073_
                                __slot284935
                                __t284934
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass280127_
                         __tmp285895))))
                 (if _$e280136_
                     ((lambda (_klass280139_)
                        (let ((__tmp285954
                               (let ((__tmp285964
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self280073_
                                             __checked?284937
                                             __t284934
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp285955
                                      (let ((__tmp285961
                                             (let ((__tmp285962
                                                    (let ((__tmp285963
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self280073_
                                                              __id284936
                                                              __t284934
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp285963 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp285962)))
                                            (__tmp285956
                                             (let ((__tmp285959
                                                    (let ((__tmp285960
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field280129_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp285960)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp285957
                                                    (let ((__tmp285958
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value280133_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object280131_ __tmp285958))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp285959
                                                     __tmp285957))))
                                        (declare (not safe))
                                        (cons __tmp285961 __tmp285956))))
                                 (declare (not safe))
                                 (cons __tmp285964 __tmp285955))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp285954 _stx280074_)))
                      _$e280136_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self280073_
                            __checked?284937
                            __t284934
                            '#f))
                         (let ((__tmp285906
                                (let* ((_$obj280141_
                                        (let ((__tmp285907 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp285907)))
                                       (__tmp285908
                                        (let ((__tmp285950
                                               (let ((__tmp285951
                                                      (let ((__tmp285953
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj280141_ '())))
                    (__tmp285952
                     (let () (declare (not safe)) (cons _object280131_ '()))))
                (declare (not safe))
                (cons __tmp285953 __tmp285952))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp285951 '())))
                                              (__tmp285909
                                               (let ((__tmp285910
                                                      (let ((__tmp285911
                                                             (let ((__tmp285942
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp285943
                                   (let ((__tmp285947
                                          (let ((__tmp285948
                                                 (let ((__tmp285949
                                                        (##structure-ref
                                                         _klass280127_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp285949 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp285948)))
                                         (__tmp285944
                                          (let ((__tmp285945
                                                 (let ((__tmp285946
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj280141_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp285946))))
                                            (declare (not safe))
                                            (cons __tmp285945 '()))))
                                     (declare (not safe))
                                     (cons __tmp285947 __tmp285944))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp285943)))
                           (__tmp285912
                            (let ((__tmp285930
                                   (let ((__tmp285931
                                          (let ((__tmp285939
                                                 (let ((__tmp285940
                                                        (let ((__tmp285941
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self280073_
                          __id284936
                          __t284934
                          '#f))))
                  (declare (not safe))
                  (cons __tmp285941 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp285940)))
                                                (__tmp285932
                                                 (let ((__tmp285937
                                                        (let ((__tmp285938
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field280129_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp285938)))
               (__tmp285933
                (let ((__tmp285935
                       (let ((__tmp285936
                              (let ()
                                (declare (not safe))
                                (cons _$obj280141_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp285936)))
                      (__tmp285934
                       (let () (declare (not safe)) (cons _value280133_ '()))))
                  (declare (not safe))
                  (cons __tmp285935 __tmp285934))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp285937
                                                         __tmp285933))))
                                            (declare (not safe))
                                            (cons __tmp285939 __tmp285932))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp285931)))
                                  (__tmp285913
                                   (let ((__tmp285914
                                          (let ((__tmp285915
                                                 (let ((__tmp285928
                                                        (let ((__tmp285929
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp285929)))
               (__tmp285916
                (let ((__tmp285925
                       (let ((__tmp285926
                              (let ((__tmp285927
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self280073_
                                        __id284936
                                        __t284934
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp285927 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp285926)))
                      (__tmp285917
                       (let ((__tmp285923
                              (let ((__tmp285924
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj280141_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp285924)))
                             (__tmp285918
                              (let ((__tmp285920
                                     (let ((__tmp285921
                                            (let ((__tmp285922
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self280073_
                                                      __slot284935
                                                      __t284934
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp285922 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp285921)))
                                    (__tmp285919
                                     (let ()
                                       (declare (not safe))
                                       (cons _value280133_ '()))))
                                (declare (not safe))
                                (cons __tmp285920 __tmp285919))))
                         (declare (not safe))
                         (cons __tmp285923 __tmp285918))))
                  (declare (not safe))
                  (cons __tmp285925 __tmp285917))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp285928
                                                         __tmp285916))))
                                            (declare (not safe))
                                            (cons '%#call __tmp285915))))
                                     (declare (not safe))
                                     (cons __tmp285914 '()))))
                              (declare (not safe))
                              (cons __tmp285930 __tmp285913))))
                       (declare (not safe))
                       (cons __tmp285942 __tmp285912))))
                (declare (not safe))
                (cons '%#if __tmp285911))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp285910 '()))))
                                          (declare (not safe))
                                          (cons __tmp285950 __tmp285909))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp285908))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp285906 _stx280074_))
                         (let ((__tmp285896
                                (let ((__tmp285897
                                       (let ((__tmp285904
                                              (let ((__tmp285905
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp285905)))
                                             (__tmp285898
                                              (let ((__tmp285899
                                                     (let ((__tmp285901
                                                            (let ((__tmp285902
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp285903
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self280073_
                                     __slot284935
                                     __t284934
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp285903 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp285902)))
                   (__tmp285900
                    (let () (declare (not safe)) (cons _value280133_ '()))))
               (declare (not safe))
               (cons __tmp285901 __tmp285900))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object280131_
                                                      __tmp285899))))
                                         (declare (not safe))
                                         (cons __tmp285904 __tmp285898))))
                                  (declare (not safe))
                                  (cons '%#call __tmp285897))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp285896
                            _stx280074_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd280085280107_
                                           _hd280082280099_)
                                          (let ()
                                            (declare (not safe))
                                            (_g280077280091_
                                             _g280078280094_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g280077280091_ _g280078280094_)))))
                          (let ()
                            (declare (not safe))
                            (_g280077280091_ _g280078280094_))))))
              (declare (not safe))
              (_g280076280143_ _args280075_))))))
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
      (lambda (_self279907_ _stx279908_ _args279909_)
        (let* ((_self279910279919_ _self279907_)
               (_E279912279923_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self279910279919_))))
               (_K279913279930_
                (lambda (_inline279926_ _dispatch279927_ _arity279928_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self279907_ _args279909_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx279908_
                         _arity279928_)))
                  (if _inline279926_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp285992
                               (let ((__tmp285993
                                      (_inline279926_ _stx279908_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp285993
                                  _stx279908_))))
                          (declare (not safe))
                          (gxc#compile-e__0 __tmp285992)))
                      (if _dispatch279927_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch279927_))
                            (let ((__tmp285987
                                   (let ((__tmp285988
                                          (let ((__tmp285989
                                                 (let ((__tmp285990
                                                        (let ((__tmp285991
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch279927_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp285991))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp285990
                                                         _args279909_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp285989))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp285988
                                      _stx279908_))))
                              (declare (not safe))
                              (gxc#compile-e__0 __tmp285987)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _stx279908_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self279910279919_ 'gxc#!lambda::t))
              (let* ((_e279914279933_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self279910279919_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e279915279936_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self279910279919_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity279939_ _e279915279936_)
                     (_e279916279941_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self279910279919_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch279944_ _e279916279941_)
                     (_e279917279946_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self279910279919_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline279949_ _e279917279946_))
                (declare (not safe))
                (_K279913279930_
                 _inline279949_
                 _dispatch279944_
                 _arity279939_))
              (let () (declare (not safe)) (_E279912279923_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self279746_ _stx279747_ _args279748_)
        (let* ((_self279749279756_ _self279746_)
               (_E279751279760_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self279749279756_))))
               (_K279752279774_
                (lambda (_clauses279763_)
                  (let ((_$e279769_
                         (let ((__tmp285994
                                (lambda (_g279764279766_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g279764279766_
                                     _args279748_)))))
                           (declare (not safe))
                           (find __tmp285994 _clauses279763_))))
                    (if _$e279769_
                        ((lambda (_clause279772_)
                           (let ((__method285209
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause279772_
                                     'optimize-call))))
                             (if __method285209
                                 (__method285209
                                  _clause279772_
                                  _stx279747_
                                  _args279748_)
                                 (let ()
                                   (declare (not safe))
                                   (error '"Missing method"
                                          _clause279772_
                                          'optimize-call)))))
                         _$e279769_)
                        (let ((__tmp285995
                               (map gxc#!lambda-arity _clauses279763_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx279747_
                           __tmp285995)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self279749279756_
                 'gxc#!case-lambda::t))
              (let* ((_e279753279777_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self279749279756_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e279754279780_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self279749279756_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses279783_ _e279754279780_))
                (declare (not safe))
                (_K279752279774_ _clauses279783_))
              (let () (declare (not safe)) (_E279751279760_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self279560_ _args279561_)
        (let* ((_self279562279569_ _self279560_)
               (_E279564279573_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self279562279569_))))
               (_K279565279613_
                (lambda (_arity279576_)
                  (let* ((_arity279577279586_ _arity279576_)
                         (_E279580279590_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (error '"No clause matching"
                                     _arity279577279586_)))))
                    (let ((_K279584279610_
                           (lambda ()
                             (fx= (length _args279561_) _arity279576_)))
                          (_K279581279596_
                           (lambda (_arity279594_)
                             (fx>= (length _args279561_) _arity279594_))))
                      (let ((_try-match279579279606_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity279577279586_))
                                   (let ((_tl279583279601_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity279577279586_)))
                                         (_hd279582279599_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity279577279586_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl279583279601_))
                                         (let ((_arity279604_
                                                _hd279582279599_))
                                           (declare (not safe))
                                           (_K279581279596_ _arity279604_))
                                         (let ()
                                           (declare (not safe))
                                           (_E279580279590_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E279580279590_))))))
                        (if (let ()
                              (declare (not safe))
                              (fixnum? _arity279577279586_))
                            (let () (declare (not safe)) (_K279584279610_))
                            (let ()
                              (declare (not safe))
                              (_try-match279579279606_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self279562279569_ 'gxc#!lambda::t))
              (let* ((_e279566279616_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self279562279569_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e279567279619_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self279562279569_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity279622_ _e279567279619_))
                (declare (not safe))
                (_K279565279613_ _arity279622_))
              (let () (declare (not safe)) (_E279564279573_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self279445_ _stx279446_ _args279447_)
        (let* ((_self279448279456_ _self279445_)
               (_E279450279460_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self279448279456_))))
               (_K279451279544_
                (lambda (_dispatch279463_ _table279464_)
                  (let* ((_g279465279474_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch279463_)))
                         (_else279467279482_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch279463_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _stx279446_))))
                         (_K279469279528_
                          (lambda (_main279485_ _keys279486_)
                            (let ((_g285996_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx279446_
                                      _args279447_))))
                              (begin
                                (let ((_g285997_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g285996_)
                                             (##vector-length _g285996_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g285997_ 2)))
                                      (error "Context expects 2 values"
                                             _g285997_)))
                                (let ((_pargs279488_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g285996_ 0)))
                                      (_kwargs279489_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g285996_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main279485_))
                                    (if _table279464_
                                        (let ((_xargs279496_
                                               (map (lambda (_key279491_)
                                                      (let ((_$e279493_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__0 _key279491_ _kwargs279489_))))
                (if _$e279493_ (values _$e279493_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys279486_)))
                                          (for-each
                                           (lambda (_kw279498_)
                                             (if (memq (car _kw279498_)
                                                       _keys279486_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx279446_
                                                    _keys279486_
                                                    _kw279498_))))
                                           _kwargs279489_)
                                          (let ((__tmp286049
                                                 (let ((__tmp286050
                                                        (let ((__tmp286051
                                                               (let ((__tmp286056
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp286057
                                     (let ()
                                       (declare (not safe))
                                       (cons _main279485_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp286057)))
                             (__tmp286052
                              (let ((__tmp286054
                                     (let ((__tmp286055
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp286055)))
                                    (__tmp286053
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs279488_
                                               _xargs279496_))))
                                (declare (not safe))
                                (cons __tmp286054 __tmp286053))))
                         (declare (not safe))
                         (cons __tmp286056 __tmp286052))))
                  (declare (not safe))
                  (cons '%#call __tmp286051))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp286050
                                                    _stx279446_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0 __tmp286049)))
                                        (let* ((_kwt279500_
                                                (let ((__tmp285998
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp285998)))
                                               (_kwvars279503_
                                                (map (lambda (_g285999_)
                                                       (let ((__tmp286000
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp286000)))
                                                     _kwargs279489_))
                                               (_kwbind279508_
                                                (map (lambda (_kw279505_
                                                              _kwvar279506_)
                                                       (let ((__tmp286003
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar279506_ '())))
                     (__tmp286001
                      (let ((__tmp286002 (cdr _kw279505_)))
                        (declare (not safe))
                        (cons __tmp286002 '()))))
                 (declare (not safe))
                 (cons __tmp286003 __tmp286001)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs279489_
                                                     _kwvars279503_))
                                               (_kwset279513_
                                                (map (lambda (_kw279510_
                                                              _kwvar279511_)
                                                       (let ((__tmp286004
                                                              (let ((__tmp286005
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp286013
                                    (let ((__tmp286014
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt279500_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp286014)))
                                   (__tmp286006
                                    (let ((__tmp286010
                                           (let ((__tmp286011
                                                  (let ((__tmp286012
                                                         (car _kw279510_)))
                                                    (declare (not safe))
                                                    (cons __tmp286012 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp286011)))
                                          (__tmp286007
                                           (let ((__tmp286008
                                                  (let ((__tmp286009
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar279511_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp286009))))
                                             (declare (not safe))
                                             (cons __tmp286008 '()))))
                                      (declare (not safe))
                                      (cons __tmp286010 __tmp286007))))
                               (declare (not safe))
                               (cons __tmp286013 __tmp286006))))
                        (declare (not safe))
                        (cons '(%#ref symoblic-table-set!) __tmp286005))))
                 (declare (not safe))
                 (cons '%#call __tmp286004)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs279489_
                                                     _kwvars279503_))
                                               (_xkwargs279518_
                                                (map (lambda (_kw279515_
                                                              _kwvar279516_)
                                                       (let ((__tmp286017
                                                              (car _kw279515_))
                                                             (__tmp286015
                                                              (let ((__tmp286016
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar279516_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp286016))))
                 (declare (not safe))
                 (cons __tmp286017 __tmp286015)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs279489_
                                                     _kwvars279503_))
                                               (_xargs279525_
                                                (map (lambda (_key279520_)
                                                       (let ((_$e279522_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq__0 _key279520_ _xkwargs279518_))))
                 (if _$e279522_ (values _$e279522_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys279486_)))
                                          (let ((__tmp286018
                                                 (let ((__tmp286019
                                                        (let ((__tmp286020
                                                               (let ((__tmp286021
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp286022
                                     (let ((__tmp286023
                                            (let ((__tmp286037
                                                   (let ((__tmp286038
                                                          (let ((__tmp286048
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt279500_ '())))
                        (__tmp286039
                         (let ((__tmp286040
                                (let ((__tmp286041
                                       (let ((__tmp286042
                                              (let ((__tmp286043
                                                     (let ((__tmp286045
                                                            (let ((__tmp286046
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp286047 (length _kwargs279489_)))
                             (declare (not safe))
                             (cons __tmp286047 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp286046)))
                   (__tmp286044
                    (let () (declare (not safe)) (cons '(%#quote 0) '()))))
               (declare (not safe))
               (cons __tmp286045 __tmp286044))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-symbolic-table)
                                                      __tmp286043))))
                                         (declare (not safe))
                                         (cons '%#call __tmp286042))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp286041
                                   _stx279446_))))
                           (declare (not safe))
                           (cons __tmp286040 '()))))
                    (declare (not safe))
                    (cons __tmp286048 __tmp286039))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp286038 '())))
                                                  (__tmp286024
                                                   (let ((__tmp286025
                                                          (let ((__tmp286026
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp286027
                                (let ((__tmp286028
                                       (let ((__tmp286029
                                              (let ((__tmp286030
                                                     (let ((__tmp286035
                                                            (let ((__tmp286036
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main279485_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp286036)))
                   (__tmp286031
                    (let ((__tmp286033
                           (let ((__tmp286034
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt279500_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp286034)))
                          (__tmp286032
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs279488_ _xargs279525_))))
                      (declare (not safe))
                      (cons __tmp286033 __tmp286032))))
               (declare (not safe))
               (cons __tmp286035 __tmp286031))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp286030))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp286029
                                          _stx279446_))))
                                  (declare (not safe))
                                  (cons __tmp286028 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp286027 _kwset279513_))))
                    (declare (not safe))
                    (cons '%#begin __tmp286026))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp286025 '()))))
                                              (declare (not safe))
                                              (cons __tmp286037 __tmp286024))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp286023))))
                                (declare (not safe))
                                (cons __tmp286022 '()))))
                         (declare (not safe))
                         (cons _kwbind279508_ __tmp286021))))
                  (declare (not safe))
                  (cons '%#let-values __tmp286020))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp286019
                                                    _stx279446_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0
                                             __tmp286018)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g279465279474_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e279470279531_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g279465279474_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e279471279534_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g279465279474_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys279537_ _e279471279534_)
                               (_e279472279539_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g279465279474_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main279542_ _e279472279539_))
                          (declare (not safe))
                          (_K279469279528_ _main279542_ _keys279537_))
                        (let () (declare (not safe)) (_else279467279482_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self279448279456_
                 'gxc#!kw-lambda::t))
              (let* ((_e279452279547_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self279448279456_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e279453279550_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self279448279456_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table279553_ _e279453279550_)
                     (_e279454279555_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self279448279456_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch279558_ _e279454279555_))
                (declare (not safe))
                (_K279451279544_ _dispatch279558_ _table279553_))
              (let () (declare (not safe)) (_E279450279460_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx279058_ _args279059_)
        (let _lp279061_ ((_rest279063_ _args279059_)
                         (_pargs279064_ '())
                         (_kwargs279065_ '()))
          (let* ((___stx285091285092_ _rest279063_)
                 (_g279071279123_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx285091285092_)))))
            (let ((___kont285093285094_
                   (lambda (_L279302_ _L279303_)
                     (let ((__tmp286058
                            (let ()
                              (declare (not safe))
                              (cons _L279303_ _pargs279064_))))
                       (declare (not safe))
                       (_lp279061_ _L279302_ __tmp286058 _kwargs279065_))))
                  (___kont285095285096_
                   (lambda (_L279248_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L279248_ _pargs279064_))
                             (reverse _kwargs279065_))))
                  (___kont285097285098_
                   (lambda (_L279195_ _L279196_ _L279197_)
                     (let ((_kw279214_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L279197_))))
                       (if (assq _kw279214_ _kwargs279065_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx279058_
                              _kw279214_))
                           (let ((__tmp286059
                                  (let ((__tmp286060
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw279214_ _L279196_))))
                                    (declare (not safe))
                                    (cons __tmp286060 _kwargs279065_))))
                             (declare (not safe))
                             (_lp279061_
                              _L279195_
                              _pargs279064_
                              __tmp286059))))))
                  (___kont285099285100_
                   (lambda (_L279143_ _L279144_)
                     (let ((__tmp286061
                            (let ()
                              (declare (not safe))
                              (cons _L279144_ _pargs279064_))))
                       (declare (not safe))
                       (_lp279061_ _L279143_ __tmp286061 _kwargs279065_))))
                  (___kont285101285102_
                   (lambda ()
                     (values (reverse _pargs279064_)
                             (reverse _kwargs279065_)))))
              (let* ((_g279070279130_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx285091285092_))
                            (___kont285101285102_)
                            (let () (declare (not safe)) (_g279071279123_)))))
                     (___match285198285199_
                      (lambda (_e279104279163_
                               _hd279103279166_
                               _tl279102279168_
                               _e279107279171_
                               _hd279106279174_
                               _tl279105279176_
                               _e279110279179_
                               _hd279109279182_
                               _tl279108279184_
                               _e279113279187_
                               _hd279112279190_
                               _tl279111279192_)
                        (let ((_L279195_ _tl279111279192_)
                              (_L279196_ _hd279112279190_)
                              (_L279197_ _hd279109279182_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L279197_))
                              (___kont285097285098_
                               _L279195_
                               _L279196_
                               _L279197_)
                              (___kont285099285100_
                               _tl279102279168_
                               _hd279103279166_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx285091285092_))
                    (let ((_e279077279267_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx285091285092_))))
                      (let ((_tl279075279272_
                             (let ()
                               (declare (not safe))
                               (##cdr _e279077279267_)))
                            (_hd279076279270_
                             (let ()
                               (declare (not safe))
                               (##car _e279077279267_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd279076279270_))
                            (let ((_e279080279275_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd279076279270_))))
                              (let ((_tl279078279280_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e279080279275_)))
                                    (_hd279079279278_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e279080279275_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd279079279278_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd279079279278_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl279078279280_))
                                            (let ((_e279083279283_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl279078279280_))))
                                              (let ((_tl279081279288_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e279083279283_)))
                                                    (_hd279082279286_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e279083279283_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd279082279286_))
                                                    (let ((_e279084279291_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd279082279286_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e279084279291_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl279081279288_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl279075279272_))
                          (let ((_e279087279294_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl279075279272_))))
                            (let ((_tl279085279299_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e279087279294_)))
                                  (_hd279086279297_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e279087279294_))))
                              (___kont285093285094_
                               _tl279085279299_
                               _hd279086279297_)))
                          (___kont285099285100_
                           _tl279075279272_
                           _hd279076279270_))
                      (___kont285099285100_ _tl279075279272_ _hd279076279270_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e279084279291_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl279081279288_))
                          (___kont285095285096_ _tl279075279272_)
                          (___kont285099285100_
                           _tl279075279272_
                           _hd279076279270_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl279081279288_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl279075279272_))
                              (let ((_e279113279187_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl279075279272_))))
                                (let ((_tl279111279192_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e279113279187_)))
                                      (_hd279112279190_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e279113279187_))))
                                  (___match285198285199_
                                   _e279077279267_
                                   _hd279076279270_
                                   _tl279075279272_
                                   _e279080279275_
                                   _hd279079279278_
                                   _tl279078279280_
                                   _e279083279283_
                                   _hd279082279286_
                                   _tl279081279288_
                                   _e279113279187_
                                   _hd279112279190_
                                   _tl279111279192_)))
                              (___kont285099285100_
                               _tl279075279272_
                               _hd279076279270_))
                          (___kont285099285100_
                           _tl279075279272_
                           _hd279076279270_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl279081279288_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl279075279272_))
                                                            (let ((_e279113279187_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl279075279272_))))
                      (let ((_tl279111279192_
                             (let ()
                               (declare (not safe))
                               (##cdr _e279113279187_)))
                            (_hd279112279190_
                             (let ()
                               (declare (not safe))
                               (##car _e279113279187_))))
                        (___match285198285199_
                         _e279077279267_
                         _hd279076279270_
                         _tl279075279272_
                         _e279080279275_
                         _hd279079279278_
                         _tl279078279280_
                         _e279083279283_
                         _hd279082279286_
                         _tl279081279288_
                         _e279113279187_
                         _hd279112279190_
                         _tl279111279192_)))
                    (___kont285099285100_ _tl279075279272_ _hd279076279270_))
                (___kont285099285100_ _tl279075279272_ _hd279076279270_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont285099285100_
                                             _tl279075279272_
                                             _hd279076279270_))
                                        (___kont285099285100_
                                         _tl279075279272_
                                         _hd279076279270_))
                                    (___kont285099285100_
                                     _tl279075279272_
                                     _hd279076279270_))))
                            (___kont285099285100_
                             _tl279075279272_
                             _hd279076279270_))))
                    (let () (declare (not safe)) (_g279070279130_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self279054_ _stx279055_ _args279056_)
        (let () (declare (not safe)) (gxc#xform-call% _stx279055_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
