(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1708168075)
  (begin
    (define gxc#&optimize-call
      (make-promise
       (lambda ()
         (let ((_tbl285256_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp290115 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl285256_ __tmp290115))
           (let ()
             (declare (not safe))
             (table-set! _tbl285256_ '%#call gxc#optimize-call%))
           _tbl285256_))))
    (define gxc#apply-optimize-call
      (lambda (_stx285239_ . _args285241_)
        (let ((__tmp290117
               (lambda ()
                 (declare (not safe))
                 (if (null? _args285241_)
                     (gxc#compile-e__0 _stx285239_)
                     (let ((_arg1285246_ (car _args285241_))
                           (_rest285248_ (cdr _args285241_)))
                       (if (null? _rest285248_)
                           (gxc#compile-e__1 _stx285239_ _arg1285246_)
                           (let ((_arg2285251_ (car _rest285248_))
                                 (_rest285253_ (cdr _rest285248_)))
                             (if (null? _rest285253_)
                                 (gxc#compile-e__2
                                  _stx285239_
                                  _arg1285246_
                                  _arg2285251_)
                                 (apply gxc#compile-e
                                        _stx285239_
                                        _arg1285246_
                                        _arg2285251_
                                        _rest285253_))))))))
              (__tmp290116 (force gxc#&optimize-call)))
          (declare (not safe))
          (call-with-parameters
           __tmp290117
           gxc#current-compile-methods
           __tmp290116))))
    (define gxc#optimize-call%
      (lambda (_stx285094_)
        (let* ((___stx289865289866_ _stx285094_)
               (_g285097285117_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx289865289866_)))))
          (let ((___kont289867289868_
                 (lambda (_L285161_ _L285162_)
                   (let* ((_rator-id285180_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L285162_)))
                          (_rator-type285182_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id285180_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type285182_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp290118
                                  (##structure-ref
                                   _rator-type285182_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id285180_
                              '" => "
                              _rator-type285182_
                              '" "
                              __tmp290118))
                           (let ((_optimized285185_
                                  (let ((__method290113
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type285182_
                                            'optimize-call))))
                                    (if __method290113
                                        (__method290113
                                         _rator-type285182_
                                         _stx285094_
                                         _L285161_)
                                        (error '"Missing method"
                                               _rator-type285182_
                                               'optimize-call)))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type285182_))
                                 _optimized285185_
                                 (let* ((___stx289847289848_ _optimized285185_)
                                        (_g285188285198_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx289847289848_)))))
                                   (let ((___kont289849289850_
                                          (lambda (_L285218_)
                                            (let ((__tmp290119
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L285218_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp290119
                                               _stx285094_))))
                                         (___kont289851289852_
                                          (lambda () _optimized285185_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx289847289848_))
                                         (let ((_e285193285210_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx289847289848_))))
                                           (let ((_tl285191285215_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e285193285210_)))
                                                 (_hd285192285213_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e285193285210_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd285192285213_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd285192285213_))
                                                     (___kont289849289850_
                                                      _tl285191285215_)
                                                     (___kont289851289852_))
                                                 (___kont289851289852_))))
                                         (___kont289851289852_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type285182_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx285094_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx285094_
                                _rator-type285182_)))))))
                (___kont289869289870_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _stx285094_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx289865289866_))
                (let ((_e285103285129_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx289865289866_))))
                  (let ((_tl285101285134_
                         (let () (declare (not safe)) (##cdr _e285103285129_)))
                        (_hd285102285132_
                         (let ()
                           (declare (not safe))
                           (##car _e285103285129_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl285101285134_))
                        (let ((_e285106285137_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl285101285134_))))
                          (let ((_tl285104285142_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e285106285137_)))
                                (_hd285105285140_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e285106285137_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd285105285140_))
                                (let ((_e285109285145_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd285105285140_))))
                                  (let ((_tl285107285150_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e285109285145_)))
                                        (_hd285108285148_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e285109285145_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd285108285148_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd285108285148_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl285107285150_))
                                                (let ((_e285112285153_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl285107285150_))))
                                                  (let ((_tl285110285158_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e285112285153_)))
                                                        (_hd285111285156_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e285112285153_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl285110285158_))
                                                        (___kont289867289868_
                                                         _tl285104285142_
                                                         _hd285111285156_)
                                                        (___kont289869289870_))))
                                                (___kont289869289870_))
                                            (___kont289869289870_))
                                        (___kont289869289870_))))
                                (___kont289869289870_))))
                        (___kont289869289870_))))
                (___kont289869289870_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self285048_ _stx285049_ _args285050_)
        (let* ((_g285052285062_
                (lambda (_g285053285059_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g285053285059_))))
               (_g285051285091_
                (lambda (_g285053285065_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g285053285065_))
                      (let ((_e285057285067_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g285053285065_))))
                        (let ((_hd285056285070_
                               (let ()
                                 (declare (not safe))
                                 (##car _e285057285067_)))
                              (_tl285055285072_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e285057285067_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl285055285072_))
                              ((lambda (_L285075_)
                                 (let* ((_klass285086_
                                         (let ((__tmp290120
                                                (##structure-ref
                                                 _self285048_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx285049_
                                            __tmp290120)))
                                        (_object285088_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L285075_))))
                                   (if (##structure-ref
                                        _klass285086_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp290136
                                              (let ((__tmp290137
                                                     (let ((__tmp290139
                                                            (let ((__tmp290140
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp290141
                                  (##structure-ref
                                   _klass285086_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp290141 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp290140)))
                   (__tmp290138
                    (let () (declare (not safe)) (cons _object285088_ '()))))
               (declare (not safe))
               (cons __tmp290139 __tmp290138))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp290137))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp290136
                                          _stx285049_))
                                       (if (##structure-ref
                                            _klass285086_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp290130
                                                  (let ((__tmp290131
                                                         (let ((__tmp290133
                                                                (let ((__tmp290134
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp290135
                                      (##structure-ref
                                       _klass285086_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp290135 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp290134)))
                       (__tmp290132
                        (let ()
                          (declare (not safe))
                          (cons _object285088_ '()))))
                   (declare (not safe))
                   (cons __tmp290133 __tmp290132))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp290131))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp290130
                                              _stx285049_))
                                           (let ((__tmp290121
                                                  (let ((__tmp290122
                                                         (let ((__tmp290128
                                                                (let ((__tmp290129
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp290129)))
                       (__tmp290123
                        (let ((__tmp290125
                               (let ((__tmp290126
                                      (let ((__tmp290127
                                             (##structure-ref
                                              _self285048_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp290127 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp290126)))
                              (__tmp290124
                               (let ()
                                 (declare (not safe))
                                 (cons _object285088_ '()))))
                          (declare (not safe))
                          (cons __tmp290125 __tmp290124))))
                   (declare (not safe))
                   (cons __tmp290128 __tmp290123))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp290122))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp290121
                                              _stx285049_))))))
                               _hd285056285070_)
                              (let ()
                                (declare (not safe))
                                (_g285052285062_ _g285053285065_)))))
                      (let ()
                        (declare (not safe))
                        (_g285052285062_ _g285053285065_))))))
          (declare (not safe))
          (_g285051285091_ _args285050_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__t289826)
        (let ((__id289827
               (let ((__tmp289828
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t289826 'id))))
                 (if __tmp289828 __tmp289828 (error '"Unknown slot" 'id)))))
          (lambda (_self285048_ _stx285049_ _args285050_)
            (let* ((_g285052285062_
                    (lambda (_g285053285059_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g285053285059_))))
                   (_g285051285091_
                    (lambda (_g285053285065_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g285053285065_))
                          (let ((_e285057285067_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g285053285065_))))
                            (let ((_hd285056285070_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e285057285067_)))
                                  (_tl285055285072_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e285057285067_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl285055285072_))
                                  ((lambda (_L285075_)
                                     (let* ((_klass285086_
                                             (let ((__tmp290142
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self285048_
                                                       __id289827
                                                       __t289826
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx285049_
                                                __tmp290142)))
                                            (_object285088_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L285075_))))
                                       (if (##structure-ref
                                            _klass285086_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp290158
                                                  (let ((__tmp290159
                                                         (let ((__tmp290161
                                                                (let ((__tmp290162
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp290163
                                      (##structure-ref
                                       _klass285086_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp290163 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp290162)))
                       (__tmp290160
                        (let ()
                          (declare (not safe))
                          (cons _object285088_ '()))))
                   (declare (not safe))
                   (cons __tmp290161 __tmp290160))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp290159))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp290158
                                              _stx285049_))
                                           (if (##structure-ref
                                                _klass285086_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp290152
                                                      (let ((__tmp290153
                                                             (let ((__tmp290155
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp290156
                                   (let ((__tmp290157
                                          (##structure-ref
                                           _klass285086_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp290157 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp290156)))
                           (__tmp290154
                            (let ()
                              (declare (not safe))
                              (cons _object285088_ '()))))
                       (declare (not safe))
                       (cons __tmp290155 __tmp290154))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp290153))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp290152
                                                  _stx285049_))
                                               (let ((__tmp290143
                                                      (let ((__tmp290144
                                                             (let ((__tmp290150
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp290151
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp290151)))
                           (__tmp290145
                            (let ((__tmp290147
                                   (let ((__tmp290148
                                          (let ((__tmp290149
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self285048_
                                                    __id289827
                                                    __t289826
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp290149 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp290148)))
                                  (__tmp290146
                                   (let ()
                                     (declare (not safe))
                                     (cons _object285088_ '()))))
                              (declare (not safe))
                              (cons __tmp290147 __tmp290146))))
                       (declare (not safe))
                       (cons __tmp290150 __tmp290145))))
                (declare (not safe))
                (cons '%#call __tmp290144))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp290143
                                                  _stx285049_))))))
                                   _hd285056285070_)
                                  (let ()
                                    (declare (not safe))
                                    (_g285052285062_ _g285053285065_)))))
                          (let ()
                            (declare (not safe))
                            (_g285052285062_ _g285053285065_))))))
              (declare (not safe))
              (_g285051285091_ _args285050_))))))
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
      (lambda (_self284768_ _stx284769_ _args284770_)
        (let* ((_klass284772_
                (let ((__tmp290164
                       (##structure-ref _self284768_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx284769_ __tmp290164)))
               (_fields284774_
                (length (##structure-ref _klass284772_ '5 gxc#!class::t '#f)))
               (_args284776_ (map gxc#compile-e _args284770_))
               (_inline-make-object284778_
                (let ((__tmp290165
                       (let ((__tmp290171
                              (let ((__tmp290172
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp290172)))
                             (__tmp290166
                              (let ((__tmp290168
                                     (let ((__tmp290169
                                            (let ((__tmp290170
                                                   (##structure-ref
                                                    _self284768_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp290170 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp290169)))
                                    (__tmp290167
                                     (make-list _fields284774_ '(%#quote #f))))
                                (declare (not safe))
                                (cons __tmp290168 __tmp290167))))
                         (declare (not safe))
                         (cons __tmp290171 __tmp290166))))
                  (declare (not safe))
                  (cons '%#call __tmp290165))))
          (let ((_$e284781_
                 (##structure-ref _klass284772_ '6 gxc#!class::t '#f)))
            (if _$e284781_
                ((lambda (_ctor284784_)
                   (let ((_$obj284786_
                          (let ((__tmp290272 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp290272)))
                         (_ctor-impl284787_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass284772_
                             _ctor284784_))))
                     (let ((__tmp290273
                            (let ((__tmp290274
                                   (let ((__tmp290342
                                          (let ((__tmp290343
                                                 (let ((__tmp290345
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj284786_
                                                                '())))
                                                       (__tmp290344
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object284778_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp290345
                                                         __tmp290344))))
                                            (declare (not safe))
                                            (cons __tmp290343 '())))
                                         (__tmp290275
                                          (let ((__tmp290276
                                                 (let ((__tmp290277
                                                        (let ((__tmp290281
                                                               (if _ctor-impl284787_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp290336
                                  (let ((__tmp290340
                                         (let ((__tmp290341
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl284787_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp290341)))
                                        (__tmp290337
                                         (let ((__tmp290338
                                                (let ((__tmp290339
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj284786_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp290339))))
                                           (declare (not safe))
                                           (cons __tmp290338 _args284776_))))
                                    (declare (not safe))
                                    (cons __tmp290340 __tmp290337))))
                             (declare (not safe))
                             (cons '%#call __tmp290336))
                           (let* ((_$ctor284789_
                                   (let ((__tmp290282 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp290282)))
                                  (__tmp290283
                                   (let ((__tmp290318
                                          (let ((__tmp290319
                                                 (let ((__tmp290335
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor284789_
                                                                '())))
                                                       (__tmp290320
                                                        (let ((__tmp290321
                                                               (let ((__tmp290322
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp290333
                                     (let ((__tmp290334
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp290334)))
                                    (__tmp290323
                                     (let ((__tmp290330
                                            (let ((__tmp290331
                                                   (let ((__tmp290332
                                                          (##structure-ref
                                                           _self284768_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp290332 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp290331)))
                                           (__tmp290324
                                            (let ((__tmp290328
                                                   (let ((__tmp290329
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj284786_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp290329)))
                                                  (__tmp290325
                                                   (let ((__tmp290326
                                                          (let ((__tmp290327
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _ctor284784_ '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp290327))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp290326 '()))))
                                              (declare (not safe))
                                              (cons __tmp290328 __tmp290325))))
                                       (declare (not safe))
                                       (cons __tmp290330 __tmp290324))))
                                (declare (not safe))
                                (cons __tmp290333 __tmp290323))))
                         (declare (not safe))
                         (cons '%#call __tmp290322))))
                  (declare (not safe))
                  (cons __tmp290321 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp290335
                                                         __tmp290320))))
                                            (declare (not safe))
                                            (cons __tmp290319 '())))
                                         (__tmp290284
                                          (let ((__tmp290285
                                                 (let ((__tmp290286
                                                        (let ((__tmp290316
                                                               (let ((__tmp290317
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor284789_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp290317)))
                      (__tmp290287
                       (let ((__tmp290309
                              (let ((__tmp290310
                                     (let ((__tmp290314
                                            (let ((__tmp290315
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor284789_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp290315)))
                                           (__tmp290311
                                            (let ((__tmp290312
                                                   (let ((__tmp290313
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj284786_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp290313))))
                                              (declare (not safe))
                                              (cons __tmp290312
                                                    _args284776_))))
                                       (declare (not safe))
                                       (cons __tmp290314 __tmp290311))))
                                (declare (not safe))
                                (cons '%#call __tmp290310)))
                             (__tmp290288
                              (let ((__tmp290289
                                     (let ((__tmp290290
                                            (let ((__tmp290307
                                                   (let ((__tmp290308
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp290308)))
                                                  (__tmp290291
                                                   (let ((__tmp290305
                                                          (let ((__tmp290306
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp290306)))
                 (__tmp290292
                  (let ((__tmp290303
                         (let ((__tmp290304
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp290304)))
                        (__tmp290293
                         (let ((__tmp290300
                                (let ((__tmp290301
                                       (let ((__tmp290302
                                              (##structure-ref
                                               _self284768_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp290302 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp290301)))
                               (__tmp290294
                                (let ((__tmp290298
                                       (let ((__tmp290299
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp290299)))
                                      (__tmp290295
                                       (let ((__tmp290296
                                              (let ((__tmp290297
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor284784_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp290297))))
                                         (declare (not safe))
                                         (cons __tmp290296 '()))))
                                  (declare (not safe))
                                  (cons __tmp290298 __tmp290295))))
                           (declare (not safe))
                           (cons __tmp290300 __tmp290294))))
                    (declare (not safe))
                    (cons __tmp290303 __tmp290293))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp290305
                                                           __tmp290292))))
                                              (declare (not safe))
                                              (cons __tmp290307 __tmp290291))))
                                       (declare (not safe))
                                       (cons '%#call __tmp290290))))
                                (declare (not safe))
                                (cons __tmp290289 '()))))
                         (declare (not safe))
                         (cons __tmp290309 __tmp290288))))
                  (declare (not safe))
                  (cons __tmp290316 __tmp290287))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp290286))))
                                            (declare (not safe))
                                            (cons __tmp290285 '()))))
                                     (declare (not safe))
                                     (cons __tmp290318 __tmp290284))))
                             (declare (not safe))
                             (cons '%#let-values __tmp290283))))
                      (__tmp290278
                       (let ((__tmp290279
                              (let ((__tmp290280
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj284786_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp290280))))
                         (declare (not safe))
                         (cons __tmp290279 '()))))
                  (declare (not safe))
                  (cons __tmp290281 __tmp290278))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp290277))))
                                            (declare (not safe))
                                            (cons __tmp290276 '()))))
                                     (declare (not safe))
                                     (cons __tmp290342 __tmp290275))))
                              (declare (not safe))
                              (cons '%#let-values __tmp290274))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp290273 _stx284769_))))
                 _$e284781_)
                (let ((_$e284791_
                       (##structure-ref _klass284772_ '9 gxc#!class::t '#f)))
                  (if _$e284791_
                      ((lambda (_metaclass284794_)
                         (let* ((_$obj284796_
                                 (let ((__tmp290234 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp290234)))
                                (_metakons284798_
                                 (let ((__tmp290235
                                        (let ()
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           _stx284769_
                                           _metaclass284794_))))
                                   (declare (not safe))
                                   (gxc#!class-lookup-method
                                    __tmp290235
                                    'instance-init!))))
                           (let ((__tmp290236
                                  (let ((__tmp290237
                                         (let ((__tmp290268
                                                (let ((__tmp290269
                                                       (let ((__tmp290271
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj284796_ '())))
                     (__tmp290270
                      (let ()
                        (declare (not safe))
                        (cons _inline-make-object284778_ '()))))
                 (declare (not safe))
                 (cons __tmp290271 __tmp290270))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp290269 '())))
                                               (__tmp290238
                                                (let ((__tmp290239
                                                       (let ((__tmp290240
                                                              (let ((__tmp290244
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if _metakons284798_
                                 (let ((__tmp290258
                                        (let ((__tmp290266
                                               (let ((__tmp290267
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metakons284798_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp290267)))
                                              (__tmp290259
                                               (let ((__tmp290263
                                                      (let ((__tmp290264
                                                             (let ((__tmp290265
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self284768_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp290265 '()))))
                (declare (not safe))
                (cons '%#ref __tmp290264)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp290260
                                                      (let ((__tmp290261
                                                             (let ((__tmp290262
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _$obj284796_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp290262))))
                (declare (not safe))
                (cons __tmp290261 _args284776_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp290263
                                                       __tmp290260))))
                                          (declare (not safe))
                                          (cons __tmp290266 __tmp290259))))
                                   (declare (not safe))
                                   (cons '%#call __tmp290258))
                                 (let ((__tmp290245
                                        (let ((__tmp290256
                                               (let ((__tmp290257
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'call-method
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp290257)))
                                              (__tmp290246
                                               (let ((__tmp290253
                                                      (let ((__tmp290254
                                                             (let ((__tmp290255
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self284768_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp290255 '()))))
                (declare (not safe))
                (cons '%#ref __tmp290254)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp290247
                                                      (let ((__tmp290251
                                                             (let ((__tmp290252
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'instance-init! '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp290252)))
                    (__tmp290248
                     (let ((__tmp290249
                            (let ((__tmp290250
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj284796_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp290250))))
                       (declare (not safe))
                       (cons __tmp290249 _args284776_))))
                (declare (not safe))
                (cons __tmp290251 __tmp290248))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp290253
                                                       __tmp290247))))
                                          (declare (not safe))
                                          (cons __tmp290256 __tmp290246))))
                                   (declare (not safe))
                                   (cons '%#call __tmp290245))))
                            (__tmp290241
                             (let ((__tmp290242
                                    (let ((__tmp290243
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj284796_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp290243))))
                               (declare (not safe))
                               (cons __tmp290242 '()))))
                        (declare (not safe))
                        (cons __tmp290244 __tmp290241))))
                 (declare (not safe))
                 (cons '%#begin __tmp290240))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp290239 '()))))
                                           (declare (not safe))
                                           (cons __tmp290268 __tmp290238))))
                                    (declare (not safe))
                                    (cons '%#let-values __tmp290237))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp290236 _stx284769_))))
                       _$e284791_)
                      (if (##structure-ref _klass284772_ '7 gxc#!class::t '#f)
                          (if (fx= (length _args284776_) _fields284774_)
                              (let ((__tmp290226
                                     (let ((__tmp290227
                                            (let ((__tmp290232
                                                   (let ((__tmp290233
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp290233)))
                                                  (__tmp290228
                                                   (let ((__tmp290229
                                                          (let ((__tmp290230
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp290231
                                (##structure-ref
                                 _self284768_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp290231 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp290230))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp290229
                                                           _args284776_))))
                                              (declare (not safe))
                                              (cons __tmp290232 __tmp290228))))
                                       (declare (not safe))
                                       (cons '%#call __tmp290227))))
                                (declare (not safe))
                                (gxc#xform-wrap-source
                                 __tmp290226
                                 _stx284769_))
                              (let ((__tmp290225
                                     (##structure-ref
                                      _self284768_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                    (__tmp290224
                                     (length (##structure-ref
                                              _klass284772_
                                              '5
                                              gxc#!class::t
                                              '#f))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"illegal struct constructor application; arity mismatch"
                                 _stx284769_
                                 __tmp290225
                                 __tmp290224)))
                          (let ((_$obj284801_
                                 (let ((__tmp290173 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp290173))))
                            (let _lp284803_ ((_rest284805_ _args284776_)
                                             (_initializers284806_ '()))
                              (let* ((___stx289903289904_ _rest284805_)
                                     (_g284810284831_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx289903289904_)))))
                                (let ((___kont289905289906_
                                       (lambda (_L284885_ _L284886_ _L284887_)
                                         (let* ((_slot284918_
                                                 (keyword->symbol
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e _L284887_))))
                                                (_off284920_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass284772_
                                                    _slot284918_))))
                                           (if _off284920_
                                               (let ((__tmp290175
                                                      (let ((__tmp290176
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off284920_ _L284886_))))
                (declare (not safe))
                (cons __tmp290176 _initializers284806_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp284803_
                                                  _L284885_
                                                  __tmp290175))
                                               (let ((__tmp290174
                                                      (##structure-ref
                                                       _self284768_
                                                       '1
                                                       gxc#!type::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"unknown slot"
                                                  _stx284769_
                                                  __tmp290174
                                                  _slot284918_))))))
                                      (___kont289907289908_
                                       (lambda ()
                                         (let ((__tmp290177
                                                (let ((__tmp290178
                                                       (let ((__tmp290201
                                                              (let ((__tmp290202
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp290204
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj284801_ '())))
                                   (__tmp290203
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object284778_ '()))))
                               (declare (not safe))
                               (cons __tmp290204 __tmp290203))))
                        (declare (not safe))
                        (cons __tmp290202 '())))
                     (__tmp290179
                      (let ((__tmp290180
                             (let ((__tmp290181
                                    (let ((__tmp290198
                                           (let ((__tmp290199
                                                  (let ((__tmp290200
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj284801_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp290200))))
                                             (declare (not safe))
                                             (cons __tmp290199 '())))
                                          (__tmp290182
                                           (let ((__tmp290183
                                                  (lambda (_i284845_ _r284846_)
                                                    (let ((__tmp290184
                                                           (let ((__tmp290185
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp290195
                                 (let ((__tmp290196
                                        (let ((__tmp290197
                                               (##structure-ref
                                                _self284768_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp290197 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp290196)))
                                (__tmp290186
                                 (let ((__tmp290192
                                        (let ((__tmp290193
                                               (let ((__tmp290194
                                                      (car _i284845_)))
                                                 (declare (not safe))
                                                 (cons __tmp290194 '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp290193)))
                                       (__tmp290187
                                        (let ((__tmp290190
                                               (let ((__tmp290191
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _$obj284801_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp290191)))
                                              (__tmp290188
                                               (let ((__tmp290189
                                                      (cdr _i284845_)))
                                                 (declare (not safe))
                                                 (cons __tmp290189 '()))))
                                          (declare (not safe))
                                          (cons __tmp290190 __tmp290188))))
                                   (declare (not safe))
                                   (cons __tmp290192 __tmp290187))))
                            (declare (not safe))
                            (cons __tmp290195 __tmp290186))))
                     (declare (not safe))
                     (cons '%#struct-unchecked-set! __tmp290185))))
              (declare (not safe))
              (cons __tmp290184 _r284846_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (foldl1 __tmp290183
                                                     '()
                                                     _initializers284806_))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp290198 __tmp290182))))
                               (declare (not safe))
                               (cons '%#begin __tmp290181))))
                        (declare (not safe))
                        (cons __tmp290180 '()))))
                 (declare (not safe))
                 (cons __tmp290201 __tmp290179))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp290178))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp290177
                                            _stx284769_))))
                                      (___kont289909289910_
                                       (lambda ()
                                         (let ((__tmp290205
                                                (let ((__tmp290206
                                                       (let ((__tmp290220
                                                              (let ((__tmp290221
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp290223
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj284801_ '())))
                                   (__tmp290222
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object284778_ '()))))
                               (declare (not safe))
                               (cons __tmp290223 __tmp290222))))
                        (declare (not safe))
                        (cons __tmp290221 '())))
                     (__tmp290207
                      (let ((__tmp290208
                             (let ((__tmp290209
                                    (let ((__tmp290213
                                           (let ((__tmp290214
                                                  (let ((__tmp290218
                                                         (let ((__tmp290219
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'class-instance-init! '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp290219)))
                (__tmp290215
                 (let ((__tmp290216
                        (let ((__tmp290217
                               (let ()
                                 (declare (not safe))
                                 (cons _$obj284801_ '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp290217))))
                   (declare (not safe))
                   (cons __tmp290216 _args284776_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp290218
                                                          __tmp290215))))
                                             (declare (not safe))
                                             (cons '%#call __tmp290214)))
                                          (__tmp290210
                                           (let ((__tmp290211
                                                  (let ((__tmp290212
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj284801_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp290212))))
                                             (declare (not safe))
                                             (cons __tmp290211 '()))))
                                      (declare (not safe))
                                      (cons __tmp290213 __tmp290210))))
                               (declare (not safe))
                               (cons '%#begin __tmp290209))))
                        (declare (not safe))
                        (cons __tmp290208 '()))))
                 (declare (not safe))
                 (cons __tmp290220 __tmp290207))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp290206))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp290205
                                            _stx284769_)))))
                                  (let* ((_g284808284848_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   ___stx289903289904_))
                                                (___kont289907289908_)
                                                (___kont289909289910_))))
                                         (___match289940289941_
                                          (lambda (_e284817284853_
                                                   _hd284816284856_
                                                   _tl284815284858_
                                                   _e284820284861_
                                                   _hd284819284864_
                                                   _tl284818284866_
                                                   _e284823284869_
                                                   _hd284822284872_
                                                   _tl284821284874_
                                                   _e284826284877_
                                                   _hd284825284880_
                                                   _tl284824284882_)
                                            (let ((_L284885_ _tl284824284882_)
                                                  (_L284886_ _hd284825284880_)
                                                  (_L284887_ _hd284822284872_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-keyword?
                                                     _L284887_))
                                                  (___kont289905289906_
                                                   _L284885_
                                                   _L284886_
                                                   _L284887_)
                                                  (___kont289909289910_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx289903289904_))
                                        (let ((_e284817284853_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx289903289904_))))
                                          (let ((_tl284815284858_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e284817284853_)))
                                                (_hd284816284856_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e284817284853_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd284816284856_))
                                                (let ((_e284820284861_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd284816284856_))))
                                                  (let ((_tl284818284866_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e284820284861_)))
                                                        (_hd284819284864_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e284820284861_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd284819284864_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#quote
                                                               _hd284819284864_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl284818284866_))
                        (let ((_e284823284869_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl284818284866_))))
                          (let ((_tl284821284874_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e284823284869_)))
                                (_hd284822284872_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e284823284869_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl284821284874_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl284815284858_))
                                    (let ((_e284826284877_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl284815284858_))))
                                      (let ((_tl284824284882_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e284826284877_)))
                                            (_hd284825284880_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e284826284877_))))
                                        (___match289940289941_
                                         _e284817284853_
                                         _hd284816284856_
                                         _tl284815284858_
                                         _e284820284861_
                                         _hd284819284864_
                                         _tl284818284866_
                                         _e284823284869_
                                         _hd284822284872_
                                         _tl284821284874_
                                         _e284826284877_
                                         _hd284825284880_
                                         _tl284824284882_)))
                                    (___kont289909289910_))
                                (___kont289909289910_))))
                        (___kont289909289910_))
                    (___kont289909289910_))
                (___kont289909289910_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont289909289910_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g284808284848_))))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__t289829)
        (let ((__id289830
               (let ((__tmp289831
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t289829 'id))))
                 (if __tmp289831 __tmp289831 (error '"Unknown slot" 'id)))))
          (lambda (_self284768_ _stx284769_ _args284770_)
            (let* ((_klass284772_
                    (let ((__tmp290346
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self284768_
                              __id289830
                              __t289829
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx284769_ __tmp290346)))
                   (_fields284774_
                    (length (##structure-ref
                             _klass284772_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args284776_ (map gxc#compile-e _args284770_))
                   (_inline-make-object284778_
                    (let ((__tmp290347
                           (let ((__tmp290353
                                  (let ((__tmp290354
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp290354)))
                                 (__tmp290348
                                  (let ((__tmp290350
                                         (let ((__tmp290351
                                                (let ((__tmp290352
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self284768_
                                                          __id289830
                                                          __t289829
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp290352 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp290351)))
                                        (__tmp290349
                                         (make-list
                                          _fields284774_
                                          '(%#quote #f))))
                                    (declare (not safe))
                                    (cons __tmp290350 __tmp290349))))
                             (declare (not safe))
                             (cons __tmp290353 __tmp290348))))
                      (declare (not safe))
                      (cons '%#call __tmp290347))))
              (let ((_$e284781_
                     (##structure-ref _klass284772_ '6 gxc#!class::t '#f)))
                (if _$e284781_
                    ((lambda (_ctor284784_)
                       (let ((_$obj284786_
                              (let ((__tmp290454 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp290454)))
                             (_ctor-impl284787_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass284772_
                                 _ctor284784_))))
                         (let ((__tmp290455
                                (let ((__tmp290456
                                       (let ((__tmp290524
                                              (let ((__tmp290525
                                                     (let ((__tmp290527
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj284786_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp290526
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object284778_ '()))))
               (declare (not safe))
               (cons __tmp290527 __tmp290526))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp290525 '())))
                                             (__tmp290457
                                              (let ((__tmp290458
                                                     (let ((__tmp290459
                                                            (let ((__tmp290463
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl284787_
                               (let ((__tmp290518
                                      (let ((__tmp290522
                                             (let ((__tmp290523
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl284787_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp290523)))
                                            (__tmp290519
                                             (let ((__tmp290520
                                                    (let ((__tmp290521
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj284786_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp290521))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp290520
                                                     _args284776_))))
                                        (declare (not safe))
                                        (cons __tmp290522 __tmp290519))))
                                 (declare (not safe))
                                 (cons '%#call __tmp290518))
                               (let* ((_$ctor284789_
                                       (let ((__tmp290464
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp290464)))
                                      (__tmp290465
                                       (let ((__tmp290500
                                              (let ((__tmp290501
                                                     (let ((__tmp290517
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor284789_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp290502
                    (let ((__tmp290503
                           (let ((__tmp290504
                                  (let ((__tmp290515
                                         (let ((__tmp290516
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp290516)))
                                        (__tmp290505
                                         (let ((__tmp290512
                                                (let ((__tmp290513
                                                       (let ((__tmp290514
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self284768_
                         __id289830
                         __t289829
                         '#f))))
                 (declare (not safe))
                 (cons __tmp290514 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp290513)))
                                               (__tmp290506
                                                (let ((__tmp290510
                                                       (let ((__tmp290511
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj284786_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp290511)))
              (__tmp290507
               (let ((__tmp290508
                      (let ((__tmp290509
                             (let ()
                               (declare (not safe))
                               (cons _ctor284784_ '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp290509))))
                 (declare (not safe))
                 (cons __tmp290508 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp290510
                                                        __tmp290507))))
                                           (declare (not safe))
                                           (cons __tmp290512 __tmp290506))))
                                    (declare (not safe))
                                    (cons __tmp290515 __tmp290505))))
                             (declare (not safe))
                             (cons '%#call __tmp290504))))
                      (declare (not safe))
                      (cons __tmp290503 '()))))
               (declare (not safe))
               (cons __tmp290517 __tmp290502))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp290501 '())))
                                             (__tmp290466
                                              (let ((__tmp290467
                                                     (let ((__tmp290468
                                                            (let ((__tmp290498
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp290499
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor284789_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp290499)))
                          (__tmp290469
                           (let ((__tmp290491
                                  (let ((__tmp290492
                                         (let ((__tmp290496
                                                (let ((__tmp290497
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor284789_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp290497)))
                                               (__tmp290493
                                                (let ((__tmp290494
                                                       (let ((__tmp290495
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj284786_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp290495))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp290494
                                                        _args284776_))))
                                           (declare (not safe))
                                           (cons __tmp290496 __tmp290493))))
                                    (declare (not safe))
                                    (cons '%#call __tmp290492)))
                                 (__tmp290470
                                  (let ((__tmp290471
                                         (let ((__tmp290472
                                                (let ((__tmp290489
                                                       (let ((__tmp290490
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp290490)))
              (__tmp290473
               (let ((__tmp290487
                      (let ((__tmp290488
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp290488)))
                     (__tmp290474
                      (let ((__tmp290485
                             (let ((__tmp290486
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp290486)))
                            (__tmp290475
                             (let ((__tmp290482
                                    (let ((__tmp290483
                                           (let ((__tmp290484
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self284768_
                                                     __id289830
                                                     __t289829
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp290484 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp290483)))
                                   (__tmp290476
                                    (let ((__tmp290480
                                           (let ((__tmp290481
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp290481)))
                                          (__tmp290477
                                           (let ((__tmp290478
                                                  (let ((__tmp290479
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor284784_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp290479))))
                                             (declare (not safe))
                                             (cons __tmp290478 '()))))
                                      (declare (not safe))
                                      (cons __tmp290480 __tmp290477))))
                               (declare (not safe))
                               (cons __tmp290482 __tmp290476))))
                        (declare (not safe))
                        (cons __tmp290485 __tmp290475))))
                 (declare (not safe))
                 (cons __tmp290487 __tmp290474))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp290489
                                                        __tmp290473))))
                                           (declare (not safe))
                                           (cons '%#call __tmp290472))))
                                    (declare (not safe))
                                    (cons __tmp290471 '()))))
                             (declare (not safe))
                             (cons __tmp290491 __tmp290470))))
                      (declare (not safe))
                      (cons __tmp290498 __tmp290469))))
               (declare (not safe))
               (cons '%#if __tmp290468))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp290467 '()))))
                                         (declare (not safe))
                                         (cons __tmp290500 __tmp290466))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp290465))))
                          (__tmp290460
                           (let ((__tmp290461
                                  (let ((__tmp290462
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj284786_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp290462))))
                             (declare (not safe))
                             (cons __tmp290461 '()))))
                      (declare (not safe))
                      (cons __tmp290463 __tmp290460))))
               (declare (not safe))
               (cons '%#begin __tmp290459))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp290458 '()))))
                                         (declare (not safe))
                                         (cons __tmp290524 __tmp290457))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp290456))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp290455 _stx284769_))))
                     _$e284781_)
                    (let ((_$e284791_
                           (##structure-ref
                            _klass284772_
                            '9
                            gxc#!class::t
                            '#f)))
                      (if _$e284791_
                          ((lambda (_metaclass284794_)
                             (let* ((_$obj284796_
                                     (let ((__tmp290416 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp290416)))
                                    (_metakons284798_
                                     (let ((__tmp290417
                                            (let ()
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               _stx284769_
                                               _metaclass284794_))))
                                       (declare (not safe))
                                       (gxc#!class-lookup-method
                                        __tmp290417
                                        'instance-init!))))
                               (let ((__tmp290418
                                      (let ((__tmp290419
                                             (let ((__tmp290450
                                                    (let ((__tmp290451
                                                           (let ((__tmp290453
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj284796_ '())))
                         (__tmp290452
                          (let ()
                            (declare (not safe))
                            (cons _inline-make-object284778_ '()))))
                     (declare (not safe))
                     (cons __tmp290453 __tmp290452))))
              (declare (not safe))
              (cons __tmp290451 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp290420
                                                    (let ((__tmp290421
                                                           (let ((__tmp290422
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp290426
                                 (if _metakons284798_
                                     (let ((__tmp290440
                                            (let ((__tmp290448
                                                   (let ((__tmp290449
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _metakons284798_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp290449)))
                                                  (__tmp290441
                                                   (let ((__tmp290445
                                                          (let ((__tmp290446
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp290447
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self284768_
                                   __id289830
                                   __t289829
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp290447 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp290446)))
                 (__tmp290442
                  (let ((__tmp290443
                         (let ((__tmp290444
                                (let ()
                                  (declare (not safe))
                                  (cons _$obj284796_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp290444))))
                    (declare (not safe))
                    (cons __tmp290443 _args284776_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp290445
                                                           __tmp290442))))
                                              (declare (not safe))
                                              (cons __tmp290448 __tmp290441))))
                                       (declare (not safe))
                                       (cons '%#call __tmp290440))
                                     (let ((__tmp290427
                                            (let ((__tmp290438
                                                   (let ((__tmp290439
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'call-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp290439)))
                                                  (__tmp290428
                                                   (let ((__tmp290435
                                                          (let ((__tmp290436
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp290437
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self284768_
                                   __id289830
                                   __t289829
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp290437 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp290436)))
                 (__tmp290429
                  (let ((__tmp290433
                         (let ((__tmp290434
                                (let ()
                                  (declare (not safe))
                                  (cons 'instance-init! '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp290434)))
                        (__tmp290430
                         (let ((__tmp290431
                                (let ((__tmp290432
                                       (let ()
                                         (declare (not safe))
                                         (cons _$obj284796_ '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp290432))))
                           (declare (not safe))
                           (cons __tmp290431 _args284776_))))
                    (declare (not safe))
                    (cons __tmp290433 __tmp290430))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp290435
                                                           __tmp290429))))
                                              (declare (not safe))
                                              (cons __tmp290438 __tmp290428))))
                                       (declare (not safe))
                                       (cons '%#call __tmp290427))))
                                (__tmp290423
                                 (let ((__tmp290424
                                        (let ((__tmp290425
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$obj284796_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp290425))))
                                   (declare (not safe))
                                   (cons __tmp290424 '()))))
                            (declare (not safe))
                            (cons __tmp290426 __tmp290423))))
                     (declare (not safe))
                     (cons '%#begin __tmp290422))))
              (declare (not safe))
              (cons __tmp290421 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp290450
                                                     __tmp290420))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp290419))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp290418
                                  _stx284769_))))
                           _$e284791_)
                          (if (##structure-ref
                               _klass284772_
                               '7
                               gxc#!class::t
                               '#f)
                              (if (fx= (length _args284776_) _fields284774_)
                                  (let ((__tmp290408
                                         (let ((__tmp290409
                                                (let ((__tmp290414
                                                       (let ((__tmp290415
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '##structure '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp290415)))
              (__tmp290410
               (let ((__tmp290411
                      (let ((__tmp290412
                             (let ((__tmp290413
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self284768_
                                       __id289830
                                       __t289829
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp290413 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp290412))))
                 (declare (not safe))
                 (cons __tmp290411 _args284776_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp290414
                                                        __tmp290410))))
                                           (declare (not safe))
                                           (cons '%#call __tmp290409))))
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp290408
                                     _stx284769_))
                                  (let ((__tmp290407
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _self284768_
                                            __id289830
                                            __t289829
                                            '#f)))
                                        (__tmp290406
                                         (length (##structure-ref
                                                  _klass284772_
                                                  '5
                                                  gxc#!class::t
                                                  '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _stx284769_
                                     __tmp290407
                                     __tmp290406)))
                              (let ((_$obj284801_
                                     (let ((__tmp290355 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp290355))))
                                (let _lp284803_ ((_rest284805_ _args284776_)
                                                 (_initializers284806_ '()))
                                  (let* ((___stx289945289946_ _rest284805_)
                                         (_g284810284831_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               ___stx289945289946_)))))
                                    (let ((___kont289947289948_
                                           (lambda (_L284885_
                                                    _L284886_
                                                    _L284887_)
                                             (let* ((_slot284918_
                                                     (keyword->symbol
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L284887_))))
                                                    (_off284920_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass284772_
                                                        _slot284918_))))
                                               (if _off284920_
                                                   (let ((__tmp290357
                                                          (let ((__tmp290358
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _off284920_ _L284886_))))
                    (declare (not safe))
                    (cons __tmp290358 _initializers284806_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp284803_
                                                      _L284885_
                                                      __tmp290357))
                                                   (let ((__tmp290356
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _self284768_
                                                             __id289830
                                                             __t289829
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"unknown slot"
                                                      _stx284769_
                                                      __tmp290356
                                                      _slot284918_))))))
                                          (___kont289949289950_
                                           (lambda ()
                                             (let ((__tmp290359
                                                    (let ((__tmp290360
                                                           (let ((__tmp290383
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp290384
                                 (let ((__tmp290386
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj284801_ '())))
                                       (__tmp290385
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object284778_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp290386 __tmp290385))))
                            (declare (not safe))
                            (cons __tmp290384 '())))
                         (__tmp290361
                          (let ((__tmp290362
                                 (let ((__tmp290363
                                        (let ((__tmp290380
                                               (let ((__tmp290381
                                                      (let ((__tmp290382
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj284801_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp290382))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp290381 '())))
                                              (__tmp290364
                                               (let ((__tmp290365
                                                      (lambda (_i284845_
                                                               _r284846_)
                                                        (let ((__tmp290366
                                                               (let ((__tmp290367
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp290377
                                     (let ((__tmp290378
                                            (let ((__tmp290379
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self284768_
                                                      __id289830
                                                      __t289829
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp290379 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp290378)))
                                    (__tmp290368
                                     (let ((__tmp290374
                                            (let ((__tmp290375
                                                   (let ((__tmp290376
                                                          (car _i284845_)))
                                                     (declare (not safe))
                                                     (cons __tmp290376 '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp290375)))
                                           (__tmp290369
                                            (let ((__tmp290372
                                                   (let ((__tmp290373
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj284801_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp290373)))
                                                  (__tmp290370
                                                   (let ((__tmp290371
                                                          (cdr _i284845_)))
                                                     (declare (not safe))
                                                     (cons __tmp290371 '()))))
                                              (declare (not safe))
                                              (cons __tmp290372 __tmp290370))))
                                       (declare (not safe))
                                       (cons __tmp290374 __tmp290369))))
                                (declare (not safe))
                                (cons __tmp290377 __tmp290368))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp290367))))
                  (declare (not safe))
                  (cons __tmp290366 _r284846_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl1 __tmp290365
                                                         '()
                                                         _initializers284806_))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp290380
                                                  __tmp290364))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp290363))))
                            (declare (not safe))
                            (cons __tmp290362 '()))))
                     (declare (not safe))
                     (cons __tmp290383 __tmp290361))))
              (declare (not safe))
              (cons '%#let-values __tmp290360))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp290359
                                                _stx284769_))))
                                          (___kont289951289952_
                                           (lambda ()
                                             (let ((__tmp290387
                                                    (let ((__tmp290388
                                                           (let ((__tmp290402
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp290403
                                 (let ((__tmp290405
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj284801_ '())))
                                       (__tmp290404
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object284778_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp290405 __tmp290404))))
                            (declare (not safe))
                            (cons __tmp290403 '())))
                         (__tmp290389
                          (let ((__tmp290390
                                 (let ((__tmp290391
                                        (let ((__tmp290395
                                               (let ((__tmp290396
                                                      (let ((__tmp290400
                                                             (let ((__tmp290401
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'class-instance-init! '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp290401)))
                    (__tmp290397
                     (let ((__tmp290398
                            (let ((__tmp290399
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj284801_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp290399))))
                       (declare (not safe))
                       (cons __tmp290398 _args284776_))))
                (declare (not safe))
                (cons __tmp290400 __tmp290397))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp290396)))
                                              (__tmp290392
                                               (let ((__tmp290393
                                                      (let ((__tmp290394
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj284801_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp290394))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp290393 '()))))
                                          (declare (not safe))
                                          (cons __tmp290395 __tmp290392))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp290391))))
                            (declare (not safe))
                            (cons __tmp290390 '()))))
                     (declare (not safe))
                     (cons __tmp290402 __tmp290389))))
              (declare (not safe))
              (cons '%#let-values __tmp290388))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp290387
                                                _stx284769_)))))
                                      (let* ((_g284808284848_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       ___stx289945289946_))
                                                    (___kont289949289950_)
                                                    (___kont289951289952_))))
                                             (___match289982289983_
                                              (lambda (_e284817284853_
                                                       _hd284816284856_
                                                       _tl284815284858_
                                                       _e284820284861_
                                                       _hd284819284864_
                                                       _tl284818284866_
                                                       _e284823284869_
                                                       _hd284822284872_
                                                       _tl284821284874_
                                                       _e284826284877_
                                                       _hd284825284880_
                                                       _tl284824284882_)
                                                (let ((_L284885_
                                                       _tl284824284882_)
                                                      (_L284886_
                                                       _hd284825284880_)
                                                      (_L284887_
                                                       _hd284822284872_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-keyword?
                                                         _L284887_))
                                                      (___kont289947289948_
                                                       _L284885_
                                                       _L284886_
                                                       _L284887_)
                                                      (___kont289951289952_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               ___stx289945289946_))
                                            (let ((_e284817284853_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      ___stx289945289946_))))
                                              (let ((_tl284815284858_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e284817284853_)))
                                                    (_hd284816284856_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e284817284853_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd284816284856_))
                                                    (let ((_e284820284861_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd284816284856_))))
                                                      (let ((_tl284818284866_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e284820284861_)))
                    (_hd284819284864_
                     (let () (declare (not safe)) (##car _e284820284861_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd284819284864_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd284819284864_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl284818284866_))
                            (let ((_e284823284869_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl284818284866_))))
                              (let ((_tl284821284874_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e284823284869_)))
                                    (_hd284822284872_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e284823284869_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl284821284874_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl284815284858_))
                                        (let ((_e284826284877_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl284815284858_))))
                                          (let ((_tl284824284882_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e284826284877_)))
                                                (_hd284825284880_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e284826284877_))))
                                            (___match289982289983_
                                             _e284817284853_
                                             _hd284816284856_
                                             _tl284815284858_
                                             _e284820284861_
                                             _hd284819284864_
                                             _tl284818284866_
                                             _e284823284869_
                                             _hd284822284872_
                                             _tl284821284874_
                                             _e284826284877_
                                             _hd284825284880_
                                             _tl284824284882_)))
                                        (___kont289951289952_))
                                    (___kont289951289952_))))
                            (___kont289951289952_))
                        (___kont289951289952_))
                    (___kont289951289952_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont289951289952_))))
                                            (let ()
                                              (declare (not safe))
                                              (_g284808284848_))))))))))))))))))
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
      (lambda (_self284591_ _stx284592_ _args284593_)
        (let* ((_g284595284605_
                (lambda (_g284596284602_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g284596284602_))))
               (_g284594284643_
                (lambda (_g284596284608_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g284596284608_))
                      (let ((_e284600284610_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g284596284608_))))
                        (let ((_hd284599284613_
                               (let ()
                                 (declare (not safe))
                                 (##car _e284600284610_)))
                              (_tl284598284615_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e284600284610_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl284598284615_))
                              ((lambda (_L284618_)
                                 (let* ((_klass284629_
                                         (let ((__tmp290528
                                                (##structure-ref
                                                 _self284591_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx284592_
                                            __tmp290528)))
                                        (_field284631_
                                         (let ((__tmp290529
                                                (##structure-ref
                                                 _self284591_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass284629_
                                            __tmp290529)))
                                        (_object284633_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L284618_))))
                                   (if (##structure-ref
                                        _klass284629_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp290606
                                              (let ((__tmp290615
                                                     (if (##structure-ref
                                                          _self284591_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp290607
                                                     (let ((__tmp290612
                                                            (let ((__tmp290613
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp290614
                                  (##structure-ref
                                   _self284591_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp290614 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp290613)))
                   (__tmp290608
                    (let ((__tmp290610
                           (let ((__tmp290611
                                  (let ()
                                    (declare (not safe))
                                    (cons _field284631_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp290611)))
                          (__tmp290609
                           (let ()
                             (declare (not safe))
                             (cons _object284633_ '()))))
                      (declare (not safe))
                      (cons __tmp290610 __tmp290609))))
               (declare (not safe))
               (cons __tmp290612 __tmp290608))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp290615
                                                      __tmp290607))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp290606
                                          _stx284592_))
                                       (if (##structure-ref
                                            _klass284629_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp290596
                                                  (let ((__tmp290605
                                                         (if (##structure-ref
                                                              _self284591_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp290597
                                                         (let ((__tmp290602
                                                                (let ((__tmp290603
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp290604
                                      (##structure-ref
                                       _self284591_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp290604 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp290603)))
                       (__tmp290598
                        (let ((__tmp290600
                               (let ((__tmp290601
                                      (let ()
                                        (declare (not safe))
                                        (cons _field284631_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp290601)))
                              (__tmp290599
                               (let ()
                                 (declare (not safe))
                                 (cons _object284633_ '()))))
                          (declare (not safe))
                          (cons __tmp290600 __tmp290599))))
                   (declare (not safe))
                   (cons __tmp290602 __tmp290598))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp290605
                                                          __tmp290597))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp290596
                                              _stx284592_))
                                           (let ((_$e284636_
                                                  (let ((__tmp290530
                                                         (##structure-ref
                                                          _self284591_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass284629_
                                                     __tmp290530))))
                                             (if _$e284636_
                                                 ((lambda (_klass284639_)
                                                    (let ((__tmp290586
                                                           (let ((__tmp290595
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self284591_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp290587
                          (let ((__tmp290592
                                 (let ((__tmp290593
                                        (let ((__tmp290594
                                               (##structure-ref
                                                _self284591_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp290594 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp290593)))
                                (__tmp290588
                                 (let ((__tmp290590
                                        (let ((__tmp290591
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field284631_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp290591)))
                                       (__tmp290589
                                        (let ()
                                          (declare (not safe))
                                          (cons _object284633_ '()))))
                                   (declare (not safe))
                                   (cons __tmp290590 __tmp290589))))
                            (declare (not safe))
                            (cons __tmp290592 __tmp290588))))
                     (declare (not safe))
                     (cons __tmp290595 __tmp290587))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp290586 _stx284592_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e284636_)
                                                 (if (##structure-ref
                                                      _self284591_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp290540
                                                            (let* ((_$obj284641_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp290541 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp290541)))
                           (__tmp290542
                            (let ((__tmp290582
                                   (let ((__tmp290583
                                          (let ((__tmp290585
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj284641_ '())))
                                                (__tmp290584
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object284633_ '()))))
                                            (declare (not safe))
                                            (cons __tmp290585 __tmp290584))))
                                     (declare (not safe))
                                     (cons __tmp290583 '())))
                                  (__tmp290543
                                   (let ((__tmp290544
                                          (let ((__tmp290545
                                                 (let ((__tmp290574
                                                        (let ((__tmp290575
                                                               (let ((__tmp290579
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp290580
                                     (let ((__tmp290581
                                            (##structure-ref
                                             _klass284629_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp290581 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp290580)))
                             (__tmp290576
                              (let ((__tmp290577
                                     (let ((__tmp290578
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj284641_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp290578))))
                                (declare (not safe))
                                (cons __tmp290577 '()))))
                         (declare (not safe))
                         (cons __tmp290579 __tmp290576))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp290575)))
               (__tmp290546
                (let ((__tmp290563
                       (let ((__tmp290564
                              (let ((__tmp290571
                                     (let ((__tmp290572
                                            (let ((__tmp290573
                                                   (##structure-ref
                                                    _self284591_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp290573 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp290572)))
                                    (__tmp290565
                                     (let ((__tmp290569
                                            (let ((__tmp290570
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field284631_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp290570)))
                                           (__tmp290566
                                            (let ((__tmp290567
                                                   (let ((__tmp290568
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj284641_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp290568))))
                                              (declare (not safe))
                                              (cons __tmp290567 '()))))
                                       (declare (not safe))
                                       (cons __tmp290569 __tmp290566))))
                                (declare (not safe))
                                (cons __tmp290571 __tmp290565))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp290564)))
                      (__tmp290547
                       (let ((__tmp290548
                              (let ((__tmp290549
                                     (let ((__tmp290561
                                            (let ((__tmp290562
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp290562)))
                                           (__tmp290550
                                            (let ((__tmp290558
                                                   (let ((__tmp290559
                                                          (let ((__tmp290560
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self284591_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp290560 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp290559)))
                                                  (__tmp290551
                                                   (let ((__tmp290556
                                                          (let ((__tmp290557
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj284641_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp290557)))
                 (__tmp290552
                  (let ((__tmp290553
                         (let ((__tmp290554
                                (let ((__tmp290555
                                       (##structure-ref
                                        _self284591_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp290555 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp290554))))
                    (declare (not safe))
                    (cons __tmp290553 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp290556
                                                           __tmp290552))))
                                              (declare (not safe))
                                              (cons __tmp290558 __tmp290551))))
                                       (declare (not safe))
                                       (cons __tmp290561 __tmp290550))))
                                (declare (not safe))
                                (cons '%#call __tmp290549))))
                         (declare (not safe))
                         (cons __tmp290548 '()))))
                  (declare (not safe))
                  (cons __tmp290563 __tmp290547))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp290574
                                                         __tmp290546))))
                                            (declare (not safe))
                                            (cons '%#if __tmp290545))))
                                     (declare (not safe))
                                     (cons __tmp290544 '()))))
                              (declare (not safe))
                              (cons __tmp290582 __tmp290543))))
                      (declare (not safe))
                      (cons '%#let-values __tmp290542))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp290540 _stx284592_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp290531
                                                            (let ((__tmp290532
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp290538
                                  (let ((__tmp290539
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp290539)))
                                 (__tmp290533
                                  (let ((__tmp290534
                                         (let ((__tmp290535
                                                (let ((__tmp290536
                                                       (let ((__tmp290537
                                                              (##structure-ref
                                                               _self284591_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp290537
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp290536))))
                                           (declare (not safe))
                                           (cons __tmp290535 '()))))
                                    (declare (not safe))
                                    (cons _object284633_ __tmp290534))))
                             (declare (not safe))
                             (cons __tmp290538 __tmp290533))))
                      (declare (not safe))
                      (cons '%#call __tmp290532))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp290531 _stx284592_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd284599284613_)
                              (let ()
                                (declare (not safe))
                                (_g284595284605_ _g284596284608_)))))
                      (let ()
                        (declare (not safe))
                        (_g284595284605_ _g284596284608_))))))
          (declare (not safe))
          (_g284594284643_ _args284593_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__t289832)
        (let ((__id289833
               (let ((__tmp289836
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t289832 'id))))
                 (if __tmp289836 __tmp289836 (error '"Unknown slot" 'id))))
              (__slot289834
               (let ((__tmp289837
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t289832 'slot))))
                 (if __tmp289837 __tmp289837 (error '"Unknown slot" 'slot))))
              (__checked?289835
               (let ((__tmp289838
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t289832 'checked?))))
                 (if __tmp289838
                     __tmp289838
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self284591_ _stx284592_ _args284593_)
            (let* ((_g284595284605_
                    (lambda (_g284596284602_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g284596284602_))))
                   (_g284594284643_
                    (lambda (_g284596284608_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g284596284608_))
                          (let ((_e284600284610_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g284596284608_))))
                            (let ((_hd284599284613_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e284600284610_)))
                                  (_tl284598284615_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e284600284610_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl284598284615_))
                                  ((lambda (_L284618_)
                                     (let* ((_klass284629_
                                             (let ((__tmp290616
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self284591_
                                                       __id289833
                                                       __t289832
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx284592_
                                                __tmp290616)))
                                            (_field284631_
                                             (let ((__tmp290617
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self284591_
                                                       __slot289834
                                                       __t289832
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass284629_
                                                __tmp290617)))
                                            (_object284633_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L284618_))))
                                       (if (##structure-ref
                                            _klass284629_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp290694
                                                  (let ((__tmp290703
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self284591_
                        __checked?289835
                        __t289832
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp290695
                 (let ((__tmp290700
                        (let ((__tmp290701
                               (let ((__tmp290702
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self284591_
                                         __id289833
                                         __t289832
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp290702 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp290701)))
                       (__tmp290696
                        (let ((__tmp290698
                               (let ((__tmp290699
                                      (let ()
                                        (declare (not safe))
                                        (cons _field284631_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp290699)))
                              (__tmp290697
                               (let ()
                                 (declare (not safe))
                                 (cons _object284633_ '()))))
                          (declare (not safe))
                          (cons __tmp290698 __tmp290697))))
                   (declare (not safe))
                   (cons __tmp290700 __tmp290696))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp290703
                                                          __tmp290695))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp290694
                                              _stx284592_))
                                           (if (##structure-ref
                                                _klass284629_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp290684
                                                      (let ((__tmp290693
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self284591_
                            __checked?289835
                            __t289832
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp290685
                     (let ((__tmp290690
                            (let ((__tmp290691
                                   (let ((__tmp290692
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self284591_
                                             __id289833
                                             __t289832
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp290692 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp290691)))
                           (__tmp290686
                            (let ((__tmp290688
                                   (let ((__tmp290689
                                          (let ()
                                            (declare (not safe))
                                            (cons _field284631_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp290689)))
                                  (__tmp290687
                                   (let ()
                                     (declare (not safe))
                                     (cons _object284633_ '()))))
                              (declare (not safe))
                              (cons __tmp290688 __tmp290687))))
                       (declare (not safe))
                       (cons __tmp290690 __tmp290686))))
                (declare (not safe))
                (cons __tmp290693 __tmp290685))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp290684
                                                  _stx284592_))
                                               (let ((_$e284636_
                                                      (let ((__tmp290618
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self284591_
                        __slot289834
                        __t289832
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass284629_ __tmp290618))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e284636_
                                                     ((lambda (_klass284639_)
                                                        (let ((__tmp290674
                                                               (let ((__tmp290683
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self284591_
                                     __checked?289835
                                     __t289832
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp290675
                              (let ((__tmp290680
                                     (let ((__tmp290681
                                            (let ((__tmp290682
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self284591_
                                                      __id289833
                                                      __t289832
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp290682 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp290681)))
                                    (__tmp290676
                                     (let ((__tmp290678
                                            (let ((__tmp290679
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field284631_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp290679)))
                                           (__tmp290677
                                            (let ()
                                              (declare (not safe))
                                              (cons _object284633_ '()))))
                                       (declare (not safe))
                                       (cons __tmp290678 __tmp290677))))
                                (declare (not safe))
                                (cons __tmp290680 __tmp290676))))
                         (declare (not safe))
                         (cons __tmp290683 __tmp290675))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp290674 _stx284592_)))
              _$e284636_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self284591_
                                                            __checked?289835
                                                            __t289832
                                                            '#f))
                                                         (let ((__tmp290628
                                                                (let* ((_$obj284641_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp290629 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp290629)))
                               (__tmp290630
                                (let ((__tmp290670
                                       (let ((__tmp290671
                                              (let ((__tmp290673
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj284641_
                                                             '())))
                                                    (__tmp290672
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object284633_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp290673
                                                      __tmp290672))))
                                         (declare (not safe))
                                         (cons __tmp290671 '())))
                                      (__tmp290631
                                       (let ((__tmp290632
                                              (let ((__tmp290633
                                                     (let ((__tmp290662
                                                            (let ((__tmp290663
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp290667
                                  (let ((__tmp290668
                                         (let ((__tmp290669
                                                (##structure-ref
                                                 _klass284629_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp290669 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp290668)))
                                 (__tmp290664
                                  (let ((__tmp290665
                                         (let ((__tmp290666
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj284641_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp290666))))
                                    (declare (not safe))
                                    (cons __tmp290665 '()))))
                             (declare (not safe))
                             (cons __tmp290667 __tmp290664))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp290663)))
                   (__tmp290634
                    (let ((__tmp290651
                           (let ((__tmp290652
                                  (let ((__tmp290659
                                         (let ((__tmp290660
                                                (let ((__tmp290661
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self284591_
                                                          __id289833
                                                          __t289832
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp290661 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp290660)))
                                        (__tmp290653
                                         (let ((__tmp290657
                                                (let ((__tmp290658
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field284631_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp290658)))
                                               (__tmp290654
                                                (let ((__tmp290655
                                                       (let ((__tmp290656
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj284641_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp290656))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp290655 '()))))
                                           (declare (not safe))
                                           (cons __tmp290657 __tmp290654))))
                                    (declare (not safe))
                                    (cons __tmp290659 __tmp290653))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp290652)))
                          (__tmp290635
                           (let ((__tmp290636
                                  (let ((__tmp290637
                                         (let ((__tmp290649
                                                (let ((__tmp290650
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp290650)))
                                               (__tmp290638
                                                (let ((__tmp290646
                                                       (let ((__tmp290647
                                                              (let ((__tmp290648
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self284591_
                                __id289833
                                __t289832
                                '#f))))
                        (declare (not safe))
                        (cons __tmp290648 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp290647)))
              (__tmp290639
               (let ((__tmp290644
                      (let ((__tmp290645
                             (let ()
                               (declare (not safe))
                               (cons _$obj284641_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp290645)))
                     (__tmp290640
                      (let ((__tmp290641
                             (let ((__tmp290642
                                    (let ((__tmp290643
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self284591_
                                              __slot289834
                                              __t289832
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp290643 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp290642))))
                        (declare (not safe))
                        (cons __tmp290641 '()))))
                 (declare (not safe))
                 (cons __tmp290644 __tmp290640))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp290646
                                                        __tmp290639))))
                                           (declare (not safe))
                                           (cons __tmp290649 __tmp290638))))
                                    (declare (not safe))
                                    (cons '%#call __tmp290637))))
                             (declare (not safe))
                             (cons __tmp290636 '()))))
                      (declare (not safe))
                      (cons __tmp290651 __tmp290635))))
               (declare (not safe))
               (cons __tmp290662 __tmp290634))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp290633))))
                                         (declare (not safe))
                                         (cons __tmp290632 '()))))
                                  (declare (not safe))
                                  (cons __tmp290670 __tmp290631))))
                          (declare (not safe))
                          (cons '%#let-values __tmp290630))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp290628 _stx284592_))
                 (let ((__tmp290619
                        (let ((__tmp290620
                               (let ((__tmp290626
                                      (let ((__tmp290627
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp290627)))
                                     (__tmp290621
                                      (let ((__tmp290622
                                             (let ((__tmp290623
                                                    (let ((__tmp290624
                                                           (let ((__tmp290625
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self284591_
                             __slot289834
                             __t289832
                             '#f))))
                     (declare (not safe))
                     (cons __tmp290625 '()))))
              (declare (not safe))
              (cons '%#quote __tmp290624))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp290623 '()))))
                                        (declare (not safe))
                                        (cons _object284633_ __tmp290622))))
                                 (declare (not safe))
                                 (cons __tmp290626 __tmp290621))))
                          (declare (not safe))
                          (cons '%#call __tmp290620))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp290619 _stx284592_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd284599284613_)
                                  (let ()
                                    (declare (not safe))
                                    (_g284595284605_ _g284596284608_)))))
                          (let ()
                            (declare (not safe))
                            (_g284595284605_ _g284596284608_))))))
              (declare (not safe))
              (_g284594284643_ _args284593_))))))
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
      (lambda (_self284396_ _stx284397_ _args284398_)
        (let* ((_g284400284414_
                (lambda (_g284401284411_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g284401284411_))))
               (_g284399284466_
                (lambda (_g284401284417_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g284401284417_))
                      (let ((_e284406284419_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g284401284417_))))
                        (let ((_hd284405284422_
                               (let ()
                                 (declare (not safe))
                                 (##car _e284406284419_)))
                              (_tl284404284424_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e284406284419_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl284404284424_))
                              (let ((_e284409284427_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl284404284424_))))
                                (let ((_hd284408284430_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e284409284427_)))
                                      (_tl284407284432_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e284409284427_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl284407284432_))
                                      ((lambda (_L284435_ _L284436_)
                                         (let* ((_klass284450_
                                                 (let ((__tmp290704
                                                        (##structure-ref
                                                         _self284396_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx284397_
                                                    __tmp290704)))
                                                (_field284452_
                                                 (let ((__tmp290705
                                                        (##structure-ref
                                                         _self284396_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass284450_
                                                    __tmp290705)))
                                                (_object284454_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L284436_)))
                                                (_value284456_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L284435_))))
                                           (if (##structure-ref
                                                _klass284450_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp290787
                                                      (let ((__tmp290797
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self284396_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp290788
                     (let ((__tmp290794
                            (let ((__tmp290795
                                   (let ((__tmp290796
                                          (##structure-ref
                                           _self284396_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp290796 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp290795)))
                           (__tmp290789
                            (let ((__tmp290792
                                   (let ((__tmp290793
                                          (let ()
                                            (declare (not safe))
                                            (cons _field284452_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp290793)))
                                  (__tmp290790
                                   (let ((__tmp290791
                                          (let ()
                                            (declare (not safe))
                                            (cons _value284456_ '()))))
                                     (declare (not safe))
                                     (cons _object284454_ __tmp290791))))
                              (declare (not safe))
                              (cons __tmp290792 __tmp290790))))
                       (declare (not safe))
                       (cons __tmp290794 __tmp290789))))
                (declare (not safe))
                (cons __tmp290797 __tmp290788))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp290787
                                                  _stx284397_))
                                               (if (##structure-ref
                                                    _klass284450_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp290776
                                                          (let ((__tmp290786
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self284396_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp290777
                         (let ((__tmp290783
                                (let ((__tmp290784
                                       (let ((__tmp290785
                                              (##structure-ref
                                               _self284396_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp290785 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp290784)))
                               (__tmp290778
                                (let ((__tmp290781
                                       (let ((__tmp290782
                                              (let ()
                                                (declare (not safe))
                                                (cons _field284452_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp290782)))
                                      (__tmp290779
                                       (let ((__tmp290780
                                              (let ()
                                                (declare (not safe))
                                                (cons _value284456_ '()))))
                                         (declare (not safe))
                                         (cons _object284454_ __tmp290780))))
                                  (declare (not safe))
                                  (cons __tmp290781 __tmp290779))))
                           (declare (not safe))
                           (cons __tmp290783 __tmp290778))))
                    (declare (not safe))
                    (cons __tmp290786 __tmp290777))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp290776
                                                      _stx284397_))
                                                   (let ((_$e284459_
                                                          (let ((__tmp290706
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self284396_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass284450_ __tmp290706))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e284459_
                                                         ((lambda (_klass284462_)
                                                            (let ((__tmp290765
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp290775
                                  (if (##structure-ref
                                       _self284396_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp290766
                                  (let ((__tmp290772
                                         (let ((__tmp290773
                                                (let ((__tmp290774
                                                       (##structure-ref
                                                        _self284396_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp290774 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp290773)))
                                        (__tmp290767
                                         (let ((__tmp290770
                                                (let ((__tmp290771
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field284452_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp290771)))
                                               (__tmp290768
                                                (let ((__tmp290769
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value284456_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object284454_
                                                        __tmp290769))))
                                           (declare (not safe))
                                           (cons __tmp290770 __tmp290768))))
                                    (declare (not safe))
                                    (cons __tmp290772 __tmp290767))))
                             (declare (not safe))
                             (cons __tmp290775 __tmp290766))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp290765 _stx284397_)))
                  _$e284459_)
                 (if (##structure-ref _self284396_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp290717
                            (let* ((_$obj284464_
                                    (let ((__tmp290718 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp290718)))
                                   (__tmp290719
                                    (let ((__tmp290761
                                           (let ((__tmp290762
                                                  (let ((__tmp290764
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj284464_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp290763
                 (let () (declare (not safe)) (cons _object284454_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp290764
                                                          __tmp290763))))
                                             (declare (not safe))
                                             (cons __tmp290762 '())))
                                          (__tmp290720
                                           (let ((__tmp290721
                                                  (let ((__tmp290722
                                                         (let ((__tmp290753
                                                                (let ((__tmp290754
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp290758
                                      (let ((__tmp290759
                                             (let ((__tmp290760
                                                    (##structure-ref
                                                     _klass284450_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp290760 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp290759)))
                                     (__tmp290755
                                      (let ((__tmp290756
                                             (let ((__tmp290757
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj284464_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp290757))))
                                        (declare (not safe))
                                        (cons __tmp290756 '()))))
                                 (declare (not safe))
                                 (cons __tmp290758 __tmp290755))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp290754)))
                       (__tmp290723
                        (let ((__tmp290741
                               (let ((__tmp290742
                                      (let ((__tmp290750
                                             (let ((__tmp290751
                                                    (let ((__tmp290752
                                                           (##structure-ref
                                                            _self284396_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp290752 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp290751)))
                                            (__tmp290743
                                             (let ((__tmp290748
                                                    (let ((__tmp290749
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field284452_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp290749)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp290744
                                                    (let ((__tmp290746
                                                           (let ((__tmp290747
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj284464_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp290747)))
                  (__tmp290745
                   (let () (declare (not safe)) (cons _value284456_ '()))))
              (declare (not safe))
              (cons __tmp290746 __tmp290745))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp290748
                                                     __tmp290744))))
                                        (declare (not safe))
                                        (cons __tmp290750 __tmp290743))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp290742)))
                              (__tmp290724
                               (let ((__tmp290725
                                      (let ((__tmp290726
                                             (let ((__tmp290739
                                                    (let ((__tmp290740
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp290740)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp290727
                                                    (let ((__tmp290736
                                                           (let ((__tmp290737
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp290738
                                 (##structure-ref
                                  _self284396_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp290738 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp290737)))
                  (__tmp290728
                   (let ((__tmp290734
                          (let ((__tmp290735
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj284464_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp290735)))
                         (__tmp290729
                          (let ((__tmp290731
                                 (let ((__tmp290732
                                        (let ((__tmp290733
                                               (##structure-ref
                                                _self284396_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp290733 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp290732)))
                                (__tmp290730
                                 (let ()
                                   (declare (not safe))
                                   (cons _value284456_ '()))))
                            (declare (not safe))
                            (cons __tmp290731 __tmp290730))))
                     (declare (not safe))
                     (cons __tmp290734 __tmp290729))))
              (declare (not safe))
              (cons __tmp290736 __tmp290728))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp290739
                                                     __tmp290727))))
                                        (declare (not safe))
                                        (cons '%#call __tmp290726))))
                                 (declare (not safe))
                                 (cons __tmp290725 '()))))
                          (declare (not safe))
                          (cons __tmp290741 __tmp290724))))
                   (declare (not safe))
                   (cons __tmp290753 __tmp290723))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp290722))))
                                             (declare (not safe))
                                             (cons __tmp290721 '()))))
                                      (declare (not safe))
                                      (cons __tmp290761 __tmp290720))))
                              (declare (not safe))
                              (cons '%#let-values __tmp290719))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp290717 _stx284397_))
                     (let ((__tmp290707
                            (let ((__tmp290708
                                   (let ((__tmp290715
                                          (let ((__tmp290716
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp290716)))
                                         (__tmp290709
                                          (let ((__tmp290710
                                                 (let ((__tmp290712
                                                        (let ((__tmp290713
                                                               (let ((__tmp290714
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self284396_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp290714 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp290713)))
               (__tmp290711
                (let () (declare (not safe)) (cons _value284456_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp290712
                                                         __tmp290711))))
                                            (declare (not safe))
                                            (cons _object284454_
                                                  __tmp290710))))
                                     (declare (not safe))
                                     (cons __tmp290715 __tmp290709))))
                              (declare (not safe))
                              (cons '%#call __tmp290708))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp290707 _stx284397_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd284408284430_
                                       _hd284405284422_)
                                      (let ()
                                        (declare (not safe))
                                        (_g284400284414_ _g284401284417_)))))
                              (let ()
                                (declare (not safe))
                                (_g284400284414_ _g284401284417_)))))
                      (let ()
                        (declare (not safe))
                        (_g284400284414_ _g284401284417_))))))
          (declare (not safe))
          (_g284399284466_ _args284398_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__t289839)
        (let ((__id289840
               (let ((__tmp289843
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t289839 'id))))
                 (if __tmp289843 __tmp289843 (error '"Unknown slot" 'id))))
              (__slot289841
               (let ((__tmp289844
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t289839 'slot))))
                 (if __tmp289844 __tmp289844 (error '"Unknown slot" 'slot))))
              (__checked?289842
               (let ((__tmp289845
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t289839 'checked?))))
                 (if __tmp289845
                     __tmp289845
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self284396_ _stx284397_ _args284398_)
            (let* ((_g284400284414_
                    (lambda (_g284401284411_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g284401284411_))))
                   (_g284399284466_
                    (lambda (_g284401284417_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g284401284417_))
                          (let ((_e284406284419_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g284401284417_))))
                            (let ((_hd284405284422_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e284406284419_)))
                                  (_tl284404284424_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e284406284419_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl284404284424_))
                                  (let ((_e284409284427_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl284404284424_))))
                                    (let ((_hd284408284430_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e284409284427_)))
                                          (_tl284407284432_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e284409284427_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl284407284432_))
                                          ((lambda (_L284435_ _L284436_)
                                             (let* ((_klass284450_
                                                     (let ((__tmp290798
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self284396_
                                                               __id289840
                                                               __t289839
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx284397_
                                                        __tmp290798)))
                                                    (_field284452_
                                                     (let ((__tmp290799
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self284396_
                                                               __slot289841
                                                               __t289839
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass284450_
                                                        __tmp290799)))
                                                    (_object284454_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L284436_)))
                                                    (_value284456_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L284435_))))
                                               (if (##structure-ref
                                                    _klass284450_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp290881
                                                          (let ((__tmp290891
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self284396_
                                __checked?289842
                                __t289839
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp290882
                         (let ((__tmp290888
                                (let ((__tmp290889
                                       (let ((__tmp290890
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self284396_
                                                 __id289840
                                                 __t289839
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp290890 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp290889)))
                               (__tmp290883
                                (let ((__tmp290886
                                       (let ((__tmp290887
                                              (let ()
                                                (declare (not safe))
                                                (cons _field284452_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp290887)))
                                      (__tmp290884
                                       (let ((__tmp290885
                                              (let ()
                                                (declare (not safe))
                                                (cons _value284456_ '()))))
                                         (declare (not safe))
                                         (cons _object284454_ __tmp290885))))
                                  (declare (not safe))
                                  (cons __tmp290886 __tmp290884))))
                           (declare (not safe))
                           (cons __tmp290888 __tmp290883))))
                    (declare (not safe))
                    (cons __tmp290891 __tmp290882))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp290881
                                                      _stx284397_))
                                                   (if (##structure-ref
                                                        _klass284450_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp290870
                                                              (let ((__tmp290880
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self284396_
                                    __checked?289842
                                    __t289839
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp290871
                             (let ((__tmp290877
                                    (let ((__tmp290878
                                           (let ((__tmp290879
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self284396_
                                                     __id289840
                                                     __t289839
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp290879 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp290878)))
                                   (__tmp290872
                                    (let ((__tmp290875
                                           (let ((__tmp290876
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field284452_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp290876)))
                                          (__tmp290873
                                           (let ((__tmp290874
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value284456_ '()))))
                                             (declare (not safe))
                                             (cons _object284454_
                                                   __tmp290874))))
                                      (declare (not safe))
                                      (cons __tmp290875 __tmp290873))))
                               (declare (not safe))
                               (cons __tmp290877 __tmp290872))))
                        (declare (not safe))
                        (cons __tmp290880 __tmp290871))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp290870 _stx284397_))
               (let ((_$e284459_
                      (let ((__tmp290800
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self284396_
                                __slot289841
                                __t289839
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass284450_
                         __tmp290800))))
                 (if _$e284459_
                     ((lambda (_klass284462_)
                        (let ((__tmp290859
                               (let ((__tmp290869
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self284396_
                                             __checked?289842
                                             __t289839
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp290860
                                      (let ((__tmp290866
                                             (let ((__tmp290867
                                                    (let ((__tmp290868
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self284396_
                                                              __id289840
                                                              __t289839
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp290868 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp290867)))
                                            (__tmp290861
                                             (let ((__tmp290864
                                                    (let ((__tmp290865
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field284452_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp290865)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp290862
                                                    (let ((__tmp290863
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value284456_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object284454_ __tmp290863))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp290864
                                                     __tmp290862))))
                                        (declare (not safe))
                                        (cons __tmp290866 __tmp290861))))
                                 (declare (not safe))
                                 (cons __tmp290869 __tmp290860))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp290859 _stx284397_)))
                      _$e284459_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self284396_
                            __checked?289842
                            __t289839
                            '#f))
                         (let ((__tmp290811
                                (let* ((_$obj284464_
                                        (let ((__tmp290812 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp290812)))
                                       (__tmp290813
                                        (let ((__tmp290855
                                               (let ((__tmp290856
                                                      (let ((__tmp290858
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj284464_ '())))
                    (__tmp290857
                     (let () (declare (not safe)) (cons _object284454_ '()))))
                (declare (not safe))
                (cons __tmp290858 __tmp290857))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp290856 '())))
                                              (__tmp290814
                                               (let ((__tmp290815
                                                      (let ((__tmp290816
                                                             (let ((__tmp290847
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp290848
                                   (let ((__tmp290852
                                          (let ((__tmp290853
                                                 (let ((__tmp290854
                                                        (##structure-ref
                                                         _klass284450_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp290854 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp290853)))
                                         (__tmp290849
                                          (let ((__tmp290850
                                                 (let ((__tmp290851
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj284464_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp290851))))
                                            (declare (not safe))
                                            (cons __tmp290850 '()))))
                                     (declare (not safe))
                                     (cons __tmp290852 __tmp290849))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp290848)))
                           (__tmp290817
                            (let ((__tmp290835
                                   (let ((__tmp290836
                                          (let ((__tmp290844
                                                 (let ((__tmp290845
                                                        (let ((__tmp290846
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self284396_
                          __id289840
                          __t289839
                          '#f))))
                  (declare (not safe))
                  (cons __tmp290846 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp290845)))
                                                (__tmp290837
                                                 (let ((__tmp290842
                                                        (let ((__tmp290843
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field284452_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp290843)))
               (__tmp290838
                (let ((__tmp290840
                       (let ((__tmp290841
                              (let ()
                                (declare (not safe))
                                (cons _$obj284464_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp290841)))
                      (__tmp290839
                       (let () (declare (not safe)) (cons _value284456_ '()))))
                  (declare (not safe))
                  (cons __tmp290840 __tmp290839))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp290842
                                                         __tmp290838))))
                                            (declare (not safe))
                                            (cons __tmp290844 __tmp290837))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp290836)))
                                  (__tmp290818
                                   (let ((__tmp290819
                                          (let ((__tmp290820
                                                 (let ((__tmp290833
                                                        (let ((__tmp290834
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp290834)))
               (__tmp290821
                (let ((__tmp290830
                       (let ((__tmp290831
                              (let ((__tmp290832
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self284396_
                                        __id289840
                                        __t289839
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp290832 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp290831)))
                      (__tmp290822
                       (let ((__tmp290828
                              (let ((__tmp290829
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj284464_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp290829)))
                             (__tmp290823
                              (let ((__tmp290825
                                     (let ((__tmp290826
                                            (let ((__tmp290827
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self284396_
                                                      __slot289841
                                                      __t289839
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp290827 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp290826)))
                                    (__tmp290824
                                     (let ()
                                       (declare (not safe))
                                       (cons _value284456_ '()))))
                                (declare (not safe))
                                (cons __tmp290825 __tmp290824))))
                         (declare (not safe))
                         (cons __tmp290828 __tmp290823))))
                  (declare (not safe))
                  (cons __tmp290830 __tmp290822))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp290833
                                                         __tmp290821))))
                                            (declare (not safe))
                                            (cons '%#call __tmp290820))))
                                     (declare (not safe))
                                     (cons __tmp290819 '()))))
                              (declare (not safe))
                              (cons __tmp290835 __tmp290818))))
                       (declare (not safe))
                       (cons __tmp290847 __tmp290817))))
                (declare (not safe))
                (cons '%#if __tmp290816))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp290815 '()))))
                                          (declare (not safe))
                                          (cons __tmp290855 __tmp290814))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp290813))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp290811 _stx284397_))
                         (let ((__tmp290801
                                (let ((__tmp290802
                                       (let ((__tmp290809
                                              (let ((__tmp290810
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp290810)))
                                             (__tmp290803
                                              (let ((__tmp290804
                                                     (let ((__tmp290806
                                                            (let ((__tmp290807
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp290808
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self284396_
                                     __slot289841
                                     __t289839
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp290808 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp290807)))
                   (__tmp290805
                    (let () (declare (not safe)) (cons _value284456_ '()))))
               (declare (not safe))
               (cons __tmp290806 __tmp290805))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object284454_
                                                      __tmp290804))))
                                         (declare (not safe))
                                         (cons __tmp290809 __tmp290803))))
                                  (declare (not safe))
                                  (cons '%#call __tmp290802))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp290801
                            _stx284397_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd284408284430_
                                           _hd284405284422_)
                                          (let ()
                                            (declare (not safe))
                                            (_g284400284414_
                                             _g284401284417_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g284400284414_ _g284401284417_)))))
                          (let ()
                            (declare (not safe))
                            (_g284400284414_ _g284401284417_))))))
              (declare (not safe))
              (_g284399284466_ _args284398_))))))
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
      (lambda (_self284230_ _stx284231_ _args284232_)
        (let* ((_self284233284242_ _self284230_)
               (_E284235284246_
                (lambda () (error '"No clause matching" _self284233284242_)))
               (_K284236284253_
                (lambda (_inline284249_ _dispatch284250_ _arity284251_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self284230_ _args284232_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx284231_
                         _arity284251_)))
                  (if _inline284249_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp290897
                               (let ((__tmp290898
                                      (_inline284249_ _stx284231_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp290898
                                  _stx284231_))))
                          (declare (not safe))
                          (gxc#compile-e__0 __tmp290897)))
                      (if _dispatch284250_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch284250_))
                            (let ((__tmp290892
                                   (let ((__tmp290893
                                          (let ((__tmp290894
                                                 (let ((__tmp290895
                                                        (let ((__tmp290896
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch284250_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp290896))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp290895
                                                         _args284232_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp290894))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp290893
                                      _stx284231_))))
                              (declare (not safe))
                              (gxc#compile-e__0 __tmp290892)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _stx284231_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self284233284242_ 'gxc#!lambda::t))
              (let* ((_e284237284256_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284233284242_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e284238284259_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284233284242_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity284262_ _e284238284259_)
                     (_e284239284264_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284233284242_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch284267_ _e284239284264_)
                     (_e284240284269_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284233284242_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline284272_ _e284240284269_))
                (declare (not safe))
                (_K284236284253_
                 _inline284272_
                 _dispatch284267_
                 _arity284262_))
              (let () (declare (not safe)) (_E284235284246_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self284069_ _stx284070_ _args284071_)
        (let* ((_self284072284079_ _self284069_)
               (_E284074284083_
                (lambda () (error '"No clause matching" _self284072284079_)))
               (_K284075284097_
                (lambda (_clauses284086_)
                  (let ((_$e284092_
                         (let ((__tmp290899
                                (lambda (_g284087284089_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g284087284089_
                                     _args284071_)))))
                           (declare (not safe))
                           (find __tmp290899 _clauses284086_))))
                    (if _$e284092_
                        ((lambda (_clause284095_)
                           (let ((__method290114
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause284095_
                                     'optimize-call))))
                             (if __method290114
                                 (__method290114
                                  _clause284095_
                                  _stx284070_
                                  _args284071_)
                                 (error '"Missing method"
                                        _clause284095_
                                        'optimize-call))))
                         _$e284092_)
                        (let ((__tmp290900
                               (map gxc#!lambda-arity _clauses284086_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx284070_
                           __tmp290900)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self284072284079_
                 'gxc#!case-lambda::t))
              (let* ((_e284076284100_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284072284079_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e284077284103_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284072284079_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses284106_ _e284077284103_))
                (declare (not safe))
                (_K284075284097_ _clauses284106_))
              (let () (declare (not safe)) (_E284074284083_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self283883_ _args283884_)
        (let* ((_self283885283892_ _self283883_)
               (_E283887283896_
                (lambda () (error '"No clause matching" _self283885283892_)))
               (_K283888283936_
                (lambda (_arity283899_)
                  (let* ((_arity283900283909_ _arity283899_)
                         (_E283903283913_
                          (lambda ()
                            (error '"No clause matching"
                                   _arity283900283909_))))
                    (let ((_K283907283933_
                           (lambda ()
                             (fx= (length _args283884_) _arity283899_)))
                          (_K283904283919_
                           (lambda (_arity283917_)
                             (fx>= (length _args283884_) _arity283917_))))
                      (let ((_try-match283902283929_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity283900283909_))
                                   (let ((_tl283906283924_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity283900283909_)))
                                         (_hd283905283922_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity283900283909_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl283906283924_))
                                         (let ((_arity283927_
                                                _hd283905283922_))
                                           (declare (not safe))
                                           (_K283904283919_ _arity283927_))
                                         (let ()
                                           (declare (not safe))
                                           (_E283903283913_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E283903283913_))))))
                        (if (fixnum? _arity283900283909_)
                            (let () (declare (not safe)) (_K283907283933_))
                            (let ()
                              (declare (not safe))
                              (_try-match283902283929_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self283885283892_ 'gxc#!lambda::t))
              (let* ((_e283889283939_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283885283892_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e283890283942_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283885283892_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity283945_ _e283890283942_))
                (declare (not safe))
                (_K283888283936_ _arity283945_))
              (let () (declare (not safe)) (_E283887283896_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self283768_ _stx283769_ _args283770_)
        (let* ((_self283771283779_ _self283768_)
               (_E283773283783_
                (lambda () (error '"No clause matching" _self283771283779_)))
               (_K283774283867_
                (lambda (_dispatch283786_ _table283787_)
                  (let* ((_g283788283797_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch283786_)))
                         (_else283790283805_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch283786_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _stx283769_))))
                         (_K283792283851_
                          (lambda (_main283808_ _keys283809_)
                            (let ((_g290901_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx283769_
                                      _args283770_))))
                              (begin
                                (let ((_g290902_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g290901_)
                                             (##vector-length _g290901_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g290902_ 2)))
                                      (error "Context expects 2 values"
                                             _g290902_)))
                                (let ((_pargs283811_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g290901_ 0)))
                                      (_kwargs283812_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g290901_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main283808_))
                                    (if _table283787_
                                        (let ((_xargs283819_
                                               (map (lambda (_key283814_)
                                                      (let ((_$e283816_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _key283814_ _kwargs283812_))))
                (if _$e283816_ (values _$e283816_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys283809_)))
                                          (for-each
                                           (lambda (_kw283821_)
                                             (if (memq (car _kw283821_)
                                                       _keys283809_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx283769_
                                                    _keys283809_
                                                    _kw283821_))))
                                           _kwargs283812_)
                                          (let ((__tmp290954
                                                 (let ((__tmp290955
                                                        (let ((__tmp290956
                                                               (let ((__tmp290961
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp290962
                                     (let ()
                                       (declare (not safe))
                                       (cons _main283808_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp290962)))
                             (__tmp290957
                              (let ((__tmp290959
                                     (let ((__tmp290960
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp290960)))
                                    (__tmp290958
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs283811_
                                               _xargs283819_))))
                                (declare (not safe))
                                (cons __tmp290959 __tmp290958))))
                         (declare (not safe))
                         (cons __tmp290961 __tmp290957))))
                  (declare (not safe))
                  (cons '%#call __tmp290956))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp290955
                                                    _stx283769_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0 __tmp290954)))
                                        (let* ((_kwt283823_
                                                (let ((__tmp290903
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp290903)))
                                               (_kwvars283826_
                                                (map (lambda (_g290904_)
                                                       (let ((__tmp290905
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp290905)))
                                                     _kwargs283812_))
                                               (_kwbind283831_
                                                (map (lambda (_kw283828_
                                                              _kwvar283829_)
                                                       (let ((__tmp290908
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar283829_ '())))
                     (__tmp290906
                      (let ((__tmp290907 (cdr _kw283828_)))
                        (declare (not safe))
                        (cons __tmp290907 '()))))
                 (declare (not safe))
                 (cons __tmp290908 __tmp290906)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs283812_
                                                     _kwvars283826_))
                                               (_kwset283836_
                                                (map (lambda (_kw283833_
                                                              _kwvar283834_)
                                                       (let ((__tmp290909
                                                              (let ((__tmp290910
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp290918
                                    (let ((__tmp290919
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt283823_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp290919)))
                                   (__tmp290911
                                    (let ((__tmp290915
                                           (let ((__tmp290916
                                                  (let ((__tmp290917
                                                         (car _kw283833_)))
                                                    (declare (not safe))
                                                    (cons __tmp290917 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp290916)))
                                          (__tmp290912
                                           (let ((__tmp290913
                                                  (let ((__tmp290914
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar283834_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp290914))))
                                             (declare (not safe))
                                             (cons __tmp290913 '()))))
                                      (declare (not safe))
                                      (cons __tmp290915 __tmp290912))))
                               (declare (not safe))
                               (cons __tmp290918 __tmp290911))))
                        (declare (not safe))
                        (cons '(%#ref hash-put!) __tmp290910))))
                 (declare (not safe))
                 (cons '%#call __tmp290909)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs283812_
                                                     _kwvars283826_))
                                               (_xkwargs283841_
                                                (map (lambda (_kw283838_
                                                              _kwvar283839_)
                                                       (let ((__tmp290922
                                                              (car _kw283838_))
                                                             (__tmp290920
                                                              (let ((__tmp290921
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar283839_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp290921))))
                 (declare (not safe))
                 (cons __tmp290922 __tmp290920)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs283812_
                                                     _kwvars283826_))
                                               (_xargs283848_
                                                (map (lambda (_key283843_)
                                                       (let ((_$e283845_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq _key283843_ _xkwargs283841_))))
                 (if _$e283845_ (values _$e283845_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys283809_)))
                                          (let ((__tmp290923
                                                 (let ((__tmp290924
                                                        (let ((__tmp290925
                                                               (let ((__tmp290926
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp290927
                                     (let ((__tmp290928
                                            (let ((__tmp290942
                                                   (let ((__tmp290943
                                                          (let ((__tmp290953
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt283823_ '())))
                        (__tmp290944
                         (let ((__tmp290945
                                (let ((__tmp290946
                                       (let ((__tmp290947
                                              (let ((__tmp290948
                                                     (let ((__tmp290949
                                                            (let ((__tmp290950
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp290951
                                  (let ((__tmp290952 (length _kwargs283812_)))
                                    (declare (not safe))
                                    (cons __tmp290952 '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp290951))))
                      (declare (not safe))
                      (cons __tmp290950 '()))))
               (declare (not safe))
               (cons '(%#quote size:) __tmp290949))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-hash-table-eq)
                                                      __tmp290948))))
                                         (declare (not safe))
                                         (cons '%#call __tmp290947))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp290946
                                   _stx283769_))))
                           (declare (not safe))
                           (cons __tmp290945 '()))))
                    (declare (not safe))
                    (cons __tmp290953 __tmp290944))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp290943 '())))
                                                  (__tmp290929
                                                   (let ((__tmp290930
                                                          (let ((__tmp290931
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp290932
                                (let ((__tmp290933
                                       (let ((__tmp290934
                                              (let ((__tmp290935
                                                     (let ((__tmp290940
                                                            (let ((__tmp290941
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main283808_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp290941)))
                   (__tmp290936
                    (let ((__tmp290938
                           (let ((__tmp290939
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt283823_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp290939)))
                          (__tmp290937
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs283811_ _xargs283848_))))
                      (declare (not safe))
                      (cons __tmp290938 __tmp290937))))
               (declare (not safe))
               (cons __tmp290940 __tmp290936))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp290935))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp290934
                                          _stx283769_))))
                                  (declare (not safe))
                                  (cons __tmp290933 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp290932 _kwset283836_))))
                    (declare (not safe))
                    (cons '%#begin __tmp290931))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp290930 '()))))
                                              (declare (not safe))
                                              (cons __tmp290942 __tmp290929))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp290928))))
                                (declare (not safe))
                                (cons __tmp290927 '()))))
                         (declare (not safe))
                         (cons _kwbind283831_ __tmp290926))))
                  (declare (not safe))
                  (cons '%#let-values __tmp290925))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp290924
                                                    _stx283769_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0
                                             __tmp290923)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g283788283797_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e283793283854_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g283788283797_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e283794283857_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g283788283797_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys283860_ _e283794283857_)
                               (_e283795283862_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g283788283797_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main283865_ _e283795283862_))
                          (declare (not safe))
                          (_K283792283851_ _main283865_ _keys283860_))
                        (let () (declare (not safe)) (_else283790283805_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self283771283779_
                 'gxc#!kw-lambda::t))
              (let* ((_e283775283870_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283771283779_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e283776283873_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283771283779_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table283876_ _e283776283873_)
                     (_e283777283878_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283771283779_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch283881_ _e283777283878_))
                (declare (not safe))
                (_K283774283867_ _dispatch283881_ _table283876_))
              (let () (declare (not safe)) (_E283773283783_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx283381_ _args283382_)
        (let _lp283384_ ((_rest283386_ _args283382_)
                         (_pargs283387_ '())
                         (_kwargs283388_ '()))
          (let* ((___stx289996289997_ _rest283386_)
                 (_g283394283446_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx289996289997_)))))
            (let ((___kont289998289999_
                   (lambda (_L283625_ _L283626_)
                     (let ((__tmp290963
                            (let ()
                              (declare (not safe))
                              (cons _L283626_ _pargs283387_))))
                       (declare (not safe))
                       (_lp283384_ _L283625_ __tmp290963 _kwargs283388_))))
                  (___kont290000290001_
                   (lambda (_L283571_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L283571_ _pargs283387_))
                             (reverse _kwargs283388_))))
                  (___kont290002290003_
                   (lambda (_L283518_ _L283519_ _L283520_)
                     (let ((_kw283537_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L283520_))))
                       (if (assq _kw283537_ _kwargs283388_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx283381_
                              _kw283537_))
                           (let ((__tmp290964
                                  (let ((__tmp290965
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw283537_ _L283519_))))
                                    (declare (not safe))
                                    (cons __tmp290965 _kwargs283388_))))
                             (declare (not safe))
                             (_lp283384_
                              _L283518_
                              _pargs283387_
                              __tmp290964))))))
                  (___kont290004290005_
                   (lambda (_L283466_ _L283467_)
                     (let ((__tmp290966
                            (let ()
                              (declare (not safe))
                              (cons _L283467_ _pargs283387_))))
                       (declare (not safe))
                       (_lp283384_ _L283466_ __tmp290966 _kwargs283388_))))
                  (___kont290006290007_
                   (lambda ()
                     (values (reverse _pargs283387_)
                             (reverse _kwargs283388_)))))
              (let* ((_g283393283453_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx289996289997_))
                            (___kont290006290007_)
                            (let () (declare (not safe)) (_g283394283446_)))))
                     (___match290103290104_
                      (lambda (_e283427283486_
                               _hd283426283489_
                               _tl283425283491_
                               _e283430283494_
                               _hd283429283497_
                               _tl283428283499_
                               _e283433283502_
                               _hd283432283505_
                               _tl283431283507_
                               _e283436283510_
                               _hd283435283513_
                               _tl283434283515_)
                        (let ((_L283518_ _tl283434283515_)
                              (_L283519_ _hd283435283513_)
                              (_L283520_ _hd283432283505_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L283520_))
                              (___kont290002290003_
                               _L283518_
                               _L283519_
                               _L283520_)
                              (___kont290004290005_
                               _tl283425283491_
                               _hd283426283489_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx289996289997_))
                    (let ((_e283400283590_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx289996289997_))))
                      (let ((_tl283398283595_
                             (let ()
                               (declare (not safe))
                               (##cdr _e283400283590_)))
                            (_hd283399283593_
                             (let ()
                               (declare (not safe))
                               (##car _e283400283590_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd283399283593_))
                            (let ((_e283403283598_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd283399283593_))))
                              (let ((_tl283401283603_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e283403283598_)))
                                    (_hd283402283601_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e283403283598_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd283402283601_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd283402283601_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl283401283603_))
                                            (let ((_e283406283606_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl283401283603_))))
                                              (let ((_tl283404283611_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e283406283606_)))
                                                    (_hd283405283609_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e283406283606_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd283405283609_))
                                                    (let ((_e283407283614_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd283405283609_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e283407283614_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl283404283611_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl283398283595_))
                          (let ((_e283410283617_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl283398283595_))))
                            (let ((_tl283408283622_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e283410283617_)))
                                  (_hd283409283620_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e283410283617_))))
                              (___kont289998289999_
                               _tl283408283622_
                               _hd283409283620_)))
                          (___kont290004290005_
                           _tl283398283595_
                           _hd283399283593_))
                      (___kont290004290005_ _tl283398283595_ _hd283399283593_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e283407283614_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl283404283611_))
                          (___kont290000290001_ _tl283398283595_)
                          (___kont290004290005_
                           _tl283398283595_
                           _hd283399283593_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl283404283611_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl283398283595_))
                              (let ((_e283436283510_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl283398283595_))))
                                (let ((_tl283434283515_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e283436283510_)))
                                      (_hd283435283513_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e283436283510_))))
                                  (___match290103290104_
                                   _e283400283590_
                                   _hd283399283593_
                                   _tl283398283595_
                                   _e283403283598_
                                   _hd283402283601_
                                   _tl283401283603_
                                   _e283406283606_
                                   _hd283405283609_
                                   _tl283404283611_
                                   _e283436283510_
                                   _hd283435283513_
                                   _tl283434283515_)))
                              (___kont290004290005_
                               _tl283398283595_
                               _hd283399283593_))
                          (___kont290004290005_
                           _tl283398283595_
                           _hd283399283593_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl283404283611_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl283398283595_))
                                                            (let ((_e283436283510_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl283398283595_))))
                      (let ((_tl283434283515_
                             (let ()
                               (declare (not safe))
                               (##cdr _e283436283510_)))
                            (_hd283435283513_
                             (let ()
                               (declare (not safe))
                               (##car _e283436283510_))))
                        (___match290103290104_
                         _e283400283590_
                         _hd283399283593_
                         _tl283398283595_
                         _e283403283598_
                         _hd283402283601_
                         _tl283401283603_
                         _e283406283606_
                         _hd283405283609_
                         _tl283404283611_
                         _e283436283510_
                         _hd283435283513_
                         _tl283434283515_)))
                    (___kont290004290005_ _tl283398283595_ _hd283399283593_))
                (___kont290004290005_ _tl283398283595_ _hd283399283593_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont290004290005_
                                             _tl283398283595_
                                             _hd283399283593_))
                                        (___kont290004290005_
                                         _tl283398283595_
                                         _hd283399283593_))
                                    (___kont290004290005_
                                     _tl283398283595_
                                     _hd283399283593_))))
                            (___kont290004290005_
                             _tl283398283595_
                             _hd283399283593_))))
                    (let () (declare (not safe)) (_g283393283453_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self283377_ _stx283378_ _args283379_)
        (let () (declare (not safe)) (gxc#xform-call% _stx283378_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
