(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1707646858)
  (begin
    (define gxc#&optimize-call
      (make-promise
       (lambda ()
         (let ((_tbl274293_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp279119 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl274293_ __tmp279119))
           (let ()
             (declare (not safe))
             (table-set! _tbl274293_ '%#call gxc#optimize-call%))
           _tbl274293_))))
    (define gxc#apply-optimize-call
      (lambda (_stx274276_ . _args274278_)
        (let ((__tmp279121
               (lambda ()
                 (declare (not safe))
                 (if (null? _args274278_)
                     (gxc#compile-e__0 _stx274276_)
                     (let ((_arg1274283_ (car _args274278_))
                           (_rest274285_ (cdr _args274278_)))
                       (if (null? _rest274285_)
                           (gxc#compile-e__1 _stx274276_ _arg1274283_)
                           (let ((_arg2274288_ (car _rest274285_))
                                 (_rest274290_ (cdr _rest274285_)))
                             (if (null? _rest274290_)
                                 (gxc#compile-e__2
                                  _stx274276_
                                  _arg1274283_
                                  _arg2274288_)
                                 (apply gxc#compile-e
                                        _stx274276_
                                        _arg1274283_
                                        _arg2274288_
                                        _rest274290_))))))))
              (__tmp279120 (force gxc#&optimize-call)))
          (declare (not safe))
          (call-with-parameters
           __tmp279121
           gxc#current-compile-methods
           __tmp279120))))
    (define gxc#optimize-call%
      (lambda (_stx274131_)
        (let* ((___stx278802278803_ _stx274131_)
               (_g274134274154_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx278802278803_)))))
          (let ((___kont278804278805_
                 (lambda (_L274198_ _L274199_)
                   (let* ((_rator-id274217_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L274199_)))
                          (_rator-type274219_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id274217_))))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gxc#!procedure::t
                            _rator-type274219_))
                         (begin
                           (let ((__tmp279122
                                  (let ((__obj279050 _rator-type274219_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-direct-instance-of?
                                           __obj279050
                                           'gxc#!type::t))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __obj279050
                                           '1
                                           gxc#!type::t
                                           '#f))
                                        (class-slot-ref
                                         gxc#!type::t
                                         __obj279050
                                         'id)))))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id274217_
                              '" => "
                              _rator-type274219_
                              '" "
                              __tmp279122))
                           (let ((_optimized274222_
                                  (let ((__method279051
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type274219_
                                            'optimize-call))))
                                    (if __method279051
                                        (__method279051
                                         _rator-type274219_
                                         _stx274131_
                                         _L274198_)
                                        (error '"Missing method"
                                               _rator-type274219_
                                               'optimize-call)))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type274219_))
                                 _optimized274222_
                                 (let* ((___stx278784278785_ _optimized274222_)
                                        (_g274225274235_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx278784278785_)))))
                                   (let ((___kont278786278787_
                                          (lambda (_L274255_)
                                            (let ((__tmp279123
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L274255_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp279123
                                               _stx274131_))))
                                         (___kont278788278789_
                                          (lambda () _optimized274222_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx278784278785_))
                                         (let ((_e274230274247_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx278784278785_))))
                                           (let ((_tl274228274252_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e274230274247_)))
                                                 (_hd274229274250_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e274230274247_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd274229274250_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd274229274250_))
                                                     (___kont278786278787_
                                                      _tl274228274252_)
                                                     (___kont278788278789_))
                                                 (___kont278788278789_))))
                                         (___kont278788278789_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type274219_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx274131_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx274131_
                                _rator-type274219_)))))))
                (___kont278806278807_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _stx274131_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx278802278803_))
                (let ((_e274140274166_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx278802278803_))))
                  (let ((_tl274138274171_
                         (let () (declare (not safe)) (##cdr _e274140274166_)))
                        (_hd274139274169_
                         (let ()
                           (declare (not safe))
                           (##car _e274140274166_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl274138274171_))
                        (let ((_e274143274174_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl274138274171_))))
                          (let ((_tl274141274179_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e274143274174_)))
                                (_hd274142274177_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e274143274174_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd274142274177_))
                                (let ((_e274146274182_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd274142274177_))))
                                  (let ((_tl274144274187_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e274146274182_)))
                                        (_hd274145274185_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e274146274182_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd274145274185_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd274145274185_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl274144274187_))
                                                (let ((_e274149274190_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl274144274187_))))
                                                  (let ((_tl274147274195_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e274149274190_)))
                                                        (_hd274148274193_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e274149274190_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl274147274195_))
                                                        (___kont278804278805_
                                                         _tl274141274179_
                                                         _hd274148274193_)
                                                        (___kont278806278807_))))
                                                (___kont278806278807_))
                                            (___kont278806278807_))
                                        (___kont278806278807_))))
                                (___kont278806278807_))))
                        (___kont278806278807_))))
                (___kont278806278807_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self274085_ _stx274086_ _args274087_)
        (let* ((_g274089274099_
                (lambda (_g274090274096_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g274090274096_))))
               (_g274088274128_
                (lambda (_g274090274102_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g274090274102_))
                      (let ((_e274094274104_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g274090274102_))))
                        (let ((_hd274093274107_
                               (let ()
                                 (declare (not safe))
                                 (##car _e274094274104_)))
                              (_tl274092274109_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e274094274104_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl274092274109_))
                              ((lambda (_L274112_)
                                 (let* ((_klass274123_
                                         (let ((__tmp279124
                                                (let ((__obj279052
                                                       _self274085_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         __obj279052
                                                         'gxc#!type::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         __obj279052
                                                         '1
                                                         gxc#!type::t
                                                         '#f))
                                                      (class-slot-ref
                                                       gxc#!type::t
                                                       __obj279052
                                                       'id)))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx274086_
                                            __tmp279124)))
                                        (_object274125_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L274112_))))
                                   (if (let ((__obj279053 _klass274123_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-direct-instance-of?
                                                __obj279053
                                                'gxc#!class::t))
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                __obj279053
                                                '8
                                                gxc#!class::t
                                                '#f))
                                             (class-slot-ref
                                              gxc#!class::t
                                              __obj279053
                                              'final?)))
                                       (let ((__tmp279140
                                              (let ((__tmp279141
                                                     (let ((__tmp279143
                                                            (let ((__tmp279144
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279145
                                  (let ((__obj279054 _klass274123_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-direct-instance-of?
                                           __obj279054
                                           'gxc#!type::t))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __obj279054
                                           '1
                                           gxc#!type::t
                                           '#f))
                                        (class-slot-ref
                                         gxc#!type::t
                                         __obj279054
                                         'id)))))
                             (declare (not safe))
                             (cons __tmp279145 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp279144)))
                   (__tmp279142
                    (let () (declare (not safe)) (cons _object274125_ '()))))
               (declare (not safe))
               (cons __tmp279143 __tmp279142))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp279141))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp279140
                                          _stx274086_))
                                       (if (let ((__obj279055 _klass274123_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-direct-instance-of?
                                                    __obj279055
                                                    'gxc#!class::t))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    __obj279055
                                                    '7
                                                    gxc#!class::t
                                                    '#f))
                                                 (class-slot-ref
                                                  gxc#!class::t
                                                  __obj279055
                                                  'struct?)))
                                           (let ((__tmp279134
                                                  (let ((__tmp279135
                                                         (let ((__tmp279137
                                                                (let ((__tmp279138
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp279139
                                      (let ((__obj279056 _klass274123_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj279056
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj279056
                                               '1
                                               gxc#!type::t
                                               '#f))
                                            (class-slot-ref
                                             gxc#!type::t
                                             __obj279056
                                             'id)))))
                                 (declare (not safe))
                                 (cons __tmp279139 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp279138)))
                       (__tmp279136
                        (let ()
                          (declare (not safe))
                          (cons _object274125_ '()))))
                   (declare (not safe))
                   (cons __tmp279137 __tmp279136))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp279135))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp279134
                                              _stx274086_))
                                           (let ((__tmp279125
                                                  (let ((__tmp279126
                                                         (let ((__tmp279132
                                                                (let ((__tmp279133
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp279133)))
                       (__tmp279127
                        (let ((__tmp279129
                               (let ((__tmp279130
                                      (let ((__tmp279131
                                             (let ((__obj279057 _self274085_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      __obj279057
                                                      'gxc#!type::t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      __obj279057
                                                      '1
                                                      gxc#!type::t
                                                      '#f))
                                                   (class-slot-ref
                                                    gxc#!type::t
                                                    __obj279057
                                                    'id)))))
                                        (declare (not safe))
                                        (cons __tmp279131 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp279130)))
                              (__tmp279128
                               (let ()
                                 (declare (not safe))
                                 (cons _object274125_ '()))))
                          (declare (not safe))
                          (cons __tmp279129 __tmp279128))))
                   (declare (not safe))
                   (cons __tmp279132 __tmp279127))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp279126))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp279125
                                              _stx274086_))))))
                               _hd274093274107_)
                              (let ()
                                (declare (not safe))
                                (_g274089274099_ _g274090274102_)))))
                      (let ()
                        (declare (not safe))
                        (_g274089274099_ _g274090274102_))))))
          (declare (not safe))
          (_g274088274128_ _args274087_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__t278763)
        (let ((__id278764
               (let ((__tmp278765
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t278763 'id))))
                 (if __tmp278765 __tmp278765 (error '"Unknown slot" 'id)))))
          (lambda (_self274085_ _stx274086_ _args274087_)
            (let* ((_g274089274099_
                    (lambda (_g274090274096_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g274090274096_))))
                   (_g274088274128_
                    (lambda (_g274090274102_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g274090274102_))
                          (let ((_e274094274104_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g274090274102_))))
                            (let ((_hd274093274107_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e274094274104_)))
                                  (_tl274092274109_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e274094274104_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl274092274109_))
                                  ((lambda (_L274112_)
                                     (let* ((_klass274123_
                                             (let ((__tmp279146
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self274085_
                                                       __id278764
                                                       __t278763
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx274086_
                                                __tmp279146)))
                                            (_object274125_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L274112_))))
                                       (if (let ((__obj279058 _klass274123_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-direct-instance-of?
                                                    __obj279058
                                                    'gxc#!class::t))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    __obj279058
                                                    '8
                                                    gxc#!class::t
                                                    '#f))
                                                 (class-slot-ref
                                                  gxc#!class::t
                                                  __obj279058
                                                  'final?)))
                                           (let ((__tmp279162
                                                  (let ((__tmp279163
                                                         (let ((__tmp279165
                                                                (let ((__tmp279166
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp279167
                                      (let ((__obj279059 _klass274123_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj279059
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj279059
                                               '1
                                               gxc#!type::t
                                               '#f))
                                            (class-slot-ref
                                             gxc#!type::t
                                             __obj279059
                                             'id)))))
                                 (declare (not safe))
                                 (cons __tmp279167 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp279166)))
                       (__tmp279164
                        (let ()
                          (declare (not safe))
                          (cons _object274125_ '()))))
                   (declare (not safe))
                   (cons __tmp279165 __tmp279164))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp279163))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp279162
                                              _stx274086_))
                                           (if (let ((__obj279060
                                                      _klass274123_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        __obj279060
                                                        'gxc#!class::t))
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        __obj279060
                                                        '7
                                                        gxc#!class::t
                                                        '#f))
                                                     (class-slot-ref
                                                      gxc#!class::t
                                                      __obj279060
                                                      'struct?)))
                                               (let ((__tmp279156
                                                      (let ((__tmp279157
                                                             (let ((__tmp279159
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp279160
                                   (let ((__tmp279161
                                          (let ((__obj279061 _klass274123_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj279061
                                                   'gxc#!type::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj279061
                                                   '1
                                                   gxc#!type::t
                                                   '#f))
                                                (class-slot-ref
                                                 gxc#!type::t
                                                 __obj279061
                                                 'id)))))
                                     (declare (not safe))
                                     (cons __tmp279161 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp279160)))
                           (__tmp279158
                            (let ()
                              (declare (not safe))
                              (cons _object274125_ '()))))
                       (declare (not safe))
                       (cons __tmp279159 __tmp279158))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp279157))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp279156
                                                  _stx274086_))
                                               (let ((__tmp279147
                                                      (let ((__tmp279148
                                                             (let ((__tmp279154
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp279155
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp279155)))
                           (__tmp279149
                            (let ((__tmp279151
                                   (let ((__tmp279152
                                          (let ((__tmp279153
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self274085_
                                                    __id278764
                                                    __t278763
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp279153 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp279152)))
                                  (__tmp279150
                                   (let ()
                                     (declare (not safe))
                                     (cons _object274125_ '()))))
                              (declare (not safe))
                              (cons __tmp279151 __tmp279150))))
                       (declare (not safe))
                       (cons __tmp279154 __tmp279149))))
                (declare (not safe))
                (cons '%#call __tmp279148))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp279147
                                                  _stx274086_))))))
                                   _hd274093274107_)
                                  (let ()
                                    (declare (not safe))
                                    (_g274089274099_ _g274090274102_)))))
                          (let ()
                            (declare (not safe))
                            (_g274089274099_ _g274090274102_))))))
              (declare (not safe))
              (_g274088274128_ _args274087_))))))
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
      (lambda (_self273816_ _stx273817_ _args273818_)
        (let* ((_klass273820_
                (let ((__tmp279168
                       (let ((__obj279062 _self273816_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj279062
                                'gxc#!type::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj279062
                                '1
                                gxc#!type::t
                                '#f))
                             (class-slot-ref gxc#!type::t __obj279062 'id)))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx273817_ __tmp279168)))
               (_fields273822_
                (length (let ((__obj279063 _klass273820_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj279063
                                 'gxc#!class::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj279063
                                 '5
                                 gxc#!class::t
                                 '#f))
                              (class-slot-ref
                               gxc#!class::t
                               __obj279063
                               'fields)))))
               (_args273824_ (map gxc#compile-e _args273818_))
               (_inline-make-object273826_
                (let ((__tmp279169
                       (let ((__tmp279175
                              (let ((__tmp279176
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp279176)))
                             (__tmp279170
                              (let ((__tmp279172
                                     (let ((__tmp279173
                                            (let ((__tmp279174
                                                   (let ((__obj279064
                                                          _self273816_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj279064
                                                            'gxc#!type::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj279064
                                                            '1
                                                            gxc#!type::t
                                                            '#f))
                                                         (class-slot-ref
                                                          gxc#!type::t
                                                          __obj279064
                                                          'id)))))
                                              (declare (not safe))
                                              (cons __tmp279174 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp279173)))
                                    (__tmp279171
                                     (make-list _fields273822_ '(%#quote #f))))
                                (declare (not safe))
                                (cons __tmp279172 __tmp279171))))
                         (declare (not safe))
                         (cons __tmp279175 __tmp279170))))
                  (declare (not safe))
                  (cons '%#call __tmp279169))))
          (let ((_$e273829_
                 (let ((__obj279065 _klass273820_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-direct-instance-of?
                          __obj279065
                          'gxc#!class::t))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          __obj279065
                          '6
                          gxc#!class::t
                          '#f))
                       (class-slot-ref
                        gxc#!class::t
                        __obj279065
                        'constructor)))))
            (if _$e273829_
                ((lambda (_ctor273832_)
                   (let ((_$obj273834_
                          (let ((__tmp279238 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp279238)))
                         (_ctor-impl273835_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass273820_
                             _ctor273832_))))
                     (let ((__tmp279239
                            (let ((__tmp279240
                                   (let ((__tmp279305
                                          (let ((__tmp279306
                                                 (let ((__tmp279308
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj273834_
                                                                '())))
                                                       (__tmp279307
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object273826_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp279308
                                                         __tmp279307))))
                                            (declare (not safe))
                                            (cons __tmp279306 '())))
                                         (__tmp279241
                                          (let ((__tmp279242
                                                 (let ((__tmp279243
                                                        (let ((__tmp279247
                                                               (if _ctor-impl273835_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279299
                                  (let ((__tmp279303
                                         (let ((__tmp279304
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl273835_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp279304)))
                                        (__tmp279300
                                         (let ((__tmp279301
                                                (let ((__tmp279302
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj273834_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp279302))))
                                           (declare (not safe))
                                           (cons __tmp279301 _args273824_))))
                                    (declare (not safe))
                                    (cons __tmp279303 __tmp279300))))
                             (declare (not safe))
                             (cons '%#call __tmp279299))
                           (let* ((_$ctor273837_
                                   (let ((__tmp279248 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp279248)))
                                  (__tmp279249
                                   (let ((__tmp279284
                                          (let ((__tmp279285
                                                 (let ((__tmp279298
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor273837_
                                                                '())))
                                                       (__tmp279286
                                                        (let ((__tmp279287
                                                               (let ((__tmp279288
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp279296
                                     (let ((__tmp279297
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp279297)))
                                    (__tmp279289
                                     (let ((__tmp279293
                                            (let ((__tmp279294
                                                   (let ((__tmp279295
                                                          (let ((__obj279066
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _self273816_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-direct-instance-of?
                           __obj279066
                           'gxc#!type::t))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           __obj279066
                           '1
                           gxc#!type::t
                           '#f))
                        (class-slot-ref gxc#!type::t __obj279066 'id)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp279295 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp279294)))
                                           (__tmp279290
                                            (let ((__tmp279291
                                                   (let ((__tmp279292
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _ctor273832_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#quote
                                                           __tmp279292))))
                                              (declare (not safe))
                                              (cons __tmp279291 '()))))
                                       (declare (not safe))
                                       (cons __tmp279293 __tmp279290))))
                                (declare (not safe))
                                (cons __tmp279296 __tmp279289))))
                         (declare (not safe))
                         (cons '%#call __tmp279288))))
                  (declare (not safe))
                  (cons __tmp279287 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279298
                                                         __tmp279286))))
                                            (declare (not safe))
                                            (cons __tmp279285 '())))
                                         (__tmp279250
                                          (let ((__tmp279251
                                                 (let ((__tmp279252
                                                        (let ((__tmp279282
                                                               (let ((__tmp279283
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor273837_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp279283)))
                      (__tmp279253
                       (let ((__tmp279275
                              (let ((__tmp279276
                                     (let ((__tmp279280
                                            (let ((__tmp279281
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor273837_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp279281)))
                                           (__tmp279277
                                            (let ((__tmp279278
                                                   (let ((__tmp279279
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj273834_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp279279))))
                                              (declare (not safe))
                                              (cons __tmp279278
                                                    _args273824_))))
                                       (declare (not safe))
                                       (cons __tmp279280 __tmp279277))))
                                (declare (not safe))
                                (cons '%#call __tmp279276)))
                             (__tmp279254
                              (let ((__tmp279255
                                     (let ((__tmp279256
                                            (let ((__tmp279273
                                                   (let ((__tmp279274
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp279274)))
                                                  (__tmp279257
                                                   (let ((__tmp279271
                                                          (let ((__tmp279272
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp279272)))
                 (__tmp279258
                  (let ((__tmp279269
                         (let ((__tmp279270
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp279270)))
                        (__tmp279259
                         (let ((__tmp279266
                                (let ((__tmp279267
                                       (let ((__tmp279268
                                              (let ((__obj279067 _self273816_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##structure-direct-instance-of?
                                                       __obj279067
                                                       'gxc#!type::t))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __obj279067
                                                       '1
                                                       gxc#!type::t
                                                       '#f))
                                                    (class-slot-ref
                                                     gxc#!type::t
                                                     __obj279067
                                                     'id)))))
                                         (declare (not safe))
                                         (cons __tmp279268 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp279267)))
                               (__tmp279260
                                (let ((__tmp279264
                                       (let ((__tmp279265
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp279265)))
                                      (__tmp279261
                                       (let ((__tmp279262
                                              (let ((__tmp279263
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor273832_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp279263))))
                                         (declare (not safe))
                                         (cons __tmp279262 '()))))
                                  (declare (not safe))
                                  (cons __tmp279264 __tmp279261))))
                           (declare (not safe))
                           (cons __tmp279266 __tmp279260))))
                    (declare (not safe))
                    (cons __tmp279269 __tmp279259))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp279271
                                                           __tmp279258))))
                                              (declare (not safe))
                                              (cons __tmp279273 __tmp279257))))
                                       (declare (not safe))
                                       (cons '%#call __tmp279256))))
                                (declare (not safe))
                                (cons __tmp279255 '()))))
                         (declare (not safe))
                         (cons __tmp279275 __tmp279254))))
                  (declare (not safe))
                  (cons __tmp279282 __tmp279253))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp279252))))
                                            (declare (not safe))
                                            (cons __tmp279251 '()))))
                                     (declare (not safe))
                                     (cons __tmp279284 __tmp279250))))
                             (declare (not safe))
                             (cons '%#let-values __tmp279249))))
                      (__tmp279244
                       (let ((__tmp279245
                              (let ((__tmp279246
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj273834_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp279246))))
                         (declare (not safe))
                         (cons __tmp279245 '()))))
                  (declare (not safe))
                  (cons __tmp279247 __tmp279244))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp279243))))
                                            (declare (not safe))
                                            (cons __tmp279242 '()))))
                                     (declare (not safe))
                                     (cons __tmp279305 __tmp279241))))
                              (declare (not safe))
                              (cons '%#let-values __tmp279240))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp279239 _stx273817_))))
                 _$e273829_)
                (if (let ((__obj279068 _klass273820_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj279068
                             'gxc#!class::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             __obj279068
                             '7
                             gxc#!class::t
                             '#f))
                          (class-slot-ref gxc#!class::t __obj279068 'struct?)))
                    (if (fx= (length _args273824_) _fields273822_)
                        (let ((__tmp279230
                               (let ((__tmp279231
                                      (let ((__tmp279236
                                             (let ((__tmp279237
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '##structure
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp279237)))
                                            (__tmp279232
                                             (let ((__tmp279233
                                                    (let ((__tmp279234
                                                           (let ((__tmp279235
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__obj279069 _self273816_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-direct-instance-of?
                                   __obj279069
                                   'gxc#!type::t))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   __obj279069
                                   '1
                                   gxc#!type::t
                                   '#f))
                                (class-slot-ref
                                 gxc#!type::t
                                 __obj279069
                                 'id)))))
                     (declare (not safe))
                     (cons __tmp279235 '()))))
              (declare (not safe))
              (cons '%#ref __tmp279234))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp279233
                                                     _args273824_))))
                                        (declare (not safe))
                                        (cons __tmp279236 __tmp279232))))
                                 (declare (not safe))
                                 (cons '%#call __tmp279231))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp279230 _stx273817_))
                        (let ((__tmp279229
                               (let ((__obj279070 _self273816_))
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-direct-instance-of?
                                        __obj279070
                                        'gxc#!type::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        __obj279070
                                        '1
                                        gxc#!type::t
                                        '#f))
                                     (class-slot-ref
                                      gxc#!type::t
                                      __obj279070
                                      'id))))
                              (__tmp279228
                               (length (let ((__obj279071 _klass273820_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-direct-instance-of?
                                                __obj279071
                                                'gxc#!class::t))
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                __obj279071
                                                '5
                                                gxc#!class::t
                                                '#f))
                                             (class-slot-ref
                                              gxc#!class::t
                                              __obj279071
                                              'fields))))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"illegal struct constructor application; arity mismatch"
                           _stx273817_
                           __tmp279229
                           __tmp279228)))
                    (let ((_$obj273839_
                           (let ((__tmp279177 (gensym '__obj)))
                             (declare (not safe))
                             (make-symbol__0 __tmp279177))))
                      (let _lp273841_ ((_rest273843_ _args273824_)
                                       (_initializers273844_ '()))
                        (let* ((___stx278840278841_ _rest273843_)
                               (_g273848273869_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     ___stx278840278841_)))))
                          (let ((___kont278842278843_
                                 (lambda (_L273923_ _L273924_ _L273925_)
                                   (let* ((_slot273955_
                                           (keyword->symbol
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _L273925_))))
                                          (_off273957_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!class-slot->field-offset
                                              _klass273820_
                                              _slot273955_))))
                                     (if _off273957_
                                         (let ((__tmp279179
                                                (let ((__tmp279180
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _off273957_
                                                               _L273924_))))
                                                  (declare (not safe))
                                                  (cons __tmp279180
                                                        _initializers273844_))))
                                           (declare (not safe))
                                           (_lp273841_ _L273923_ __tmp279179))
                                         (let ((__tmp279178
                                                (let ((__obj279072
                                                       _self273816_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         __obj279072
                                                         'gxc#!type::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         __obj279072
                                                         '1
                                                         gxc#!type::t
                                                         '#f))
                                                      (class-slot-ref
                                                       gxc#!type::t
                                                       __obj279072
                                                       'id)))))
                                           (declare (not safe))
                                           (gxc#raise-compile-error
                                            '"unknown slot"
                                            _stx273817_
                                            __tmp279178
                                            _slot273955_))))))
                                (___kont278844278845_
                                 (lambda ()
                                   (let ((__tmp279181
                                          (let ((__tmp279182
                                                 (let ((__tmp279205
                                                        (let ((__tmp279206
                                                               (let ((__tmp279208
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$obj273839_ '())))
                             (__tmp279207
                              (let ()
                                (declare (not safe))
                                (cons _inline-make-object273826_ '()))))
                         (declare (not safe))
                         (cons __tmp279208 __tmp279207))))
                  (declare (not safe))
                  (cons __tmp279206 '())))
               (__tmp279183
                (let ((__tmp279184
                       (let ((__tmp279185
                              (let ((__tmp279202
                                     (let ((__tmp279203
                                            (let ((__tmp279204
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$obj273839_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp279204))))
                                       (declare (not safe))
                                       (cons __tmp279203 '())))
                                    (__tmp279186
                                     (let ((__tmp279187
                                            (lambda (_i273883_ _r273884_)
                                              (let ((__tmp279188
                                                     (let ((__tmp279189
                                                            (let ((__tmp279199
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279200
                                  (let ((__tmp279201
                                         (let ((__obj279073 _self273816_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj279073
                                                  'gxc#!type::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj279073
                                                  '1
                                                  gxc#!type::t
                                                  '#f))
                                               (class-slot-ref
                                                gxc#!type::t
                                                __obj279073
                                                'id)))))
                                    (declare (not safe))
                                    (cons __tmp279201 '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp279200)))
                          (__tmp279190
                           (let ((__tmp279196
                                  (let ((__tmp279197
                                         (let ((__tmp279198 (car _i273883_)))
                                           (declare (not safe))
                                           (cons __tmp279198 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp279197)))
                                 (__tmp279191
                                  (let ((__tmp279194
                                         (let ((__tmp279195
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj273839_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp279195)))
                                        (__tmp279192
                                         (let ((__tmp279193 (cdr _i273883_)))
                                           (declare (not safe))
                                           (cons __tmp279193 '()))))
                                    (declare (not safe))
                                    (cons __tmp279194 __tmp279192))))
                             (declare (not safe))
                             (cons __tmp279196 __tmp279191))))
                      (declare (not safe))
                      (cons __tmp279199 __tmp279190))))
               (declare (not safe))
               (cons '%#struct-unchecked-set! __tmp279189))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp279188
                                                      _r273884_)))))
                                       (declare (not safe))
                                       (foldl1 __tmp279187
                                               '()
                                               _initializers273844_))))
                                (declare (not safe))
                                (foldr1 cons __tmp279202 __tmp279186))))
                         (declare (not safe))
                         (cons '%#begin __tmp279185))))
                  (declare (not safe))
                  (cons __tmp279184 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279205
                                                         __tmp279183))))
                                            (declare (not safe))
                                            (cons '%#let-values __tmp279182))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp279181
                                      _stx273817_))))
                                (___kont278846278847_
                                 (lambda ()
                                   (let ((__tmp279209
                                          (let ((__tmp279210
                                                 (let ((__tmp279224
                                                        (let ((__tmp279225
                                                               (let ((__tmp279227
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$obj273839_ '())))
                             (__tmp279226
                              (let ()
                                (declare (not safe))
                                (cons _inline-make-object273826_ '()))))
                         (declare (not safe))
                         (cons __tmp279227 __tmp279226))))
                  (declare (not safe))
                  (cons __tmp279225 '())))
               (__tmp279211
                (let ((__tmp279212
                       (let ((__tmp279213
                              (let ((__tmp279217
                                     (let ((__tmp279218
                                            (let ((__tmp279222
                                                   (let ((__tmp279223
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'class-instance-init!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp279223)))
                                                  (__tmp279219
                                                   (let ((__tmp279220
                                                          (let ((__tmp279221
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj273839_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp279221))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp279220
                                                           _args273824_))))
                                              (declare (not safe))
                                              (cons __tmp279222 __tmp279219))))
                                       (declare (not safe))
                                       (cons '%#call __tmp279218)))
                                    (__tmp279214
                                     (let ((__tmp279215
                                            (let ((__tmp279216
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$obj273839_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp279216))))
                                       (declare (not safe))
                                       (cons __tmp279215 '()))))
                                (declare (not safe))
                                (cons __tmp279217 __tmp279214))))
                         (declare (not safe))
                         (cons '%#begin __tmp279213))))
                  (declare (not safe))
                  (cons __tmp279212 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279224
                                                         __tmp279211))))
                                            (declare (not safe))
                                            (cons '%#let-values __tmp279210))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp279209
                                      _stx273817_)))))
                            (let* ((_g273846273886_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? ___stx278840278841_))
                                          (___kont278844278845_)
                                          (___kont278846278847_))))
                                   (___match278877278878_
                                    (lambda (_e273855273891_
                                             _hd273854273894_
                                             _tl273853273896_
                                             _e273858273899_
                                             _hd273857273902_
                                             _tl273856273904_
                                             _e273861273907_
                                             _hd273860273910_
                                             _tl273859273912_
                                             _e273864273915_
                                             _hd273863273918_
                                             _tl273862273920_)
                                      (let ((_L273923_ _tl273862273920_)
                                            (_L273924_ _hd273863273918_)
                                            (_L273925_ _hd273860273910_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-keyword? _L273925_))
                                            (___kont278842278843_
                                             _L273923_
                                             _L273924_
                                             _L273925_)
                                            (___kont278846278847_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? ___stx278840278841_))
                                  (let ((_e273855273891_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e ___stx278840278841_))))
                                    (let ((_tl273853273896_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e273855273891_)))
                                          (_hd273854273894_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e273855273891_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd273854273894_))
                                          (let ((_e273858273899_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd273854273894_))))
                                            (let ((_tl273856273904_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e273858273899_)))
                                                  (_hd273857273902_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e273858273899_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd273857273902_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#quote
                                                         _hd273857273902_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl273856273904_))
                                                          (let ((_e273861273907_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl273856273904_))))
                    (let ((_tl273859273912_
                           (let ()
                             (declare (not safe))
                             (##cdr _e273861273907_)))
                          (_hd273860273910_
                           (let ()
                             (declare (not safe))
                             (##car _e273861273907_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl273859273912_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl273853273896_))
                              (let ((_e273864273915_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl273853273896_))))
                                (let ((_tl273862273920_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e273864273915_)))
                                      (_hd273863273918_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e273864273915_))))
                                  (___match278877278878_
                                   _e273855273891_
                                   _hd273854273894_
                                   _tl273853273896_
                                   _e273858273899_
                                   _hd273857273902_
                                   _tl273856273904_
                                   _e273861273907_
                                   _hd273860273910_
                                   _tl273859273912_
                                   _e273864273915_
                                   _hd273863273918_
                                   _tl273862273920_)))
                              (___kont278846278847_))
                          (___kont278846278847_))))
                  (___kont278846278847_))
              (___kont278846278847_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont278846278847_))))
                                          (___kont278846278847_))))
                                  (let ()
                                    (declare (not safe))
                                    (_g273846273886_))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__t278766)
        (let ((__id278767
               (let ((__tmp278768
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t278766 'id))))
                 (if __tmp278768 __tmp278768 (error '"Unknown slot" 'id)))))
          (lambda (_self273816_ _stx273817_ _args273818_)
            (let* ((_klass273820_
                    (let ((__tmp279309
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self273816_
                              __id278767
                              __t278766
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx273817_ __tmp279309)))
                   (_fields273822_
                    (length (let ((__obj279074 _klass273820_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj279074
                                     'gxc#!class::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj279074
                                     '5
                                     gxc#!class::t
                                     '#f))
                                  (class-slot-ref
                                   gxc#!class::t
                                   __obj279074
                                   'fields)))))
                   (_args273824_ (map gxc#compile-e _args273818_))
                   (_inline-make-object273826_
                    (let ((__tmp279310
                           (let ((__tmp279316
                                  (let ((__tmp279317
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp279317)))
                                 (__tmp279311
                                  (let ((__tmp279313
                                         (let ((__tmp279314
                                                (let ((__tmp279315
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self273816_
                                                          __id278767
                                                          __t278766
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp279315 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp279314)))
                                        (__tmp279312
                                         (make-list
                                          _fields273822_
                                          '(%#quote #f))))
                                    (declare (not safe))
                                    (cons __tmp279313 __tmp279312))))
                             (declare (not safe))
                             (cons __tmp279316 __tmp279311))))
                      (declare (not safe))
                      (cons '%#call __tmp279310))))
              (let ((_$e273829_
                     (let ((__obj279075 _klass273820_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              __obj279075
                              'gxc#!class::t))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __obj279075
                              '6
                              gxc#!class::t
                              '#f))
                           (class-slot-ref
                            gxc#!class::t
                            __obj279075
                            'constructor)))))
                (if _$e273829_
                    ((lambda (_ctor273832_)
                       (let ((_$obj273834_
                              (let ((__tmp279379 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp279379)))
                             (_ctor-impl273835_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass273820_
                                 _ctor273832_))))
                         (let ((__tmp279380
                                (let ((__tmp279381
                                       (let ((__tmp279446
                                              (let ((__tmp279447
                                                     (let ((__tmp279449
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj273834_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp279448
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object273826_ '()))))
               (declare (not safe))
               (cons __tmp279449 __tmp279448))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp279447 '())))
                                             (__tmp279382
                                              (let ((__tmp279383
                                                     (let ((__tmp279384
                                                            (let ((__tmp279388
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl273835_
                               (let ((__tmp279440
                                      (let ((__tmp279444
                                             (let ((__tmp279445
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl273835_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp279445)))
                                            (__tmp279441
                                             (let ((__tmp279442
                                                    (let ((__tmp279443
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj273834_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp279443))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp279442
                                                     _args273824_))))
                                        (declare (not safe))
                                        (cons __tmp279444 __tmp279441))))
                                 (declare (not safe))
                                 (cons '%#call __tmp279440))
                               (let* ((_$ctor273837_
                                       (let ((__tmp279389
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp279389)))
                                      (__tmp279390
                                       (let ((__tmp279425
                                              (let ((__tmp279426
                                                     (let ((__tmp279439
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor273837_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp279427
                    (let ((__tmp279428
                           (let ((__tmp279429
                                  (let ((__tmp279437
                                         (let ((__tmp279438
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp279438)))
                                        (__tmp279430
                                         (let ((__tmp279434
                                                (let ((__tmp279435
                                                       (let ((__tmp279436
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self273816_
                         __id278767
                         __t278766
                         '#f))))
                 (declare (not safe))
                 (cons __tmp279436 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp279435)))
                                               (__tmp279431
                                                (let ((__tmp279432
                                                       (let ((__tmp279433
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _ctor273832_ '()))))
                 (declare (not safe))
                 (cons '%#quote __tmp279433))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp279432 '()))))
                                           (declare (not safe))
                                           (cons __tmp279434 __tmp279431))))
                                    (declare (not safe))
                                    (cons __tmp279437 __tmp279430))))
                             (declare (not safe))
                             (cons '%#call __tmp279429))))
                      (declare (not safe))
                      (cons __tmp279428 '()))))
               (declare (not safe))
               (cons __tmp279439 __tmp279427))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp279426 '())))
                                             (__tmp279391
                                              (let ((__tmp279392
                                                     (let ((__tmp279393
                                                            (let ((__tmp279423
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279424
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor273837_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp279424)))
                          (__tmp279394
                           (let ((__tmp279416
                                  (let ((__tmp279417
                                         (let ((__tmp279421
                                                (let ((__tmp279422
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor273837_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp279422)))
                                               (__tmp279418
                                                (let ((__tmp279419
                                                       (let ((__tmp279420
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj273834_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp279420))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp279419
                                                        _args273824_))))
                                           (declare (not safe))
                                           (cons __tmp279421 __tmp279418))))
                                    (declare (not safe))
                                    (cons '%#call __tmp279417)))
                                 (__tmp279395
                                  (let ((__tmp279396
                                         (let ((__tmp279397
                                                (let ((__tmp279414
                                                       (let ((__tmp279415
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp279415)))
              (__tmp279398
               (let ((__tmp279412
                      (let ((__tmp279413
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp279413)))
                     (__tmp279399
                      (let ((__tmp279410
                             (let ((__tmp279411
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp279411)))
                            (__tmp279400
                             (let ((__tmp279407
                                    (let ((__tmp279408
                                           (let ((__tmp279409
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self273816_
                                                     __id278767
                                                     __t278766
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp279409 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp279408)))
                                   (__tmp279401
                                    (let ((__tmp279405
                                           (let ((__tmp279406
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp279406)))
                                          (__tmp279402
                                           (let ((__tmp279403
                                                  (let ((__tmp279404
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor273832_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp279404))))
                                             (declare (not safe))
                                             (cons __tmp279403 '()))))
                                      (declare (not safe))
                                      (cons __tmp279405 __tmp279402))))
                               (declare (not safe))
                               (cons __tmp279407 __tmp279401))))
                        (declare (not safe))
                        (cons __tmp279410 __tmp279400))))
                 (declare (not safe))
                 (cons __tmp279412 __tmp279399))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp279414
                                                        __tmp279398))))
                                           (declare (not safe))
                                           (cons '%#call __tmp279397))))
                                    (declare (not safe))
                                    (cons __tmp279396 '()))))
                             (declare (not safe))
                             (cons __tmp279416 __tmp279395))))
                      (declare (not safe))
                      (cons __tmp279423 __tmp279394))))
               (declare (not safe))
               (cons '%#if __tmp279393))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp279392 '()))))
                                         (declare (not safe))
                                         (cons __tmp279425 __tmp279391))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp279390))))
                          (__tmp279385
                           (let ((__tmp279386
                                  (let ((__tmp279387
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj273834_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp279387))))
                             (declare (not safe))
                             (cons __tmp279386 '()))))
                      (declare (not safe))
                      (cons __tmp279388 __tmp279385))))
               (declare (not safe))
               (cons '%#begin __tmp279384))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp279383 '()))))
                                         (declare (not safe))
                                         (cons __tmp279446 __tmp279382))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp279381))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp279380 _stx273817_))))
                     _$e273829_)
                    (if (let ((__obj279076 _klass273820_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj279076
                                 'gxc#!class::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj279076
                                 '7
                                 gxc#!class::t
                                 '#f))
                              (class-slot-ref
                               gxc#!class::t
                               __obj279076
                               'struct?)))
                        (if (fx= (length _args273824_) _fields273822_)
                            (let ((__tmp279371
                                   (let ((__tmp279372
                                          (let ((__tmp279377
                                                 (let ((__tmp279378
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons '##structure
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp279378)))
                                                (__tmp279373
                                                 (let ((__tmp279374
                                                        (let ((__tmp279375
                                                               (let ((__tmp279376
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self273816_
                                 __id278767
                                 __t278766
                                 '#f))))
                         (declare (not safe))
                         (cons __tmp279376 '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp279375))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279374
                                                         _args273824_))))
                                            (declare (not safe))
                                            (cons __tmp279377 __tmp279373))))
                                     (declare (not safe))
                                     (cons '%#call __tmp279372))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp279371 _stx273817_))
                            (let ((__tmp279370
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _self273816_
                                      __id278767
                                      __t278766
                                      '#f)))
                                  (__tmp279369
                                   (length (let ((__obj279077 _klass273820_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-direct-instance-of?
                                                    __obj279077
                                                    'gxc#!class::t))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    __obj279077
                                                    '5
                                                    gxc#!class::t
                                                    '#f))
                                                 (class-slot-ref
                                                  gxc#!class::t
                                                  __obj279077
                                                  'fields))))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _stx273817_
                               __tmp279370
                               __tmp279369)))
                        (let ((_$obj273839_
                               (let ((__tmp279318 (gensym '__obj)))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp279318))))
                          (let _lp273841_ ((_rest273843_ _args273824_)
                                           (_initializers273844_ '()))
                            (let* ((___stx278882278883_ _rest273843_)
                                   (_g273848273869_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         ___stx278882278883_)))))
                              (let ((___kont278884278885_
                                     (lambda (_L273923_ _L273924_ _L273925_)
                                       (let* ((_slot273955_
                                               (keyword->symbol
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L273925_))))
                                              (_off273957_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _klass273820_
                                                  _slot273955_))))
                                         (if _off273957_
                                             (let ((__tmp279320
                                                    (let ((__tmp279321
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _off273957_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L273924_))))
              (declare (not safe))
              (cons __tmp279321 _initializers273844_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_lp273841_
                                                _L273923_
                                                __tmp279320))
                                             (let ((__tmp279319
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self273816_
                                                       __id278767
                                                       __t278766
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _stx273817_
                                                __tmp279319
                                                _slot273955_))))))
                                    (___kont278886278887_
                                     (lambda ()
                                       (let ((__tmp279322
                                              (let ((__tmp279323
                                                     (let ((__tmp279346
                                                            (let ((__tmp279347
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279349
                                  (let ()
                                    (declare (not safe))
                                    (cons _$obj273839_ '())))
                                 (__tmp279348
                                  (let ()
                                    (declare (not safe))
                                    (cons _inline-make-object273826_ '()))))
                             (declare (not safe))
                             (cons __tmp279349 __tmp279348))))
                      (declare (not safe))
                      (cons __tmp279347 '())))
                   (__tmp279324
                    (let ((__tmp279325
                           (let ((__tmp279326
                                  (let ((__tmp279343
                                         (let ((__tmp279344
                                                (let ((__tmp279345
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj273839_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp279345))))
                                           (declare (not safe))
                                           (cons __tmp279344 '())))
                                        (__tmp279327
                                         (let ((__tmp279328
                                                (lambda (_i273883_ _r273884_)
                                                  (let ((__tmp279329
                                                         (let ((__tmp279330
                                                                (let ((__tmp279340
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp279341
                                      (let ((__tmp279342
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _self273816_
                                                __id278767
                                                __t278766
                                                '#f))))
                                        (declare (not safe))
                                        (cons __tmp279342 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp279341)))
                              (__tmp279331
                               (let ((__tmp279337
                                      (let ((__tmp279338
                                             (let ((__tmp279339
                                                    (car _i273883_)))
                                               (declare (not safe))
                                               (cons __tmp279339 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp279338)))
                                     (__tmp279332
                                      (let ((__tmp279335
                                             (let ((__tmp279336
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj273839_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp279336)))
                                            (__tmp279333
                                             (let ((__tmp279334
                                                    (cdr _i273883_)))
                                               (declare (not safe))
                                               (cons __tmp279334 '()))))
                                        (declare (not safe))
                                        (cons __tmp279335 __tmp279333))))
                                 (declare (not safe))
                                 (cons __tmp279337 __tmp279332))))
                          (declare (not safe))
                          (cons __tmp279340 __tmp279331))))
                   (declare (not safe))
                   (cons '%#struct-unchecked-set! __tmp279330))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp279329
                                                          _r273884_)))))
                                           (declare (not safe))
                                           (foldl1 __tmp279328
                                                   '()
                                                   _initializers273844_))))
                                    (declare (not safe))
                                    (foldr1 cons __tmp279343 __tmp279327))))
                             (declare (not safe))
                             (cons '%#begin __tmp279326))))
                      (declare (not safe))
                      (cons __tmp279325 '()))))
               (declare (not safe))
               (cons __tmp279346 __tmp279324))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#let-values
                                                      __tmp279323))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp279322
                                          _stx273817_))))
                                    (___kont278888278889_
                                     (lambda ()
                                       (let ((__tmp279350
                                              (let ((__tmp279351
                                                     (let ((__tmp279365
                                                            (let ((__tmp279366
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279368
                                  (let ()
                                    (declare (not safe))
                                    (cons _$obj273839_ '())))
                                 (__tmp279367
                                  (let ()
                                    (declare (not safe))
                                    (cons _inline-make-object273826_ '()))))
                             (declare (not safe))
                             (cons __tmp279368 __tmp279367))))
                      (declare (not safe))
                      (cons __tmp279366 '())))
                   (__tmp279352
                    (let ((__tmp279353
                           (let ((__tmp279354
                                  (let ((__tmp279358
                                         (let ((__tmp279359
                                                (let ((__tmp279363
                                                       (let ((__tmp279364
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'class-instance-init! '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp279364)))
              (__tmp279360
               (let ((__tmp279361
                      (let ((__tmp279362
                             (let ()
                               (declare (not safe))
                               (cons _$obj273839_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp279362))))
                 (declare (not safe))
                 (cons __tmp279361 _args273824_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp279363
                                                        __tmp279360))))
                                           (declare (not safe))
                                           (cons '%#call __tmp279359)))
                                        (__tmp279355
                                         (let ((__tmp279356
                                                (let ((__tmp279357
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj273839_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp279357))))
                                           (declare (not safe))
                                           (cons __tmp279356 '()))))
                                    (declare (not safe))
                                    (cons __tmp279358 __tmp279355))))
                             (declare (not safe))
                             (cons '%#begin __tmp279354))))
                      (declare (not safe))
                      (cons __tmp279353 '()))))
               (declare (not safe))
               (cons __tmp279365 __tmp279352))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#let-values
                                                      __tmp279351))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp279350
                                          _stx273817_)))))
                                (let* ((_g273846273886_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 ___stx278882278883_))
                                              (___kont278886278887_)
                                              (___kont278888278889_))))
                                       (___match278919278920_
                                        (lambda (_e273855273891_
                                                 _hd273854273894_
                                                 _tl273853273896_
                                                 _e273858273899_
                                                 _hd273857273902_
                                                 _tl273856273904_
                                                 _e273861273907_
                                                 _hd273860273910_
                                                 _tl273859273912_
                                                 _e273864273915_
                                                 _hd273863273918_
                                                 _tl273862273920_)
                                          (let ((_L273923_ _tl273862273920_)
                                                (_L273924_ _hd273863273918_)
                                                (_L273925_ _hd273860273910_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword? _L273925_))
                                                (___kont278884278885_
                                                 _L273923_
                                                 _L273924_
                                                 _L273925_)
                                                (___kont278888278889_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? ___stx278882278883_))
                                      (let ((_e273855273891_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                ___stx278882278883_))))
                                        (let ((_tl273853273896_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e273855273891_)))
                                              (_hd273854273894_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e273855273891_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd273854273894_))
                                              (let ((_e273858273899_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd273854273894_))))
                                                (let ((_tl273856273904_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e273858273899_)))
                                                      (_hd273857273902_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e273858273899_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd273857273902_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _hd273857273902_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl273856273904_))
                      (let ((_e273861273907_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl273856273904_))))
                        (let ((_tl273859273912_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e273861273907_)))
                              (_hd273860273910_
                               (let ()
                                 (declare (not safe))
                                 (##car _e273861273907_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl273859273912_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl273853273896_))
                                  (let ((_e273864273915_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl273853273896_))))
                                    (let ((_tl273862273920_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e273864273915_)))
                                          (_hd273863273918_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e273864273915_))))
                                      (___match278919278920_
                                       _e273855273891_
                                       _hd273854273894_
                                       _tl273853273896_
                                       _e273858273899_
                                       _hd273857273902_
                                       _tl273856273904_
                                       _e273861273907_
                                       _hd273860273910_
                                       _tl273859273912_
                                       _e273864273915_
                                       _hd273863273918_
                                       _tl273862273920_)))
                                  (___kont278888278889_))
                              (___kont278888278889_))))
                      (___kont278888278889_))
                  (___kont278888278889_))
              (___kont278888278889_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont278888278889_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g273846273886_))))))))))))))))
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
      (lambda (_self273639_ _stx273640_ _args273641_)
        (let* ((_g273643273653_
                (lambda (_g273644273650_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g273644273650_))))
               (_g273642273691_
                (lambda (_g273644273656_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g273644273656_))
                      (let ((_e273648273658_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g273644273656_))))
                        (let ((_hd273647273661_
                               (let ()
                                 (declare (not safe))
                                 (##car _e273648273658_)))
                              (_tl273646273663_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e273648273658_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl273646273663_))
                              ((lambda (_L273666_)
                                 (let* ((_klass273677_
                                         (let ((__tmp279450
                                                (let ((__obj279078
                                                       _self273639_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         __obj279078
                                                         'gxc#!type::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         __obj279078
                                                         '1
                                                         gxc#!type::t
                                                         '#f))
                                                      (class-slot-ref
                                                       gxc#!type::t
                                                       __obj279078
                                                       'id)))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx273640_
                                            __tmp279450)))
                                        (_field273679_
                                         (let ((__tmp279451
                                                (let ((__obj279079
                                                       _self273639_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         __obj279079
                                                         'gxc#!accessor::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         __obj279079
                                                         '2
                                                         gxc#!accessor::t
                                                         '#f))
                                                      (class-slot-ref
                                                       gxc#!accessor::t
                                                       __obj279079
                                                       'slot)))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass273677_
                                            __tmp279451)))
                                        (_object273681_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L273666_))))
                                   (if (let ((__obj279080 _klass273677_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-direct-instance-of?
                                                __obj279080
                                                'gxc#!class::t))
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                __obj279080
                                                '8
                                                gxc#!class::t
                                                '#f))
                                             (class-slot-ref
                                              gxc#!class::t
                                              __obj279080
                                              'final?)))
                                       (let ((__tmp279528
                                              (let ((__tmp279537
                                                     (if (let ((__obj279081
                                                                _self273639_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##structure-direct-instance-of?
                          __obj279081
                          'gxc#!accessor::t))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          __obj279081
                          '3
                          gxc#!accessor::t
                          '#f))
                       (class-slot-ref
                        gxc#!accessor::t
                        __obj279081
                        'checked?)))
                 '%#struct-direct-ref
                 '%#struct-unchecked-ref))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp279529
                                                     (let ((__tmp279534
                                                            (let ((__tmp279535
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279536
                                  (let ((__obj279082 _self273639_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-direct-instance-of?
                                           __obj279082
                                           'gxc#!type::t))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __obj279082
                                           '1
                                           gxc#!type::t
                                           '#f))
                                        (class-slot-ref
                                         gxc#!type::t
                                         __obj279082
                                         'id)))))
                             (declare (not safe))
                             (cons __tmp279536 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp279535)))
                   (__tmp279530
                    (let ((__tmp279532
                           (let ((__tmp279533
                                  (let ()
                                    (declare (not safe))
                                    (cons _field273679_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp279533)))
                          (__tmp279531
                           (let ()
                             (declare (not safe))
                             (cons _object273681_ '()))))
                      (declare (not safe))
                      (cons __tmp279532 __tmp279531))))
               (declare (not safe))
               (cons __tmp279534 __tmp279530))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp279537
                                                      __tmp279529))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp279528
                                          _stx273640_))
                                       (if (let ((__obj279083 _klass273677_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-direct-instance-of?
                                                    __obj279083
                                                    'gxc#!class::t))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    __obj279083
                                                    '7
                                                    gxc#!class::t
                                                    '#f))
                                                 (class-slot-ref
                                                  gxc#!class::t
                                                  __obj279083
                                                  'struct?)))
                                           (let ((__tmp279518
                                                  (let ((__tmp279527
                                                         (if (let ((__obj279084
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _self273639_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              __obj279084
                              'gxc#!accessor::t))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __obj279084
                              '3
                              gxc#!accessor::t
                              '#f))
                           (class-slot-ref
                            gxc#!accessor::t
                            __obj279084
                            'checked?)))
                     '%#struct-ref
                     '%#struct-unchecked-ref))
                (__tmp279519
                 (let ((__tmp279524
                        (let ((__tmp279525
                               (let ((__tmp279526
                                      (let ((__obj279085 _self273639_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj279085
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj279085
                                               '1
                                               gxc#!type::t
                                               '#f))
                                            (class-slot-ref
                                             gxc#!type::t
                                             __obj279085
                                             'id)))))
                                 (declare (not safe))
                                 (cons __tmp279526 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp279525)))
                       (__tmp279520
                        (let ((__tmp279522
                               (let ((__tmp279523
                                      (let ()
                                        (declare (not safe))
                                        (cons _field273679_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp279523)))
                              (__tmp279521
                               (let ()
                                 (declare (not safe))
                                 (cons _object273681_ '()))))
                          (declare (not safe))
                          (cons __tmp279522 __tmp279521))))
                   (declare (not safe))
                   (cons __tmp279524 __tmp279520))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp279527
                                                          __tmp279519))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp279518
                                              _stx273640_))
                                           (let ((_$e273684_
                                                  (let ((__tmp279452
                                                         (let ((__obj279086
                                                                _self273639_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##structure-direct-instance-of?
                          __obj279086
                          'gxc#!accessor::t))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          __obj279086
                          '2
                          gxc#!accessor::t
                          '#f))
                       (class-slot-ref gxc#!accessor::t __obj279086 'slot)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass273677_
                                                     __tmp279452))))
                                             (if _$e273684_
                                                 ((lambda (_klass273687_)
                                                    (let ((__tmp279508
                                                           (let ((__tmp279517
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (let ((__obj279087 _self273639_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-direct-instance-of?
                                       __obj279087
                                       'gxc#!accessor::t))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __obj279087
                                       '3
                                       gxc#!accessor::t
                                       '#f))
                                    (class-slot-ref
                                     gxc#!accessor::t
                                     __obj279087
                                     'checked?)))
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp279509
                          (let ((__tmp279514
                                 (let ((__tmp279515
                                        (let ((__tmp279516
                                               (let ((__obj279088
                                                      _self273639_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        __obj279088
                                                        'gxc#!type::t))
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        __obj279088
                                                        '1
                                                        gxc#!type::t
                                                        '#f))
                                                     (class-slot-ref
                                                      gxc#!type::t
                                                      __obj279088
                                                      'id)))))
                                          (declare (not safe))
                                          (cons __tmp279516 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp279515)))
                                (__tmp279510
                                 (let ((__tmp279512
                                        (let ((__tmp279513
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field273679_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp279513)))
                                       (__tmp279511
                                        (let ()
                                          (declare (not safe))
                                          (cons _object273681_ '()))))
                                   (declare (not safe))
                                   (cons __tmp279512 __tmp279511))))
                            (declare (not safe))
                            (cons __tmp279514 __tmp279510))))
                     (declare (not safe))
                     (cons __tmp279517 __tmp279509))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp279508 _stx273640_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e273684_)
                                                 (if (let ((__obj279089
                                                            _self273639_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              __obj279089
                                                              'gxc#!accessor::t))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              __obj279089
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f))
                                                           (class-slot-ref
                                                            gxc#!accessor::t
                                                            __obj279089
                                                            'checked?)))
                                                     (let ((__tmp279462
                                                            (let* ((_$obj273689_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp279463 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp279463)))
                           (__tmp279464
                            (let ((__tmp279504
                                   (let ((__tmp279505
                                          (let ((__tmp279507
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj273689_ '())))
                                                (__tmp279506
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object273681_ '()))))
                                            (declare (not safe))
                                            (cons __tmp279507 __tmp279506))))
                                     (declare (not safe))
                                     (cons __tmp279505 '())))
                                  (__tmp279465
                                   (let ((__tmp279466
                                          (let ((__tmp279467
                                                 (let ((__tmp279496
                                                        (let ((__tmp279497
                                                               (let ((__tmp279501
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp279502
                                     (let ((__tmp279503
                                            (let ((__obj279090 _klass273677_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     __obj279090
                                                     'gxc#!type::t))
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     __obj279090
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                  (class-slot-ref
                                                   gxc#!type::t
                                                   __obj279090
                                                   'id)))))
                                       (declare (not safe))
                                       (cons __tmp279503 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp279502)))
                             (__tmp279498
                              (let ((__tmp279499
                                     (let ((__tmp279500
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj273689_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp279500))))
                                (declare (not safe))
                                (cons __tmp279499 '()))))
                         (declare (not safe))
                         (cons __tmp279501 __tmp279498))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp279497)))
               (__tmp279468
                (let ((__tmp279485
                       (let ((__tmp279486
                              (let ((__tmp279493
                                     (let ((__tmp279494
                                            (let ((__tmp279495
                                                   (let ((__obj279091
                                                          _self273639_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj279091
                                                            'gxc#!type::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj279091
                                                            '1
                                                            gxc#!type::t
                                                            '#f))
                                                         (class-slot-ref
                                                          gxc#!type::t
                                                          __obj279091
                                                          'id)))))
                                              (declare (not safe))
                                              (cons __tmp279495 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp279494)))
                                    (__tmp279487
                                     (let ((__tmp279491
                                            (let ((__tmp279492
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field273679_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp279492)))
                                           (__tmp279488
                                            (let ((__tmp279489
                                                   (let ((__tmp279490
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj273689_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp279490))))
                                              (declare (not safe))
                                              (cons __tmp279489 '()))))
                                       (declare (not safe))
                                       (cons __tmp279491 __tmp279488))))
                                (declare (not safe))
                                (cons __tmp279493 __tmp279487))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp279486)))
                      (__tmp279469
                       (let ((__tmp279470
                              (let ((__tmp279471
                                     (let ((__tmp279483
                                            (let ((__tmp279484
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp279484)))
                                           (__tmp279472
                                            (let ((__tmp279480
                                                   (let ((__tmp279481
                                                          (let ((__tmp279482
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__obj279092 _self273639_))
                           (if (let ()
                                 (declare (not safe))
                                 (##structure-direct-instance-of?
                                  __obj279092
                                  'gxc#!type::t))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  __obj279092
                                  '1
                                  gxc#!type::t
                                  '#f))
                               (class-slot-ref
                                gxc#!type::t
                                __obj279092
                                'id)))))
                    (declare (not safe))
                    (cons __tmp279482 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp279481)))
                                                  (__tmp279473
                                                   (let ((__tmp279478
                                                          (let ((__tmp279479
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj273689_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp279479)))
                 (__tmp279474
                  (let ((__tmp279475
                         (let ((__tmp279476
                                (let ((__tmp279477
                                       (let ((__obj279093 _self273639_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-direct-instance-of?
                                                __obj279093
                                                'gxc#!accessor::t))
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                __obj279093
                                                '2
                                                gxc#!accessor::t
                                                '#f))
                                             (class-slot-ref
                                              gxc#!accessor::t
                                              __obj279093
                                              'slot)))))
                                  (declare (not safe))
                                  (cons __tmp279477 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp279476))))
                    (declare (not safe))
                    (cons __tmp279475 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp279478
                                                           __tmp279474))))
                                              (declare (not safe))
                                              (cons __tmp279480 __tmp279473))))
                                       (declare (not safe))
                                       (cons __tmp279483 __tmp279472))))
                                (declare (not safe))
                                (cons '%#call __tmp279471))))
                         (declare (not safe))
                         (cons __tmp279470 '()))))
                  (declare (not safe))
                  (cons __tmp279485 __tmp279469))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279496
                                                         __tmp279468))))
                                            (declare (not safe))
                                            (cons '%#if __tmp279467))))
                                     (declare (not safe))
                                     (cons __tmp279466 '()))))
                              (declare (not safe))
                              (cons __tmp279504 __tmp279465))))
                      (declare (not safe))
                      (cons '%#let-values __tmp279464))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp279462 _stx273640_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp279453
                                                            (let ((__tmp279454
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279460
                                  (let ((__tmp279461
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp279461)))
                                 (__tmp279455
                                  (let ((__tmp279456
                                         (let ((__tmp279457
                                                (let ((__tmp279458
                                                       (let ((__tmp279459
                                                              (let ((__obj279094
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _self273639_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj279094
                               'gxc#!accessor::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj279094
                               '2
                               gxc#!accessor::t
                               '#f))
                            (class-slot-ref
                             gxc#!accessor::t
                             __obj279094
                             'slot)))))
                 (declare (not safe))
                 (cons __tmp279459 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp279458))))
                                           (declare (not safe))
                                           (cons __tmp279457 '()))))
                                    (declare (not safe))
                                    (cons _object273681_ __tmp279456))))
                             (declare (not safe))
                             (cons __tmp279460 __tmp279455))))
                      (declare (not safe))
                      (cons '%#call __tmp279454))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp279453 _stx273640_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd273647273661_)
                              (let ()
                                (declare (not safe))
                                (_g273643273653_ _g273644273656_)))))
                      (let ()
                        (declare (not safe))
                        (_g273643273653_ _g273644273656_))))))
          (declare (not safe))
          (_g273642273691_ _args273641_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__t278769)
        (let ((__checked?278770
               (let ((__tmp278773
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t278769 'checked?))))
                 (if __tmp278773
                     __tmp278773
                     (error '"Unknown slot" 'checked?))))
              (__id278771
               (let ((__tmp278774
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t278769 'id))))
                 (if __tmp278774 __tmp278774 (error '"Unknown slot" 'id))))
              (__slot278772
               (let ((__tmp278775
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t278769 'slot))))
                 (if __tmp278775 __tmp278775 (error '"Unknown slot" 'slot)))))
          (lambda (_self273639_ _stx273640_ _args273641_)
            (let* ((_g273643273653_
                    (lambda (_g273644273650_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g273644273650_))))
                   (_g273642273691_
                    (lambda (_g273644273656_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g273644273656_))
                          (let ((_e273648273658_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g273644273656_))))
                            (let ((_hd273647273661_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e273648273658_)))
                                  (_tl273646273663_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e273648273658_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl273646273663_))
                                  ((lambda (_L273666_)
                                     (let* ((_klass273677_
                                             (let ((__tmp279538
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self273639_
                                                       __id278771
                                                       __t278769
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx273640_
                                                __tmp279538)))
                                            (_field273679_
                                             (let ((__tmp279539
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self273639_
                                                       __slot278772
                                                       __t278769
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass273677_
                                                __tmp279539)))
                                            (_object273681_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L273666_))))
                                       (if (let ((__obj279095 _klass273677_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-direct-instance-of?
                                                    __obj279095
                                                    'gxc#!class::t))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    __obj279095
                                                    '8
                                                    gxc#!class::t
                                                    '#f))
                                                 (class-slot-ref
                                                  gxc#!class::t
                                                  __obj279095
                                                  'final?)))
                                           (let ((__tmp279616
                                                  (let ((__tmp279625
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self273639_
                        __checked?278770
                        __t278769
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp279617
                 (let ((__tmp279622
                        (let ((__tmp279623
                               (let ((__tmp279624
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self273639_
                                         __id278771
                                         __t278769
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp279624 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp279623)))
                       (__tmp279618
                        (let ((__tmp279620
                               (let ((__tmp279621
                                      (let ()
                                        (declare (not safe))
                                        (cons _field273679_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp279621)))
                              (__tmp279619
                               (let ()
                                 (declare (not safe))
                                 (cons _object273681_ '()))))
                          (declare (not safe))
                          (cons __tmp279620 __tmp279619))))
                   (declare (not safe))
                   (cons __tmp279622 __tmp279618))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp279625
                                                          __tmp279617))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp279616
                                              _stx273640_))
                                           (if (let ((__obj279096
                                                      _klass273677_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        __obj279096
                                                        'gxc#!class::t))
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        __obj279096
                                                        '7
                                                        gxc#!class::t
                                                        '#f))
                                                     (class-slot-ref
                                                      gxc#!class::t
                                                      __obj279096
                                                      'struct?)))
                                               (let ((__tmp279606
                                                      (let ((__tmp279615
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self273639_
                            __checked?278770
                            __t278769
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp279607
                     (let ((__tmp279612
                            (let ((__tmp279613
                                   (let ((__tmp279614
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self273639_
                                             __id278771
                                             __t278769
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp279614 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp279613)))
                           (__tmp279608
                            (let ((__tmp279610
                                   (let ((__tmp279611
                                          (let ()
                                            (declare (not safe))
                                            (cons _field273679_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp279611)))
                                  (__tmp279609
                                   (let ()
                                     (declare (not safe))
                                     (cons _object273681_ '()))))
                              (declare (not safe))
                              (cons __tmp279610 __tmp279609))))
                       (declare (not safe))
                       (cons __tmp279612 __tmp279608))))
                (declare (not safe))
                (cons __tmp279615 __tmp279607))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp279606
                                                  _stx273640_))
                                               (let ((_$e273684_
                                                      (let ((__tmp279540
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self273639_
                        __slot278772
                        __t278769
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass273677_ __tmp279540))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e273684_
                                                     ((lambda (_klass273687_)
                                                        (let ((__tmp279596
                                                               (let ((__tmp279605
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self273639_
                                     __checked?278770
                                     __t278769
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp279597
                              (let ((__tmp279602
                                     (let ((__tmp279603
                                            (let ((__tmp279604
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self273639_
                                                      __id278771
                                                      __t278769
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp279604 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp279603)))
                                    (__tmp279598
                                     (let ((__tmp279600
                                            (let ((__tmp279601
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field273679_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp279601)))
                                           (__tmp279599
                                            (let ()
                                              (declare (not safe))
                                              (cons _object273681_ '()))))
                                       (declare (not safe))
                                       (cons __tmp279600 __tmp279599))))
                                (declare (not safe))
                                (cons __tmp279602 __tmp279598))))
                         (declare (not safe))
                         (cons __tmp279605 __tmp279597))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp279596 _stx273640_)))
              _$e273684_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self273639_
                                                            __checked?278770
                                                            __t278769
                                                            '#f))
                                                         (let ((__tmp279550
                                                                (let* ((_$obj273689_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp279551 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp279551)))
                               (__tmp279552
                                (let ((__tmp279592
                                       (let ((__tmp279593
                                              (let ((__tmp279595
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj273689_
                                                             '())))
                                                    (__tmp279594
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object273681_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp279595
                                                      __tmp279594))))
                                         (declare (not safe))
                                         (cons __tmp279593 '())))
                                      (__tmp279553
                                       (let ((__tmp279554
                                              (let ((__tmp279555
                                                     (let ((__tmp279584
                                                            (let ((__tmp279585
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279589
                                  (let ((__tmp279590
                                         (let ((__tmp279591
                                                (let ((__obj279097
                                                       _klass273677_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         __obj279097
                                                         'gxc#!type::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         __obj279097
                                                         '1
                                                         gxc#!type::t
                                                         '#f))
                                                      (class-slot-ref
                                                       gxc#!type::t
                                                       __obj279097
                                                       'id)))))
                                           (declare (not safe))
                                           (cons __tmp279591 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp279590)))
                                 (__tmp279586
                                  (let ((__tmp279587
                                         (let ((__tmp279588
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj273689_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp279588))))
                                    (declare (not safe))
                                    (cons __tmp279587 '()))))
                             (declare (not safe))
                             (cons __tmp279589 __tmp279586))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp279585)))
                   (__tmp279556
                    (let ((__tmp279573
                           (let ((__tmp279574
                                  (let ((__tmp279581
                                         (let ((__tmp279582
                                                (let ((__tmp279583
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self273639_
                                                          __id278771
                                                          __t278769
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp279583 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp279582)))
                                        (__tmp279575
                                         (let ((__tmp279579
                                                (let ((__tmp279580
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field273679_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp279580)))
                                               (__tmp279576
                                                (let ((__tmp279577
                                                       (let ((__tmp279578
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj273689_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp279578))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp279577 '()))))
                                           (declare (not safe))
                                           (cons __tmp279579 __tmp279576))))
                                    (declare (not safe))
                                    (cons __tmp279581 __tmp279575))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp279574)))
                          (__tmp279557
                           (let ((__tmp279558
                                  (let ((__tmp279559
                                         (let ((__tmp279571
                                                (let ((__tmp279572
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp279572)))
                                               (__tmp279560
                                                (let ((__tmp279568
                                                       (let ((__tmp279569
                                                              (let ((__tmp279570
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self273639_
                                __id278771
                                __t278769
                                '#f))))
                        (declare (not safe))
                        (cons __tmp279570 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp279569)))
              (__tmp279561
               (let ((__tmp279566
                      (let ((__tmp279567
                             (let ()
                               (declare (not safe))
                               (cons _$obj273689_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp279567)))
                     (__tmp279562
                      (let ((__tmp279563
                             (let ((__tmp279564
                                    (let ((__tmp279565
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self273639_
                                              __slot278772
                                              __t278769
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp279565 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp279564))))
                        (declare (not safe))
                        (cons __tmp279563 '()))))
                 (declare (not safe))
                 (cons __tmp279566 __tmp279562))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp279568
                                                        __tmp279561))))
                                           (declare (not safe))
                                           (cons __tmp279571 __tmp279560))))
                                    (declare (not safe))
                                    (cons '%#call __tmp279559))))
                             (declare (not safe))
                             (cons __tmp279558 '()))))
                      (declare (not safe))
                      (cons __tmp279573 __tmp279557))))
               (declare (not safe))
               (cons __tmp279584 __tmp279556))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp279555))))
                                         (declare (not safe))
                                         (cons __tmp279554 '()))))
                                  (declare (not safe))
                                  (cons __tmp279592 __tmp279553))))
                          (declare (not safe))
                          (cons '%#let-values __tmp279552))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp279550 _stx273640_))
                 (let ((__tmp279541
                        (let ((__tmp279542
                               (let ((__tmp279548
                                      (let ((__tmp279549
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp279549)))
                                     (__tmp279543
                                      (let ((__tmp279544
                                             (let ((__tmp279545
                                                    (let ((__tmp279546
                                                           (let ((__tmp279547
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self273639_
                             __slot278772
                             __t278769
                             '#f))))
                     (declare (not safe))
                     (cons __tmp279547 '()))))
              (declare (not safe))
              (cons '%#quote __tmp279546))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp279545 '()))))
                                        (declare (not safe))
                                        (cons _object273681_ __tmp279544))))
                                 (declare (not safe))
                                 (cons __tmp279548 __tmp279543))))
                          (declare (not safe))
                          (cons '%#call __tmp279542))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp279541 _stx273640_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd273647273661_)
                                  (let ()
                                    (declare (not safe))
                                    (_g273643273653_ _g273644273656_)))))
                          (let ()
                            (declare (not safe))
                            (_g273643273653_ _g273644273656_))))))
              (declare (not safe))
              (_g273642273691_ _args273641_))))))
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
      (lambda (_self273444_ _stx273445_ _args273446_)
        (let* ((_g273448273462_
                (lambda (_g273449273459_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g273449273459_))))
               (_g273447273514_
                (lambda (_g273449273465_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g273449273465_))
                      (let ((_e273454273467_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g273449273465_))))
                        (let ((_hd273453273470_
                               (let ()
                                 (declare (not safe))
                                 (##car _e273454273467_)))
                              (_tl273452273472_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e273454273467_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl273452273472_))
                              (let ((_e273457273475_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl273452273472_))))
                                (let ((_hd273456273478_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e273457273475_)))
                                      (_tl273455273480_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e273457273475_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl273455273480_))
                                      ((lambda (_L273483_ _L273484_)
                                         (let* ((_klass273498_
                                                 (let ((__tmp279626
                                                        (let ((__obj279098
                                                               _self273444_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##structure-direct-instance-of?
                         __obj279098
                         'gxc#!type::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         __obj279098
                         '1
                         gxc#!type::t
                         '#f))
                      (class-slot-ref gxc#!type::t __obj279098 'id)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx273445_
                                                    __tmp279626)))
                                                (_field273500_
                                                 (let ((__tmp279627
                                                        (let ((__obj279099
                                                               _self273444_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##structure-direct-instance-of?
                         __obj279099
                         'gxc#!mutator::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         __obj279099
                         '2
                         gxc#!mutator::t
                         '#f))
                      (class-slot-ref gxc#!mutator::t __obj279099 'slot)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass273498_
                                                    __tmp279627)))
                                                (_object273502_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L273484_)))
                                                (_value273504_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L273483_))))
                                           (if (let ((__obj279100
                                                      _klass273498_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        __obj279100
                                                        'gxc#!class::t))
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        __obj279100
                                                        '8
                                                        gxc#!class::t
                                                        '#f))
                                                     (class-slot-ref
                                                      gxc#!class::t
                                                      __obj279100
                                                      'final?)))
                                               (let ((__tmp279709
                                                      (let ((__tmp279719
                                                             (if (let ((__obj279101
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _self273444_))
                           (if (let ()
                                 (declare (not safe))
                                 (##structure-direct-instance-of?
                                  __obj279101
                                  'gxc#!mutator::t))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  __obj279101
                                  '3
                                  gxc#!mutator::t
                                  '#f))
                               (class-slot-ref
                                gxc#!mutator::t
                                __obj279101
                                'checked?)))
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp279710
                     (let ((__tmp279716
                            (let ((__tmp279717
                                   (let ((__tmp279718
                                          (let ((__obj279102 _self273444_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj279102
                                                   'gxc#!type::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj279102
                                                   '1
                                                   gxc#!type::t
                                                   '#f))
                                                (class-slot-ref
                                                 gxc#!type::t
                                                 __obj279102
                                                 'id)))))
                                     (declare (not safe))
                                     (cons __tmp279718 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp279717)))
                           (__tmp279711
                            (let ((__tmp279714
                                   (let ((__tmp279715
                                          (let ()
                                            (declare (not safe))
                                            (cons _field273500_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp279715)))
                                  (__tmp279712
                                   (let ((__tmp279713
                                          (let ()
                                            (declare (not safe))
                                            (cons _value273504_ '()))))
                                     (declare (not safe))
                                     (cons _object273502_ __tmp279713))))
                              (declare (not safe))
                              (cons __tmp279714 __tmp279712))))
                       (declare (not safe))
                       (cons __tmp279716 __tmp279711))))
                (declare (not safe))
                (cons __tmp279719 __tmp279710))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp279709
                                                  _stx273445_))
                                               (if (let ((__obj279103
                                                          _klass273498_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj279103
                                                            'gxc#!class::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj279103
                                                            '7
                                                            gxc#!class::t
                                                            '#f))
                                                         (class-slot-ref
                                                          gxc#!class::t
                                                          __obj279103
                                                          'struct?)))
                                                   (let ((__tmp279698
                                                          (let ((__tmp279708
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ((__obj279104 _self273444_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj279104
                                      'gxc#!mutator::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj279104
                                      '3
                                      gxc#!mutator::t
                                      '#f))
                                   (class-slot-ref
                                    gxc#!mutator::t
                                    __obj279104
                                    'checked?)))
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp279699
                         (let ((__tmp279705
                                (let ((__tmp279706
                                       (let ((__tmp279707
                                              (let ((__obj279105 _self273444_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##structure-direct-instance-of?
                                                       __obj279105
                                                       'gxc#!type::t))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __obj279105
                                                       '1
                                                       gxc#!type::t
                                                       '#f))
                                                    (class-slot-ref
                                                     gxc#!type::t
                                                     __obj279105
                                                     'id)))))
                                         (declare (not safe))
                                         (cons __tmp279707 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp279706)))
                               (__tmp279700
                                (let ((__tmp279703
                                       (let ((__tmp279704
                                              (let ()
                                                (declare (not safe))
                                                (cons _field273500_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp279704)))
                                      (__tmp279701
                                       (let ((__tmp279702
                                              (let ()
                                                (declare (not safe))
                                                (cons _value273504_ '()))))
                                         (declare (not safe))
                                         (cons _object273502_ __tmp279702))))
                                  (declare (not safe))
                                  (cons __tmp279703 __tmp279701))))
                           (declare (not safe))
                           (cons __tmp279705 __tmp279700))))
                    (declare (not safe))
                    (cons __tmp279708 __tmp279699))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp279698
                                                      _stx273445_))
                                                   (let ((_$e273507_
                                                          (let ((__tmp279628
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__obj279106 _self273444_))
                           (if (let ()
                                 (declare (not safe))
                                 (##structure-direct-instance-of?
                                  __obj279106
                                  'gxc#!mutator::t))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  __obj279106
                                  '2
                                  gxc#!mutator::t
                                  '#f))
                               (class-slot-ref
                                gxc#!mutator::t
                                __obj279106
                                'slot)))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass273498_ __tmp279628))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e273507_
                                                         ((lambda (_klass273510_)
                                                            (let ((__tmp279687
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279697
                                  (if (let ((__obj279107 _self273444_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj279107
                                               'gxc#!mutator::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj279107
                                               '3
                                               gxc#!mutator::t
                                               '#f))
                                            (class-slot-ref
                                             gxc#!mutator::t
                                             __obj279107
                                             'checked?)))
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp279688
                                  (let ((__tmp279694
                                         (let ((__tmp279695
                                                (let ((__tmp279696
                                                       (let ((__obj279108
                                                              _self273444_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##structure-direct-instance-of?
                        __obj279108
                        'gxc#!type::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        __obj279108
                        '1
                        gxc#!type::t
                        '#f))
                     (class-slot-ref gxc#!type::t __obj279108 'id)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp279696 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp279695)))
                                        (__tmp279689
                                         (let ((__tmp279692
                                                (let ((__tmp279693
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field273500_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp279693)))
                                               (__tmp279690
                                                (let ((__tmp279691
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value273504_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object273502_
                                                        __tmp279691))))
                                           (declare (not safe))
                                           (cons __tmp279692 __tmp279690))))
                                    (declare (not safe))
                                    (cons __tmp279694 __tmp279689))))
                             (declare (not safe))
                             (cons __tmp279697 __tmp279688))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp279687 _stx273445_)))
                  _$e273507_)
                 (if (let ((__obj279109 _self273444_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              __obj279109
                              'gxc#!mutator::t))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __obj279109
                              '3
                              gxc#!mutator::t
                              '#f))
                           (class-slot-ref
                            gxc#!mutator::t
                            __obj279109
                            'checked?)))
                     (let ((__tmp279639
                            (let* ((_$obj273512_
                                    (let ((__tmp279640 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp279640)))
                                   (__tmp279641
                                    (let ((__tmp279683
                                           (let ((__tmp279684
                                                  (let ((__tmp279686
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj273512_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp279685
                 (let () (declare (not safe)) (cons _object273502_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp279686
                                                          __tmp279685))))
                                             (declare (not safe))
                                             (cons __tmp279684 '())))
                                          (__tmp279642
                                           (let ((__tmp279643
                                                  (let ((__tmp279644
                                                         (let ((__tmp279675
                                                                (let ((__tmp279676
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp279680
                                      (let ((__tmp279681
                                             (let ((__tmp279682
                                                    (let ((__obj279110
                                                           _klass273498_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-direct-instance-of?
                                                             __obj279110
                                                             'gxc#!type::t))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             __obj279110
                                                             '1
                                                             gxc#!type::t
                                                             '#f))
                                                          (class-slot-ref
                                                           gxc#!type::t
                                                           __obj279110
                                                           'id)))))
                                               (declare (not safe))
                                               (cons __tmp279682 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp279681)))
                                     (__tmp279677
                                      (let ((__tmp279678
                                             (let ((__tmp279679
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj273512_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp279679))))
                                        (declare (not safe))
                                        (cons __tmp279678 '()))))
                                 (declare (not safe))
                                 (cons __tmp279680 __tmp279677))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp279676)))
                       (__tmp279645
                        (let ((__tmp279663
                               (let ((__tmp279664
                                      (let ((__tmp279672
                                             (let ((__tmp279673
                                                    (let ((__tmp279674
                                                           (let ((__obj279111
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self273444_))
                     (if (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            __obj279111
                            'gxc#!type::t))
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            __obj279111
                            '1
                            gxc#!type::t
                            '#f))
                         (class-slot-ref gxc#!type::t __obj279111 'id)))))
              (declare (not safe))
              (cons __tmp279674 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#ref __tmp279673)))
                                            (__tmp279665
                                             (let ((__tmp279670
                                                    (let ((__tmp279671
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field273500_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp279671)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp279666
                                                    (let ((__tmp279668
                                                           (let ((__tmp279669
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj273512_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp279669)))
                  (__tmp279667
                   (let () (declare (not safe)) (cons _value273504_ '()))))
              (declare (not safe))
              (cons __tmp279668 __tmp279667))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp279670
                                                     __tmp279666))))
                                        (declare (not safe))
                                        (cons __tmp279672 __tmp279665))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp279664)))
                              (__tmp279646
                               (let ((__tmp279647
                                      (let ((__tmp279648
                                             (let ((__tmp279661
                                                    (let ((__tmp279662
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp279662)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp279649
                                                    (let ((__tmp279658
                                                           (let ((__tmp279659
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp279660
                                 (let ((__obj279112 _self273444_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-direct-instance-of?
                                          __obj279112
                                          'gxc#!type::t))
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          __obj279112
                                          '1
                                          gxc#!type::t
                                          '#f))
                                       (class-slot-ref
                                        gxc#!type::t
                                        __obj279112
                                        'id)))))
                            (declare (not safe))
                            (cons __tmp279660 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp279659)))
                  (__tmp279650
                   (let ((__tmp279656
                          (let ((__tmp279657
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj273512_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp279657)))
                         (__tmp279651
                          (let ((__tmp279653
                                 (let ((__tmp279654
                                        (let ((__tmp279655
                                               (let ((__obj279113
                                                      _self273444_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        __obj279113
                                                        'gxc#!mutator::t))
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        __obj279113
                                                        '2
                                                        gxc#!mutator::t
                                                        '#f))
                                                     (class-slot-ref
                                                      gxc#!mutator::t
                                                      __obj279113
                                                      'slot)))))
                                          (declare (not safe))
                                          (cons __tmp279655 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp279654)))
                                (__tmp279652
                                 (let ()
                                   (declare (not safe))
                                   (cons _value273504_ '()))))
                            (declare (not safe))
                            (cons __tmp279653 __tmp279652))))
                     (declare (not safe))
                     (cons __tmp279656 __tmp279651))))
              (declare (not safe))
              (cons __tmp279658 __tmp279650))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp279661
                                                     __tmp279649))))
                                        (declare (not safe))
                                        (cons '%#call __tmp279648))))
                                 (declare (not safe))
                                 (cons __tmp279647 '()))))
                          (declare (not safe))
                          (cons __tmp279663 __tmp279646))))
                   (declare (not safe))
                   (cons __tmp279675 __tmp279645))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp279644))))
                                             (declare (not safe))
                                             (cons __tmp279643 '()))))
                                      (declare (not safe))
                                      (cons __tmp279683 __tmp279642))))
                              (declare (not safe))
                              (cons '%#let-values __tmp279641))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp279639 _stx273445_))
                     (let ((__tmp279629
                            (let ((__tmp279630
                                   (let ((__tmp279637
                                          (let ((__tmp279638
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp279638)))
                                         (__tmp279631
                                          (let ((__tmp279632
                                                 (let ((__tmp279634
                                                        (let ((__tmp279635
                                                               (let ((__tmp279636
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__obj279114 _self273444_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-direct-instance-of?
                                       __obj279114
                                       'gxc#!mutator::t))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __obj279114
                                       '2
                                       gxc#!mutator::t
                                       '#f))
                                    (class-slot-ref
                                     gxc#!mutator::t
                                     __obj279114
                                     'slot)))))
                         (declare (not safe))
                         (cons __tmp279636 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp279635)))
               (__tmp279633
                (let () (declare (not safe)) (cons _value273504_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279634
                                                         __tmp279633))))
                                            (declare (not safe))
                                            (cons _object273502_
                                                  __tmp279632))))
                                     (declare (not safe))
                                     (cons __tmp279637 __tmp279631))))
                              (declare (not safe))
                              (cons '%#call __tmp279630))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp279629 _stx273445_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd273456273478_
                                       _hd273453273470_)
                                      (let ()
                                        (declare (not safe))
                                        (_g273448273462_ _g273449273465_)))))
                              (let ()
                                (declare (not safe))
                                (_g273448273462_ _g273449273465_)))))
                      (let ()
                        (declare (not safe))
                        (_g273448273462_ _g273449273465_))))))
          (declare (not safe))
          (_g273447273514_ _args273446_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__t278776)
        (let ((__checked?278777
               (let ((__tmp278780
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t278776 'checked?))))
                 (if __tmp278780
                     __tmp278780
                     (error '"Unknown slot" 'checked?))))
              (__id278778
               (let ((__tmp278781
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t278776 'id))))
                 (if __tmp278781 __tmp278781 (error '"Unknown slot" 'id))))
              (__slot278779
               (let ((__tmp278782
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t278776 'slot))))
                 (if __tmp278782 __tmp278782 (error '"Unknown slot" 'slot)))))
          (lambda (_self273444_ _stx273445_ _args273446_)
            (let* ((_g273448273462_
                    (lambda (_g273449273459_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g273449273459_))))
                   (_g273447273514_
                    (lambda (_g273449273465_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g273449273465_))
                          (let ((_e273454273467_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g273449273465_))))
                            (let ((_hd273453273470_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e273454273467_)))
                                  (_tl273452273472_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e273454273467_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl273452273472_))
                                  (let ((_e273457273475_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl273452273472_))))
                                    (let ((_hd273456273478_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e273457273475_)))
                                          (_tl273455273480_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e273457273475_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl273455273480_))
                                          ((lambda (_L273483_ _L273484_)
                                             (let* ((_klass273498_
                                                     (let ((__tmp279720
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self273444_
                                                               __id278778
                                                               __t278776
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx273445_
                                                        __tmp279720)))
                                                    (_field273500_
                                                     (let ((__tmp279721
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self273444_
                                                               __slot278779
                                                               __t278776
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass273498_
                                                        __tmp279721)))
                                                    (_object273502_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L273484_)))
                                                    (_value273504_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L273483_))))
                                               (if (let ((__obj279115
                                                          _klass273498_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj279115
                                                            'gxc#!class::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj279115
                                                            '8
                                                            gxc#!class::t
                                                            '#f))
                                                         (class-slot-ref
                                                          gxc#!class::t
                                                          __obj279115
                                                          'final?)))
                                                   (let ((__tmp279803
                                                          (let ((__tmp279813
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self273444_
                                __checked?278777
                                __t278776
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp279804
                         (let ((__tmp279810
                                (let ((__tmp279811
                                       (let ((__tmp279812
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self273444_
                                                 __id278778
                                                 __t278776
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp279812 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp279811)))
                               (__tmp279805
                                (let ((__tmp279808
                                       (let ((__tmp279809
                                              (let ()
                                                (declare (not safe))
                                                (cons _field273500_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp279809)))
                                      (__tmp279806
                                       (let ((__tmp279807
                                              (let ()
                                                (declare (not safe))
                                                (cons _value273504_ '()))))
                                         (declare (not safe))
                                         (cons _object273502_ __tmp279807))))
                                  (declare (not safe))
                                  (cons __tmp279808 __tmp279806))))
                           (declare (not safe))
                           (cons __tmp279810 __tmp279805))))
                    (declare (not safe))
                    (cons __tmp279813 __tmp279804))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp279803
                                                      _stx273445_))
                                                   (if (let ((__obj279116
                                                              _klass273498_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##structure-direct-instance-of?
                        __obj279116
                        'gxc#!class::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        __obj279116
                        '7
                        gxc#!class::t
                        '#f))
                     (class-slot-ref gxc#!class::t __obj279116 'struct?)))
               (let ((__tmp279792
                      (let ((__tmp279802
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self273444_
                                    __checked?278777
                                    __t278776
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp279793
                             (let ((__tmp279799
                                    (let ((__tmp279800
                                           (let ((__tmp279801
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self273444_
                                                     __id278778
                                                     __t278776
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp279801 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp279800)))
                                   (__tmp279794
                                    (let ((__tmp279797
                                           (let ((__tmp279798
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field273500_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp279798)))
                                          (__tmp279795
                                           (let ((__tmp279796
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value273504_ '()))))
                                             (declare (not safe))
                                             (cons _object273502_
                                                   __tmp279796))))
                                      (declare (not safe))
                                      (cons __tmp279797 __tmp279795))))
                               (declare (not safe))
                               (cons __tmp279799 __tmp279794))))
                        (declare (not safe))
                        (cons __tmp279802 __tmp279793))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp279792 _stx273445_))
               (let ((_$e273507_
                      (let ((__tmp279722
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self273444_
                                __slot278779
                                __t278776
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass273498_
                         __tmp279722))))
                 (if _$e273507_
                     ((lambda (_klass273510_)
                        (let ((__tmp279781
                               (let ((__tmp279791
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self273444_
                                             __checked?278777
                                             __t278776
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp279782
                                      (let ((__tmp279788
                                             (let ((__tmp279789
                                                    (let ((__tmp279790
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self273444_
                                                              __id278778
                                                              __t278776
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp279790 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp279789)))
                                            (__tmp279783
                                             (let ((__tmp279786
                                                    (let ((__tmp279787
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field273500_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp279787)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp279784
                                                    (let ((__tmp279785
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value273504_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object273502_ __tmp279785))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp279786
                                                     __tmp279784))))
                                        (declare (not safe))
                                        (cons __tmp279788 __tmp279783))))
                                 (declare (not safe))
                                 (cons __tmp279791 __tmp279782))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp279781 _stx273445_)))
                      _$e273507_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self273444_
                            __checked?278777
                            __t278776
                            '#f))
                         (let ((__tmp279733
                                (let* ((_$obj273512_
                                        (let ((__tmp279734 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp279734)))
                                       (__tmp279735
                                        (let ((__tmp279777
                                               (let ((__tmp279778
                                                      (let ((__tmp279780
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj273512_ '())))
                    (__tmp279779
                     (let () (declare (not safe)) (cons _object273502_ '()))))
                (declare (not safe))
                (cons __tmp279780 __tmp279779))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp279778 '())))
                                              (__tmp279736
                                               (let ((__tmp279737
                                                      (let ((__tmp279738
                                                             (let ((__tmp279769
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp279770
                                   (let ((__tmp279774
                                          (let ((__tmp279775
                                                 (let ((__tmp279776
                                                        (let ((__obj279117
                                                               _klass273498_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##structure-direct-instance-of?
                         __obj279117
                         'gxc#!type::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         __obj279117
                         '1
                         gxc#!type::t
                         '#f))
                      (class-slot-ref gxc#!type::t __obj279117 'id)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279776 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp279775)))
                                         (__tmp279771
                                          (let ((__tmp279772
                                                 (let ((__tmp279773
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj273512_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp279773))))
                                            (declare (not safe))
                                            (cons __tmp279772 '()))))
                                     (declare (not safe))
                                     (cons __tmp279774 __tmp279771))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp279770)))
                           (__tmp279739
                            (let ((__tmp279757
                                   (let ((__tmp279758
                                          (let ((__tmp279766
                                                 (let ((__tmp279767
                                                        (let ((__tmp279768
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self273444_
                          __id278778
                          __t278776
                          '#f))))
                  (declare (not safe))
                  (cons __tmp279768 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp279767)))
                                                (__tmp279759
                                                 (let ((__tmp279764
                                                        (let ((__tmp279765
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field273500_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp279765)))
               (__tmp279760
                (let ((__tmp279762
                       (let ((__tmp279763
                              (let ()
                                (declare (not safe))
                                (cons _$obj273512_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp279763)))
                      (__tmp279761
                       (let () (declare (not safe)) (cons _value273504_ '()))))
                  (declare (not safe))
                  (cons __tmp279762 __tmp279761))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279764
                                                         __tmp279760))))
                                            (declare (not safe))
                                            (cons __tmp279766 __tmp279759))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp279758)))
                                  (__tmp279740
                                   (let ((__tmp279741
                                          (let ((__tmp279742
                                                 (let ((__tmp279755
                                                        (let ((__tmp279756
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp279756)))
               (__tmp279743
                (let ((__tmp279752
                       (let ((__tmp279753
                              (let ((__tmp279754
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self273444_
                                        __id278778
                                        __t278776
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp279754 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp279753)))
                      (__tmp279744
                       (let ((__tmp279750
                              (let ((__tmp279751
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj273512_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp279751)))
                             (__tmp279745
                              (let ((__tmp279747
                                     (let ((__tmp279748
                                            (let ((__tmp279749
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self273444_
                                                      __slot278779
                                                      __t278776
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp279749 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp279748)))
                                    (__tmp279746
                                     (let ()
                                       (declare (not safe))
                                       (cons _value273504_ '()))))
                                (declare (not safe))
                                (cons __tmp279747 __tmp279746))))
                         (declare (not safe))
                         (cons __tmp279750 __tmp279745))))
                  (declare (not safe))
                  (cons __tmp279752 __tmp279744))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279755
                                                         __tmp279743))))
                                            (declare (not safe))
                                            (cons '%#call __tmp279742))))
                                     (declare (not safe))
                                     (cons __tmp279741 '()))))
                              (declare (not safe))
                              (cons __tmp279757 __tmp279740))))
                       (declare (not safe))
                       (cons __tmp279769 __tmp279739))))
                (declare (not safe))
                (cons '%#if __tmp279738))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp279737 '()))))
                                          (declare (not safe))
                                          (cons __tmp279777 __tmp279736))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp279735))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp279733 _stx273445_))
                         (let ((__tmp279723
                                (let ((__tmp279724
                                       (let ((__tmp279731
                                              (let ((__tmp279732
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp279732)))
                                             (__tmp279725
                                              (let ((__tmp279726
                                                     (let ((__tmp279728
                                                            (let ((__tmp279729
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279730
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self273444_
                                     __slot278779
                                     __t278776
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp279730 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp279729)))
                   (__tmp279727
                    (let () (declare (not safe)) (cons _value273504_ '()))))
               (declare (not safe))
               (cons __tmp279728 __tmp279727))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object273502_
                                                      __tmp279726))))
                                         (declare (not safe))
                                         (cons __tmp279731 __tmp279725))))
                                  (declare (not safe))
                                  (cons '%#call __tmp279724))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp279723
                            _stx273445_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd273456273478_
                                           _hd273453273470_)
                                          (let ()
                                            (declare (not safe))
                                            (_g273448273462_
                                             _g273449273465_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g273448273462_ _g273449273465_)))))
                          (let ()
                            (declare (not safe))
                            (_g273448273462_ _g273449273465_))))))
              (declare (not safe))
              (_g273447273514_ _args273446_))))))
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
      (lambda (_self273278_ _stx273279_ _args273280_)
        (let* ((_self273281273290_ _self273278_)
               (_E273283273294_
                (lambda () (error '"No clause matching" _self273281273290_)))
               (_K273284273301_
                (lambda (_inline273297_ _dispatch273298_ _arity273299_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self273278_ _args273280_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx273279_
                         _arity273299_)))
                  (if _inline273297_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp279819
                               (let ((__tmp279820
                                      (_inline273297_ _stx273279_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp279820
                                  _stx273279_))))
                          (declare (not safe))
                          (gxc#compile-e__0 __tmp279819)))
                      (if _dispatch273298_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch273298_))
                            (let ((__tmp279814
                                   (let ((__tmp279815
                                          (let ((__tmp279816
                                                 (let ((__tmp279817
                                                        (let ((__tmp279818
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch273298_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp279818))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279817
                                                         _args273280_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp279816))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp279815
                                      _stx273279_))))
                              (declare (not safe))
                              (gxc#compile-e__0 __tmp279814)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _stx273279_)))))))
          (if (let ()
                (declare (not safe))
                (class-instance? gxc#!lambda::t _self273281273290_))
              (let* ((_e273285273304_
                      (let ()
                        (declare (not safe))
                        (unchecked-slot-ref _self273281273290_ 'id)))
                     (_e273286273307_
                      (let ()
                        (declare (not safe))
                        (unchecked-slot-ref _self273281273290_ 'arity)))
                     (_arity273310_ _e273286273307_)
                     (_e273287273312_
                      (let ()
                        (declare (not safe))
                        (unchecked-slot-ref _self273281273290_ 'dispatch)))
                     (_dispatch273315_ _e273287273312_)
                     (_e273288273317_
                      (let ()
                        (declare (not safe))
                        (unchecked-slot-ref _self273281273290_ 'inline)))
                     (_inline273320_ _e273288273317_))
                (declare (not safe))
                (_K273284273301_
                 _inline273320_
                 _dispatch273315_
                 _arity273310_))
              (let () (declare (not safe)) (_E273283273294_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self273117_ _stx273118_ _args273119_)
        (let* ((_self273120273127_ _self273117_)
               (_E273122273131_
                (lambda () (error '"No clause matching" _self273120273127_)))
               (_K273123273145_
                (lambda (_clauses273134_)
                  (let ((_$e273140_
                         (let ((__tmp279821
                                (lambda (_g273135273137_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g273135273137_
                                     _args273119_)))))
                           (declare (not safe))
                           (find __tmp279821 _clauses273134_))))
                    (if _$e273140_
                        ((lambda (_clause273143_)
                           (let ((__method279118
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause273143_
                                     'optimize-call))))
                             (if __method279118
                                 (__method279118
                                  _clause273143_
                                  _stx273118_
                                  _args273119_)
                                 (error '"Missing method"
                                        _clause273143_
                                        'optimize-call))))
                         _$e273140_)
                        (let ((__tmp279822
                               (map gxc#!lambda-arity _clauses273134_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx273118_
                           __tmp279822)))))))
          (if (let ()
                (declare (not safe))
                (class-instance? gxc#!case-lambda::t _self273120273127_))
              (let* ((_e273124273148_
                      (let ()
                        (declare (not safe))
                        (unchecked-slot-ref _self273120273127_ 'id)))
                     (_e273125273151_
                      (let ()
                        (declare (not safe))
                        (unchecked-slot-ref _self273120273127_ 'clauses)))
                     (_clauses273154_ _e273125273151_))
                (declare (not safe))
                (_K273123273145_ _clauses273154_))
              (let () (declare (not safe)) (_E273122273131_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self272931_ _args272932_)
        (let* ((_self272933272940_ _self272931_)
               (_E272935272944_
                (lambda () (error '"No clause matching" _self272933272940_)))
               (_K272936272984_
                (lambda (_arity272947_)
                  (let* ((_arity272948272957_ _arity272947_)
                         (_E272951272961_
                          (lambda ()
                            (error '"No clause matching"
                                   _arity272948272957_))))
                    (let ((_K272955272981_
                           (lambda ()
                             (fx= (length _args272932_) _arity272947_)))
                          (_K272952272967_
                           (lambda (_arity272965_)
                             (fx>= (length _args272932_) _arity272965_))))
                      (let ((_try-match272950272977_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity272948272957_))
                                   (let ((_tl272954272972_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity272948272957_)))
                                         (_hd272953272970_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity272948272957_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl272954272972_))
                                         (let ((_arity272975_
                                                _hd272953272970_))
                                           (declare (not safe))
                                           (_K272952272967_ _arity272975_))
                                         (let ()
                                           (declare (not safe))
                                           (_E272951272961_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E272951272961_))))))
                        (if (fixnum? _arity272948272957_)
                            (let () (declare (not safe)) (_K272955272981_))
                            (let ()
                              (declare (not safe))
                              (_try-match272950272977_)))))))))
          (if (let ()
                (declare (not safe))
                (class-instance? gxc#!lambda::t _self272933272940_))
              (let* ((_e272937272987_
                      (let ()
                        (declare (not safe))
                        (unchecked-slot-ref _self272933272940_ 'id)))
                     (_e272938272990_
                      (let ()
                        (declare (not safe))
                        (unchecked-slot-ref _self272933272940_ 'arity)))
                     (_arity272993_ _e272938272990_))
                (declare (not safe))
                (_K272936272984_ _arity272993_))
              (let () (declare (not safe)) (_E272935272944_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self272816_ _stx272817_ _args272818_)
        (let* ((_self272819272827_ _self272816_)
               (_E272821272831_
                (lambda () (error '"No clause matching" _self272819272827_)))
               (_K272822272915_
                (lambda (_dispatch272834_ _table272835_)
                  (let* ((_g272836272845_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch272834_)))
                         (_else272838272853_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch272834_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _stx272817_))))
                         (_K272840272899_
                          (lambda (_main272856_ _keys272857_)
                            (let ((_g279823_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx272817_
                                      _args272818_))))
                              (begin
                                (let ((_g279824_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g279823_)
                                             (##vector-length _g279823_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g279824_ 2)))
                                      (error "Context expects 2 values"
                                             _g279824_)))
                                (let ((_pargs272859_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g279823_ 0)))
                                      (_kwargs272860_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g279823_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main272856_))
                                    (if _table272835_
                                        (let ((_xargs272867_
                                               (map (lambda (_key272862_)
                                                      (let ((_$e272864_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _key272862_ _kwargs272860_))))
                (if _$e272864_ (values _$e272864_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys272857_)))
                                          (for-each
                                           (lambda (_kw272869_)
                                             (if (memq (car _kw272869_)
                                                       _keys272857_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx272817_
                                                    _keys272857_
                                                    _kw272869_))))
                                           _kwargs272860_)
                                          (let ((__tmp279876
                                                 (let ((__tmp279877
                                                        (let ((__tmp279878
                                                               (let ((__tmp279883
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp279884
                                     (let ()
                                       (declare (not safe))
                                       (cons _main272856_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp279884)))
                             (__tmp279879
                              (let ((__tmp279881
                                     (let ((__tmp279882
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp279882)))
                                    (__tmp279880
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs272859_
                                               _xargs272867_))))
                                (declare (not safe))
                                (cons __tmp279881 __tmp279880))))
                         (declare (not safe))
                         (cons __tmp279883 __tmp279879))))
                  (declare (not safe))
                  (cons '%#call __tmp279878))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp279877
                                                    _stx272817_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0 __tmp279876)))
                                        (let* ((_kwt272871_
                                                (let ((__tmp279825
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp279825)))
                                               (_kwvars272874_
                                                (map (lambda (_g279826_)
                                                       (let ((__tmp279827
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp279827)))
                                                     _kwargs272860_))
                                               (_kwbind272879_
                                                (map (lambda (_kw272876_
                                                              _kwvar272877_)
                                                       (let ((__tmp279830
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar272877_ '())))
                     (__tmp279828
                      (let ((__tmp279829 (cdr _kw272876_)))
                        (declare (not safe))
                        (cons __tmp279829 '()))))
                 (declare (not safe))
                 (cons __tmp279830 __tmp279828)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs272860_
                                                     _kwvars272874_))
                                               (_kwset272884_
                                                (map (lambda (_kw272881_
                                                              _kwvar272882_)
                                                       (let ((__tmp279831
                                                              (let ((__tmp279832
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp279840
                                    (let ((__tmp279841
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt272871_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp279841)))
                                   (__tmp279833
                                    (let ((__tmp279837
                                           (let ((__tmp279838
                                                  (let ((__tmp279839
                                                         (car _kw272881_)))
                                                    (declare (not safe))
                                                    (cons __tmp279839 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp279838)))
                                          (__tmp279834
                                           (let ((__tmp279835
                                                  (let ((__tmp279836
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar272882_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp279836))))
                                             (declare (not safe))
                                             (cons __tmp279835 '()))))
                                      (declare (not safe))
                                      (cons __tmp279837 __tmp279834))))
                               (declare (not safe))
                               (cons __tmp279840 __tmp279833))))
                        (declare (not safe))
                        (cons '(%#ref hash-put!) __tmp279832))))
                 (declare (not safe))
                 (cons '%#call __tmp279831)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs272860_
                                                     _kwvars272874_))
                                               (_xkwargs272889_
                                                (map (lambda (_kw272886_
                                                              _kwvar272887_)
                                                       (let ((__tmp279844
                                                              (car _kw272886_))
                                                             (__tmp279842
                                                              (let ((__tmp279843
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar272887_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp279843))))
                 (declare (not safe))
                 (cons __tmp279844 __tmp279842)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs272860_
                                                     _kwvars272874_))
                                               (_xargs272896_
                                                (map (lambda (_key272891_)
                                                       (let ((_$e272893_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq _key272891_ _xkwargs272889_))))
                 (if _$e272893_ (values _$e272893_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys272857_)))
                                          (let ((__tmp279845
                                                 (let ((__tmp279846
                                                        (let ((__tmp279847
                                                               (let ((__tmp279848
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp279849
                                     (let ((__tmp279850
                                            (let ((__tmp279864
                                                   (let ((__tmp279865
                                                          (let ((__tmp279875
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt272871_ '())))
                        (__tmp279866
                         (let ((__tmp279867
                                (let ((__tmp279868
                                       (let ((__tmp279869
                                              (let ((__tmp279870
                                                     (let ((__tmp279871
                                                            (let ((__tmp279872
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279873
                                  (let ((__tmp279874 (length _kwargs272860_)))
                                    (declare (not safe))
                                    (cons __tmp279874 '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp279873))))
                      (declare (not safe))
                      (cons __tmp279872 '()))))
               (declare (not safe))
               (cons '(%#quote size:) __tmp279871))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-hash-table-eq)
                                                      __tmp279870))))
                                         (declare (not safe))
                                         (cons '%#call __tmp279869))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp279868
                                   _stx272817_))))
                           (declare (not safe))
                           (cons __tmp279867 '()))))
                    (declare (not safe))
                    (cons __tmp279875 __tmp279866))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp279865 '())))
                                                  (__tmp279851
                                                   (let ((__tmp279852
                                                          (let ((__tmp279853
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp279854
                                (let ((__tmp279855
                                       (let ((__tmp279856
                                              (let ((__tmp279857
                                                     (let ((__tmp279862
                                                            (let ((__tmp279863
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main272856_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp279863)))
                   (__tmp279858
                    (let ((__tmp279860
                           (let ((__tmp279861
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt272871_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp279861)))
                          (__tmp279859
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs272859_ _xargs272896_))))
                      (declare (not safe))
                      (cons __tmp279860 __tmp279859))))
               (declare (not safe))
               (cons __tmp279862 __tmp279858))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp279857))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp279856
                                          _stx272817_))))
                                  (declare (not safe))
                                  (cons __tmp279855 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp279854 _kwset272884_))))
                    (declare (not safe))
                    (cons '%#begin __tmp279853))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp279852 '()))))
                                              (declare (not safe))
                                              (cons __tmp279864 __tmp279851))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp279850))))
                                (declare (not safe))
                                (cons __tmp279849 '()))))
                         (declare (not safe))
                         (cons _kwbind272879_ __tmp279848))))
                  (declare (not safe))
                  (cons '%#let-values __tmp279847))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp279846
                                                    _stx272817_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0
                                             __tmp279845)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (class-instance?
                           gxc#!kw-lambda-primary::t
                           _g272836272845_))
                        (let* ((_e272841272902_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref _g272836272845_ 'id)))
                               (_e272842272905_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref _g272836272845_ 'keys)))
                               (_keys272908_ _e272842272905_)
                               (_e272843272910_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref _g272836272845_ 'main)))
                               (_main272913_ _e272843272910_))
                          (declare (not safe))
                          (_K272840272899_ _main272913_ _keys272908_))
                        (let () (declare (not safe)) (_else272838272853_)))))))
          (if (let ()
                (declare (not safe))
                (class-instance? gxc#!kw-lambda::t _self272819272827_))
              (let* ((_e272823272918_
                      (let ()
                        (declare (not safe))
                        (unchecked-slot-ref _self272819272827_ 'id)))
                     (_e272824272921_
                      (let ()
                        (declare (not safe))
                        (unchecked-slot-ref _self272819272827_ 'table)))
                     (_table272924_ _e272824272921_)
                     (_e272825272926_
                      (let ()
                        (declare (not safe))
                        (unchecked-slot-ref _self272819272827_ 'dispatch)))
                     (_dispatch272929_ _e272825272926_))
                (declare (not safe))
                (_K272822272915_ _dispatch272929_ _table272924_))
              (let () (declare (not safe)) (_E272821272831_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx272429_ _args272430_)
        (let _lp272432_ ((_rest272434_ _args272430_)
                         (_pargs272435_ '())
                         (_kwargs272436_ '()))
          (let* ((___stx278933278934_ _rest272434_)
                 (_g272442272494_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx278933278934_)))))
            (let ((___kont278935278936_
                   (lambda (_L272673_ _L272674_)
                     (let ((__tmp279885
                            (let ()
                              (declare (not safe))
                              (cons _L272674_ _pargs272435_))))
                       (declare (not safe))
                       (_lp272432_ _L272673_ __tmp279885 _kwargs272436_))))
                  (___kont278937278938_
                   (lambda (_L272619_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L272619_ _pargs272435_))
                             (reverse _kwargs272436_))))
                  (___kont278939278940_
                   (lambda (_L272566_ _L272567_ _L272568_)
                     (let ((_kw272585_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L272568_))))
                       (if (assq _kw272585_ _kwargs272436_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx272429_
                              _kw272585_))
                           (let ((__tmp279886
                                  (let ((__tmp279887
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw272585_ _L272567_))))
                                    (declare (not safe))
                                    (cons __tmp279887 _kwargs272436_))))
                             (declare (not safe))
                             (_lp272432_
                              _L272566_
                              _pargs272435_
                              __tmp279886))))))
                  (___kont278941278942_
                   (lambda (_L272514_ _L272515_)
                     (let ((__tmp279888
                            (let ()
                              (declare (not safe))
                              (cons _L272515_ _pargs272435_))))
                       (declare (not safe))
                       (_lp272432_ _L272514_ __tmp279888 _kwargs272436_))))
                  (___kont278943278944_
                   (lambda ()
                     (values (reverse _pargs272435_)
                             (reverse _kwargs272436_)))))
              (let* ((_g272441272501_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx278933278934_))
                            (___kont278943278944_)
                            (let () (declare (not safe)) (_g272442272494_)))))
                     (___match279040279041_
                      (lambda (_e272475272534_
                               _hd272474272537_
                               _tl272473272539_
                               _e272478272542_
                               _hd272477272545_
                               _tl272476272547_
                               _e272481272550_
                               _hd272480272553_
                               _tl272479272555_
                               _e272484272558_
                               _hd272483272561_
                               _tl272482272563_)
                        (let ((_L272566_ _tl272482272563_)
                              (_L272567_ _hd272483272561_)
                              (_L272568_ _hd272480272553_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L272568_))
                              (___kont278939278940_
                               _L272566_
                               _L272567_
                               _L272568_)
                              (___kont278941278942_
                               _tl272473272539_
                               _hd272474272537_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx278933278934_))
                    (let ((_e272448272638_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx278933278934_))))
                      (let ((_tl272446272643_
                             (let ()
                               (declare (not safe))
                               (##cdr _e272448272638_)))
                            (_hd272447272641_
                             (let ()
                               (declare (not safe))
                               (##car _e272448272638_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd272447272641_))
                            (let ((_e272451272646_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd272447272641_))))
                              (let ((_tl272449272651_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e272451272646_)))
                                    (_hd272450272649_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e272451272646_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd272450272649_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd272450272649_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl272449272651_))
                                            (let ((_e272454272654_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl272449272651_))))
                                              (let ((_tl272452272659_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e272454272654_)))
                                                    (_hd272453272657_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e272454272654_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd272453272657_))
                                                    (let ((_e272455272662_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd272453272657_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e272455272662_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl272452272659_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl272446272643_))
                          (let ((_e272458272665_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl272446272643_))))
                            (let ((_tl272456272670_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e272458272665_)))
                                  (_hd272457272668_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e272458272665_))))
                              (___kont278935278936_
                               _tl272456272670_
                               _hd272457272668_)))
                          (___kont278941278942_
                           _tl272446272643_
                           _hd272447272641_))
                      (___kont278941278942_ _tl272446272643_ _hd272447272641_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e272455272662_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl272452272659_))
                          (___kont278937278938_ _tl272446272643_)
                          (___kont278941278942_
                           _tl272446272643_
                           _hd272447272641_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl272452272659_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl272446272643_))
                              (let ((_e272484272558_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl272446272643_))))
                                (let ((_tl272482272563_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e272484272558_)))
                                      (_hd272483272561_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e272484272558_))))
                                  (___match279040279041_
                                   _e272448272638_
                                   _hd272447272641_
                                   _tl272446272643_
                                   _e272451272646_
                                   _hd272450272649_
                                   _tl272449272651_
                                   _e272454272654_
                                   _hd272453272657_
                                   _tl272452272659_
                                   _e272484272558_
                                   _hd272483272561_
                                   _tl272482272563_)))
                              (___kont278941278942_
                               _tl272446272643_
                               _hd272447272641_))
                          (___kont278941278942_
                           _tl272446272643_
                           _hd272447272641_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl272452272659_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl272446272643_))
                                                            (let ((_e272484272558_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl272446272643_))))
                      (let ((_tl272482272563_
                             (let ()
                               (declare (not safe))
                               (##cdr _e272484272558_)))
                            (_hd272483272561_
                             (let ()
                               (declare (not safe))
                               (##car _e272484272558_))))
                        (___match279040279041_
                         _e272448272638_
                         _hd272447272641_
                         _tl272446272643_
                         _e272451272646_
                         _hd272450272649_
                         _tl272449272651_
                         _e272454272654_
                         _hd272453272657_
                         _tl272452272659_
                         _e272484272558_
                         _hd272483272561_
                         _tl272482272563_)))
                    (___kont278941278942_ _tl272446272643_ _hd272447272641_))
                (___kont278941278942_ _tl272446272643_ _hd272447272641_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont278941278942_
                                             _tl272446272643_
                                             _hd272447272641_))
                                        (___kont278941278942_
                                         _tl272446272643_
                                         _hd272447272641_))
                                    (___kont278941278942_
                                     _tl272446272643_
                                     _hd272447272641_))))
                            (___kont278941278942_
                             _tl272446272643_
                             _hd272447272641_))))
                    (let () (declare (not safe)) (_g272441272501_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self272425_ _stx272426_ _args272427_)
        (let () (declare (not safe)) (gxc#xform-call% _stx272426_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
