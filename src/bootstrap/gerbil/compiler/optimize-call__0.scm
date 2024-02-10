(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1707573218)
  (begin
    (define gxc#&optimize-call
      (make-promise
       (lambda ()
         (let ((_tbl274325_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp279084 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl274325_ __tmp279084))
           (let ()
             (declare (not safe))
             (table-set! _tbl274325_ '%#call gxc#optimize-call%))
           _tbl274325_))))
    (define gxc#apply-optimize-call
      (lambda (_stx274308_ . _args274310_)
        (let ((__tmp279086
               (lambda ()
                 (declare (not safe))
                 (if (null? _args274310_)
                     (gxc#compile-e__0 _stx274308_)
                     (let ((_arg1274315_ (car _args274310_))
                           (_rest274317_ (cdr _args274310_)))
                       (if (null? _rest274317_)
                           (gxc#compile-e__1 _stx274308_ _arg1274315_)
                           (let ((_arg2274320_ (car _rest274317_))
                                 (_rest274322_ (cdr _rest274317_)))
                             (if (null? _rest274322_)
                                 (gxc#compile-e__2
                                  _stx274308_
                                  _arg1274315_
                                  _arg2274320_)
                                 (apply gxc#compile-e
                                        _stx274308_
                                        _arg1274315_
                                        _arg2274320_
                                        _rest274322_))))))))
              (__tmp279085 (force gxc#&optimize-call)))
          (declare (not safe))
          (call-with-parameters
           __tmp279086
           gxc#current-compile-methods
           __tmp279085))))
    (define gxc#optimize-call%
      (lambda (_stx274163_)
        (let* ((___stx278834278835_ _stx274163_)
               (_g274166274186_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx278834278835_)))))
          (let ((___kont278836278837_
                 (lambda (_L274230_ _L274231_)
                   (let* ((_rator-id274249_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L274231_)))
                          (_rator-type274251_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id274249_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type274251_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp279087
                                  (##structure-ref
                                   _rator-type274251_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id274249_
                              '" => "
                              _rator-type274251_
                              '" "
                              __tmp279087))
                           (let ((_optimized274254_
                                  (let ((__method279082
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type274251_
                                            'optimize-call))))
                                    (if __method279082
                                        (__method279082
                                         _rator-type274251_
                                         _stx274163_
                                         _L274230_)
                                        (error '"Missing method"
                                               _rator-type274251_
                                               'optimize-call)))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type274251_))
                                 _optimized274254_
                                 (let* ((___stx278816278817_ _optimized274254_)
                                        (_g274257274267_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx278816278817_)))))
                                   (let ((___kont278818278819_
                                          (lambda (_L274287_)
                                            (let ((__tmp279088
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L274287_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp279088
                                               _stx274163_))))
                                         (___kont278820278821_
                                          (lambda () _optimized274254_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx278816278817_))
                                         (let ((_e274262274279_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx278816278817_))))
                                           (let ((_tl274260274284_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e274262274279_)))
                                                 (_hd274261274282_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e274262274279_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd274261274282_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd274261274282_))
                                                     (___kont278818278819_
                                                      _tl274260274284_)
                                                     (___kont278820278821_))
                                                 (___kont278820278821_))))
                                         (___kont278820278821_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type274251_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx274163_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx274163_
                                _rator-type274251_)))))))
                (___kont278838278839_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _stx274163_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx278834278835_))
                (let ((_e274172274198_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx278834278835_))))
                  (let ((_tl274170274203_
                         (let () (declare (not safe)) (##cdr _e274172274198_)))
                        (_hd274171274201_
                         (let ()
                           (declare (not safe))
                           (##car _e274172274198_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl274170274203_))
                        (let ((_e274175274206_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl274170274203_))))
                          (let ((_tl274173274211_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e274175274206_)))
                                (_hd274174274209_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e274175274206_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd274174274209_))
                                (let ((_e274178274214_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd274174274209_))))
                                  (let ((_tl274176274219_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e274178274214_)))
                                        (_hd274177274217_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e274178274214_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd274177274217_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd274177274217_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl274176274219_))
                                                (let ((_e274181274222_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl274176274219_))))
                                                  (let ((_tl274179274227_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e274181274222_)))
                                                        (_hd274180274225_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e274181274222_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl274179274227_))
                                                        (___kont278836278837_
                                                         _tl274173274211_
                                                         _hd274180274225_)
                                                        (___kont278838278839_))))
                                                (___kont278838278839_))
                                            (___kont278838278839_))
                                        (___kont278838278839_))))
                                (___kont278838278839_))))
                        (___kont278838278839_))))
                (___kont278838278839_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self274117_ _stx274118_ _args274119_)
        (let* ((_g274121274131_
                (lambda (_g274122274128_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g274122274128_))))
               (_g274120274160_
                (lambda (_g274122274134_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g274122274134_))
                      (let ((_e274126274136_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g274122274134_))))
                        (let ((_hd274125274139_
                               (let ()
                                 (declare (not safe))
                                 (##car _e274126274136_)))
                              (_tl274124274141_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e274126274136_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl274124274141_))
                              ((lambda (_L274144_)
                                 (let* ((_klass274155_
                                         (let ((__tmp279089
                                                (##structure-ref
                                                 _self274117_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx274118_
                                            __tmp279089)))
                                        (_object274157_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L274144_))))
                                   (if (##structure-ref
                                        _klass274155_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp279105
                                              (let ((__tmp279106
                                                     (let ((__tmp279108
                                                            (let ((__tmp279109
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279110
                                  (##structure-ref
                                   _klass274155_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp279110 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp279109)))
                   (__tmp279107
                    (let () (declare (not safe)) (cons _object274157_ '()))))
               (declare (not safe))
               (cons __tmp279108 __tmp279107))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp279106))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp279105
                                          _stx274118_))
                                       (if (##structure-ref
                                            _klass274155_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp279099
                                                  (let ((__tmp279100
                                                         (let ((__tmp279102
                                                                (let ((__tmp279103
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp279104
                                      (##structure-ref
                                       _klass274155_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp279104 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp279103)))
                       (__tmp279101
                        (let ()
                          (declare (not safe))
                          (cons _object274157_ '()))))
                   (declare (not safe))
                   (cons __tmp279102 __tmp279101))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp279100))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp279099
                                              _stx274118_))
                                           (let ((__tmp279090
                                                  (let ((__tmp279091
                                                         (let ((__tmp279097
                                                                (let ((__tmp279098
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp279098)))
                       (__tmp279092
                        (let ((__tmp279094
                               (let ((__tmp279095
                                      (let ((__tmp279096
                                             (##structure-ref
                                              _self274117_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp279096 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp279095)))
                              (__tmp279093
                               (let ()
                                 (declare (not safe))
                                 (cons _object274157_ '()))))
                          (declare (not safe))
                          (cons __tmp279094 __tmp279093))))
                   (declare (not safe))
                   (cons __tmp279097 __tmp279092))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp279091))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp279090
                                              _stx274118_))))))
                               _hd274125274139_)
                              (let ()
                                (declare (not safe))
                                (_g274121274131_ _g274122274134_)))))
                      (let ()
                        (declare (not safe))
                        (_g274121274131_ _g274122274134_))))))
          (declare (not safe))
          (_g274120274160_ _args274119_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__t278795)
        (let ((__id278796
               (let ((__tmp278797
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t278795 'id))))
                 (if __tmp278797 __tmp278797 (error '"Unknown slot" 'id)))))
          (lambda (_self274117_ _stx274118_ _args274119_)
            (let* ((_g274121274131_
                    (lambda (_g274122274128_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g274122274128_))))
                   (_g274120274160_
                    (lambda (_g274122274134_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g274122274134_))
                          (let ((_e274126274136_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g274122274134_))))
                            (let ((_hd274125274139_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e274126274136_)))
                                  (_tl274124274141_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e274126274136_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl274124274141_))
                                  ((lambda (_L274144_)
                                     (let* ((_klass274155_
                                             (let ((__tmp279111
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self274117_
                                                       __id278796
                                                       __t278795
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx274118_
                                                __tmp279111)))
                                            (_object274157_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L274144_))))
                                       (if (##structure-ref
                                            _klass274155_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp279127
                                                  (let ((__tmp279128
                                                         (let ((__tmp279130
                                                                (let ((__tmp279131
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp279132
                                      (##structure-ref
                                       _klass274155_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp279132 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp279131)))
                       (__tmp279129
                        (let ()
                          (declare (not safe))
                          (cons _object274157_ '()))))
                   (declare (not safe))
                   (cons __tmp279130 __tmp279129))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp279128))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp279127
                                              _stx274118_))
                                           (if (##structure-ref
                                                _klass274155_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp279121
                                                      (let ((__tmp279122
                                                             (let ((__tmp279124
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp279125
                                   (let ((__tmp279126
                                          (##structure-ref
                                           _klass274155_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp279126 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp279125)))
                           (__tmp279123
                            (let ()
                              (declare (not safe))
                              (cons _object274157_ '()))))
                       (declare (not safe))
                       (cons __tmp279124 __tmp279123))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp279122))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp279121
                                                  _stx274118_))
                                               (let ((__tmp279112
                                                      (let ((__tmp279113
                                                             (let ((__tmp279119
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp279120
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp279120)))
                           (__tmp279114
                            (let ((__tmp279116
                                   (let ((__tmp279117
                                          (let ((__tmp279118
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self274117_
                                                    __id278796
                                                    __t278795
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp279118 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp279117)))
                                  (__tmp279115
                                   (let ()
                                     (declare (not safe))
                                     (cons _object274157_ '()))))
                              (declare (not safe))
                              (cons __tmp279116 __tmp279115))))
                       (declare (not safe))
                       (cons __tmp279119 __tmp279114))))
                (declare (not safe))
                (cons '%#call __tmp279113))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp279112
                                                  _stx274118_))))))
                                   _hd274125274139_)
                                  (let ()
                                    (declare (not safe))
                                    (_g274121274131_ _g274122274134_)))))
                          (let ()
                            (declare (not safe))
                            (_g274121274131_ _g274122274134_))))))
              (declare (not safe))
              (_g274120274160_ _args274119_))))))
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
      (lambda (_self273848_ _stx273849_ _args273850_)
        (let* ((_klass273852_
                (let ((__tmp279133
                       (##structure-ref _self273848_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx273849_ __tmp279133)))
               (_fields273854_
                (length (##structure-ref _klass273852_ '5 gxc#!class::t '#f)))
               (_args273856_ (map gxc#compile-e _args273850_))
               (_inline-make-object273858_
                (let ((__tmp279134
                       (let ((__tmp279140
                              (let ((__tmp279141
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp279141)))
                             (__tmp279135
                              (let ((__tmp279137
                                     (let ((__tmp279138
                                            (let ((__tmp279139
                                                   (##structure-ref
                                                    _self273848_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp279139 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp279138)))
                                    (__tmp279136
                                     (make-list _fields273854_ '(%#quote #f))))
                                (declare (not safe))
                                (cons __tmp279137 __tmp279136))))
                         (declare (not safe))
                         (cons __tmp279140 __tmp279135))))
                  (declare (not safe))
                  (cons '%#call __tmp279134))))
          (let ((_$e273861_
                 (##structure-ref _klass273852_ '6 gxc#!class::t '#f)))
            (if _$e273861_
                ((lambda (_ctor273864_)
                   (let ((_$obj273866_
                          (let ((__tmp279203 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp279203)))
                         (_ctor-impl273867_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass273852_
                             _ctor273864_))))
                     (let ((__tmp279204
                            (let ((__tmp279205
                                   (let ((__tmp279270
                                          (let ((__tmp279271
                                                 (let ((__tmp279273
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj273866_
                                                                '())))
                                                       (__tmp279272
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object273858_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp279273
                                                         __tmp279272))))
                                            (declare (not safe))
                                            (cons __tmp279271 '())))
                                         (__tmp279206
                                          (let ((__tmp279207
                                                 (let ((__tmp279208
                                                        (let ((__tmp279212
                                                               (if _ctor-impl273867_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279264
                                  (let ((__tmp279268
                                         (let ((__tmp279269
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl273867_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp279269)))
                                        (__tmp279265
                                         (let ((__tmp279266
                                                (let ((__tmp279267
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj273866_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp279267))))
                                           (declare (not safe))
                                           (cons __tmp279266 _args273856_))))
                                    (declare (not safe))
                                    (cons __tmp279268 __tmp279265))))
                             (declare (not safe))
                             (cons '%#call __tmp279264))
                           (let* ((_$ctor273869_
                                   (let ((__tmp279213 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp279213)))
                                  (__tmp279214
                                   (let ((__tmp279249
                                          (let ((__tmp279250
                                                 (let ((__tmp279263
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor273869_
                                                                '())))
                                                       (__tmp279251
                                                        (let ((__tmp279252
                                                               (let ((__tmp279253
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp279261
                                     (let ((__tmp279262
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp279262)))
                                    (__tmp279254
                                     (let ((__tmp279258
                                            (let ((__tmp279259
                                                   (let ((__tmp279260
                                                          (##structure-ref
                                                           _self273848_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp279260 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp279259)))
                                           (__tmp279255
                                            (let ((__tmp279256
                                                   (let ((__tmp279257
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _ctor273864_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#quote
                                                           __tmp279257))))
                                              (declare (not safe))
                                              (cons __tmp279256 '()))))
                                       (declare (not safe))
                                       (cons __tmp279258 __tmp279255))))
                                (declare (not safe))
                                (cons __tmp279261 __tmp279254))))
                         (declare (not safe))
                         (cons '%#call __tmp279253))))
                  (declare (not safe))
                  (cons __tmp279252 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279263
                                                         __tmp279251))))
                                            (declare (not safe))
                                            (cons __tmp279250 '())))
                                         (__tmp279215
                                          (let ((__tmp279216
                                                 (let ((__tmp279217
                                                        (let ((__tmp279247
                                                               (let ((__tmp279248
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor273869_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp279248)))
                      (__tmp279218
                       (let ((__tmp279240
                              (let ((__tmp279241
                                     (let ((__tmp279245
                                            (let ((__tmp279246
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor273869_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp279246)))
                                           (__tmp279242
                                            (let ((__tmp279243
                                                   (let ((__tmp279244
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj273866_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp279244))))
                                              (declare (not safe))
                                              (cons __tmp279243
                                                    _args273856_))))
                                       (declare (not safe))
                                       (cons __tmp279245 __tmp279242))))
                                (declare (not safe))
                                (cons '%#call __tmp279241)))
                             (__tmp279219
                              (let ((__tmp279220
                                     (let ((__tmp279221
                                            (let ((__tmp279238
                                                   (let ((__tmp279239
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp279239)))
                                                  (__tmp279222
                                                   (let ((__tmp279236
                                                          (let ((__tmp279237
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp279237)))
                 (__tmp279223
                  (let ((__tmp279234
                         (let ((__tmp279235
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp279235)))
                        (__tmp279224
                         (let ((__tmp279231
                                (let ((__tmp279232
                                       (let ((__tmp279233
                                              (##structure-ref
                                               _self273848_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp279233 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp279232)))
                               (__tmp279225
                                (let ((__tmp279229
                                       (let ((__tmp279230
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp279230)))
                                      (__tmp279226
                                       (let ((__tmp279227
                                              (let ((__tmp279228
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor273864_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp279228))))
                                         (declare (not safe))
                                         (cons __tmp279227 '()))))
                                  (declare (not safe))
                                  (cons __tmp279229 __tmp279226))))
                           (declare (not safe))
                           (cons __tmp279231 __tmp279225))))
                    (declare (not safe))
                    (cons __tmp279234 __tmp279224))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp279236
                                                           __tmp279223))))
                                              (declare (not safe))
                                              (cons __tmp279238 __tmp279222))))
                                       (declare (not safe))
                                       (cons '%#call __tmp279221))))
                                (declare (not safe))
                                (cons __tmp279220 '()))))
                         (declare (not safe))
                         (cons __tmp279240 __tmp279219))))
                  (declare (not safe))
                  (cons __tmp279247 __tmp279218))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp279217))))
                                            (declare (not safe))
                                            (cons __tmp279216 '()))))
                                     (declare (not safe))
                                     (cons __tmp279249 __tmp279215))))
                             (declare (not safe))
                             (cons '%#let-values __tmp279214))))
                      (__tmp279209
                       (let ((__tmp279210
                              (let ((__tmp279211
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj273866_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp279211))))
                         (declare (not safe))
                         (cons __tmp279210 '()))))
                  (declare (not safe))
                  (cons __tmp279212 __tmp279209))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp279208))))
                                            (declare (not safe))
                                            (cons __tmp279207 '()))))
                                     (declare (not safe))
                                     (cons __tmp279270 __tmp279206))))
                              (declare (not safe))
                              (cons '%#let-values __tmp279205))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp279204 _stx273849_))))
                 _$e273861_)
                (if (##structure-ref _klass273852_ '7 gxc#!class::t '#f)
                    (if (fx= (length _args273856_) _fields273854_)
                        (let ((__tmp279195
                               (let ((__tmp279196
                                      (let ((__tmp279201
                                             (let ((__tmp279202
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '##structure
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp279202)))
                                            (__tmp279197
                                             (let ((__tmp279198
                                                    (let ((__tmp279199
                                                           (let ((__tmp279200
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##structure-ref _self273848_ '1 gxc#!type::t '#f)))
                     (declare (not safe))
                     (cons __tmp279200 '()))))
              (declare (not safe))
              (cons '%#ref __tmp279199))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp279198
                                                     _args273856_))))
                                        (declare (not safe))
                                        (cons __tmp279201 __tmp279197))))
                                 (declare (not safe))
                                 (cons '%#call __tmp279196))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp279195 _stx273849_))
                        (let ((__tmp279194
                               (##structure-ref
                                _self273848_
                                '1
                                gxc#!type::t
                                '#f))
                              (__tmp279193
                               (length (##structure-ref
                                        _klass273852_
                                        '5
                                        gxc#!class::t
                                        '#f))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"illegal struct constructor application; arity mismatch"
                           _stx273849_
                           __tmp279194
                           __tmp279193)))
                    (let ((_$obj273871_
                           (let ((__tmp279142 (gensym '__obj)))
                             (declare (not safe))
                             (make-symbol__0 __tmp279142))))
                      (let _lp273873_ ((_rest273875_ _args273856_)
                                       (_initializers273876_ '()))
                        (let* ((___stx278872278873_ _rest273875_)
                               (_g273880273901_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     ___stx278872278873_)))))
                          (let ((___kont278874278875_
                                 (lambda (_L273955_ _L273956_ _L273957_)
                                   (let* ((_slot273987_
                                           (keyword->symbol
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _L273957_))))
                                          (_off273989_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!class-slot->field-offset
                                              _klass273852_
                                              _slot273987_))))
                                     (if _off273989_
                                         (let ((__tmp279144
                                                (let ((__tmp279145
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _off273989_
                                                               _L273956_))))
                                                  (declare (not safe))
                                                  (cons __tmp279145
                                                        _initializers273876_))))
                                           (declare (not safe))
                                           (_lp273873_ _L273955_ __tmp279144))
                                         (let ((__tmp279143
                                                (##structure-ref
                                                 _self273848_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#raise-compile-error
                                            '"unknown slot"
                                            _stx273849_
                                            __tmp279143
                                            _slot273987_))))))
                                (___kont278876278877_
                                 (lambda ()
                                   (let ((__tmp279146
                                          (let ((__tmp279147
                                                 (let ((__tmp279170
                                                        (let ((__tmp279171
                                                               (let ((__tmp279173
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$obj273871_ '())))
                             (__tmp279172
                              (let ()
                                (declare (not safe))
                                (cons _inline-make-object273858_ '()))))
                         (declare (not safe))
                         (cons __tmp279173 __tmp279172))))
                  (declare (not safe))
                  (cons __tmp279171 '())))
               (__tmp279148
                (let ((__tmp279149
                       (let ((__tmp279150
                              (let ((__tmp279167
                                     (let ((__tmp279168
                                            (let ((__tmp279169
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$obj273871_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp279169))))
                                       (declare (not safe))
                                       (cons __tmp279168 '())))
                                    (__tmp279151
                                     (let ((__tmp279152
                                            (lambda (_i273915_ _r273916_)
                                              (let ((__tmp279153
                                                     (let ((__tmp279154
                                                            (let ((__tmp279164
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279165
                                  (let ((__tmp279166
                                         (##structure-ref
                                          _self273848_
                                          '1
                                          gxc#!type::t
                                          '#f)))
                                    (declare (not safe))
                                    (cons __tmp279166 '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp279165)))
                          (__tmp279155
                           (let ((__tmp279161
                                  (let ((__tmp279162
                                         (let ((__tmp279163 (car _i273915_)))
                                           (declare (not safe))
                                           (cons __tmp279163 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp279162)))
                                 (__tmp279156
                                  (let ((__tmp279159
                                         (let ((__tmp279160
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj273871_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp279160)))
                                        (__tmp279157
                                         (let ((__tmp279158 (cdr _i273915_)))
                                           (declare (not safe))
                                           (cons __tmp279158 '()))))
                                    (declare (not safe))
                                    (cons __tmp279159 __tmp279157))))
                             (declare (not safe))
                             (cons __tmp279161 __tmp279156))))
                      (declare (not safe))
                      (cons __tmp279164 __tmp279155))))
               (declare (not safe))
               (cons '%#struct-unchecked-set! __tmp279154))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp279153
                                                      _r273916_)))))
                                       (declare (not safe))
                                       (foldl1 __tmp279152
                                               '()
                                               _initializers273876_))))
                                (declare (not safe))
                                (foldr1 cons __tmp279167 __tmp279151))))
                         (declare (not safe))
                         (cons '%#begin __tmp279150))))
                  (declare (not safe))
                  (cons __tmp279149 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279170
                                                         __tmp279148))))
                                            (declare (not safe))
                                            (cons '%#let-values __tmp279147))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp279146
                                      _stx273849_))))
                                (___kont278878278879_
                                 (lambda ()
                                   (let ((__tmp279174
                                          (let ((__tmp279175
                                                 (let ((__tmp279189
                                                        (let ((__tmp279190
                                                               (let ((__tmp279192
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$obj273871_ '())))
                             (__tmp279191
                              (let ()
                                (declare (not safe))
                                (cons _inline-make-object273858_ '()))))
                         (declare (not safe))
                         (cons __tmp279192 __tmp279191))))
                  (declare (not safe))
                  (cons __tmp279190 '())))
               (__tmp279176
                (let ((__tmp279177
                       (let ((__tmp279178
                              (let ((__tmp279182
                                     (let ((__tmp279183
                                            (let ((__tmp279187
                                                   (let ((__tmp279188
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'class-instance-init!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp279188)))
                                                  (__tmp279184
                                                   (let ((__tmp279185
                                                          (let ((__tmp279186
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj273871_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp279186))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp279185
                                                           _args273856_))))
                                              (declare (not safe))
                                              (cons __tmp279187 __tmp279184))))
                                       (declare (not safe))
                                       (cons '%#call __tmp279183)))
                                    (__tmp279179
                                     (let ((__tmp279180
                                            (let ((__tmp279181
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$obj273871_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp279181))))
                                       (declare (not safe))
                                       (cons __tmp279180 '()))))
                                (declare (not safe))
                                (cons __tmp279182 __tmp279179))))
                         (declare (not safe))
                         (cons '%#begin __tmp279178))))
                  (declare (not safe))
                  (cons __tmp279177 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279189
                                                         __tmp279176))))
                                            (declare (not safe))
                                            (cons '%#let-values __tmp279175))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp279174
                                      _stx273849_)))))
                            (let* ((_g273878273918_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? ___stx278872278873_))
                                          (___kont278876278877_)
                                          (___kont278878278879_))))
                                   (___match278909278910_
                                    (lambda (_e273887273923_
                                             _hd273886273926_
                                             _tl273885273928_
                                             _e273890273931_
                                             _hd273889273934_
                                             _tl273888273936_
                                             _e273893273939_
                                             _hd273892273942_
                                             _tl273891273944_
                                             _e273896273947_
                                             _hd273895273950_
                                             _tl273894273952_)
                                      (let ((_L273955_ _tl273894273952_)
                                            (_L273956_ _hd273895273950_)
                                            (_L273957_ _hd273892273942_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-keyword? _L273957_))
                                            (___kont278874278875_
                                             _L273955_
                                             _L273956_
                                             _L273957_)
                                            (___kont278878278879_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? ___stx278872278873_))
                                  (let ((_e273887273923_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e ___stx278872278873_))))
                                    (let ((_tl273885273928_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e273887273923_)))
                                          (_hd273886273926_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e273887273923_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd273886273926_))
                                          (let ((_e273890273931_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd273886273926_))))
                                            (let ((_tl273888273936_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e273890273931_)))
                                                  (_hd273889273934_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e273890273931_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd273889273934_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#quote
                                                         _hd273889273934_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl273888273936_))
                                                          (let ((_e273893273939_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl273888273936_))))
                    (let ((_tl273891273944_
                           (let ()
                             (declare (not safe))
                             (##cdr _e273893273939_)))
                          (_hd273892273942_
                           (let ()
                             (declare (not safe))
                             (##car _e273893273939_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl273891273944_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl273885273928_))
                              (let ((_e273896273947_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl273885273928_))))
                                (let ((_tl273894273952_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e273896273947_)))
                                      (_hd273895273950_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e273896273947_))))
                                  (___match278909278910_
                                   _e273887273923_
                                   _hd273886273926_
                                   _tl273885273928_
                                   _e273890273931_
                                   _hd273889273934_
                                   _tl273888273936_
                                   _e273893273939_
                                   _hd273892273942_
                                   _tl273891273944_
                                   _e273896273947_
                                   _hd273895273950_
                                   _tl273894273952_)))
                              (___kont278878278879_))
                          (___kont278878278879_))))
                  (___kont278878278879_))
              (___kont278878278879_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont278878278879_))))
                                          (___kont278878278879_))))
                                  (let ()
                                    (declare (not safe))
                                    (_g273878273918_))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__t278798)
        (let ((__id278799
               (let ((__tmp278800
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t278798 'id))))
                 (if __tmp278800 __tmp278800 (error '"Unknown slot" 'id)))))
          (lambda (_self273848_ _stx273849_ _args273850_)
            (let* ((_klass273852_
                    (let ((__tmp279274
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self273848_
                              __id278799
                              __t278798
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx273849_ __tmp279274)))
                   (_fields273854_
                    (length (##structure-ref
                             _klass273852_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args273856_ (map gxc#compile-e _args273850_))
                   (_inline-make-object273858_
                    (let ((__tmp279275
                           (let ((__tmp279281
                                  (let ((__tmp279282
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp279282)))
                                 (__tmp279276
                                  (let ((__tmp279278
                                         (let ((__tmp279279
                                                (let ((__tmp279280
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self273848_
                                                          __id278799
                                                          __t278798
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp279280 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp279279)))
                                        (__tmp279277
                                         (make-list
                                          _fields273854_
                                          '(%#quote #f))))
                                    (declare (not safe))
                                    (cons __tmp279278 __tmp279277))))
                             (declare (not safe))
                             (cons __tmp279281 __tmp279276))))
                      (declare (not safe))
                      (cons '%#call __tmp279275))))
              (let ((_$e273861_
                     (##structure-ref _klass273852_ '6 gxc#!class::t '#f)))
                (if _$e273861_
                    ((lambda (_ctor273864_)
                       (let ((_$obj273866_
                              (let ((__tmp279344 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp279344)))
                             (_ctor-impl273867_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass273852_
                                 _ctor273864_))))
                         (let ((__tmp279345
                                (let ((__tmp279346
                                       (let ((__tmp279411
                                              (let ((__tmp279412
                                                     (let ((__tmp279414
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj273866_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp279413
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object273858_ '()))))
               (declare (not safe))
               (cons __tmp279414 __tmp279413))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp279412 '())))
                                             (__tmp279347
                                              (let ((__tmp279348
                                                     (let ((__tmp279349
                                                            (let ((__tmp279353
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl273867_
                               (let ((__tmp279405
                                      (let ((__tmp279409
                                             (let ((__tmp279410
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl273867_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp279410)))
                                            (__tmp279406
                                             (let ((__tmp279407
                                                    (let ((__tmp279408
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj273866_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp279408))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp279407
                                                     _args273856_))))
                                        (declare (not safe))
                                        (cons __tmp279409 __tmp279406))))
                                 (declare (not safe))
                                 (cons '%#call __tmp279405))
                               (let* ((_$ctor273869_
                                       (let ((__tmp279354
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp279354)))
                                      (__tmp279355
                                       (let ((__tmp279390
                                              (let ((__tmp279391
                                                     (let ((__tmp279404
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor273869_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp279392
                    (let ((__tmp279393
                           (let ((__tmp279394
                                  (let ((__tmp279402
                                         (let ((__tmp279403
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp279403)))
                                        (__tmp279395
                                         (let ((__tmp279399
                                                (let ((__tmp279400
                                                       (let ((__tmp279401
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self273848_
                         __id278799
                         __t278798
                         '#f))))
                 (declare (not safe))
                 (cons __tmp279401 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp279400)))
                                               (__tmp279396
                                                (let ((__tmp279397
                                                       (let ((__tmp279398
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _ctor273864_ '()))))
                 (declare (not safe))
                 (cons '%#quote __tmp279398))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp279397 '()))))
                                           (declare (not safe))
                                           (cons __tmp279399 __tmp279396))))
                                    (declare (not safe))
                                    (cons __tmp279402 __tmp279395))))
                             (declare (not safe))
                             (cons '%#call __tmp279394))))
                      (declare (not safe))
                      (cons __tmp279393 '()))))
               (declare (not safe))
               (cons __tmp279404 __tmp279392))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp279391 '())))
                                             (__tmp279356
                                              (let ((__tmp279357
                                                     (let ((__tmp279358
                                                            (let ((__tmp279388
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279389
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor273869_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp279389)))
                          (__tmp279359
                           (let ((__tmp279381
                                  (let ((__tmp279382
                                         (let ((__tmp279386
                                                (let ((__tmp279387
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor273869_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp279387)))
                                               (__tmp279383
                                                (let ((__tmp279384
                                                       (let ((__tmp279385
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj273866_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp279385))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp279384
                                                        _args273856_))))
                                           (declare (not safe))
                                           (cons __tmp279386 __tmp279383))))
                                    (declare (not safe))
                                    (cons '%#call __tmp279382)))
                                 (__tmp279360
                                  (let ((__tmp279361
                                         (let ((__tmp279362
                                                (let ((__tmp279379
                                                       (let ((__tmp279380
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp279380)))
              (__tmp279363
               (let ((__tmp279377
                      (let ((__tmp279378
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp279378)))
                     (__tmp279364
                      (let ((__tmp279375
                             (let ((__tmp279376
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp279376)))
                            (__tmp279365
                             (let ((__tmp279372
                                    (let ((__tmp279373
                                           (let ((__tmp279374
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self273848_
                                                     __id278799
                                                     __t278798
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp279374 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp279373)))
                                   (__tmp279366
                                    (let ((__tmp279370
                                           (let ((__tmp279371
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp279371)))
                                          (__tmp279367
                                           (let ((__tmp279368
                                                  (let ((__tmp279369
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor273864_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp279369))))
                                             (declare (not safe))
                                             (cons __tmp279368 '()))))
                                      (declare (not safe))
                                      (cons __tmp279370 __tmp279367))))
                               (declare (not safe))
                               (cons __tmp279372 __tmp279366))))
                        (declare (not safe))
                        (cons __tmp279375 __tmp279365))))
                 (declare (not safe))
                 (cons __tmp279377 __tmp279364))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp279379
                                                        __tmp279363))))
                                           (declare (not safe))
                                           (cons '%#call __tmp279362))))
                                    (declare (not safe))
                                    (cons __tmp279361 '()))))
                             (declare (not safe))
                             (cons __tmp279381 __tmp279360))))
                      (declare (not safe))
                      (cons __tmp279388 __tmp279359))))
               (declare (not safe))
               (cons '%#if __tmp279358))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp279357 '()))))
                                         (declare (not safe))
                                         (cons __tmp279390 __tmp279356))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp279355))))
                          (__tmp279350
                           (let ((__tmp279351
                                  (let ((__tmp279352
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj273866_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp279352))))
                             (declare (not safe))
                             (cons __tmp279351 '()))))
                      (declare (not safe))
                      (cons __tmp279353 __tmp279350))))
               (declare (not safe))
               (cons '%#begin __tmp279349))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp279348 '()))))
                                         (declare (not safe))
                                         (cons __tmp279411 __tmp279347))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp279346))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp279345 _stx273849_))))
                     _$e273861_)
                    (if (##structure-ref _klass273852_ '7 gxc#!class::t '#f)
                        (if (fx= (length _args273856_) _fields273854_)
                            (let ((__tmp279336
                                   (let ((__tmp279337
                                          (let ((__tmp279342
                                                 (let ((__tmp279343
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons '##structure
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp279343)))
                                                (__tmp279338
                                                 (let ((__tmp279339
                                                        (let ((__tmp279340
                                                               (let ((__tmp279341
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self273848_
                                 __id278799
                                 __t278798
                                 '#f))))
                         (declare (not safe))
                         (cons __tmp279341 '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp279340))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279339
                                                         _args273856_))))
                                            (declare (not safe))
                                            (cons __tmp279342 __tmp279338))))
                                     (declare (not safe))
                                     (cons '%#call __tmp279337))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp279336 _stx273849_))
                            (let ((__tmp279335
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _self273848_
                                      __id278799
                                      __t278798
                                      '#f)))
                                  (__tmp279334
                                   (length (##structure-ref
                                            _klass273852_
                                            '5
                                            gxc#!class::t
                                            '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _stx273849_
                               __tmp279335
                               __tmp279334)))
                        (let ((_$obj273871_
                               (let ((__tmp279283 (gensym '__obj)))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp279283))))
                          (let _lp273873_ ((_rest273875_ _args273856_)
                                           (_initializers273876_ '()))
                            (let* ((___stx278914278915_ _rest273875_)
                                   (_g273880273901_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         ___stx278914278915_)))))
                              (let ((___kont278916278917_
                                     (lambda (_L273955_ _L273956_ _L273957_)
                                       (let* ((_slot273987_
                                               (keyword->symbol
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L273957_))))
                                              (_off273989_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _klass273852_
                                                  _slot273987_))))
                                         (if _off273989_
                                             (let ((__tmp279285
                                                    (let ((__tmp279286
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _off273989_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L273956_))))
              (declare (not safe))
              (cons __tmp279286 _initializers273876_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_lp273873_
                                                _L273955_
                                                __tmp279285))
                                             (let ((__tmp279284
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self273848_
                                                       __id278799
                                                       __t278798
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _stx273849_
                                                __tmp279284
                                                _slot273987_))))))
                                    (___kont278918278919_
                                     (lambda ()
                                       (let ((__tmp279287
                                              (let ((__tmp279288
                                                     (let ((__tmp279311
                                                            (let ((__tmp279312
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279314
                                  (let ()
                                    (declare (not safe))
                                    (cons _$obj273871_ '())))
                                 (__tmp279313
                                  (let ()
                                    (declare (not safe))
                                    (cons _inline-make-object273858_ '()))))
                             (declare (not safe))
                             (cons __tmp279314 __tmp279313))))
                      (declare (not safe))
                      (cons __tmp279312 '())))
                   (__tmp279289
                    (let ((__tmp279290
                           (let ((__tmp279291
                                  (let ((__tmp279308
                                         (let ((__tmp279309
                                                (let ((__tmp279310
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj273871_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp279310))))
                                           (declare (not safe))
                                           (cons __tmp279309 '())))
                                        (__tmp279292
                                         (let ((__tmp279293
                                                (lambda (_i273915_ _r273916_)
                                                  (let ((__tmp279294
                                                         (let ((__tmp279295
                                                                (let ((__tmp279305
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp279306
                                      (let ((__tmp279307
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _self273848_
                                                __id278799
                                                __t278798
                                                '#f))))
                                        (declare (not safe))
                                        (cons __tmp279307 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp279306)))
                              (__tmp279296
                               (let ((__tmp279302
                                      (let ((__tmp279303
                                             (let ((__tmp279304
                                                    (car _i273915_)))
                                               (declare (not safe))
                                               (cons __tmp279304 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp279303)))
                                     (__tmp279297
                                      (let ((__tmp279300
                                             (let ((__tmp279301
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj273871_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp279301)))
                                            (__tmp279298
                                             (let ((__tmp279299
                                                    (cdr _i273915_)))
                                               (declare (not safe))
                                               (cons __tmp279299 '()))))
                                        (declare (not safe))
                                        (cons __tmp279300 __tmp279298))))
                                 (declare (not safe))
                                 (cons __tmp279302 __tmp279297))))
                          (declare (not safe))
                          (cons __tmp279305 __tmp279296))))
                   (declare (not safe))
                   (cons '%#struct-unchecked-set! __tmp279295))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp279294
                                                          _r273916_)))))
                                           (declare (not safe))
                                           (foldl1 __tmp279293
                                                   '()
                                                   _initializers273876_))))
                                    (declare (not safe))
                                    (foldr1 cons __tmp279308 __tmp279292))))
                             (declare (not safe))
                             (cons '%#begin __tmp279291))))
                      (declare (not safe))
                      (cons __tmp279290 '()))))
               (declare (not safe))
               (cons __tmp279311 __tmp279289))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#let-values
                                                      __tmp279288))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp279287
                                          _stx273849_))))
                                    (___kont278920278921_
                                     (lambda ()
                                       (let ((__tmp279315
                                              (let ((__tmp279316
                                                     (let ((__tmp279330
                                                            (let ((__tmp279331
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279333
                                  (let ()
                                    (declare (not safe))
                                    (cons _$obj273871_ '())))
                                 (__tmp279332
                                  (let ()
                                    (declare (not safe))
                                    (cons _inline-make-object273858_ '()))))
                             (declare (not safe))
                             (cons __tmp279333 __tmp279332))))
                      (declare (not safe))
                      (cons __tmp279331 '())))
                   (__tmp279317
                    (let ((__tmp279318
                           (let ((__tmp279319
                                  (let ((__tmp279323
                                         (let ((__tmp279324
                                                (let ((__tmp279328
                                                       (let ((__tmp279329
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'class-instance-init! '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp279329)))
              (__tmp279325
               (let ((__tmp279326
                      (let ((__tmp279327
                             (let ()
                               (declare (not safe))
                               (cons _$obj273871_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp279327))))
                 (declare (not safe))
                 (cons __tmp279326 _args273856_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp279328
                                                        __tmp279325))))
                                           (declare (not safe))
                                           (cons '%#call __tmp279324)))
                                        (__tmp279320
                                         (let ((__tmp279321
                                                (let ((__tmp279322
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj273871_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp279322))))
                                           (declare (not safe))
                                           (cons __tmp279321 '()))))
                                    (declare (not safe))
                                    (cons __tmp279323 __tmp279320))))
                             (declare (not safe))
                             (cons '%#begin __tmp279319))))
                      (declare (not safe))
                      (cons __tmp279318 '()))))
               (declare (not safe))
               (cons __tmp279330 __tmp279317))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#let-values
                                                      __tmp279316))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp279315
                                          _stx273849_)))))
                                (let* ((_g273878273918_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 ___stx278914278915_))
                                              (___kont278918278919_)
                                              (___kont278920278921_))))
                                       (___match278951278952_
                                        (lambda (_e273887273923_
                                                 _hd273886273926_
                                                 _tl273885273928_
                                                 _e273890273931_
                                                 _hd273889273934_
                                                 _tl273888273936_
                                                 _e273893273939_
                                                 _hd273892273942_
                                                 _tl273891273944_
                                                 _e273896273947_
                                                 _hd273895273950_
                                                 _tl273894273952_)
                                          (let ((_L273955_ _tl273894273952_)
                                                (_L273956_ _hd273895273950_)
                                                (_L273957_ _hd273892273942_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword? _L273957_))
                                                (___kont278916278917_
                                                 _L273955_
                                                 _L273956_
                                                 _L273957_)
                                                (___kont278920278921_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? ___stx278914278915_))
                                      (let ((_e273887273923_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                ___stx278914278915_))))
                                        (let ((_tl273885273928_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e273887273923_)))
                                              (_hd273886273926_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e273887273923_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd273886273926_))
                                              (let ((_e273890273931_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd273886273926_))))
                                                (let ((_tl273888273936_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e273890273931_)))
                                                      (_hd273889273934_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e273890273931_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd273889273934_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _hd273889273934_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl273888273936_))
                      (let ((_e273893273939_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl273888273936_))))
                        (let ((_tl273891273944_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e273893273939_)))
                              (_hd273892273942_
                               (let ()
                                 (declare (not safe))
                                 (##car _e273893273939_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl273891273944_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl273885273928_))
                                  (let ((_e273896273947_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl273885273928_))))
                                    (let ((_tl273894273952_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e273896273947_)))
                                          (_hd273895273950_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e273896273947_))))
                                      (___match278951278952_
                                       _e273887273923_
                                       _hd273886273926_
                                       _tl273885273928_
                                       _e273890273931_
                                       _hd273889273934_
                                       _tl273888273936_
                                       _e273893273939_
                                       _hd273892273942_
                                       _tl273891273944_
                                       _e273896273947_
                                       _hd273895273950_
                                       _tl273894273952_)))
                                  (___kont278920278921_))
                              (___kont278920278921_))))
                      (___kont278920278921_))
                  (___kont278920278921_))
              (___kont278920278921_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont278920278921_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g273878273918_))))))))))))))))
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
      (lambda (_self273671_ _stx273672_ _args273673_)
        (let* ((_g273675273685_
                (lambda (_g273676273682_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g273676273682_))))
               (_g273674273723_
                (lambda (_g273676273688_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g273676273688_))
                      (let ((_e273680273690_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g273676273688_))))
                        (let ((_hd273679273693_
                               (let ()
                                 (declare (not safe))
                                 (##car _e273680273690_)))
                              (_tl273678273695_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e273680273690_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl273678273695_))
                              ((lambda (_L273698_)
                                 (let* ((_klass273709_
                                         (let ((__tmp279415
                                                (##structure-ref
                                                 _self273671_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx273672_
                                            __tmp279415)))
                                        (_field273711_
                                         (let ((__tmp279416
                                                (##structure-ref
                                                 _self273671_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass273709_
                                            __tmp279416)))
                                        (_object273713_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L273698_))))
                                   (if (##structure-ref
                                        _klass273709_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp279493
                                              (let ((__tmp279502
                                                     (if (##structure-ref
                                                          _self273671_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp279494
                                                     (let ((__tmp279499
                                                            (let ((__tmp279500
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279501
                                  (##structure-ref
                                   _self273671_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp279501 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp279500)))
                   (__tmp279495
                    (let ((__tmp279497
                           (let ((__tmp279498
                                  (let ()
                                    (declare (not safe))
                                    (cons _field273711_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp279498)))
                          (__tmp279496
                           (let ()
                             (declare (not safe))
                             (cons _object273713_ '()))))
                      (declare (not safe))
                      (cons __tmp279497 __tmp279496))))
               (declare (not safe))
               (cons __tmp279499 __tmp279495))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp279502
                                                      __tmp279494))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp279493
                                          _stx273672_))
                                       (if (##structure-ref
                                            _klass273709_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp279483
                                                  (let ((__tmp279492
                                                         (if (##structure-ref
                                                              _self273671_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp279484
                                                         (let ((__tmp279489
                                                                (let ((__tmp279490
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp279491
                                      (##structure-ref
                                       _self273671_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp279491 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp279490)))
                       (__tmp279485
                        (let ((__tmp279487
                               (let ((__tmp279488
                                      (let ()
                                        (declare (not safe))
                                        (cons _field273711_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp279488)))
                              (__tmp279486
                               (let ()
                                 (declare (not safe))
                                 (cons _object273713_ '()))))
                          (declare (not safe))
                          (cons __tmp279487 __tmp279486))))
                   (declare (not safe))
                   (cons __tmp279489 __tmp279485))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp279492
                                                          __tmp279484))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp279483
                                              _stx273672_))
                                           (let ((_$e273716_
                                                  (let ((__tmp279417
                                                         (##structure-ref
                                                          _self273671_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass273709_
                                                     __tmp279417))))
                                             (if _$e273716_
                                                 ((lambda (_klass273719_)
                                                    (let ((__tmp279473
                                                           (let ((__tmp279482
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self273671_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp279474
                          (let ((__tmp279479
                                 (let ((__tmp279480
                                        (let ((__tmp279481
                                               (##structure-ref
                                                _self273671_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp279481 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp279480)))
                                (__tmp279475
                                 (let ((__tmp279477
                                        (let ((__tmp279478
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field273711_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp279478)))
                                       (__tmp279476
                                        (let ()
                                          (declare (not safe))
                                          (cons _object273713_ '()))))
                                   (declare (not safe))
                                   (cons __tmp279477 __tmp279476))))
                            (declare (not safe))
                            (cons __tmp279479 __tmp279475))))
                     (declare (not safe))
                     (cons __tmp279482 __tmp279474))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp279473 _stx273672_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e273716_)
                                                 (if (##structure-ref
                                                      _self273671_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp279427
                                                            (let* ((_$obj273721_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp279428 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp279428)))
                           (__tmp279429
                            (let ((__tmp279469
                                   (let ((__tmp279470
                                          (let ((__tmp279472
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj273721_ '())))
                                                (__tmp279471
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object273713_ '()))))
                                            (declare (not safe))
                                            (cons __tmp279472 __tmp279471))))
                                     (declare (not safe))
                                     (cons __tmp279470 '())))
                                  (__tmp279430
                                   (let ((__tmp279431
                                          (let ((__tmp279432
                                                 (let ((__tmp279461
                                                        (let ((__tmp279462
                                                               (let ((__tmp279466
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp279467
                                     (let ((__tmp279468
                                            (##structure-ref
                                             _klass273709_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp279468 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp279467)))
                             (__tmp279463
                              (let ((__tmp279464
                                     (let ((__tmp279465
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj273721_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp279465))))
                                (declare (not safe))
                                (cons __tmp279464 '()))))
                         (declare (not safe))
                         (cons __tmp279466 __tmp279463))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp279462)))
               (__tmp279433
                (let ((__tmp279450
                       (let ((__tmp279451
                              (let ((__tmp279458
                                     (let ((__tmp279459
                                            (let ((__tmp279460
                                                   (##structure-ref
                                                    _self273671_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp279460 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp279459)))
                                    (__tmp279452
                                     (let ((__tmp279456
                                            (let ((__tmp279457
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field273711_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp279457)))
                                           (__tmp279453
                                            (let ((__tmp279454
                                                   (let ((__tmp279455
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj273721_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp279455))))
                                              (declare (not safe))
                                              (cons __tmp279454 '()))))
                                       (declare (not safe))
                                       (cons __tmp279456 __tmp279453))))
                                (declare (not safe))
                                (cons __tmp279458 __tmp279452))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp279451)))
                      (__tmp279434
                       (let ((__tmp279435
                              (let ((__tmp279436
                                     (let ((__tmp279448
                                            (let ((__tmp279449
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp279449)))
                                           (__tmp279437
                                            (let ((__tmp279445
                                                   (let ((__tmp279446
                                                          (let ((__tmp279447
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self273671_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp279447 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp279446)))
                                                  (__tmp279438
                                                   (let ((__tmp279443
                                                          (let ((__tmp279444
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj273721_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp279444)))
                 (__tmp279439
                  (let ((__tmp279440
                         (let ((__tmp279441
                                (let ((__tmp279442
                                       (##structure-ref
                                        _self273671_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp279442 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp279441))))
                    (declare (not safe))
                    (cons __tmp279440 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp279443
                                                           __tmp279439))))
                                              (declare (not safe))
                                              (cons __tmp279445 __tmp279438))))
                                       (declare (not safe))
                                       (cons __tmp279448 __tmp279437))))
                                (declare (not safe))
                                (cons '%#call __tmp279436))))
                         (declare (not safe))
                         (cons __tmp279435 '()))))
                  (declare (not safe))
                  (cons __tmp279450 __tmp279434))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279461
                                                         __tmp279433))))
                                            (declare (not safe))
                                            (cons '%#if __tmp279432))))
                                     (declare (not safe))
                                     (cons __tmp279431 '()))))
                              (declare (not safe))
                              (cons __tmp279469 __tmp279430))))
                      (declare (not safe))
                      (cons '%#let-values __tmp279429))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp279427 _stx273672_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp279418
                                                            (let ((__tmp279419
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279425
                                  (let ((__tmp279426
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp279426)))
                                 (__tmp279420
                                  (let ((__tmp279421
                                         (let ((__tmp279422
                                                (let ((__tmp279423
                                                       (let ((__tmp279424
                                                              (##structure-ref
                                                               _self273671_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp279424
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp279423))))
                                           (declare (not safe))
                                           (cons __tmp279422 '()))))
                                    (declare (not safe))
                                    (cons _object273713_ __tmp279421))))
                             (declare (not safe))
                             (cons __tmp279425 __tmp279420))))
                      (declare (not safe))
                      (cons '%#call __tmp279419))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp279418 _stx273672_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd273679273693_)
                              (let ()
                                (declare (not safe))
                                (_g273675273685_ _g273676273688_)))))
                      (let ()
                        (declare (not safe))
                        (_g273675273685_ _g273676273688_))))))
          (declare (not safe))
          (_g273674273723_ _args273673_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__t278801)
        (let ((__slot278802
               (let ((__tmp278805
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t278801 'slot))))
                 (if __tmp278805 __tmp278805 (error '"Unknown slot" 'slot))))
              (__id278803
               (let ((__tmp278806
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t278801 'id))))
                 (if __tmp278806 __tmp278806 (error '"Unknown slot" 'id))))
              (__checked?278804
               (let ((__tmp278807
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t278801 'checked?))))
                 (if __tmp278807
                     __tmp278807
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self273671_ _stx273672_ _args273673_)
            (let* ((_g273675273685_
                    (lambda (_g273676273682_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g273676273682_))))
                   (_g273674273723_
                    (lambda (_g273676273688_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g273676273688_))
                          (let ((_e273680273690_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g273676273688_))))
                            (let ((_hd273679273693_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e273680273690_)))
                                  (_tl273678273695_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e273680273690_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl273678273695_))
                                  ((lambda (_L273698_)
                                     (let* ((_klass273709_
                                             (let ((__tmp279503
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self273671_
                                                       __id278803
                                                       __t278801
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx273672_
                                                __tmp279503)))
                                            (_field273711_
                                             (let ((__tmp279504
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self273671_
                                                       __slot278802
                                                       __t278801
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass273709_
                                                __tmp279504)))
                                            (_object273713_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L273698_))))
                                       (if (##structure-ref
                                            _klass273709_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp279581
                                                  (let ((__tmp279590
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self273671_
                        __checked?278804
                        __t278801
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp279582
                 (let ((__tmp279587
                        (let ((__tmp279588
                               (let ((__tmp279589
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self273671_
                                         __id278803
                                         __t278801
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp279589 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp279588)))
                       (__tmp279583
                        (let ((__tmp279585
                               (let ((__tmp279586
                                      (let ()
                                        (declare (not safe))
                                        (cons _field273711_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp279586)))
                              (__tmp279584
                               (let ()
                                 (declare (not safe))
                                 (cons _object273713_ '()))))
                          (declare (not safe))
                          (cons __tmp279585 __tmp279584))))
                   (declare (not safe))
                   (cons __tmp279587 __tmp279583))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp279590
                                                          __tmp279582))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp279581
                                              _stx273672_))
                                           (if (##structure-ref
                                                _klass273709_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp279571
                                                      (let ((__tmp279580
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self273671_
                            __checked?278804
                            __t278801
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp279572
                     (let ((__tmp279577
                            (let ((__tmp279578
                                   (let ((__tmp279579
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self273671_
                                             __id278803
                                             __t278801
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp279579 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp279578)))
                           (__tmp279573
                            (let ((__tmp279575
                                   (let ((__tmp279576
                                          (let ()
                                            (declare (not safe))
                                            (cons _field273711_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp279576)))
                                  (__tmp279574
                                   (let ()
                                     (declare (not safe))
                                     (cons _object273713_ '()))))
                              (declare (not safe))
                              (cons __tmp279575 __tmp279574))))
                       (declare (not safe))
                       (cons __tmp279577 __tmp279573))))
                (declare (not safe))
                (cons __tmp279580 __tmp279572))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp279571
                                                  _stx273672_))
                                               (let ((_$e273716_
                                                      (let ((__tmp279505
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self273671_
                        __slot278802
                        __t278801
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass273709_ __tmp279505))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e273716_
                                                     ((lambda (_klass273719_)
                                                        (let ((__tmp279561
                                                               (let ((__tmp279570
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self273671_
                                     __checked?278804
                                     __t278801
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp279562
                              (let ((__tmp279567
                                     (let ((__tmp279568
                                            (let ((__tmp279569
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self273671_
                                                      __id278803
                                                      __t278801
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp279569 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp279568)))
                                    (__tmp279563
                                     (let ((__tmp279565
                                            (let ((__tmp279566
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field273711_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp279566)))
                                           (__tmp279564
                                            (let ()
                                              (declare (not safe))
                                              (cons _object273713_ '()))))
                                       (declare (not safe))
                                       (cons __tmp279565 __tmp279564))))
                                (declare (not safe))
                                (cons __tmp279567 __tmp279563))))
                         (declare (not safe))
                         (cons __tmp279570 __tmp279562))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp279561 _stx273672_)))
              _$e273716_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self273671_
                                                            __checked?278804
                                                            __t278801
                                                            '#f))
                                                         (let ((__tmp279515
                                                                (let* ((_$obj273721_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp279516 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp279516)))
                               (__tmp279517
                                (let ((__tmp279557
                                       (let ((__tmp279558
                                              (let ((__tmp279560
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj273721_
                                                             '())))
                                                    (__tmp279559
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object273713_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp279560
                                                      __tmp279559))))
                                         (declare (not safe))
                                         (cons __tmp279558 '())))
                                      (__tmp279518
                                       (let ((__tmp279519
                                              (let ((__tmp279520
                                                     (let ((__tmp279549
                                                            (let ((__tmp279550
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279554
                                  (let ((__tmp279555
                                         (let ((__tmp279556
                                                (##structure-ref
                                                 _klass273709_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp279556 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp279555)))
                                 (__tmp279551
                                  (let ((__tmp279552
                                         (let ((__tmp279553
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj273721_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp279553))))
                                    (declare (not safe))
                                    (cons __tmp279552 '()))))
                             (declare (not safe))
                             (cons __tmp279554 __tmp279551))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp279550)))
                   (__tmp279521
                    (let ((__tmp279538
                           (let ((__tmp279539
                                  (let ((__tmp279546
                                         (let ((__tmp279547
                                                (let ((__tmp279548
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self273671_
                                                          __id278803
                                                          __t278801
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp279548 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp279547)))
                                        (__tmp279540
                                         (let ((__tmp279544
                                                (let ((__tmp279545
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field273711_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp279545)))
                                               (__tmp279541
                                                (let ((__tmp279542
                                                       (let ((__tmp279543
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj273721_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp279543))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp279542 '()))))
                                           (declare (not safe))
                                           (cons __tmp279544 __tmp279541))))
                                    (declare (not safe))
                                    (cons __tmp279546 __tmp279540))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp279539)))
                          (__tmp279522
                           (let ((__tmp279523
                                  (let ((__tmp279524
                                         (let ((__tmp279536
                                                (let ((__tmp279537
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp279537)))
                                               (__tmp279525
                                                (let ((__tmp279533
                                                       (let ((__tmp279534
                                                              (let ((__tmp279535
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self273671_
                                __id278803
                                __t278801
                                '#f))))
                        (declare (not safe))
                        (cons __tmp279535 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp279534)))
              (__tmp279526
               (let ((__tmp279531
                      (let ((__tmp279532
                             (let ()
                               (declare (not safe))
                               (cons _$obj273721_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp279532)))
                     (__tmp279527
                      (let ((__tmp279528
                             (let ((__tmp279529
                                    (let ((__tmp279530
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self273671_
                                              __slot278802
                                              __t278801
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp279530 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp279529))))
                        (declare (not safe))
                        (cons __tmp279528 '()))))
                 (declare (not safe))
                 (cons __tmp279531 __tmp279527))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp279533
                                                        __tmp279526))))
                                           (declare (not safe))
                                           (cons __tmp279536 __tmp279525))))
                                    (declare (not safe))
                                    (cons '%#call __tmp279524))))
                             (declare (not safe))
                             (cons __tmp279523 '()))))
                      (declare (not safe))
                      (cons __tmp279538 __tmp279522))))
               (declare (not safe))
               (cons __tmp279549 __tmp279521))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp279520))))
                                         (declare (not safe))
                                         (cons __tmp279519 '()))))
                                  (declare (not safe))
                                  (cons __tmp279557 __tmp279518))))
                          (declare (not safe))
                          (cons '%#let-values __tmp279517))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp279515 _stx273672_))
                 (let ((__tmp279506
                        (let ((__tmp279507
                               (let ((__tmp279513
                                      (let ((__tmp279514
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp279514)))
                                     (__tmp279508
                                      (let ((__tmp279509
                                             (let ((__tmp279510
                                                    (let ((__tmp279511
                                                           (let ((__tmp279512
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self273671_
                             __slot278802
                             __t278801
                             '#f))))
                     (declare (not safe))
                     (cons __tmp279512 '()))))
              (declare (not safe))
              (cons '%#quote __tmp279511))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp279510 '()))))
                                        (declare (not safe))
                                        (cons _object273713_ __tmp279509))))
                                 (declare (not safe))
                                 (cons __tmp279513 __tmp279508))))
                          (declare (not safe))
                          (cons '%#call __tmp279507))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp279506 _stx273672_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd273679273693_)
                                  (let ()
                                    (declare (not safe))
                                    (_g273675273685_ _g273676273688_)))))
                          (let ()
                            (declare (not safe))
                            (_g273675273685_ _g273676273688_))))))
              (declare (not safe))
              (_g273674273723_ _args273673_))))))
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
      (lambda (_self273476_ _stx273477_ _args273478_)
        (let* ((_g273480273494_
                (lambda (_g273481273491_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g273481273491_))))
               (_g273479273546_
                (lambda (_g273481273497_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g273481273497_))
                      (let ((_e273486273499_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g273481273497_))))
                        (let ((_hd273485273502_
                               (let ()
                                 (declare (not safe))
                                 (##car _e273486273499_)))
                              (_tl273484273504_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e273486273499_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl273484273504_))
                              (let ((_e273489273507_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl273484273504_))))
                                (let ((_hd273488273510_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e273489273507_)))
                                      (_tl273487273512_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e273489273507_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl273487273512_))
                                      ((lambda (_L273515_ _L273516_)
                                         (let* ((_klass273530_
                                                 (let ((__tmp279591
                                                        (##structure-ref
                                                         _self273476_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx273477_
                                                    __tmp279591)))
                                                (_field273532_
                                                 (let ((__tmp279592
                                                        (##structure-ref
                                                         _self273476_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass273530_
                                                    __tmp279592)))
                                                (_object273534_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L273516_)))
                                                (_value273536_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L273515_))))
                                           (if (##structure-ref
                                                _klass273530_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp279674
                                                      (let ((__tmp279684
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self273476_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp279675
                     (let ((__tmp279681
                            (let ((__tmp279682
                                   (let ((__tmp279683
                                          (##structure-ref
                                           _self273476_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp279683 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp279682)))
                           (__tmp279676
                            (let ((__tmp279679
                                   (let ((__tmp279680
                                          (let ()
                                            (declare (not safe))
                                            (cons _field273532_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp279680)))
                                  (__tmp279677
                                   (let ((__tmp279678
                                          (let ()
                                            (declare (not safe))
                                            (cons _value273536_ '()))))
                                     (declare (not safe))
                                     (cons _object273534_ __tmp279678))))
                              (declare (not safe))
                              (cons __tmp279679 __tmp279677))))
                       (declare (not safe))
                       (cons __tmp279681 __tmp279676))))
                (declare (not safe))
                (cons __tmp279684 __tmp279675))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp279674
                                                  _stx273477_))
                                               (if (##structure-ref
                                                    _klass273530_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp279663
                                                          (let ((__tmp279673
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self273476_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp279664
                         (let ((__tmp279670
                                (let ((__tmp279671
                                       (let ((__tmp279672
                                              (##structure-ref
                                               _self273476_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp279672 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp279671)))
                               (__tmp279665
                                (let ((__tmp279668
                                       (let ((__tmp279669
                                              (let ()
                                                (declare (not safe))
                                                (cons _field273532_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp279669)))
                                      (__tmp279666
                                       (let ((__tmp279667
                                              (let ()
                                                (declare (not safe))
                                                (cons _value273536_ '()))))
                                         (declare (not safe))
                                         (cons _object273534_ __tmp279667))))
                                  (declare (not safe))
                                  (cons __tmp279668 __tmp279666))))
                           (declare (not safe))
                           (cons __tmp279670 __tmp279665))))
                    (declare (not safe))
                    (cons __tmp279673 __tmp279664))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp279663
                                                      _stx273477_))
                                                   (let ((_$e273539_
                                                          (let ((__tmp279593
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self273476_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass273530_ __tmp279593))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e273539_
                                                         ((lambda (_klass273542_)
                                                            (let ((__tmp279652
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279662
                                  (if (##structure-ref
                                       _self273476_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp279653
                                  (let ((__tmp279659
                                         (let ((__tmp279660
                                                (let ((__tmp279661
                                                       (##structure-ref
                                                        _self273476_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp279661 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp279660)))
                                        (__tmp279654
                                         (let ((__tmp279657
                                                (let ((__tmp279658
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field273532_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp279658)))
                                               (__tmp279655
                                                (let ((__tmp279656
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value273536_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object273534_
                                                        __tmp279656))))
                                           (declare (not safe))
                                           (cons __tmp279657 __tmp279655))))
                                    (declare (not safe))
                                    (cons __tmp279659 __tmp279654))))
                             (declare (not safe))
                             (cons __tmp279662 __tmp279653))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp279652 _stx273477_)))
                  _$e273539_)
                 (if (##structure-ref _self273476_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp279604
                            (let* ((_$obj273544_
                                    (let ((__tmp279605 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp279605)))
                                   (__tmp279606
                                    (let ((__tmp279648
                                           (let ((__tmp279649
                                                  (let ((__tmp279651
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj273544_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp279650
                 (let () (declare (not safe)) (cons _object273534_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp279651
                                                          __tmp279650))))
                                             (declare (not safe))
                                             (cons __tmp279649 '())))
                                          (__tmp279607
                                           (let ((__tmp279608
                                                  (let ((__tmp279609
                                                         (let ((__tmp279640
                                                                (let ((__tmp279641
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp279645
                                      (let ((__tmp279646
                                             (let ((__tmp279647
                                                    (##structure-ref
                                                     _klass273530_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp279647 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp279646)))
                                     (__tmp279642
                                      (let ((__tmp279643
                                             (let ((__tmp279644
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj273544_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp279644))))
                                        (declare (not safe))
                                        (cons __tmp279643 '()))))
                                 (declare (not safe))
                                 (cons __tmp279645 __tmp279642))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp279641)))
                       (__tmp279610
                        (let ((__tmp279628
                               (let ((__tmp279629
                                      (let ((__tmp279637
                                             (let ((__tmp279638
                                                    (let ((__tmp279639
                                                           (##structure-ref
                                                            _self273476_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp279639 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp279638)))
                                            (__tmp279630
                                             (let ((__tmp279635
                                                    (let ((__tmp279636
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field273532_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp279636)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp279631
                                                    (let ((__tmp279633
                                                           (let ((__tmp279634
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj273544_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp279634)))
                  (__tmp279632
                   (let () (declare (not safe)) (cons _value273536_ '()))))
              (declare (not safe))
              (cons __tmp279633 __tmp279632))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp279635
                                                     __tmp279631))))
                                        (declare (not safe))
                                        (cons __tmp279637 __tmp279630))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp279629)))
                              (__tmp279611
                               (let ((__tmp279612
                                      (let ((__tmp279613
                                             (let ((__tmp279626
                                                    (let ((__tmp279627
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp279627)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp279614
                                                    (let ((__tmp279623
                                                           (let ((__tmp279624
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp279625
                                 (##structure-ref
                                  _self273476_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp279625 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp279624)))
                  (__tmp279615
                   (let ((__tmp279621
                          (let ((__tmp279622
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj273544_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp279622)))
                         (__tmp279616
                          (let ((__tmp279618
                                 (let ((__tmp279619
                                        (let ((__tmp279620
                                               (##structure-ref
                                                _self273476_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp279620 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp279619)))
                                (__tmp279617
                                 (let ()
                                   (declare (not safe))
                                   (cons _value273536_ '()))))
                            (declare (not safe))
                            (cons __tmp279618 __tmp279617))))
                     (declare (not safe))
                     (cons __tmp279621 __tmp279616))))
              (declare (not safe))
              (cons __tmp279623 __tmp279615))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp279626
                                                     __tmp279614))))
                                        (declare (not safe))
                                        (cons '%#call __tmp279613))))
                                 (declare (not safe))
                                 (cons __tmp279612 '()))))
                          (declare (not safe))
                          (cons __tmp279628 __tmp279611))))
                   (declare (not safe))
                   (cons __tmp279640 __tmp279610))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp279609))))
                                             (declare (not safe))
                                             (cons __tmp279608 '()))))
                                      (declare (not safe))
                                      (cons __tmp279648 __tmp279607))))
                              (declare (not safe))
                              (cons '%#let-values __tmp279606))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp279604 _stx273477_))
                     (let ((__tmp279594
                            (let ((__tmp279595
                                   (let ((__tmp279602
                                          (let ((__tmp279603
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp279603)))
                                         (__tmp279596
                                          (let ((__tmp279597
                                                 (let ((__tmp279599
                                                        (let ((__tmp279600
                                                               (let ((__tmp279601
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self273476_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp279601 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp279600)))
               (__tmp279598
                (let () (declare (not safe)) (cons _value273536_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279599
                                                         __tmp279598))))
                                            (declare (not safe))
                                            (cons _object273534_
                                                  __tmp279597))))
                                     (declare (not safe))
                                     (cons __tmp279602 __tmp279596))))
                              (declare (not safe))
                              (cons '%#call __tmp279595))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp279594 _stx273477_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd273488273510_
                                       _hd273485273502_)
                                      (let ()
                                        (declare (not safe))
                                        (_g273480273494_ _g273481273497_)))))
                              (let ()
                                (declare (not safe))
                                (_g273480273494_ _g273481273497_)))))
                      (let ()
                        (declare (not safe))
                        (_g273480273494_ _g273481273497_))))))
          (declare (not safe))
          (_g273479273546_ _args273478_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__t278808)
        (let ((__slot278809
               (let ((__tmp278812
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t278808 'slot))))
                 (if __tmp278812 __tmp278812 (error '"Unknown slot" 'slot))))
              (__id278810
               (let ((__tmp278813
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t278808 'id))))
                 (if __tmp278813 __tmp278813 (error '"Unknown slot" 'id))))
              (__checked?278811
               (let ((__tmp278814
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t278808 'checked?))))
                 (if __tmp278814
                     __tmp278814
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self273476_ _stx273477_ _args273478_)
            (let* ((_g273480273494_
                    (lambda (_g273481273491_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g273481273491_))))
                   (_g273479273546_
                    (lambda (_g273481273497_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g273481273497_))
                          (let ((_e273486273499_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g273481273497_))))
                            (let ((_hd273485273502_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e273486273499_)))
                                  (_tl273484273504_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e273486273499_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl273484273504_))
                                  (let ((_e273489273507_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl273484273504_))))
                                    (let ((_hd273488273510_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e273489273507_)))
                                          (_tl273487273512_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e273489273507_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl273487273512_))
                                          ((lambda (_L273515_ _L273516_)
                                             (let* ((_klass273530_
                                                     (let ((__tmp279685
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self273476_
                                                               __id278810
                                                               __t278808
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx273477_
                                                        __tmp279685)))
                                                    (_field273532_
                                                     (let ((__tmp279686
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self273476_
                                                               __slot278809
                                                               __t278808
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass273530_
                                                        __tmp279686)))
                                                    (_object273534_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L273516_)))
                                                    (_value273536_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L273515_))))
                                               (if (##structure-ref
                                                    _klass273530_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp279768
                                                          (let ((__tmp279778
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self273476_
                                __checked?278811
                                __t278808
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp279769
                         (let ((__tmp279775
                                (let ((__tmp279776
                                       (let ((__tmp279777
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self273476_
                                                 __id278810
                                                 __t278808
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp279777 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp279776)))
                               (__tmp279770
                                (let ((__tmp279773
                                       (let ((__tmp279774
                                              (let ()
                                                (declare (not safe))
                                                (cons _field273532_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp279774)))
                                      (__tmp279771
                                       (let ((__tmp279772
                                              (let ()
                                                (declare (not safe))
                                                (cons _value273536_ '()))))
                                         (declare (not safe))
                                         (cons _object273534_ __tmp279772))))
                                  (declare (not safe))
                                  (cons __tmp279773 __tmp279771))))
                           (declare (not safe))
                           (cons __tmp279775 __tmp279770))))
                    (declare (not safe))
                    (cons __tmp279778 __tmp279769))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp279768
                                                      _stx273477_))
                                                   (if (##structure-ref
                                                        _klass273530_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp279757
                                                              (let ((__tmp279767
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self273476_
                                    __checked?278811
                                    __t278808
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp279758
                             (let ((__tmp279764
                                    (let ((__tmp279765
                                           (let ((__tmp279766
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self273476_
                                                     __id278810
                                                     __t278808
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp279766 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp279765)))
                                   (__tmp279759
                                    (let ((__tmp279762
                                           (let ((__tmp279763
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field273532_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp279763)))
                                          (__tmp279760
                                           (let ((__tmp279761
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value273536_ '()))))
                                             (declare (not safe))
                                             (cons _object273534_
                                                   __tmp279761))))
                                      (declare (not safe))
                                      (cons __tmp279762 __tmp279760))))
                               (declare (not safe))
                               (cons __tmp279764 __tmp279759))))
                        (declare (not safe))
                        (cons __tmp279767 __tmp279758))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp279757 _stx273477_))
               (let ((_$e273539_
                      (let ((__tmp279687
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self273476_
                                __slot278809
                                __t278808
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass273530_
                         __tmp279687))))
                 (if _$e273539_
                     ((lambda (_klass273542_)
                        (let ((__tmp279746
                               (let ((__tmp279756
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self273476_
                                             __checked?278811
                                             __t278808
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp279747
                                      (let ((__tmp279753
                                             (let ((__tmp279754
                                                    (let ((__tmp279755
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self273476_
                                                              __id278810
                                                              __t278808
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp279755 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp279754)))
                                            (__tmp279748
                                             (let ((__tmp279751
                                                    (let ((__tmp279752
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field273532_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp279752)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp279749
                                                    (let ((__tmp279750
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value273536_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object273534_ __tmp279750))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp279751
                                                     __tmp279749))))
                                        (declare (not safe))
                                        (cons __tmp279753 __tmp279748))))
                                 (declare (not safe))
                                 (cons __tmp279756 __tmp279747))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp279746 _stx273477_)))
                      _$e273539_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self273476_
                            __checked?278811
                            __t278808
                            '#f))
                         (let ((__tmp279698
                                (let* ((_$obj273544_
                                        (let ((__tmp279699 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp279699)))
                                       (__tmp279700
                                        (let ((__tmp279742
                                               (let ((__tmp279743
                                                      (let ((__tmp279745
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj273544_ '())))
                    (__tmp279744
                     (let () (declare (not safe)) (cons _object273534_ '()))))
                (declare (not safe))
                (cons __tmp279745 __tmp279744))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp279743 '())))
                                              (__tmp279701
                                               (let ((__tmp279702
                                                      (let ((__tmp279703
                                                             (let ((__tmp279734
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp279735
                                   (let ((__tmp279739
                                          (let ((__tmp279740
                                                 (let ((__tmp279741
                                                        (##structure-ref
                                                         _klass273530_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp279741 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp279740)))
                                         (__tmp279736
                                          (let ((__tmp279737
                                                 (let ((__tmp279738
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj273544_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp279738))))
                                            (declare (not safe))
                                            (cons __tmp279737 '()))))
                                     (declare (not safe))
                                     (cons __tmp279739 __tmp279736))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp279735)))
                           (__tmp279704
                            (let ((__tmp279722
                                   (let ((__tmp279723
                                          (let ((__tmp279731
                                                 (let ((__tmp279732
                                                        (let ((__tmp279733
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self273476_
                          __id278810
                          __t278808
                          '#f))))
                  (declare (not safe))
                  (cons __tmp279733 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp279732)))
                                                (__tmp279724
                                                 (let ((__tmp279729
                                                        (let ((__tmp279730
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field273532_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp279730)))
               (__tmp279725
                (let ((__tmp279727
                       (let ((__tmp279728
                              (let ()
                                (declare (not safe))
                                (cons _$obj273544_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp279728)))
                      (__tmp279726
                       (let () (declare (not safe)) (cons _value273536_ '()))))
                  (declare (not safe))
                  (cons __tmp279727 __tmp279726))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279729
                                                         __tmp279725))))
                                            (declare (not safe))
                                            (cons __tmp279731 __tmp279724))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp279723)))
                                  (__tmp279705
                                   (let ((__tmp279706
                                          (let ((__tmp279707
                                                 (let ((__tmp279720
                                                        (let ((__tmp279721
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp279721)))
               (__tmp279708
                (let ((__tmp279717
                       (let ((__tmp279718
                              (let ((__tmp279719
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self273476_
                                        __id278810
                                        __t278808
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp279719 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp279718)))
                      (__tmp279709
                       (let ((__tmp279715
                              (let ((__tmp279716
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj273544_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp279716)))
                             (__tmp279710
                              (let ((__tmp279712
                                     (let ((__tmp279713
                                            (let ((__tmp279714
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self273476_
                                                      __slot278809
                                                      __t278808
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp279714 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp279713)))
                                    (__tmp279711
                                     (let ()
                                       (declare (not safe))
                                       (cons _value273536_ '()))))
                                (declare (not safe))
                                (cons __tmp279712 __tmp279711))))
                         (declare (not safe))
                         (cons __tmp279715 __tmp279710))))
                  (declare (not safe))
                  (cons __tmp279717 __tmp279709))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279720
                                                         __tmp279708))))
                                            (declare (not safe))
                                            (cons '%#call __tmp279707))))
                                     (declare (not safe))
                                     (cons __tmp279706 '()))))
                              (declare (not safe))
                              (cons __tmp279722 __tmp279705))))
                       (declare (not safe))
                       (cons __tmp279734 __tmp279704))))
                (declare (not safe))
                (cons '%#if __tmp279703))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp279702 '()))))
                                          (declare (not safe))
                                          (cons __tmp279742 __tmp279701))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp279700))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp279698 _stx273477_))
                         (let ((__tmp279688
                                (let ((__tmp279689
                                       (let ((__tmp279696
                                              (let ((__tmp279697
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp279697)))
                                             (__tmp279690
                                              (let ((__tmp279691
                                                     (let ((__tmp279693
                                                            (let ((__tmp279694
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279695
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self273476_
                                     __slot278809
                                     __t278808
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp279695 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp279694)))
                   (__tmp279692
                    (let () (declare (not safe)) (cons _value273536_ '()))))
               (declare (not safe))
               (cons __tmp279693 __tmp279692))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object273534_
                                                      __tmp279691))))
                                         (declare (not safe))
                                         (cons __tmp279696 __tmp279690))))
                                  (declare (not safe))
                                  (cons '%#call __tmp279689))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp279688
                            _stx273477_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd273488273510_
                                           _hd273485273502_)
                                          (let ()
                                            (declare (not safe))
                                            (_g273480273494_
                                             _g273481273497_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g273480273494_ _g273481273497_)))))
                          (let ()
                            (declare (not safe))
                            (_g273480273494_ _g273481273497_))))))
              (declare (not safe))
              (_g273479273546_ _args273478_))))))
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
      (lambda (_self273310_ _stx273311_ _args273312_)
        (let* ((_self273313273322_ _self273310_)
               (_E273315273326_
                (lambda () (error '"No clause matching" _self273313273322_)))
               (_K273316273333_
                (lambda (_inline273329_ _dispatch273330_ _arity273331_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self273310_ _args273312_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx273311_
                         _arity273331_)))
                  (if _inline273329_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp279784
                               (let ((__tmp279785
                                      (_inline273329_ _stx273311_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp279785
                                  _stx273311_))))
                          (declare (not safe))
                          (gxc#compile-e__0 __tmp279784)))
                      (if _dispatch273330_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch273330_))
                            (let ((__tmp279779
                                   (let ((__tmp279780
                                          (let ((__tmp279781
                                                 (let ((__tmp279782
                                                        (let ((__tmp279783
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch273330_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp279783))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279782
                                                         _args273312_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp279781))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp279780
                                      _stx273311_))))
                              (declare (not safe))
                              (gxc#compile-e__0 __tmp279779)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _stx273311_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self273313273322_ 'gxc#!lambda::t))
              (let* ((_e273317273336_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273313273322_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e273318273339_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273313273322_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity273342_ _e273318273339_)
                     (_e273319273344_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273313273322_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch273347_ _e273319273344_)
                     (_e273320273349_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273313273322_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline273352_ _e273320273349_))
                (declare (not safe))
                (_K273316273333_
                 _inline273352_
                 _dispatch273347_
                 _arity273342_))
              (let () (declare (not safe)) (_E273315273326_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self273149_ _stx273150_ _args273151_)
        (let* ((_self273152273159_ _self273149_)
               (_E273154273163_
                (lambda () (error '"No clause matching" _self273152273159_)))
               (_K273155273177_
                (lambda (_clauses273166_)
                  (let ((_$e273172_
                         (let ((__tmp279786
                                (lambda (_g273167273169_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g273167273169_
                                     _args273151_)))))
                           (declare (not safe))
                           (find __tmp279786 _clauses273166_))))
                    (if _$e273172_
                        ((lambda (_clause273175_)
                           (let ((__method279083
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause273175_
                                     'optimize-call))))
                             (if __method279083
                                 (__method279083
                                  _clause273175_
                                  _stx273150_
                                  _args273151_)
                                 (error '"Missing method"
                                        _clause273175_
                                        'optimize-call))))
                         _$e273172_)
                        (let ((__tmp279787
                               (map gxc#!lambda-arity _clauses273166_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx273150_
                           __tmp279787)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self273152273159_
                 'gxc#!case-lambda::t))
              (let* ((_e273156273180_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273152273159_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e273157273183_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273152273159_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses273186_ _e273157273183_))
                (declare (not safe))
                (_K273155273177_ _clauses273186_))
              (let () (declare (not safe)) (_E273154273163_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self272963_ _args272964_)
        (let* ((_self272965272972_ _self272963_)
               (_E272967272976_
                (lambda () (error '"No clause matching" _self272965272972_)))
               (_K272968273016_
                (lambda (_arity272979_)
                  (let* ((_arity272980272989_ _arity272979_)
                         (_E272983272993_
                          (lambda ()
                            (error '"No clause matching"
                                   _arity272980272989_))))
                    (let ((_K272987273013_
                           (lambda ()
                             (fx= (length _args272964_) _arity272979_)))
                          (_K272984272999_
                           (lambda (_arity272997_)
                             (fx>= (length _args272964_) _arity272997_))))
                      (let ((_try-match272982273009_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity272980272989_))
                                   (let ((_tl272986273004_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity272980272989_)))
                                         (_hd272985273002_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity272980272989_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl272986273004_))
                                         (let ((_arity273007_
                                                _hd272985273002_))
                                           (declare (not safe))
                                           (_K272984272999_ _arity273007_))
                                         (let ()
                                           (declare (not safe))
                                           (_E272983272993_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E272983272993_))))))
                        (if (fixnum? _arity272980272989_)
                            (let () (declare (not safe)) (_K272987273013_))
                            (let ()
                              (declare (not safe))
                              (_try-match272982273009_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self272965272972_ 'gxc#!lambda::t))
              (let* ((_e272969273019_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272965272972_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e272970273022_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272965272972_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity273025_ _e272970273022_))
                (declare (not safe))
                (_K272968273016_ _arity273025_))
              (let () (declare (not safe)) (_E272967272976_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self272848_ _stx272849_ _args272850_)
        (let* ((_self272851272859_ _self272848_)
               (_E272853272863_
                (lambda () (error '"No clause matching" _self272851272859_)))
               (_K272854272947_
                (lambda (_dispatch272866_ _table272867_)
                  (let* ((_g272868272877_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch272866_)))
                         (_else272870272885_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch272866_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _stx272849_))))
                         (_K272872272931_
                          (lambda (_main272888_ _keys272889_)
                            (let ((_g279788_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx272849_
                                      _args272850_))))
                              (begin
                                (let ((_g279789_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g279788_)
                                             (##vector-length _g279788_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g279789_ 2)))
                                      (error "Context expects 2 values"
                                             _g279789_)))
                                (let ((_pargs272891_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g279788_ 0)))
                                      (_kwargs272892_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g279788_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main272888_))
                                    (if _table272867_
                                        (let ((_xargs272899_
                                               (map (lambda (_key272894_)
                                                      (let ((_$e272896_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _key272894_ _kwargs272892_))))
                (if _$e272896_ (values _$e272896_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys272889_)))
                                          (for-each
                                           (lambda (_kw272901_)
                                             (if (memq (car _kw272901_)
                                                       _keys272889_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx272849_
                                                    _keys272889_
                                                    _kw272901_))))
                                           _kwargs272892_)
                                          (let ((__tmp279841
                                                 (let ((__tmp279842
                                                        (let ((__tmp279843
                                                               (let ((__tmp279848
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp279849
                                     (let ()
                                       (declare (not safe))
                                       (cons _main272888_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp279849)))
                             (__tmp279844
                              (let ((__tmp279846
                                     (let ((__tmp279847
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp279847)))
                                    (__tmp279845
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs272891_
                                               _xargs272899_))))
                                (declare (not safe))
                                (cons __tmp279846 __tmp279845))))
                         (declare (not safe))
                         (cons __tmp279848 __tmp279844))))
                  (declare (not safe))
                  (cons '%#call __tmp279843))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp279842
                                                    _stx272849_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0 __tmp279841)))
                                        (let* ((_kwt272903_
                                                (let ((__tmp279790
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp279790)))
                                               (_kwvars272906_
                                                (map (lambda (_g279791_)
                                                       (let ((__tmp279792
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp279792)))
                                                     _kwargs272892_))
                                               (_kwbind272911_
                                                (map (lambda (_kw272908_
                                                              _kwvar272909_)
                                                       (let ((__tmp279795
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar272909_ '())))
                     (__tmp279793
                      (let ((__tmp279794 (cdr _kw272908_)))
                        (declare (not safe))
                        (cons __tmp279794 '()))))
                 (declare (not safe))
                 (cons __tmp279795 __tmp279793)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs272892_
                                                     _kwvars272906_))
                                               (_kwset272916_
                                                (map (lambda (_kw272913_
                                                              _kwvar272914_)
                                                       (let ((__tmp279796
                                                              (let ((__tmp279797
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp279805
                                    (let ((__tmp279806
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt272903_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp279806)))
                                   (__tmp279798
                                    (let ((__tmp279802
                                           (let ((__tmp279803
                                                  (let ((__tmp279804
                                                         (car _kw272913_)))
                                                    (declare (not safe))
                                                    (cons __tmp279804 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp279803)))
                                          (__tmp279799
                                           (let ((__tmp279800
                                                  (let ((__tmp279801
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar272914_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp279801))))
                                             (declare (not safe))
                                             (cons __tmp279800 '()))))
                                      (declare (not safe))
                                      (cons __tmp279802 __tmp279799))))
                               (declare (not safe))
                               (cons __tmp279805 __tmp279798))))
                        (declare (not safe))
                        (cons '(%#ref hash-put!) __tmp279797))))
                 (declare (not safe))
                 (cons '%#call __tmp279796)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs272892_
                                                     _kwvars272906_))
                                               (_xkwargs272921_
                                                (map (lambda (_kw272918_
                                                              _kwvar272919_)
                                                       (let ((__tmp279809
                                                              (car _kw272918_))
                                                             (__tmp279807
                                                              (let ((__tmp279808
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar272919_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp279808))))
                 (declare (not safe))
                 (cons __tmp279809 __tmp279807)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs272892_
                                                     _kwvars272906_))
                                               (_xargs272928_
                                                (map (lambda (_key272923_)
                                                       (let ((_$e272925_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq _key272923_ _xkwargs272921_))))
                 (if _$e272925_ (values _$e272925_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys272889_)))
                                          (let ((__tmp279810
                                                 (let ((__tmp279811
                                                        (let ((__tmp279812
                                                               (let ((__tmp279813
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp279814
                                     (let ((__tmp279815
                                            (let ((__tmp279829
                                                   (let ((__tmp279830
                                                          (let ((__tmp279840
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt272903_ '())))
                        (__tmp279831
                         (let ((__tmp279832
                                (let ((__tmp279833
                                       (let ((__tmp279834
                                              (let ((__tmp279835
                                                     (let ((__tmp279836
                                                            (let ((__tmp279837
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279838
                                  (let ((__tmp279839 (length _kwargs272892_)))
                                    (declare (not safe))
                                    (cons __tmp279839 '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp279838))))
                      (declare (not safe))
                      (cons __tmp279837 '()))))
               (declare (not safe))
               (cons '(%#quote size:) __tmp279836))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-hash-table-eq)
                                                      __tmp279835))))
                                         (declare (not safe))
                                         (cons '%#call __tmp279834))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp279833
                                   _stx272849_))))
                           (declare (not safe))
                           (cons __tmp279832 '()))))
                    (declare (not safe))
                    (cons __tmp279840 __tmp279831))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp279830 '())))
                                                  (__tmp279816
                                                   (let ((__tmp279817
                                                          (let ((__tmp279818
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp279819
                                (let ((__tmp279820
                                       (let ((__tmp279821
                                              (let ((__tmp279822
                                                     (let ((__tmp279827
                                                            (let ((__tmp279828
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main272888_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp279828)))
                   (__tmp279823
                    (let ((__tmp279825
                           (let ((__tmp279826
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt272903_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp279826)))
                          (__tmp279824
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs272891_ _xargs272928_))))
                      (declare (not safe))
                      (cons __tmp279825 __tmp279824))))
               (declare (not safe))
               (cons __tmp279827 __tmp279823))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp279822))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp279821
                                          _stx272849_))))
                                  (declare (not safe))
                                  (cons __tmp279820 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp279819 _kwset272916_))))
                    (declare (not safe))
                    (cons '%#begin __tmp279818))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp279817 '()))))
                                              (declare (not safe))
                                              (cons __tmp279829 __tmp279816))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp279815))))
                                (declare (not safe))
                                (cons __tmp279814 '()))))
                         (declare (not safe))
                         (cons _kwbind272911_ __tmp279813))))
                  (declare (not safe))
                  (cons '%#let-values __tmp279812))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp279811
                                                    _stx272849_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0
                                             __tmp279810)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g272868272877_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e272873272934_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g272868272877_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e272874272937_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g272868272877_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys272940_ _e272874272937_)
                               (_e272875272942_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g272868272877_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main272945_ _e272875272942_))
                          (declare (not safe))
                          (_K272872272931_ _main272945_ _keys272940_))
                        (let () (declare (not safe)) (_else272870272885_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self272851272859_
                 'gxc#!kw-lambda::t))
              (let* ((_e272855272950_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272851272859_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e272856272953_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272851272859_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table272956_ _e272856272953_)
                     (_e272857272958_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272851272859_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch272961_ _e272857272958_))
                (declare (not safe))
                (_K272854272947_ _dispatch272961_ _table272956_))
              (let () (declare (not safe)) (_E272853272863_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx272461_ _args272462_)
        (let _lp272464_ ((_rest272466_ _args272462_)
                         (_pargs272467_ '())
                         (_kwargs272468_ '()))
          (let* ((___stx278965278966_ _rest272466_)
                 (_g272474272526_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx278965278966_)))))
            (let ((___kont278967278968_
                   (lambda (_L272705_ _L272706_)
                     (let ((__tmp279850
                            (let ()
                              (declare (not safe))
                              (cons _L272706_ _pargs272467_))))
                       (declare (not safe))
                       (_lp272464_ _L272705_ __tmp279850 _kwargs272468_))))
                  (___kont278969278970_
                   (lambda (_L272651_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L272651_ _pargs272467_))
                             (reverse _kwargs272468_))))
                  (___kont278971278972_
                   (lambda (_L272598_ _L272599_ _L272600_)
                     (let ((_kw272617_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L272600_))))
                       (if (assq _kw272617_ _kwargs272468_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx272461_
                              _kw272617_))
                           (let ((__tmp279851
                                  (let ((__tmp279852
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw272617_ _L272599_))))
                                    (declare (not safe))
                                    (cons __tmp279852 _kwargs272468_))))
                             (declare (not safe))
                             (_lp272464_
                              _L272598_
                              _pargs272467_
                              __tmp279851))))))
                  (___kont278973278974_
                   (lambda (_L272546_ _L272547_)
                     (let ((__tmp279853
                            (let ()
                              (declare (not safe))
                              (cons _L272547_ _pargs272467_))))
                       (declare (not safe))
                       (_lp272464_ _L272546_ __tmp279853 _kwargs272468_))))
                  (___kont278975278976_
                   (lambda ()
                     (values (reverse _pargs272467_)
                             (reverse _kwargs272468_)))))
              (let* ((_g272473272533_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx278965278966_))
                            (___kont278975278976_)
                            (let () (declare (not safe)) (_g272474272526_)))))
                     (___match279072279073_
                      (lambda (_e272507272566_
                               _hd272506272569_
                               _tl272505272571_
                               _e272510272574_
                               _hd272509272577_
                               _tl272508272579_
                               _e272513272582_
                               _hd272512272585_
                               _tl272511272587_
                               _e272516272590_
                               _hd272515272593_
                               _tl272514272595_)
                        (let ((_L272598_ _tl272514272595_)
                              (_L272599_ _hd272515272593_)
                              (_L272600_ _hd272512272585_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L272600_))
                              (___kont278971278972_
                               _L272598_
                               _L272599_
                               _L272600_)
                              (___kont278973278974_
                               _tl272505272571_
                               _hd272506272569_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx278965278966_))
                    (let ((_e272480272670_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx278965278966_))))
                      (let ((_tl272478272675_
                             (let ()
                               (declare (not safe))
                               (##cdr _e272480272670_)))
                            (_hd272479272673_
                             (let ()
                               (declare (not safe))
                               (##car _e272480272670_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd272479272673_))
                            (let ((_e272483272678_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd272479272673_))))
                              (let ((_tl272481272683_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e272483272678_)))
                                    (_hd272482272681_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e272483272678_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd272482272681_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd272482272681_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl272481272683_))
                                            (let ((_e272486272686_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl272481272683_))))
                                              (let ((_tl272484272691_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e272486272686_)))
                                                    (_hd272485272689_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e272486272686_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd272485272689_))
                                                    (let ((_e272487272694_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd272485272689_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e272487272694_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl272484272691_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl272478272675_))
                          (let ((_e272490272697_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl272478272675_))))
                            (let ((_tl272488272702_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e272490272697_)))
                                  (_hd272489272700_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e272490272697_))))
                              (___kont278967278968_
                               _tl272488272702_
                               _hd272489272700_)))
                          (___kont278973278974_
                           _tl272478272675_
                           _hd272479272673_))
                      (___kont278973278974_ _tl272478272675_ _hd272479272673_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e272487272694_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl272484272691_))
                          (___kont278969278970_ _tl272478272675_)
                          (___kont278973278974_
                           _tl272478272675_
                           _hd272479272673_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl272484272691_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl272478272675_))
                              (let ((_e272516272590_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl272478272675_))))
                                (let ((_tl272514272595_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e272516272590_)))
                                      (_hd272515272593_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e272516272590_))))
                                  (___match279072279073_
                                   _e272480272670_
                                   _hd272479272673_
                                   _tl272478272675_
                                   _e272483272678_
                                   _hd272482272681_
                                   _tl272481272683_
                                   _e272486272686_
                                   _hd272485272689_
                                   _tl272484272691_
                                   _e272516272590_
                                   _hd272515272593_
                                   _tl272514272595_)))
                              (___kont278973278974_
                               _tl272478272675_
                               _hd272479272673_))
                          (___kont278973278974_
                           _tl272478272675_
                           _hd272479272673_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl272484272691_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl272478272675_))
                                                            (let ((_e272516272590_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl272478272675_))))
                      (let ((_tl272514272595_
                             (let ()
                               (declare (not safe))
                               (##cdr _e272516272590_)))
                            (_hd272515272593_
                             (let ()
                               (declare (not safe))
                               (##car _e272516272590_))))
                        (___match279072279073_
                         _e272480272670_
                         _hd272479272673_
                         _tl272478272675_
                         _e272483272678_
                         _hd272482272681_
                         _tl272481272683_
                         _e272486272686_
                         _hd272485272689_
                         _tl272484272691_
                         _e272516272590_
                         _hd272515272593_
                         _tl272514272595_)))
                    (___kont278973278974_ _tl272478272675_ _hd272479272673_))
                (___kont278973278974_ _tl272478272675_ _hd272479272673_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont278973278974_
                                             _tl272478272675_
                                             _hd272479272673_))
                                        (___kont278973278974_
                                         _tl272478272675_
                                         _hd272479272673_))
                                    (___kont278973278974_
                                     _tl272478272675_
                                     _hd272479272673_))))
                            (___kont278973278974_
                             _tl272478272675_
                             _hd272479272673_))))
                    (let () (declare (not safe)) (_g272473272533_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self272457_ _stx272458_ _args272459_)
        (let () (declare (not safe)) (gxc#xform-call% _stx272458_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
