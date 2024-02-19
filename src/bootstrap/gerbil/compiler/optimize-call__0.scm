(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1708334581)
  (begin
    (define gxc#&optimize-call
      (make-promise
       (lambda ()
         (let ((_tbl283746_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp288104 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-merge! _tbl283746_ __tmp288104))
           (let ()
             (declare (not safe))
             (hash-put! _tbl283746_ '%#call gxc#optimize-call%))
           _tbl283746_))))
    (define gxc#apply-optimize-call
      (lambda (_stx283729_ . _args283731_)
        (let ((__tmp288106
               (lambda ()
                 (declare (not safe))
                 (if (null? _args283731_)
                     (gxc#compile-e__0 _stx283729_)
                     (let ((_arg1283736_ (car _args283731_))
                           (_rest283738_ (cdr _args283731_)))
                       (if (null? _rest283738_)
                           (gxc#compile-e__1 _stx283729_ _arg1283736_)
                           (let ((_arg2283741_ (car _rest283738_))
                                 (_rest283743_ (cdr _rest283738_)))
                             (if (null? _rest283743_)
                                 (gxc#compile-e__2
                                  _stx283729_
                                  _arg1283736_
                                  _arg2283741_)
                                 (apply gxc#compile-e
                                        _stx283729_
                                        _arg1283736_
                                        _arg2283741_
                                        _rest283743_))))))))
              (__tmp288105 (force gxc#&optimize-call)))
          (declare (not safe))
          (call-with-parameters
           __tmp288106
           gxc#current-compile-methods
           __tmp288105))))
    (define gxc#optimize-call%
      (lambda (_stx283584_)
        (let* ((___stx287854287855_ _stx283584_)
               (_g283587283607_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx287854287855_)))))
          (let ((___kont287856287857_
                 (lambda (_L283651_ _L283652_)
                   (let* ((_rator-id283670_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L283652_)))
                          (_rator-type283672_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id283670_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type283672_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp288107
                                  (##structure-ref
                                   _rator-type283672_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id283670_
                              '" => "
                              _rator-type283672_
                              '" "
                              __tmp288107))
                           (let ((_optimized283675_
                                  (let ((__method288102
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type283672_
                                            'optimize-call))))
                                    (if __method288102
                                        (__method288102
                                         _rator-type283672_
                                         _stx283584_
                                         _L283651_)
                                        (error '"Missing method"
                                               _rator-type283672_
                                               'optimize-call)))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type283672_))
                                 _optimized283675_
                                 (let* ((___stx287836287837_ _optimized283675_)
                                        (_g283678283688_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx287836287837_)))))
                                   (let ((___kont287838287839_
                                          (lambda (_L283708_)
                                            (let ((__tmp288108
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L283708_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp288108
                                               _stx283584_))))
                                         (___kont287840287841_
                                          (lambda () _optimized283675_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx287836287837_))
                                         (let ((_e283683283700_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx287836287837_))))
                                           (let ((_tl283681283705_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e283683283700_)))
                                                 (_hd283682283703_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e283683283700_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd283682283703_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd283682283703_))
                                                     (___kont287838287839_
                                                      _tl283681283705_)
                                                     (___kont287840287841_))
                                                 (___kont287840287841_))))
                                         (___kont287840287841_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type283672_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx283584_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx283584_
                                _rator-type283672_)))))))
                (___kont287858287859_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _stx283584_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx287854287855_))
                (let ((_e283593283619_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx287854287855_))))
                  (let ((_tl283591283624_
                         (let () (declare (not safe)) (##cdr _e283593283619_)))
                        (_hd283592283622_
                         (let ()
                           (declare (not safe))
                           (##car _e283593283619_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl283591283624_))
                        (let ((_e283596283627_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl283591283624_))))
                          (let ((_tl283594283632_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e283596283627_)))
                                (_hd283595283630_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e283596283627_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd283595283630_))
                                (let ((_e283599283635_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd283595283630_))))
                                  (let ((_tl283597283640_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e283599283635_)))
                                        (_hd283598283638_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e283599283635_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd283598283638_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd283598283638_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl283597283640_))
                                                (let ((_e283602283643_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl283597283640_))))
                                                  (let ((_tl283600283648_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e283602283643_)))
                                                        (_hd283601283646_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e283602283643_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl283600283648_))
                                                        (___kont287856287857_
                                                         _tl283594283632_
                                                         _hd283601283646_)
                                                        (___kont287858287859_))))
                                                (___kont287858287859_))
                                            (___kont287858287859_))
                                        (___kont287858287859_))))
                                (___kont287858287859_))))
                        (___kont287858287859_))))
                (___kont287858287859_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self283538_ _stx283539_ _args283540_)
        (let* ((_g283542283552_
                (lambda (_g283543283549_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g283543283549_))))
               (_g283541283581_
                (lambda (_g283543283555_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g283543283555_))
                      (let ((_e283547283557_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g283543283555_))))
                        (let ((_hd283546283560_
                               (let ()
                                 (declare (not safe))
                                 (##car _e283547283557_)))
                              (_tl283545283562_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e283547283557_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl283545283562_))
                              ((lambda (_L283565_)
                                 (let* ((_klass283576_
                                         (let ((__tmp288109
                                                (##structure-ref
                                                 _self283538_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx283539_
                                            __tmp288109)))
                                        (_object283578_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L283565_))))
                                   (if (##structure-ref
                                        _klass283576_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp288125
                                              (let ((__tmp288126
                                                     (let ((__tmp288128
                                                            (let ((__tmp288129
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp288130
                                  (##structure-ref
                                   _klass283576_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp288130 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp288129)))
                   (__tmp288127
                    (let () (declare (not safe)) (cons _object283578_ '()))))
               (declare (not safe))
               (cons __tmp288128 __tmp288127))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp288126))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp288125
                                          _stx283539_))
                                       (if (##structure-ref
                                            _klass283576_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp288119
                                                  (let ((__tmp288120
                                                         (let ((__tmp288122
                                                                (let ((__tmp288123
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp288124
                                      (##structure-ref
                                       _klass283576_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp288124 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp288123)))
                       (__tmp288121
                        (let ()
                          (declare (not safe))
                          (cons _object283578_ '()))))
                   (declare (not safe))
                   (cons __tmp288122 __tmp288121))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp288120))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp288119
                                              _stx283539_))
                                           (let ((__tmp288110
                                                  (let ((__tmp288111
                                                         (let ((__tmp288117
                                                                (let ((__tmp288118
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp288118)))
                       (__tmp288112
                        (let ((__tmp288114
                               (let ((__tmp288115
                                      (let ((__tmp288116
                                             (##structure-ref
                                              _self283538_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp288116 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp288115)))
                              (__tmp288113
                               (let ()
                                 (declare (not safe))
                                 (cons _object283578_ '()))))
                          (declare (not safe))
                          (cons __tmp288114 __tmp288113))))
                   (declare (not safe))
                   (cons __tmp288117 __tmp288112))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp288111))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp288110
                                              _stx283539_))))))
                               _hd283546283560_)
                              (let ()
                                (declare (not safe))
                                (_g283542283552_ _g283543283555_)))))
                      (let ()
                        (declare (not safe))
                        (_g283542283552_ _g283543283555_))))))
          (declare (not safe))
          (_g283541283581_ _args283540_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__t287815)
        (let ((__id287816
               (let ((__tmp287817
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t287815 'id))))
                 (if __tmp287817 __tmp287817 (error '"Unknown slot" 'id)))))
          (lambda (_self283538_ _stx283539_ _args283540_)
            (let* ((_g283542283552_
                    (lambda (_g283543283549_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g283543283549_))))
                   (_g283541283581_
                    (lambda (_g283543283555_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g283543283555_))
                          (let ((_e283547283557_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g283543283555_))))
                            (let ((_hd283546283560_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e283547283557_)))
                                  (_tl283545283562_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e283547283557_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl283545283562_))
                                  ((lambda (_L283565_)
                                     (let* ((_klass283576_
                                             (let ((__tmp288131
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self283538_
                                                       __id287816
                                                       __t287815
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx283539_
                                                __tmp288131)))
                                            (_object283578_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L283565_))))
                                       (if (##structure-ref
                                            _klass283576_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp288147
                                                  (let ((__tmp288148
                                                         (let ((__tmp288150
                                                                (let ((__tmp288151
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp288152
                                      (##structure-ref
                                       _klass283576_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp288152 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp288151)))
                       (__tmp288149
                        (let ()
                          (declare (not safe))
                          (cons _object283578_ '()))))
                   (declare (not safe))
                   (cons __tmp288150 __tmp288149))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp288148))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp288147
                                              _stx283539_))
                                           (if (##structure-ref
                                                _klass283576_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp288141
                                                      (let ((__tmp288142
                                                             (let ((__tmp288144
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp288145
                                   (let ((__tmp288146
                                          (##structure-ref
                                           _klass283576_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp288146 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp288145)))
                           (__tmp288143
                            (let ()
                              (declare (not safe))
                              (cons _object283578_ '()))))
                       (declare (not safe))
                       (cons __tmp288144 __tmp288143))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp288142))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp288141
                                                  _stx283539_))
                                               (let ((__tmp288132
                                                      (let ((__tmp288133
                                                             (let ((__tmp288139
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp288140
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp288140)))
                           (__tmp288134
                            (let ((__tmp288136
                                   (let ((__tmp288137
                                          (let ((__tmp288138
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self283538_
                                                    __id287816
                                                    __t287815
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp288138 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp288137)))
                                  (__tmp288135
                                   (let ()
                                     (declare (not safe))
                                     (cons _object283578_ '()))))
                              (declare (not safe))
                              (cons __tmp288136 __tmp288135))))
                       (declare (not safe))
                       (cons __tmp288139 __tmp288134))))
                (declare (not safe))
                (cons '%#call __tmp288133))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp288132
                                                  _stx283539_))))))
                                   _hd283546283560_)
                                  (let ()
                                    (declare (not safe))
                                    (_g283542283552_ _g283543283555_)))))
                          (let ()
                            (declare (not safe))
                            (_g283542283552_ _g283543283555_))))))
              (declare (not safe))
              (_g283541283581_ _args283540_))))))
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
      (lambda (_self283258_ _stx283259_ _args283260_)
        (let* ((_klass283262_
                (let ((__tmp288153
                       (##structure-ref _self283258_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx283259_ __tmp288153)))
               (_fields283264_
                (length (##structure-ref _klass283262_ '5 gxc#!class::t '#f)))
               (_args283266_ (map gxc#compile-e _args283260_))
               (_inline-make-object283268_
                (let ((__tmp288154
                       (let ((__tmp288160
                              (let ((__tmp288161
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp288161)))
                             (__tmp288155
                              (let ((__tmp288157
                                     (let ((__tmp288158
                                            (let ((__tmp288159
                                                   (##structure-ref
                                                    _self283258_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp288159 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp288158)))
                                    (__tmp288156
                                     (make-list _fields283264_ '(%#quote #f))))
                                (declare (not safe))
                                (cons __tmp288157 __tmp288156))))
                         (declare (not safe))
                         (cons __tmp288160 __tmp288155))))
                  (declare (not safe))
                  (cons '%#call __tmp288154))))
          (let ((_$e283271_
                 (##structure-ref _klass283262_ '6 gxc#!class::t '#f)))
            (if _$e283271_
                ((lambda (_ctor283274_)
                   (let ((_$obj283276_
                          (let ((__tmp288261 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp288261)))
                         (_ctor-impl283277_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass283262_
                             _ctor283274_))))
                     (let ((__tmp288262
                            (let ((__tmp288263
                                   (let ((__tmp288331
                                          (let ((__tmp288332
                                                 (let ((__tmp288334
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj283276_
                                                                '())))
                                                       (__tmp288333
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object283268_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp288334
                                                         __tmp288333))))
                                            (declare (not safe))
                                            (cons __tmp288332 '())))
                                         (__tmp288264
                                          (let ((__tmp288265
                                                 (let ((__tmp288266
                                                        (let ((__tmp288270
                                                               (if _ctor-impl283277_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp288325
                                  (let ((__tmp288329
                                         (let ((__tmp288330
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl283277_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp288330)))
                                        (__tmp288326
                                         (let ((__tmp288327
                                                (let ((__tmp288328
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj283276_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp288328))))
                                           (declare (not safe))
                                           (cons __tmp288327 _args283266_))))
                                    (declare (not safe))
                                    (cons __tmp288329 __tmp288326))))
                             (declare (not safe))
                             (cons '%#call __tmp288325))
                           (let* ((_$ctor283279_
                                   (let ((__tmp288271 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp288271)))
                                  (__tmp288272
                                   (let ((__tmp288307
                                          (let ((__tmp288308
                                                 (let ((__tmp288324
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor283279_
                                                                '())))
                                                       (__tmp288309
                                                        (let ((__tmp288310
                                                               (let ((__tmp288311
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp288322
                                     (let ((__tmp288323
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp288323)))
                                    (__tmp288312
                                     (let ((__tmp288319
                                            (let ((__tmp288320
                                                   (let ((__tmp288321
                                                          (##structure-ref
                                                           _self283258_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp288321 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp288320)))
                                           (__tmp288313
                                            (let ((__tmp288317
                                                   (let ((__tmp288318
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj283276_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp288318)))
                                                  (__tmp288314
                                                   (let ((__tmp288315
                                                          (let ((__tmp288316
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _ctor283274_ '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp288316))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp288315 '()))))
                                              (declare (not safe))
                                              (cons __tmp288317 __tmp288314))))
                                       (declare (not safe))
                                       (cons __tmp288319 __tmp288313))))
                                (declare (not safe))
                                (cons __tmp288322 __tmp288312))))
                         (declare (not safe))
                         (cons '%#call __tmp288311))))
                  (declare (not safe))
                  (cons __tmp288310 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp288324
                                                         __tmp288309))))
                                            (declare (not safe))
                                            (cons __tmp288308 '())))
                                         (__tmp288273
                                          (let ((__tmp288274
                                                 (let ((__tmp288275
                                                        (let ((__tmp288305
                                                               (let ((__tmp288306
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor283279_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp288306)))
                      (__tmp288276
                       (let ((__tmp288298
                              (let ((__tmp288299
                                     (let ((__tmp288303
                                            (let ((__tmp288304
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor283279_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp288304)))
                                           (__tmp288300
                                            (let ((__tmp288301
                                                   (let ((__tmp288302
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj283276_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp288302))))
                                              (declare (not safe))
                                              (cons __tmp288301
                                                    _args283266_))))
                                       (declare (not safe))
                                       (cons __tmp288303 __tmp288300))))
                                (declare (not safe))
                                (cons '%#call __tmp288299)))
                             (__tmp288277
                              (let ((__tmp288278
                                     (let ((__tmp288279
                                            (let ((__tmp288296
                                                   (let ((__tmp288297
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp288297)))
                                                  (__tmp288280
                                                   (let ((__tmp288294
                                                          (let ((__tmp288295
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp288295)))
                 (__tmp288281
                  (let ((__tmp288292
                         (let ((__tmp288293
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp288293)))
                        (__tmp288282
                         (let ((__tmp288289
                                (let ((__tmp288290
                                       (let ((__tmp288291
                                              (##structure-ref
                                               _self283258_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp288291 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp288290)))
                               (__tmp288283
                                (let ((__tmp288287
                                       (let ((__tmp288288
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp288288)))
                                      (__tmp288284
                                       (let ((__tmp288285
                                              (let ((__tmp288286
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor283274_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp288286))))
                                         (declare (not safe))
                                         (cons __tmp288285 '()))))
                                  (declare (not safe))
                                  (cons __tmp288287 __tmp288284))))
                           (declare (not safe))
                           (cons __tmp288289 __tmp288283))))
                    (declare (not safe))
                    (cons __tmp288292 __tmp288282))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp288294
                                                           __tmp288281))))
                                              (declare (not safe))
                                              (cons __tmp288296 __tmp288280))))
                                       (declare (not safe))
                                       (cons '%#call __tmp288279))))
                                (declare (not safe))
                                (cons __tmp288278 '()))))
                         (declare (not safe))
                         (cons __tmp288298 __tmp288277))))
                  (declare (not safe))
                  (cons __tmp288305 __tmp288276))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp288275))))
                                            (declare (not safe))
                                            (cons __tmp288274 '()))))
                                     (declare (not safe))
                                     (cons __tmp288307 __tmp288273))))
                             (declare (not safe))
                             (cons '%#let-values __tmp288272))))
                      (__tmp288267
                       (let ((__tmp288268
                              (let ((__tmp288269
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj283276_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp288269))))
                         (declare (not safe))
                         (cons __tmp288268 '()))))
                  (declare (not safe))
                  (cons __tmp288270 __tmp288267))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp288266))))
                                            (declare (not safe))
                                            (cons __tmp288265 '()))))
                                     (declare (not safe))
                                     (cons __tmp288331 __tmp288264))))
                              (declare (not safe))
                              (cons '%#let-values __tmp288263))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp288262 _stx283259_))))
                 _$e283271_)
                (let ((_$e283281_
                       (##structure-ref _klass283262_ '9 gxc#!class::t '#f)))
                  (if _$e283281_
                      ((lambda (_metaclass283284_)
                         (let* ((_$obj283286_
                                 (let ((__tmp288223 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp288223)))
                                (_metakons283288_
                                 (let ((__tmp288224
                                        (let ()
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           _stx283259_
                                           _metaclass283284_))))
                                   (declare (not safe))
                                   (gxc#!class-lookup-method
                                    __tmp288224
                                    'instance-init!))))
                           (let ((__tmp288225
                                  (let ((__tmp288226
                                         (let ((__tmp288257
                                                (let ((__tmp288258
                                                       (let ((__tmp288260
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj283286_ '())))
                     (__tmp288259
                      (let ()
                        (declare (not safe))
                        (cons _inline-make-object283268_ '()))))
                 (declare (not safe))
                 (cons __tmp288260 __tmp288259))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp288258 '())))
                                               (__tmp288227
                                                (let ((__tmp288228
                                                       (let ((__tmp288229
                                                              (let ((__tmp288233
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if _metakons283288_
                                 (let ((__tmp288247
                                        (let ((__tmp288255
                                               (let ((__tmp288256
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metakons283288_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp288256)))
                                              (__tmp288248
                                               (let ((__tmp288252
                                                      (let ((__tmp288253
                                                             (let ((__tmp288254
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self283258_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp288254 '()))))
                (declare (not safe))
                (cons '%#ref __tmp288253)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp288249
                                                      (let ((__tmp288250
                                                             (let ((__tmp288251
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _$obj283286_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp288251))))
                (declare (not safe))
                (cons __tmp288250 _args283266_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp288252
                                                       __tmp288249))))
                                          (declare (not safe))
                                          (cons __tmp288255 __tmp288248))))
                                   (declare (not safe))
                                   (cons '%#call __tmp288247))
                                 (let ((__tmp288234
                                        (let ((__tmp288245
                                               (let ((__tmp288246
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'call-method
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp288246)))
                                              (__tmp288235
                                               (let ((__tmp288242
                                                      (let ((__tmp288243
                                                             (let ((__tmp288244
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self283258_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp288244 '()))))
                (declare (not safe))
                (cons '%#ref __tmp288243)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp288236
                                                      (let ((__tmp288240
                                                             (let ((__tmp288241
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'instance-init! '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp288241)))
                    (__tmp288237
                     (let ((__tmp288238
                            (let ((__tmp288239
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj283286_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp288239))))
                       (declare (not safe))
                       (cons __tmp288238 _args283266_))))
                (declare (not safe))
                (cons __tmp288240 __tmp288237))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp288242
                                                       __tmp288236))))
                                          (declare (not safe))
                                          (cons __tmp288245 __tmp288235))))
                                   (declare (not safe))
                                   (cons '%#call __tmp288234))))
                            (__tmp288230
                             (let ((__tmp288231
                                    (let ((__tmp288232
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj283286_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp288232))))
                               (declare (not safe))
                               (cons __tmp288231 '()))))
                        (declare (not safe))
                        (cons __tmp288233 __tmp288230))))
                 (declare (not safe))
                 (cons '%#begin __tmp288229))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp288228 '()))))
                                           (declare (not safe))
                                           (cons __tmp288257 __tmp288227))))
                                    (declare (not safe))
                                    (cons '%#let-values __tmp288226))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp288225 _stx283259_))))
                       _$e283281_)
                      (if (##structure-ref _klass283262_ '7 gxc#!class::t '#f)
                          (if (fx= (length _args283266_) _fields283264_)
                              (let ((__tmp288215
                                     (let ((__tmp288216
                                            (let ((__tmp288221
                                                   (let ((__tmp288222
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp288222)))
                                                  (__tmp288217
                                                   (let ((__tmp288218
                                                          (let ((__tmp288219
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp288220
                                (##structure-ref
                                 _self283258_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp288220 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp288219))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp288218
                                                           _args283266_))))
                                              (declare (not safe))
                                              (cons __tmp288221 __tmp288217))))
                                       (declare (not safe))
                                       (cons '%#call __tmp288216))))
                                (declare (not safe))
                                (gxc#xform-wrap-source
                                 __tmp288215
                                 _stx283259_))
                              (let ((__tmp288214
                                     (##structure-ref
                                      _self283258_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                    (__tmp288213
                                     (length (##structure-ref
                                              _klass283262_
                                              '5
                                              gxc#!class::t
                                              '#f))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"illegal struct constructor application; arity mismatch"
                                 _stx283259_
                                 __tmp288214
                                 __tmp288213)))
                          (let ((_$obj283291_
                                 (let ((__tmp288162 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp288162))))
                            (let _lp283293_ ((_rest283295_ _args283266_)
                                             (_initializers283296_ '()))
                              (let* ((___stx287892287893_ _rest283295_)
                                     (_g283300283321_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx287892287893_)))))
                                (let ((___kont287894287895_
                                       (lambda (_L283375_ _L283376_ _L283377_)
                                         (let* ((_slot283408_
                                                 (keyword->symbol
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e _L283377_))))
                                                (_off283410_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass283262_
                                                    _slot283408_))))
                                           (if _off283410_
                                               (let ((__tmp288164
                                                      (let ((__tmp288165
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off283410_ _L283376_))))
                (declare (not safe))
                (cons __tmp288165 _initializers283296_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp283293_
                                                  _L283375_
                                                  __tmp288164))
                                               (let ((__tmp288163
                                                      (##structure-ref
                                                       _self283258_
                                                       '1
                                                       gxc#!type::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"unknown slot"
                                                  _stx283259_
                                                  __tmp288163
                                                  _slot283408_))))))
                                      (___kont287896287897_
                                       (lambda ()
                                         (let ((__tmp288166
                                                (let ((__tmp288167
                                                       (let ((__tmp288190
                                                              (let ((__tmp288191
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp288193
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj283291_ '())))
                                   (__tmp288192
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object283268_ '()))))
                               (declare (not safe))
                               (cons __tmp288193 __tmp288192))))
                        (declare (not safe))
                        (cons __tmp288191 '())))
                     (__tmp288168
                      (let ((__tmp288169
                             (let ((__tmp288170
                                    (let ((__tmp288187
                                           (let ((__tmp288188
                                                  (let ((__tmp288189
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj283291_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp288189))))
                                             (declare (not safe))
                                             (cons __tmp288188 '())))
                                          (__tmp288171
                                           (let ((__tmp288172
                                                  (lambda (_i283335_ _r283336_)
                                                    (let ((__tmp288173
                                                           (let ((__tmp288174
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp288184
                                 (let ((__tmp288185
                                        (let ((__tmp288186
                                               (##structure-ref
                                                _self283258_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp288186 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp288185)))
                                (__tmp288175
                                 (let ((__tmp288181
                                        (let ((__tmp288182
                                               (let ((__tmp288183
                                                      (car _i283335_)))
                                                 (declare (not safe))
                                                 (cons __tmp288183 '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp288182)))
                                       (__tmp288176
                                        (let ((__tmp288179
                                               (let ((__tmp288180
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _$obj283291_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp288180)))
                                              (__tmp288177
                                               (let ((__tmp288178
                                                      (cdr _i283335_)))
                                                 (declare (not safe))
                                                 (cons __tmp288178 '()))))
                                          (declare (not safe))
                                          (cons __tmp288179 __tmp288177))))
                                   (declare (not safe))
                                   (cons __tmp288181 __tmp288176))))
                            (declare (not safe))
                            (cons __tmp288184 __tmp288175))))
                     (declare (not safe))
                     (cons '%#struct-unchecked-set! __tmp288174))))
              (declare (not safe))
              (cons __tmp288173 _r283336_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (foldl1 __tmp288172
                                                     '()
                                                     _initializers283296_))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp288187 __tmp288171))))
                               (declare (not safe))
                               (cons '%#begin __tmp288170))))
                        (declare (not safe))
                        (cons __tmp288169 '()))))
                 (declare (not safe))
                 (cons __tmp288190 __tmp288168))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp288167))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp288166
                                            _stx283259_))))
                                      (___kont287898287899_
                                       (lambda ()
                                         (let ((__tmp288194
                                                (let ((__tmp288195
                                                       (let ((__tmp288209
                                                              (let ((__tmp288210
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp288212
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj283291_ '())))
                                   (__tmp288211
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object283268_ '()))))
                               (declare (not safe))
                               (cons __tmp288212 __tmp288211))))
                        (declare (not safe))
                        (cons __tmp288210 '())))
                     (__tmp288196
                      (let ((__tmp288197
                             (let ((__tmp288198
                                    (let ((__tmp288202
                                           (let ((__tmp288203
                                                  (let ((__tmp288207
                                                         (let ((__tmp288208
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'class-instance-init! '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp288208)))
                (__tmp288204
                 (let ((__tmp288205
                        (let ((__tmp288206
                               (let ()
                                 (declare (not safe))
                                 (cons _$obj283291_ '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp288206))))
                   (declare (not safe))
                   (cons __tmp288205 _args283266_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp288207
                                                          __tmp288204))))
                                             (declare (not safe))
                                             (cons '%#call __tmp288203)))
                                          (__tmp288199
                                           (let ((__tmp288200
                                                  (let ((__tmp288201
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj283291_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp288201))))
                                             (declare (not safe))
                                             (cons __tmp288200 '()))))
                                      (declare (not safe))
                                      (cons __tmp288202 __tmp288199))))
                               (declare (not safe))
                               (cons '%#begin __tmp288198))))
                        (declare (not safe))
                        (cons __tmp288197 '()))))
                 (declare (not safe))
                 (cons __tmp288209 __tmp288196))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp288195))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp288194
                                            _stx283259_)))))
                                  (let* ((_g283298283338_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   ___stx287892287893_))
                                                (___kont287896287897_)
                                                (___kont287898287899_))))
                                         (___match287929287930_
                                          (lambda (_e283307283343_
                                                   _hd283306283346_
                                                   _tl283305283348_
                                                   _e283310283351_
                                                   _hd283309283354_
                                                   _tl283308283356_
                                                   _e283313283359_
                                                   _hd283312283362_
                                                   _tl283311283364_
                                                   _e283316283367_
                                                   _hd283315283370_
                                                   _tl283314283372_)
                                            (let ((_L283375_ _tl283314283372_)
                                                  (_L283376_ _hd283315283370_)
                                                  (_L283377_ _hd283312283362_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-keyword?
                                                     _L283377_))
                                                  (___kont287894287895_
                                                   _L283375_
                                                   _L283376_
                                                   _L283377_)
                                                  (___kont287898287899_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx287892287893_))
                                        (let ((_e283307283343_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx287892287893_))))
                                          (let ((_tl283305283348_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e283307283343_)))
                                                (_hd283306283346_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e283307283343_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd283306283346_))
                                                (let ((_e283310283351_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd283306283346_))))
                                                  (let ((_tl283308283356_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e283310283351_)))
                                                        (_hd283309283354_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e283310283351_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd283309283354_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#quote
                                                               _hd283309283354_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl283308283356_))
                        (let ((_e283313283359_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl283308283356_))))
                          (let ((_tl283311283364_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e283313283359_)))
                                (_hd283312283362_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e283313283359_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl283311283364_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl283305283348_))
                                    (let ((_e283316283367_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl283305283348_))))
                                      (let ((_tl283314283372_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e283316283367_)))
                                            (_hd283315283370_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e283316283367_))))
                                        (___match287929287930_
                                         _e283307283343_
                                         _hd283306283346_
                                         _tl283305283348_
                                         _e283310283351_
                                         _hd283309283354_
                                         _tl283308283356_
                                         _e283313283359_
                                         _hd283312283362_
                                         _tl283311283364_
                                         _e283316283367_
                                         _hd283315283370_
                                         _tl283314283372_)))
                                    (___kont287898287899_))
                                (___kont287898287899_))))
                        (___kont287898287899_))
                    (___kont287898287899_))
                (___kont287898287899_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont287898287899_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g283298283338_))))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__t287818)
        (let ((__id287819
               (let ((__tmp287820
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t287818 'id))))
                 (if __tmp287820 __tmp287820 (error '"Unknown slot" 'id)))))
          (lambda (_self283258_ _stx283259_ _args283260_)
            (let* ((_klass283262_
                    (let ((__tmp288335
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self283258_
                              __id287819
                              __t287818
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx283259_ __tmp288335)))
                   (_fields283264_
                    (length (##structure-ref
                             _klass283262_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args283266_ (map gxc#compile-e _args283260_))
                   (_inline-make-object283268_
                    (let ((__tmp288336
                           (let ((__tmp288342
                                  (let ((__tmp288343
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp288343)))
                                 (__tmp288337
                                  (let ((__tmp288339
                                         (let ((__tmp288340
                                                (let ((__tmp288341
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self283258_
                                                          __id287819
                                                          __t287818
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp288341 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp288340)))
                                        (__tmp288338
                                         (make-list
                                          _fields283264_
                                          '(%#quote #f))))
                                    (declare (not safe))
                                    (cons __tmp288339 __tmp288338))))
                             (declare (not safe))
                             (cons __tmp288342 __tmp288337))))
                      (declare (not safe))
                      (cons '%#call __tmp288336))))
              (let ((_$e283271_
                     (##structure-ref _klass283262_ '6 gxc#!class::t '#f)))
                (if _$e283271_
                    ((lambda (_ctor283274_)
                       (let ((_$obj283276_
                              (let ((__tmp288443 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp288443)))
                             (_ctor-impl283277_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass283262_
                                 _ctor283274_))))
                         (let ((__tmp288444
                                (let ((__tmp288445
                                       (let ((__tmp288513
                                              (let ((__tmp288514
                                                     (let ((__tmp288516
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj283276_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp288515
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object283268_ '()))))
               (declare (not safe))
               (cons __tmp288516 __tmp288515))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp288514 '())))
                                             (__tmp288446
                                              (let ((__tmp288447
                                                     (let ((__tmp288448
                                                            (let ((__tmp288452
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl283277_
                               (let ((__tmp288507
                                      (let ((__tmp288511
                                             (let ((__tmp288512
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl283277_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp288512)))
                                            (__tmp288508
                                             (let ((__tmp288509
                                                    (let ((__tmp288510
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj283276_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp288510))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp288509
                                                     _args283266_))))
                                        (declare (not safe))
                                        (cons __tmp288511 __tmp288508))))
                                 (declare (not safe))
                                 (cons '%#call __tmp288507))
                               (let* ((_$ctor283279_
                                       (let ((__tmp288453
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp288453)))
                                      (__tmp288454
                                       (let ((__tmp288489
                                              (let ((__tmp288490
                                                     (let ((__tmp288506
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor283279_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp288491
                    (let ((__tmp288492
                           (let ((__tmp288493
                                  (let ((__tmp288504
                                         (let ((__tmp288505
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp288505)))
                                        (__tmp288494
                                         (let ((__tmp288501
                                                (let ((__tmp288502
                                                       (let ((__tmp288503
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self283258_
                         __id287819
                         __t287818
                         '#f))))
                 (declare (not safe))
                 (cons __tmp288503 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp288502)))
                                               (__tmp288495
                                                (let ((__tmp288499
                                                       (let ((__tmp288500
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj283276_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp288500)))
              (__tmp288496
               (let ((__tmp288497
                      (let ((__tmp288498
                             (let ()
                               (declare (not safe))
                               (cons _ctor283274_ '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp288498))))
                 (declare (not safe))
                 (cons __tmp288497 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp288499
                                                        __tmp288496))))
                                           (declare (not safe))
                                           (cons __tmp288501 __tmp288495))))
                                    (declare (not safe))
                                    (cons __tmp288504 __tmp288494))))
                             (declare (not safe))
                             (cons '%#call __tmp288493))))
                      (declare (not safe))
                      (cons __tmp288492 '()))))
               (declare (not safe))
               (cons __tmp288506 __tmp288491))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp288490 '())))
                                             (__tmp288455
                                              (let ((__tmp288456
                                                     (let ((__tmp288457
                                                            (let ((__tmp288487
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp288488
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor283279_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp288488)))
                          (__tmp288458
                           (let ((__tmp288480
                                  (let ((__tmp288481
                                         (let ((__tmp288485
                                                (let ((__tmp288486
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor283279_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp288486)))
                                               (__tmp288482
                                                (let ((__tmp288483
                                                       (let ((__tmp288484
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj283276_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp288484))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp288483
                                                        _args283266_))))
                                           (declare (not safe))
                                           (cons __tmp288485 __tmp288482))))
                                    (declare (not safe))
                                    (cons '%#call __tmp288481)))
                                 (__tmp288459
                                  (let ((__tmp288460
                                         (let ((__tmp288461
                                                (let ((__tmp288478
                                                       (let ((__tmp288479
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp288479)))
              (__tmp288462
               (let ((__tmp288476
                      (let ((__tmp288477
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp288477)))
                     (__tmp288463
                      (let ((__tmp288474
                             (let ((__tmp288475
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp288475)))
                            (__tmp288464
                             (let ((__tmp288471
                                    (let ((__tmp288472
                                           (let ((__tmp288473
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self283258_
                                                     __id287819
                                                     __t287818
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp288473 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp288472)))
                                   (__tmp288465
                                    (let ((__tmp288469
                                           (let ((__tmp288470
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp288470)))
                                          (__tmp288466
                                           (let ((__tmp288467
                                                  (let ((__tmp288468
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor283274_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp288468))))
                                             (declare (not safe))
                                             (cons __tmp288467 '()))))
                                      (declare (not safe))
                                      (cons __tmp288469 __tmp288466))))
                               (declare (not safe))
                               (cons __tmp288471 __tmp288465))))
                        (declare (not safe))
                        (cons __tmp288474 __tmp288464))))
                 (declare (not safe))
                 (cons __tmp288476 __tmp288463))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp288478
                                                        __tmp288462))))
                                           (declare (not safe))
                                           (cons '%#call __tmp288461))))
                                    (declare (not safe))
                                    (cons __tmp288460 '()))))
                             (declare (not safe))
                             (cons __tmp288480 __tmp288459))))
                      (declare (not safe))
                      (cons __tmp288487 __tmp288458))))
               (declare (not safe))
               (cons '%#if __tmp288457))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp288456 '()))))
                                         (declare (not safe))
                                         (cons __tmp288489 __tmp288455))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp288454))))
                          (__tmp288449
                           (let ((__tmp288450
                                  (let ((__tmp288451
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj283276_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp288451))))
                             (declare (not safe))
                             (cons __tmp288450 '()))))
                      (declare (not safe))
                      (cons __tmp288452 __tmp288449))))
               (declare (not safe))
               (cons '%#begin __tmp288448))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp288447 '()))))
                                         (declare (not safe))
                                         (cons __tmp288513 __tmp288446))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp288445))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp288444 _stx283259_))))
                     _$e283271_)
                    (let ((_$e283281_
                           (##structure-ref
                            _klass283262_
                            '9
                            gxc#!class::t
                            '#f)))
                      (if _$e283281_
                          ((lambda (_metaclass283284_)
                             (let* ((_$obj283286_
                                     (let ((__tmp288405 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp288405)))
                                    (_metakons283288_
                                     (let ((__tmp288406
                                            (let ()
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               _stx283259_
                                               _metaclass283284_))))
                                       (declare (not safe))
                                       (gxc#!class-lookup-method
                                        __tmp288406
                                        'instance-init!))))
                               (let ((__tmp288407
                                      (let ((__tmp288408
                                             (let ((__tmp288439
                                                    (let ((__tmp288440
                                                           (let ((__tmp288442
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj283286_ '())))
                         (__tmp288441
                          (let ()
                            (declare (not safe))
                            (cons _inline-make-object283268_ '()))))
                     (declare (not safe))
                     (cons __tmp288442 __tmp288441))))
              (declare (not safe))
              (cons __tmp288440 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp288409
                                                    (let ((__tmp288410
                                                           (let ((__tmp288411
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp288415
                                 (if _metakons283288_
                                     (let ((__tmp288429
                                            (let ((__tmp288437
                                                   (let ((__tmp288438
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _metakons283288_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp288438)))
                                                  (__tmp288430
                                                   (let ((__tmp288434
                                                          (let ((__tmp288435
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp288436
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self283258_
                                   __id287819
                                   __t287818
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp288436 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp288435)))
                 (__tmp288431
                  (let ((__tmp288432
                         (let ((__tmp288433
                                (let ()
                                  (declare (not safe))
                                  (cons _$obj283286_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp288433))))
                    (declare (not safe))
                    (cons __tmp288432 _args283266_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp288434
                                                           __tmp288431))))
                                              (declare (not safe))
                                              (cons __tmp288437 __tmp288430))))
                                       (declare (not safe))
                                       (cons '%#call __tmp288429))
                                     (let ((__tmp288416
                                            (let ((__tmp288427
                                                   (let ((__tmp288428
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'call-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp288428)))
                                                  (__tmp288417
                                                   (let ((__tmp288424
                                                          (let ((__tmp288425
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp288426
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self283258_
                                   __id287819
                                   __t287818
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp288426 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp288425)))
                 (__tmp288418
                  (let ((__tmp288422
                         (let ((__tmp288423
                                (let ()
                                  (declare (not safe))
                                  (cons 'instance-init! '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp288423)))
                        (__tmp288419
                         (let ((__tmp288420
                                (let ((__tmp288421
                                       (let ()
                                         (declare (not safe))
                                         (cons _$obj283286_ '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp288421))))
                           (declare (not safe))
                           (cons __tmp288420 _args283266_))))
                    (declare (not safe))
                    (cons __tmp288422 __tmp288419))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp288424
                                                           __tmp288418))))
                                              (declare (not safe))
                                              (cons __tmp288427 __tmp288417))))
                                       (declare (not safe))
                                       (cons '%#call __tmp288416))))
                                (__tmp288412
                                 (let ((__tmp288413
                                        (let ((__tmp288414
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$obj283286_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp288414))))
                                   (declare (not safe))
                                   (cons __tmp288413 '()))))
                            (declare (not safe))
                            (cons __tmp288415 __tmp288412))))
                     (declare (not safe))
                     (cons '%#begin __tmp288411))))
              (declare (not safe))
              (cons __tmp288410 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp288439
                                                     __tmp288409))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp288408))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp288407
                                  _stx283259_))))
                           _$e283281_)
                          (if (##structure-ref
                               _klass283262_
                               '7
                               gxc#!class::t
                               '#f)
                              (if (fx= (length _args283266_) _fields283264_)
                                  (let ((__tmp288397
                                         (let ((__tmp288398
                                                (let ((__tmp288403
                                                       (let ((__tmp288404
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '##structure '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp288404)))
              (__tmp288399
               (let ((__tmp288400
                      (let ((__tmp288401
                             (let ((__tmp288402
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self283258_
                                       __id287819
                                       __t287818
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp288402 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp288401))))
                 (declare (not safe))
                 (cons __tmp288400 _args283266_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp288403
                                                        __tmp288399))))
                                           (declare (not safe))
                                           (cons '%#call __tmp288398))))
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp288397
                                     _stx283259_))
                                  (let ((__tmp288396
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _self283258_
                                            __id287819
                                            __t287818
                                            '#f)))
                                        (__tmp288395
                                         (length (##structure-ref
                                                  _klass283262_
                                                  '5
                                                  gxc#!class::t
                                                  '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _stx283259_
                                     __tmp288396
                                     __tmp288395)))
                              (let ((_$obj283291_
                                     (let ((__tmp288344 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp288344))))
                                (let _lp283293_ ((_rest283295_ _args283266_)
                                                 (_initializers283296_ '()))
                                  (let* ((___stx287934287935_ _rest283295_)
                                         (_g283300283321_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               ___stx287934287935_)))))
                                    (let ((___kont287936287937_
                                           (lambda (_L283375_
                                                    _L283376_
                                                    _L283377_)
                                             (let* ((_slot283408_
                                                     (keyword->symbol
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L283377_))))
                                                    (_off283410_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass283262_
                                                        _slot283408_))))
                                               (if _off283410_
                                                   (let ((__tmp288346
                                                          (let ((__tmp288347
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _off283410_ _L283376_))))
                    (declare (not safe))
                    (cons __tmp288347 _initializers283296_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp283293_
                                                      _L283375_
                                                      __tmp288346))
                                                   (let ((__tmp288345
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _self283258_
                                                             __id287819
                                                             __t287818
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"unknown slot"
                                                      _stx283259_
                                                      __tmp288345
                                                      _slot283408_))))))
                                          (___kont287938287939_
                                           (lambda ()
                                             (let ((__tmp288348
                                                    (let ((__tmp288349
                                                           (let ((__tmp288372
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp288373
                                 (let ((__tmp288375
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj283291_ '())))
                                       (__tmp288374
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object283268_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp288375 __tmp288374))))
                            (declare (not safe))
                            (cons __tmp288373 '())))
                         (__tmp288350
                          (let ((__tmp288351
                                 (let ((__tmp288352
                                        (let ((__tmp288369
                                               (let ((__tmp288370
                                                      (let ((__tmp288371
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj283291_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp288371))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp288370 '())))
                                              (__tmp288353
                                               (let ((__tmp288354
                                                      (lambda (_i283335_
                                                               _r283336_)
                                                        (let ((__tmp288355
                                                               (let ((__tmp288356
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp288366
                                     (let ((__tmp288367
                                            (let ((__tmp288368
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self283258_
                                                      __id287819
                                                      __t287818
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp288368 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp288367)))
                                    (__tmp288357
                                     (let ((__tmp288363
                                            (let ((__tmp288364
                                                   (let ((__tmp288365
                                                          (car _i283335_)))
                                                     (declare (not safe))
                                                     (cons __tmp288365 '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp288364)))
                                           (__tmp288358
                                            (let ((__tmp288361
                                                   (let ((__tmp288362
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj283291_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp288362)))
                                                  (__tmp288359
                                                   (let ((__tmp288360
                                                          (cdr _i283335_)))
                                                     (declare (not safe))
                                                     (cons __tmp288360 '()))))
                                              (declare (not safe))
                                              (cons __tmp288361 __tmp288359))))
                                       (declare (not safe))
                                       (cons __tmp288363 __tmp288358))))
                                (declare (not safe))
                                (cons __tmp288366 __tmp288357))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp288356))))
                  (declare (not safe))
                  (cons __tmp288355 _r283336_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl1 __tmp288354
                                                         '()
                                                         _initializers283296_))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp288369
                                                  __tmp288353))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp288352))))
                            (declare (not safe))
                            (cons __tmp288351 '()))))
                     (declare (not safe))
                     (cons __tmp288372 __tmp288350))))
              (declare (not safe))
              (cons '%#let-values __tmp288349))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp288348
                                                _stx283259_))))
                                          (___kont287940287941_
                                           (lambda ()
                                             (let ((__tmp288376
                                                    (let ((__tmp288377
                                                           (let ((__tmp288391
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp288392
                                 (let ((__tmp288394
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj283291_ '())))
                                       (__tmp288393
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object283268_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp288394 __tmp288393))))
                            (declare (not safe))
                            (cons __tmp288392 '())))
                         (__tmp288378
                          (let ((__tmp288379
                                 (let ((__tmp288380
                                        (let ((__tmp288384
                                               (let ((__tmp288385
                                                      (let ((__tmp288389
                                                             (let ((__tmp288390
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'class-instance-init! '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp288390)))
                    (__tmp288386
                     (let ((__tmp288387
                            (let ((__tmp288388
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj283291_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp288388))))
                       (declare (not safe))
                       (cons __tmp288387 _args283266_))))
                (declare (not safe))
                (cons __tmp288389 __tmp288386))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp288385)))
                                              (__tmp288381
                                               (let ((__tmp288382
                                                      (let ((__tmp288383
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj283291_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp288383))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp288382 '()))))
                                          (declare (not safe))
                                          (cons __tmp288384 __tmp288381))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp288380))))
                            (declare (not safe))
                            (cons __tmp288379 '()))))
                     (declare (not safe))
                     (cons __tmp288391 __tmp288378))))
              (declare (not safe))
              (cons '%#let-values __tmp288377))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp288376
                                                _stx283259_)))))
                                      (let* ((_g283298283338_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       ___stx287934287935_))
                                                    (___kont287938287939_)
                                                    (___kont287940287941_))))
                                             (___match287971287972_
                                              (lambda (_e283307283343_
                                                       _hd283306283346_
                                                       _tl283305283348_
                                                       _e283310283351_
                                                       _hd283309283354_
                                                       _tl283308283356_
                                                       _e283313283359_
                                                       _hd283312283362_
                                                       _tl283311283364_
                                                       _e283316283367_
                                                       _hd283315283370_
                                                       _tl283314283372_)
                                                (let ((_L283375_
                                                       _tl283314283372_)
                                                      (_L283376_
                                                       _hd283315283370_)
                                                      (_L283377_
                                                       _hd283312283362_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-keyword?
                                                         _L283377_))
                                                      (___kont287936287937_
                                                       _L283375_
                                                       _L283376_
                                                       _L283377_)
                                                      (___kont287940287941_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               ___stx287934287935_))
                                            (let ((_e283307283343_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      ___stx287934287935_))))
                                              (let ((_tl283305283348_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e283307283343_)))
                                                    (_hd283306283346_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e283307283343_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd283306283346_))
                                                    (let ((_e283310283351_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd283306283346_))))
                                                      (let ((_tl283308283356_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e283310283351_)))
                    (_hd283309283354_
                     (let () (declare (not safe)) (##car _e283310283351_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd283309283354_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd283309283354_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl283308283356_))
                            (let ((_e283313283359_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl283308283356_))))
                              (let ((_tl283311283364_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e283313283359_)))
                                    (_hd283312283362_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e283313283359_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl283311283364_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl283305283348_))
                                        (let ((_e283316283367_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl283305283348_))))
                                          (let ((_tl283314283372_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e283316283367_)))
                                                (_hd283315283370_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e283316283367_))))
                                            (___match287971287972_
                                             _e283307283343_
                                             _hd283306283346_
                                             _tl283305283348_
                                             _e283310283351_
                                             _hd283309283354_
                                             _tl283308283356_
                                             _e283313283359_
                                             _hd283312283362_
                                             _tl283311283364_
                                             _e283316283367_
                                             _hd283315283370_
                                             _tl283314283372_)))
                                        (___kont287940287941_))
                                    (___kont287940287941_))))
                            (___kont287940287941_))
                        (___kont287940287941_))
                    (___kont287940287941_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont287940287941_))))
                                            (let ()
                                              (declare (not safe))
                                              (_g283298283338_))))))))))))))))))
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
      (lambda (_self283081_ _stx283082_ _args283083_)
        (let* ((_g283085283095_
                (lambda (_g283086283092_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g283086283092_))))
               (_g283084283133_
                (lambda (_g283086283098_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g283086283098_))
                      (let ((_e283090283100_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g283086283098_))))
                        (let ((_hd283089283103_
                               (let ()
                                 (declare (not safe))
                                 (##car _e283090283100_)))
                              (_tl283088283105_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e283090283100_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl283088283105_))
                              ((lambda (_L283108_)
                                 (let* ((_klass283119_
                                         (let ((__tmp288517
                                                (##structure-ref
                                                 _self283081_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx283082_
                                            __tmp288517)))
                                        (_field283121_
                                         (let ((__tmp288518
                                                (##structure-ref
                                                 _self283081_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass283119_
                                            __tmp288518)))
                                        (_object283123_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L283108_))))
                                   (if (##structure-ref
                                        _klass283119_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp288595
                                              (let ((__tmp288604
                                                     (if (##structure-ref
                                                          _self283081_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp288596
                                                     (let ((__tmp288601
                                                            (let ((__tmp288602
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp288603
                                  (##structure-ref
                                   _self283081_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp288603 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp288602)))
                   (__tmp288597
                    (let ((__tmp288599
                           (let ((__tmp288600
                                  (let ()
                                    (declare (not safe))
                                    (cons _field283121_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp288600)))
                          (__tmp288598
                           (let ()
                             (declare (not safe))
                             (cons _object283123_ '()))))
                      (declare (not safe))
                      (cons __tmp288599 __tmp288598))))
               (declare (not safe))
               (cons __tmp288601 __tmp288597))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp288604
                                                      __tmp288596))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp288595
                                          _stx283082_))
                                       (if (##structure-ref
                                            _klass283119_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp288585
                                                  (let ((__tmp288594
                                                         (if (##structure-ref
                                                              _self283081_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp288586
                                                         (let ((__tmp288591
                                                                (let ((__tmp288592
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp288593
                                      (##structure-ref
                                       _self283081_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp288593 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp288592)))
                       (__tmp288587
                        (let ((__tmp288589
                               (let ((__tmp288590
                                      (let ()
                                        (declare (not safe))
                                        (cons _field283121_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp288590)))
                              (__tmp288588
                               (let ()
                                 (declare (not safe))
                                 (cons _object283123_ '()))))
                          (declare (not safe))
                          (cons __tmp288589 __tmp288588))))
                   (declare (not safe))
                   (cons __tmp288591 __tmp288587))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp288594
                                                          __tmp288586))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp288585
                                              _stx283082_))
                                           (let ((_$e283126_
                                                  (let ((__tmp288519
                                                         (##structure-ref
                                                          _self283081_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass283119_
                                                     __tmp288519))))
                                             (if _$e283126_
                                                 ((lambda (_klass283129_)
                                                    (let ((__tmp288575
                                                           (let ((__tmp288584
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self283081_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp288576
                          (let ((__tmp288581
                                 (let ((__tmp288582
                                        (let ((__tmp288583
                                               (##structure-ref
                                                _self283081_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp288583 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp288582)))
                                (__tmp288577
                                 (let ((__tmp288579
                                        (let ((__tmp288580
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field283121_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp288580)))
                                       (__tmp288578
                                        (let ()
                                          (declare (not safe))
                                          (cons _object283123_ '()))))
                                   (declare (not safe))
                                   (cons __tmp288579 __tmp288578))))
                            (declare (not safe))
                            (cons __tmp288581 __tmp288577))))
                     (declare (not safe))
                     (cons __tmp288584 __tmp288576))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp288575 _stx283082_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e283126_)
                                                 (if (##structure-ref
                                                      _self283081_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp288529
                                                            (let* ((_$obj283131_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp288530 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp288530)))
                           (__tmp288531
                            (let ((__tmp288571
                                   (let ((__tmp288572
                                          (let ((__tmp288574
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj283131_ '())))
                                                (__tmp288573
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object283123_ '()))))
                                            (declare (not safe))
                                            (cons __tmp288574 __tmp288573))))
                                     (declare (not safe))
                                     (cons __tmp288572 '())))
                                  (__tmp288532
                                   (let ((__tmp288533
                                          (let ((__tmp288534
                                                 (let ((__tmp288563
                                                        (let ((__tmp288564
                                                               (let ((__tmp288568
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp288569
                                     (let ((__tmp288570
                                            (##structure-ref
                                             _klass283119_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp288570 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp288569)))
                             (__tmp288565
                              (let ((__tmp288566
                                     (let ((__tmp288567
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj283131_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp288567))))
                                (declare (not safe))
                                (cons __tmp288566 '()))))
                         (declare (not safe))
                         (cons __tmp288568 __tmp288565))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp288564)))
               (__tmp288535
                (let ((__tmp288552
                       (let ((__tmp288553
                              (let ((__tmp288560
                                     (let ((__tmp288561
                                            (let ((__tmp288562
                                                   (##structure-ref
                                                    _self283081_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp288562 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp288561)))
                                    (__tmp288554
                                     (let ((__tmp288558
                                            (let ((__tmp288559
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field283121_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp288559)))
                                           (__tmp288555
                                            (let ((__tmp288556
                                                   (let ((__tmp288557
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj283131_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp288557))))
                                              (declare (not safe))
                                              (cons __tmp288556 '()))))
                                       (declare (not safe))
                                       (cons __tmp288558 __tmp288555))))
                                (declare (not safe))
                                (cons __tmp288560 __tmp288554))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp288553)))
                      (__tmp288536
                       (let ((__tmp288537
                              (let ((__tmp288538
                                     (let ((__tmp288550
                                            (let ((__tmp288551
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp288551)))
                                           (__tmp288539
                                            (let ((__tmp288547
                                                   (let ((__tmp288548
                                                          (let ((__tmp288549
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self283081_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp288549 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp288548)))
                                                  (__tmp288540
                                                   (let ((__tmp288545
                                                          (let ((__tmp288546
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj283131_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp288546)))
                 (__tmp288541
                  (let ((__tmp288542
                         (let ((__tmp288543
                                (let ((__tmp288544
                                       (##structure-ref
                                        _self283081_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp288544 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp288543))))
                    (declare (not safe))
                    (cons __tmp288542 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp288545
                                                           __tmp288541))))
                                              (declare (not safe))
                                              (cons __tmp288547 __tmp288540))))
                                       (declare (not safe))
                                       (cons __tmp288550 __tmp288539))))
                                (declare (not safe))
                                (cons '%#call __tmp288538))))
                         (declare (not safe))
                         (cons __tmp288537 '()))))
                  (declare (not safe))
                  (cons __tmp288552 __tmp288536))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp288563
                                                         __tmp288535))))
                                            (declare (not safe))
                                            (cons '%#if __tmp288534))))
                                     (declare (not safe))
                                     (cons __tmp288533 '()))))
                              (declare (not safe))
                              (cons __tmp288571 __tmp288532))))
                      (declare (not safe))
                      (cons '%#let-values __tmp288531))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp288529 _stx283082_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp288520
                                                            (let ((__tmp288521
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp288527
                                  (let ((__tmp288528
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp288528)))
                                 (__tmp288522
                                  (let ((__tmp288523
                                         (let ((__tmp288524
                                                (let ((__tmp288525
                                                       (let ((__tmp288526
                                                              (##structure-ref
                                                               _self283081_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp288526
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp288525))))
                                           (declare (not safe))
                                           (cons __tmp288524 '()))))
                                    (declare (not safe))
                                    (cons _object283123_ __tmp288523))))
                             (declare (not safe))
                             (cons __tmp288527 __tmp288522))))
                      (declare (not safe))
                      (cons '%#call __tmp288521))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp288520 _stx283082_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd283089283103_)
                              (let ()
                                (declare (not safe))
                                (_g283085283095_ _g283086283098_)))))
                      (let ()
                        (declare (not safe))
                        (_g283085283095_ _g283086283098_))))))
          (declare (not safe))
          (_g283084283133_ _args283083_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__t287821)
        (let ((__checked?287822
               (let ((__tmp287825
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t287821 'checked?))))
                 (if __tmp287825
                     __tmp287825
                     (error '"Unknown slot" 'checked?))))
              (__slot287823
               (let ((__tmp287826
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t287821 'slot))))
                 (if __tmp287826 __tmp287826 (error '"Unknown slot" 'slot))))
              (__id287824
               (let ((__tmp287827
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t287821 'id))))
                 (if __tmp287827 __tmp287827 (error '"Unknown slot" 'id)))))
          (lambda (_self283081_ _stx283082_ _args283083_)
            (let* ((_g283085283095_
                    (lambda (_g283086283092_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g283086283092_))))
                   (_g283084283133_
                    (lambda (_g283086283098_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g283086283098_))
                          (let ((_e283090283100_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g283086283098_))))
                            (let ((_hd283089283103_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e283090283100_)))
                                  (_tl283088283105_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e283090283100_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl283088283105_))
                                  ((lambda (_L283108_)
                                     (let* ((_klass283119_
                                             (let ((__tmp288605
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self283081_
                                                       __id287824
                                                       __t287821
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx283082_
                                                __tmp288605)))
                                            (_field283121_
                                             (let ((__tmp288606
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self283081_
                                                       __slot287823
                                                       __t287821
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass283119_
                                                __tmp288606)))
                                            (_object283123_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L283108_))))
                                       (if (##structure-ref
                                            _klass283119_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp288683
                                                  (let ((__tmp288692
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self283081_
                        __checked?287822
                        __t287821
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp288684
                 (let ((__tmp288689
                        (let ((__tmp288690
                               (let ((__tmp288691
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self283081_
                                         __id287824
                                         __t287821
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp288691 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp288690)))
                       (__tmp288685
                        (let ((__tmp288687
                               (let ((__tmp288688
                                      (let ()
                                        (declare (not safe))
                                        (cons _field283121_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp288688)))
                              (__tmp288686
                               (let ()
                                 (declare (not safe))
                                 (cons _object283123_ '()))))
                          (declare (not safe))
                          (cons __tmp288687 __tmp288686))))
                   (declare (not safe))
                   (cons __tmp288689 __tmp288685))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp288692
                                                          __tmp288684))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp288683
                                              _stx283082_))
                                           (if (##structure-ref
                                                _klass283119_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp288673
                                                      (let ((__tmp288682
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self283081_
                            __checked?287822
                            __t287821
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp288674
                     (let ((__tmp288679
                            (let ((__tmp288680
                                   (let ((__tmp288681
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self283081_
                                             __id287824
                                             __t287821
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp288681 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp288680)))
                           (__tmp288675
                            (let ((__tmp288677
                                   (let ((__tmp288678
                                          (let ()
                                            (declare (not safe))
                                            (cons _field283121_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp288678)))
                                  (__tmp288676
                                   (let ()
                                     (declare (not safe))
                                     (cons _object283123_ '()))))
                              (declare (not safe))
                              (cons __tmp288677 __tmp288676))))
                       (declare (not safe))
                       (cons __tmp288679 __tmp288675))))
                (declare (not safe))
                (cons __tmp288682 __tmp288674))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp288673
                                                  _stx283082_))
                                               (let ((_$e283126_
                                                      (let ((__tmp288607
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self283081_
                        __slot287823
                        __t287821
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass283119_ __tmp288607))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e283126_
                                                     ((lambda (_klass283129_)
                                                        (let ((__tmp288663
                                                               (let ((__tmp288672
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self283081_
                                     __checked?287822
                                     __t287821
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp288664
                              (let ((__tmp288669
                                     (let ((__tmp288670
                                            (let ((__tmp288671
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self283081_
                                                      __id287824
                                                      __t287821
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp288671 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp288670)))
                                    (__tmp288665
                                     (let ((__tmp288667
                                            (let ((__tmp288668
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field283121_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp288668)))
                                           (__tmp288666
                                            (let ()
                                              (declare (not safe))
                                              (cons _object283123_ '()))))
                                       (declare (not safe))
                                       (cons __tmp288667 __tmp288666))))
                                (declare (not safe))
                                (cons __tmp288669 __tmp288665))))
                         (declare (not safe))
                         (cons __tmp288672 __tmp288664))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp288663 _stx283082_)))
              _$e283126_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self283081_
                                                            __checked?287822
                                                            __t287821
                                                            '#f))
                                                         (let ((__tmp288617
                                                                (let* ((_$obj283131_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp288618 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp288618)))
                               (__tmp288619
                                (let ((__tmp288659
                                       (let ((__tmp288660
                                              (let ((__tmp288662
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj283131_
                                                             '())))
                                                    (__tmp288661
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object283123_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp288662
                                                      __tmp288661))))
                                         (declare (not safe))
                                         (cons __tmp288660 '())))
                                      (__tmp288620
                                       (let ((__tmp288621
                                              (let ((__tmp288622
                                                     (let ((__tmp288651
                                                            (let ((__tmp288652
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp288656
                                  (let ((__tmp288657
                                         (let ((__tmp288658
                                                (##structure-ref
                                                 _klass283119_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp288658 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp288657)))
                                 (__tmp288653
                                  (let ((__tmp288654
                                         (let ((__tmp288655
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj283131_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp288655))))
                                    (declare (not safe))
                                    (cons __tmp288654 '()))))
                             (declare (not safe))
                             (cons __tmp288656 __tmp288653))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp288652)))
                   (__tmp288623
                    (let ((__tmp288640
                           (let ((__tmp288641
                                  (let ((__tmp288648
                                         (let ((__tmp288649
                                                (let ((__tmp288650
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self283081_
                                                          __id287824
                                                          __t287821
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp288650 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp288649)))
                                        (__tmp288642
                                         (let ((__tmp288646
                                                (let ((__tmp288647
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field283121_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp288647)))
                                               (__tmp288643
                                                (let ((__tmp288644
                                                       (let ((__tmp288645
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj283131_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp288645))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp288644 '()))))
                                           (declare (not safe))
                                           (cons __tmp288646 __tmp288643))))
                                    (declare (not safe))
                                    (cons __tmp288648 __tmp288642))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp288641)))
                          (__tmp288624
                           (let ((__tmp288625
                                  (let ((__tmp288626
                                         (let ((__tmp288638
                                                (let ((__tmp288639
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp288639)))
                                               (__tmp288627
                                                (let ((__tmp288635
                                                       (let ((__tmp288636
                                                              (let ((__tmp288637
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self283081_
                                __id287824
                                __t287821
                                '#f))))
                        (declare (not safe))
                        (cons __tmp288637 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp288636)))
              (__tmp288628
               (let ((__tmp288633
                      (let ((__tmp288634
                             (let ()
                               (declare (not safe))
                               (cons _$obj283131_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp288634)))
                     (__tmp288629
                      (let ((__tmp288630
                             (let ((__tmp288631
                                    (let ((__tmp288632
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self283081_
                                              __slot287823
                                              __t287821
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp288632 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp288631))))
                        (declare (not safe))
                        (cons __tmp288630 '()))))
                 (declare (not safe))
                 (cons __tmp288633 __tmp288629))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp288635
                                                        __tmp288628))))
                                           (declare (not safe))
                                           (cons __tmp288638 __tmp288627))))
                                    (declare (not safe))
                                    (cons '%#call __tmp288626))))
                             (declare (not safe))
                             (cons __tmp288625 '()))))
                      (declare (not safe))
                      (cons __tmp288640 __tmp288624))))
               (declare (not safe))
               (cons __tmp288651 __tmp288623))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp288622))))
                                         (declare (not safe))
                                         (cons __tmp288621 '()))))
                                  (declare (not safe))
                                  (cons __tmp288659 __tmp288620))))
                          (declare (not safe))
                          (cons '%#let-values __tmp288619))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp288617 _stx283082_))
                 (let ((__tmp288608
                        (let ((__tmp288609
                               (let ((__tmp288615
                                      (let ((__tmp288616
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp288616)))
                                     (__tmp288610
                                      (let ((__tmp288611
                                             (let ((__tmp288612
                                                    (let ((__tmp288613
                                                           (let ((__tmp288614
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self283081_
                             __slot287823
                             __t287821
                             '#f))))
                     (declare (not safe))
                     (cons __tmp288614 '()))))
              (declare (not safe))
              (cons '%#quote __tmp288613))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp288612 '()))))
                                        (declare (not safe))
                                        (cons _object283123_ __tmp288611))))
                                 (declare (not safe))
                                 (cons __tmp288615 __tmp288610))))
                          (declare (not safe))
                          (cons '%#call __tmp288609))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp288608 _stx283082_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd283089283103_)
                                  (let ()
                                    (declare (not safe))
                                    (_g283085283095_ _g283086283098_)))))
                          (let ()
                            (declare (not safe))
                            (_g283085283095_ _g283086283098_))))))
              (declare (not safe))
              (_g283084283133_ _args283083_))))))
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
      (lambda (_self282886_ _stx282887_ _args282888_)
        (let* ((_g282890282904_
                (lambda (_g282891282901_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g282891282901_))))
               (_g282889282956_
                (lambda (_g282891282907_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g282891282907_))
                      (let ((_e282896282909_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g282891282907_))))
                        (let ((_hd282895282912_
                               (let ()
                                 (declare (not safe))
                                 (##car _e282896282909_)))
                              (_tl282894282914_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e282896282909_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl282894282914_))
                              (let ((_e282899282917_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl282894282914_))))
                                (let ((_hd282898282920_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e282899282917_)))
                                      (_tl282897282922_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e282899282917_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl282897282922_))
                                      ((lambda (_L282925_ _L282926_)
                                         (let* ((_klass282940_
                                                 (let ((__tmp288693
                                                        (##structure-ref
                                                         _self282886_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx282887_
                                                    __tmp288693)))
                                                (_field282942_
                                                 (let ((__tmp288694
                                                        (##structure-ref
                                                         _self282886_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass282940_
                                                    __tmp288694)))
                                                (_object282944_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L282926_)))
                                                (_value282946_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L282925_))))
                                           (if (##structure-ref
                                                _klass282940_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp288776
                                                      (let ((__tmp288786
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self282886_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp288777
                     (let ((__tmp288783
                            (let ((__tmp288784
                                   (let ((__tmp288785
                                          (##structure-ref
                                           _self282886_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp288785 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp288784)))
                           (__tmp288778
                            (let ((__tmp288781
                                   (let ((__tmp288782
                                          (let ()
                                            (declare (not safe))
                                            (cons _field282942_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp288782)))
                                  (__tmp288779
                                   (let ((__tmp288780
                                          (let ()
                                            (declare (not safe))
                                            (cons _value282946_ '()))))
                                     (declare (not safe))
                                     (cons _object282944_ __tmp288780))))
                              (declare (not safe))
                              (cons __tmp288781 __tmp288779))))
                       (declare (not safe))
                       (cons __tmp288783 __tmp288778))))
                (declare (not safe))
                (cons __tmp288786 __tmp288777))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp288776
                                                  _stx282887_))
                                               (if (##structure-ref
                                                    _klass282940_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp288765
                                                          (let ((__tmp288775
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self282886_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp288766
                         (let ((__tmp288772
                                (let ((__tmp288773
                                       (let ((__tmp288774
                                              (##structure-ref
                                               _self282886_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp288774 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp288773)))
                               (__tmp288767
                                (let ((__tmp288770
                                       (let ((__tmp288771
                                              (let ()
                                                (declare (not safe))
                                                (cons _field282942_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp288771)))
                                      (__tmp288768
                                       (let ((__tmp288769
                                              (let ()
                                                (declare (not safe))
                                                (cons _value282946_ '()))))
                                         (declare (not safe))
                                         (cons _object282944_ __tmp288769))))
                                  (declare (not safe))
                                  (cons __tmp288770 __tmp288768))))
                           (declare (not safe))
                           (cons __tmp288772 __tmp288767))))
                    (declare (not safe))
                    (cons __tmp288775 __tmp288766))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp288765
                                                      _stx282887_))
                                                   (let ((_$e282949_
                                                          (let ((__tmp288695
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self282886_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass282940_ __tmp288695))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e282949_
                                                         ((lambda (_klass282952_)
                                                            (let ((__tmp288754
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp288764
                                  (if (##structure-ref
                                       _self282886_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp288755
                                  (let ((__tmp288761
                                         (let ((__tmp288762
                                                (let ((__tmp288763
                                                       (##structure-ref
                                                        _self282886_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp288763 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp288762)))
                                        (__tmp288756
                                         (let ((__tmp288759
                                                (let ((__tmp288760
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field282942_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp288760)))
                                               (__tmp288757
                                                (let ((__tmp288758
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value282946_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object282944_
                                                        __tmp288758))))
                                           (declare (not safe))
                                           (cons __tmp288759 __tmp288757))))
                                    (declare (not safe))
                                    (cons __tmp288761 __tmp288756))))
                             (declare (not safe))
                             (cons __tmp288764 __tmp288755))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp288754 _stx282887_)))
                  _$e282949_)
                 (if (##structure-ref _self282886_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp288706
                            (let* ((_$obj282954_
                                    (let ((__tmp288707 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp288707)))
                                   (__tmp288708
                                    (let ((__tmp288750
                                           (let ((__tmp288751
                                                  (let ((__tmp288753
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj282954_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp288752
                 (let () (declare (not safe)) (cons _object282944_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp288753
                                                          __tmp288752))))
                                             (declare (not safe))
                                             (cons __tmp288751 '())))
                                          (__tmp288709
                                           (let ((__tmp288710
                                                  (let ((__tmp288711
                                                         (let ((__tmp288742
                                                                (let ((__tmp288743
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp288747
                                      (let ((__tmp288748
                                             (let ((__tmp288749
                                                    (##structure-ref
                                                     _klass282940_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp288749 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp288748)))
                                     (__tmp288744
                                      (let ((__tmp288745
                                             (let ((__tmp288746
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj282954_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp288746))))
                                        (declare (not safe))
                                        (cons __tmp288745 '()))))
                                 (declare (not safe))
                                 (cons __tmp288747 __tmp288744))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp288743)))
                       (__tmp288712
                        (let ((__tmp288730
                               (let ((__tmp288731
                                      (let ((__tmp288739
                                             (let ((__tmp288740
                                                    (let ((__tmp288741
                                                           (##structure-ref
                                                            _self282886_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp288741 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp288740)))
                                            (__tmp288732
                                             (let ((__tmp288737
                                                    (let ((__tmp288738
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field282942_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp288738)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp288733
                                                    (let ((__tmp288735
                                                           (let ((__tmp288736
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj282954_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp288736)))
                  (__tmp288734
                   (let () (declare (not safe)) (cons _value282946_ '()))))
              (declare (not safe))
              (cons __tmp288735 __tmp288734))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp288737
                                                     __tmp288733))))
                                        (declare (not safe))
                                        (cons __tmp288739 __tmp288732))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp288731)))
                              (__tmp288713
                               (let ((__tmp288714
                                      (let ((__tmp288715
                                             (let ((__tmp288728
                                                    (let ((__tmp288729
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp288729)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp288716
                                                    (let ((__tmp288725
                                                           (let ((__tmp288726
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp288727
                                 (##structure-ref
                                  _self282886_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp288727 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp288726)))
                  (__tmp288717
                   (let ((__tmp288723
                          (let ((__tmp288724
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj282954_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp288724)))
                         (__tmp288718
                          (let ((__tmp288720
                                 (let ((__tmp288721
                                        (let ((__tmp288722
                                               (##structure-ref
                                                _self282886_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp288722 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp288721)))
                                (__tmp288719
                                 (let ()
                                   (declare (not safe))
                                   (cons _value282946_ '()))))
                            (declare (not safe))
                            (cons __tmp288720 __tmp288719))))
                     (declare (not safe))
                     (cons __tmp288723 __tmp288718))))
              (declare (not safe))
              (cons __tmp288725 __tmp288717))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp288728
                                                     __tmp288716))))
                                        (declare (not safe))
                                        (cons '%#call __tmp288715))))
                                 (declare (not safe))
                                 (cons __tmp288714 '()))))
                          (declare (not safe))
                          (cons __tmp288730 __tmp288713))))
                   (declare (not safe))
                   (cons __tmp288742 __tmp288712))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp288711))))
                                             (declare (not safe))
                                             (cons __tmp288710 '()))))
                                      (declare (not safe))
                                      (cons __tmp288750 __tmp288709))))
                              (declare (not safe))
                              (cons '%#let-values __tmp288708))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp288706 _stx282887_))
                     (let ((__tmp288696
                            (let ((__tmp288697
                                   (let ((__tmp288704
                                          (let ((__tmp288705
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp288705)))
                                         (__tmp288698
                                          (let ((__tmp288699
                                                 (let ((__tmp288701
                                                        (let ((__tmp288702
                                                               (let ((__tmp288703
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self282886_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp288703 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp288702)))
               (__tmp288700
                (let () (declare (not safe)) (cons _value282946_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp288701
                                                         __tmp288700))))
                                            (declare (not safe))
                                            (cons _object282944_
                                                  __tmp288699))))
                                     (declare (not safe))
                                     (cons __tmp288704 __tmp288698))))
                              (declare (not safe))
                              (cons '%#call __tmp288697))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp288696 _stx282887_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd282898282920_
                                       _hd282895282912_)
                                      (let ()
                                        (declare (not safe))
                                        (_g282890282904_ _g282891282907_)))))
                              (let ()
                                (declare (not safe))
                                (_g282890282904_ _g282891282907_)))))
                      (let ()
                        (declare (not safe))
                        (_g282890282904_ _g282891282907_))))))
          (declare (not safe))
          (_g282889282956_ _args282888_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__t287828)
        (let ((__id287829
               (let ((__tmp287832
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t287828 'id))))
                 (if __tmp287832 __tmp287832 (error '"Unknown slot" 'id))))
              (__slot287830
               (let ((__tmp287833
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t287828 'slot))))
                 (if __tmp287833 __tmp287833 (error '"Unknown slot" 'slot))))
              (__checked?287831
               (let ((__tmp287834
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t287828 'checked?))))
                 (if __tmp287834
                     __tmp287834
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self282886_ _stx282887_ _args282888_)
            (let* ((_g282890282904_
                    (lambda (_g282891282901_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g282891282901_))))
                   (_g282889282956_
                    (lambda (_g282891282907_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g282891282907_))
                          (let ((_e282896282909_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g282891282907_))))
                            (let ((_hd282895282912_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e282896282909_)))
                                  (_tl282894282914_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e282896282909_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl282894282914_))
                                  (let ((_e282899282917_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl282894282914_))))
                                    (let ((_hd282898282920_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e282899282917_)))
                                          (_tl282897282922_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e282899282917_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl282897282922_))
                                          ((lambda (_L282925_ _L282926_)
                                             (let* ((_klass282940_
                                                     (let ((__tmp288787
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self282886_
                                                               __id287829
                                                               __t287828
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx282887_
                                                        __tmp288787)))
                                                    (_field282942_
                                                     (let ((__tmp288788
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self282886_
                                                               __slot287830
                                                               __t287828
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass282940_
                                                        __tmp288788)))
                                                    (_object282944_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L282926_)))
                                                    (_value282946_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L282925_))))
                                               (if (##structure-ref
                                                    _klass282940_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp288870
                                                          (let ((__tmp288880
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self282886_
                                __checked?287831
                                __t287828
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp288871
                         (let ((__tmp288877
                                (let ((__tmp288878
                                       (let ((__tmp288879
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self282886_
                                                 __id287829
                                                 __t287828
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp288879 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp288878)))
                               (__tmp288872
                                (let ((__tmp288875
                                       (let ((__tmp288876
                                              (let ()
                                                (declare (not safe))
                                                (cons _field282942_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp288876)))
                                      (__tmp288873
                                       (let ((__tmp288874
                                              (let ()
                                                (declare (not safe))
                                                (cons _value282946_ '()))))
                                         (declare (not safe))
                                         (cons _object282944_ __tmp288874))))
                                  (declare (not safe))
                                  (cons __tmp288875 __tmp288873))))
                           (declare (not safe))
                           (cons __tmp288877 __tmp288872))))
                    (declare (not safe))
                    (cons __tmp288880 __tmp288871))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp288870
                                                      _stx282887_))
                                                   (if (##structure-ref
                                                        _klass282940_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp288859
                                                              (let ((__tmp288869
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self282886_
                                    __checked?287831
                                    __t287828
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp288860
                             (let ((__tmp288866
                                    (let ((__tmp288867
                                           (let ((__tmp288868
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self282886_
                                                     __id287829
                                                     __t287828
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp288868 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp288867)))
                                   (__tmp288861
                                    (let ((__tmp288864
                                           (let ((__tmp288865
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field282942_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp288865)))
                                          (__tmp288862
                                           (let ((__tmp288863
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value282946_ '()))))
                                             (declare (not safe))
                                             (cons _object282944_
                                                   __tmp288863))))
                                      (declare (not safe))
                                      (cons __tmp288864 __tmp288862))))
                               (declare (not safe))
                               (cons __tmp288866 __tmp288861))))
                        (declare (not safe))
                        (cons __tmp288869 __tmp288860))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp288859 _stx282887_))
               (let ((_$e282949_
                      (let ((__tmp288789
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self282886_
                                __slot287830
                                __t287828
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass282940_
                         __tmp288789))))
                 (if _$e282949_
                     ((lambda (_klass282952_)
                        (let ((__tmp288848
                               (let ((__tmp288858
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self282886_
                                             __checked?287831
                                             __t287828
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp288849
                                      (let ((__tmp288855
                                             (let ((__tmp288856
                                                    (let ((__tmp288857
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self282886_
                                                              __id287829
                                                              __t287828
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp288857 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp288856)))
                                            (__tmp288850
                                             (let ((__tmp288853
                                                    (let ((__tmp288854
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field282942_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp288854)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp288851
                                                    (let ((__tmp288852
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value282946_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object282944_ __tmp288852))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp288853
                                                     __tmp288851))))
                                        (declare (not safe))
                                        (cons __tmp288855 __tmp288850))))
                                 (declare (not safe))
                                 (cons __tmp288858 __tmp288849))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp288848 _stx282887_)))
                      _$e282949_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self282886_
                            __checked?287831
                            __t287828
                            '#f))
                         (let ((__tmp288800
                                (let* ((_$obj282954_
                                        (let ((__tmp288801 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp288801)))
                                       (__tmp288802
                                        (let ((__tmp288844
                                               (let ((__tmp288845
                                                      (let ((__tmp288847
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj282954_ '())))
                    (__tmp288846
                     (let () (declare (not safe)) (cons _object282944_ '()))))
                (declare (not safe))
                (cons __tmp288847 __tmp288846))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp288845 '())))
                                              (__tmp288803
                                               (let ((__tmp288804
                                                      (let ((__tmp288805
                                                             (let ((__tmp288836
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp288837
                                   (let ((__tmp288841
                                          (let ((__tmp288842
                                                 (let ((__tmp288843
                                                        (##structure-ref
                                                         _klass282940_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp288843 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp288842)))
                                         (__tmp288838
                                          (let ((__tmp288839
                                                 (let ((__tmp288840
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj282954_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp288840))))
                                            (declare (not safe))
                                            (cons __tmp288839 '()))))
                                     (declare (not safe))
                                     (cons __tmp288841 __tmp288838))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp288837)))
                           (__tmp288806
                            (let ((__tmp288824
                                   (let ((__tmp288825
                                          (let ((__tmp288833
                                                 (let ((__tmp288834
                                                        (let ((__tmp288835
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self282886_
                          __id287829
                          __t287828
                          '#f))))
                  (declare (not safe))
                  (cons __tmp288835 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp288834)))
                                                (__tmp288826
                                                 (let ((__tmp288831
                                                        (let ((__tmp288832
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field282942_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp288832)))
               (__tmp288827
                (let ((__tmp288829
                       (let ((__tmp288830
                              (let ()
                                (declare (not safe))
                                (cons _$obj282954_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp288830)))
                      (__tmp288828
                       (let () (declare (not safe)) (cons _value282946_ '()))))
                  (declare (not safe))
                  (cons __tmp288829 __tmp288828))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp288831
                                                         __tmp288827))))
                                            (declare (not safe))
                                            (cons __tmp288833 __tmp288826))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp288825)))
                                  (__tmp288807
                                   (let ((__tmp288808
                                          (let ((__tmp288809
                                                 (let ((__tmp288822
                                                        (let ((__tmp288823
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp288823)))
               (__tmp288810
                (let ((__tmp288819
                       (let ((__tmp288820
                              (let ((__tmp288821
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self282886_
                                        __id287829
                                        __t287828
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp288821 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp288820)))
                      (__tmp288811
                       (let ((__tmp288817
                              (let ((__tmp288818
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj282954_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp288818)))
                             (__tmp288812
                              (let ((__tmp288814
                                     (let ((__tmp288815
                                            (let ((__tmp288816
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self282886_
                                                      __slot287830
                                                      __t287828
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp288816 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp288815)))
                                    (__tmp288813
                                     (let ()
                                       (declare (not safe))
                                       (cons _value282946_ '()))))
                                (declare (not safe))
                                (cons __tmp288814 __tmp288813))))
                         (declare (not safe))
                         (cons __tmp288817 __tmp288812))))
                  (declare (not safe))
                  (cons __tmp288819 __tmp288811))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp288822
                                                         __tmp288810))))
                                            (declare (not safe))
                                            (cons '%#call __tmp288809))))
                                     (declare (not safe))
                                     (cons __tmp288808 '()))))
                              (declare (not safe))
                              (cons __tmp288824 __tmp288807))))
                       (declare (not safe))
                       (cons __tmp288836 __tmp288806))))
                (declare (not safe))
                (cons '%#if __tmp288805))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp288804 '()))))
                                          (declare (not safe))
                                          (cons __tmp288844 __tmp288803))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp288802))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp288800 _stx282887_))
                         (let ((__tmp288790
                                (let ((__tmp288791
                                       (let ((__tmp288798
                                              (let ((__tmp288799
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp288799)))
                                             (__tmp288792
                                              (let ((__tmp288793
                                                     (let ((__tmp288795
                                                            (let ((__tmp288796
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp288797
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self282886_
                                     __slot287830
                                     __t287828
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp288797 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp288796)))
                   (__tmp288794
                    (let () (declare (not safe)) (cons _value282946_ '()))))
               (declare (not safe))
               (cons __tmp288795 __tmp288794))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object282944_
                                                      __tmp288793))))
                                         (declare (not safe))
                                         (cons __tmp288798 __tmp288792))))
                                  (declare (not safe))
                                  (cons '%#call __tmp288791))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp288790
                            _stx282887_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd282898282920_
                                           _hd282895282912_)
                                          (let ()
                                            (declare (not safe))
                                            (_g282890282904_
                                             _g282891282907_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g282890282904_ _g282891282907_)))))
                          (let ()
                            (declare (not safe))
                            (_g282890282904_ _g282891282907_))))))
              (declare (not safe))
              (_g282889282956_ _args282888_))))))
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
      (lambda (_self282720_ _stx282721_ _args282722_)
        (let* ((_self282723282732_ _self282720_)
               (_E282725282736_
                (lambda () (error '"No clause matching" _self282723282732_)))
               (_K282726282743_
                (lambda (_inline282739_ _dispatch282740_ _arity282741_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self282720_ _args282722_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx282721_
                         _arity282741_)))
                  (if _inline282739_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp288886
                               (let ((__tmp288887
                                      (_inline282739_ _stx282721_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp288887
                                  _stx282721_))))
                          (declare (not safe))
                          (gxc#compile-e__0 __tmp288886)))
                      (if _dispatch282740_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch282740_))
                            (let ((__tmp288881
                                   (let ((__tmp288882
                                          (let ((__tmp288883
                                                 (let ((__tmp288884
                                                        (let ((__tmp288885
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch282740_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp288885))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp288884
                                                         _args282722_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp288883))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp288882
                                      _stx282721_))))
                              (declare (not safe))
                              (gxc#compile-e__0 __tmp288881)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _stx282721_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self282723282732_ 'gxc#!lambda::t))
              (let* ((_e282727282746_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self282723282732_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e282728282749_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self282723282732_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity282752_ _e282728282749_)
                     (_e282729282754_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self282723282732_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch282757_ _e282729282754_)
                     (_e282730282759_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self282723282732_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline282762_ _e282730282759_))
                (declare (not safe))
                (_K282726282743_
                 _inline282762_
                 _dispatch282757_
                 _arity282752_))
              (let () (declare (not safe)) (_E282725282736_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self282559_ _stx282560_ _args282561_)
        (let* ((_self282562282569_ _self282559_)
               (_E282564282573_
                (lambda () (error '"No clause matching" _self282562282569_)))
               (_K282565282587_
                (lambda (_clauses282576_)
                  (let ((_$e282582_
                         (let ((__tmp288888
                                (lambda (_g282577282579_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g282577282579_
                                     _args282561_)))))
                           (declare (not safe))
                           (find __tmp288888 _clauses282576_))))
                    (if _$e282582_
                        ((lambda (_clause282585_)
                           (let ((__method288103
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause282585_
                                     'optimize-call))))
                             (if __method288103
                                 (__method288103
                                  _clause282585_
                                  _stx282560_
                                  _args282561_)
                                 (error '"Missing method"
                                        _clause282585_
                                        'optimize-call))))
                         _$e282582_)
                        (let ((__tmp288889
                               (map gxc#!lambda-arity _clauses282576_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx282560_
                           __tmp288889)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self282562282569_
                 'gxc#!case-lambda::t))
              (let* ((_e282566282590_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self282562282569_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e282567282593_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self282562282569_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses282596_ _e282567282593_))
                (declare (not safe))
                (_K282565282587_ _clauses282596_))
              (let () (declare (not safe)) (_E282564282573_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self282373_ _args282374_)
        (let* ((_self282375282382_ _self282373_)
               (_E282377282386_
                (lambda () (error '"No clause matching" _self282375282382_)))
               (_K282378282426_
                (lambda (_arity282389_)
                  (let* ((_arity282390282399_ _arity282389_)
                         (_E282393282403_
                          (lambda ()
                            (error '"No clause matching"
                                   _arity282390282399_))))
                    (let ((_K282397282423_
                           (lambda ()
                             (fx= (length _args282374_) _arity282389_)))
                          (_K282394282409_
                           (lambda (_arity282407_)
                             (fx>= (length _args282374_) _arity282407_))))
                      (let ((_try-match282392282419_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity282390282399_))
                                   (let ((_tl282396282414_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity282390282399_)))
                                         (_hd282395282412_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity282390282399_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl282396282414_))
                                         (let ((_arity282417_
                                                _hd282395282412_))
                                           (declare (not safe))
                                           (_K282394282409_ _arity282417_))
                                         (let ()
                                           (declare (not safe))
                                           (_E282393282403_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E282393282403_))))))
                        (if (fixnum? _arity282390282399_)
                            (let () (declare (not safe)) (_K282397282423_))
                            (let ()
                              (declare (not safe))
                              (_try-match282392282419_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self282375282382_ 'gxc#!lambda::t))
              (let* ((_e282379282429_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self282375282382_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e282380282432_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self282375282382_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity282435_ _e282380282432_))
                (declare (not safe))
                (_K282378282426_ _arity282435_))
              (let () (declare (not safe)) (_E282377282386_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self282258_ _stx282259_ _args282260_)
        (let* ((_self282261282269_ _self282258_)
               (_E282263282273_
                (lambda () (error '"No clause matching" _self282261282269_)))
               (_K282264282357_
                (lambda (_dispatch282276_ _table282277_)
                  (let* ((_g282278282287_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch282276_)))
                         (_else282280282295_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch282276_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _stx282259_))))
                         (_K282282282341_
                          (lambda (_main282298_ _keys282299_)
                            (let ((_g288890_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx282259_
                                      _args282260_))))
                              (begin
                                (let ((_g288891_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g288890_)
                                             (##vector-length _g288890_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g288891_ 2)))
                                      (error "Context expects 2 values"
                                             _g288891_)))
                                (let ((_pargs282301_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g288890_ 0)))
                                      (_kwargs282302_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g288890_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main282298_))
                                    (if _table282277_
                                        (let ((_xargs282309_
                                               (map (lambda (_key282304_)
                                                      (let ((_$e282306_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _key282304_ _kwargs282302_))))
                (if _$e282306_ (values _$e282306_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys282299_)))
                                          (for-each
                                           (lambda (_kw282311_)
                                             (if (memq (car _kw282311_)
                                                       _keys282299_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx282259_
                                                    _keys282299_
                                                    _kw282311_))))
                                           _kwargs282302_)
                                          (let ((__tmp288943
                                                 (let ((__tmp288944
                                                        (let ((__tmp288945
                                                               (let ((__tmp288950
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp288951
                                     (let ()
                                       (declare (not safe))
                                       (cons _main282298_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp288951)))
                             (__tmp288946
                              (let ((__tmp288948
                                     (let ((__tmp288949
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp288949)))
                                    (__tmp288947
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs282301_
                                               _xargs282309_))))
                                (declare (not safe))
                                (cons __tmp288948 __tmp288947))))
                         (declare (not safe))
                         (cons __tmp288950 __tmp288946))))
                  (declare (not safe))
                  (cons '%#call __tmp288945))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp288944
                                                    _stx282259_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0 __tmp288943)))
                                        (let* ((_kwt282313_
                                                (let ((__tmp288892
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp288892)))
                                               (_kwvars282316_
                                                (map (lambda (_g288893_)
                                                       (let ((__tmp288894
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp288894)))
                                                     _kwargs282302_))
                                               (_kwbind282321_
                                                (map (lambda (_kw282318_
                                                              _kwvar282319_)
                                                       (let ((__tmp288897
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar282319_ '())))
                     (__tmp288895
                      (let ((__tmp288896 (cdr _kw282318_)))
                        (declare (not safe))
                        (cons __tmp288896 '()))))
                 (declare (not safe))
                 (cons __tmp288897 __tmp288895)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs282302_
                                                     _kwvars282316_))
                                               (_kwset282326_
                                                (map (lambda (_kw282323_
                                                              _kwvar282324_)
                                                       (let ((__tmp288898
                                                              (let ((__tmp288899
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp288907
                                    (let ((__tmp288908
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt282313_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp288908)))
                                   (__tmp288900
                                    (let ((__tmp288904
                                           (let ((__tmp288905
                                                  (let ((__tmp288906
                                                         (car _kw282323_)))
                                                    (declare (not safe))
                                                    (cons __tmp288906 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp288905)))
                                          (__tmp288901
                                           (let ((__tmp288902
                                                  (let ((__tmp288903
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar282324_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp288903))))
                                             (declare (not safe))
                                             (cons __tmp288902 '()))))
                                      (declare (not safe))
                                      (cons __tmp288904 __tmp288901))))
                               (declare (not safe))
                               (cons __tmp288907 __tmp288900))))
                        (declare (not safe))
                        (cons '(%#ref symoblic-table-set!) __tmp288899))))
                 (declare (not safe))
                 (cons '%#call __tmp288898)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs282302_
                                                     _kwvars282316_))
                                               (_xkwargs282331_
                                                (map (lambda (_kw282328_
                                                              _kwvar282329_)
                                                       (let ((__tmp288911
                                                              (car _kw282328_))
                                                             (__tmp288909
                                                              (let ((__tmp288910
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar282329_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp288910))))
                 (declare (not safe))
                 (cons __tmp288911 __tmp288909)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs282302_
                                                     _kwvars282316_))
                                               (_xargs282338_
                                                (map (lambda (_key282333_)
                                                       (let ((_$e282335_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq _key282333_ _xkwargs282331_))))
                 (if _$e282335_ (values _$e282335_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys282299_)))
                                          (let ((__tmp288912
                                                 (let ((__tmp288913
                                                        (let ((__tmp288914
                                                               (let ((__tmp288915
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp288916
                                     (let ((__tmp288917
                                            (let ((__tmp288931
                                                   (let ((__tmp288932
                                                          (let ((__tmp288942
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt282313_ '())))
                        (__tmp288933
                         (let ((__tmp288934
                                (let ((__tmp288935
                                       (let ((__tmp288936
                                              (let ((__tmp288937
                                                     (let ((__tmp288939
                                                            (let ((__tmp288940
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp288941 (length _kwargs282302_)))
                             (declare (not safe))
                             (cons __tmp288941 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp288940)))
                   (__tmp288938
                    (let () (declare (not safe)) (cons '(%#quote 0) '()))))
               (declare (not safe))
               (cons __tmp288939 __tmp288938))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-symbolic-table)
                                                      __tmp288937))))
                                         (declare (not safe))
                                         (cons '%#call __tmp288936))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp288935
                                   _stx282259_))))
                           (declare (not safe))
                           (cons __tmp288934 '()))))
                    (declare (not safe))
                    (cons __tmp288942 __tmp288933))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp288932 '())))
                                                  (__tmp288918
                                                   (let ((__tmp288919
                                                          (let ((__tmp288920
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp288921
                                (let ((__tmp288922
                                       (let ((__tmp288923
                                              (let ((__tmp288924
                                                     (let ((__tmp288929
                                                            (let ((__tmp288930
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main282298_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp288930)))
                   (__tmp288925
                    (let ((__tmp288927
                           (let ((__tmp288928
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt282313_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp288928)))
                          (__tmp288926
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs282301_ _xargs282338_))))
                      (declare (not safe))
                      (cons __tmp288927 __tmp288926))))
               (declare (not safe))
               (cons __tmp288929 __tmp288925))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp288924))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp288923
                                          _stx282259_))))
                                  (declare (not safe))
                                  (cons __tmp288922 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp288921 _kwset282326_))))
                    (declare (not safe))
                    (cons '%#begin __tmp288920))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp288919 '()))))
                                              (declare (not safe))
                                              (cons __tmp288931 __tmp288918))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp288917))))
                                (declare (not safe))
                                (cons __tmp288916 '()))))
                         (declare (not safe))
                         (cons _kwbind282321_ __tmp288915))))
                  (declare (not safe))
                  (cons '%#let-values __tmp288914))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp288913
                                                    _stx282259_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0
                                             __tmp288912)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g282278282287_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e282283282344_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g282278282287_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e282284282347_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g282278282287_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys282350_ _e282284282347_)
                               (_e282285282352_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g282278282287_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main282355_ _e282285282352_))
                          (declare (not safe))
                          (_K282282282341_ _main282355_ _keys282350_))
                        (let () (declare (not safe)) (_else282280282295_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self282261282269_
                 'gxc#!kw-lambda::t))
              (let* ((_e282265282360_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self282261282269_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e282266282363_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self282261282269_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table282366_ _e282266282363_)
                     (_e282267282368_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self282261282269_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch282371_ _e282267282368_))
                (declare (not safe))
                (_K282264282357_ _dispatch282371_ _table282366_))
              (let () (declare (not safe)) (_E282263282273_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx281871_ _args281872_)
        (let _lp281874_ ((_rest281876_ _args281872_)
                         (_pargs281877_ '())
                         (_kwargs281878_ '()))
          (let* ((___stx287985287986_ _rest281876_)
                 (_g281884281936_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx287985287986_)))))
            (let ((___kont287987287988_
                   (lambda (_L282115_ _L282116_)
                     (let ((__tmp288952
                            (let ()
                              (declare (not safe))
                              (cons _L282116_ _pargs281877_))))
                       (declare (not safe))
                       (_lp281874_ _L282115_ __tmp288952 _kwargs281878_))))
                  (___kont287989287990_
                   (lambda (_L282061_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L282061_ _pargs281877_))
                             (reverse _kwargs281878_))))
                  (___kont287991287992_
                   (lambda (_L282008_ _L282009_ _L282010_)
                     (let ((_kw282027_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L282010_))))
                       (if (assq _kw282027_ _kwargs281878_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx281871_
                              _kw282027_))
                           (let ((__tmp288953
                                  (let ((__tmp288954
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw282027_ _L282009_))))
                                    (declare (not safe))
                                    (cons __tmp288954 _kwargs281878_))))
                             (declare (not safe))
                             (_lp281874_
                              _L282008_
                              _pargs281877_
                              __tmp288953))))))
                  (___kont287993287994_
                   (lambda (_L281956_ _L281957_)
                     (let ((__tmp288955
                            (let ()
                              (declare (not safe))
                              (cons _L281957_ _pargs281877_))))
                       (declare (not safe))
                       (_lp281874_ _L281956_ __tmp288955 _kwargs281878_))))
                  (___kont287995287996_
                   (lambda ()
                     (values (reverse _pargs281877_)
                             (reverse _kwargs281878_)))))
              (let* ((_g281883281943_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx287985287986_))
                            (___kont287995287996_)
                            (let () (declare (not safe)) (_g281884281936_)))))
                     (___match288092288093_
                      (lambda (_e281917281976_
                               _hd281916281979_
                               _tl281915281981_
                               _e281920281984_
                               _hd281919281987_
                               _tl281918281989_
                               _e281923281992_
                               _hd281922281995_
                               _tl281921281997_
                               _e281926282000_
                               _hd281925282003_
                               _tl281924282005_)
                        (let ((_L282008_ _tl281924282005_)
                              (_L282009_ _hd281925282003_)
                              (_L282010_ _hd281922281995_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L282010_))
                              (___kont287991287992_
                               _L282008_
                               _L282009_
                               _L282010_)
                              (___kont287993287994_
                               _tl281915281981_
                               _hd281916281979_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx287985287986_))
                    (let ((_e281890282080_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx287985287986_))))
                      (let ((_tl281888282085_
                             (let ()
                               (declare (not safe))
                               (##cdr _e281890282080_)))
                            (_hd281889282083_
                             (let ()
                               (declare (not safe))
                               (##car _e281890282080_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd281889282083_))
                            (let ((_e281893282088_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd281889282083_))))
                              (let ((_tl281891282093_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e281893282088_)))
                                    (_hd281892282091_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e281893282088_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd281892282091_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd281892282091_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl281891282093_))
                                            (let ((_e281896282096_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl281891282093_))))
                                              (let ((_tl281894282101_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e281896282096_)))
                                                    (_hd281895282099_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e281896282096_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd281895282099_))
                                                    (let ((_e281897282104_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd281895282099_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e281897282104_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl281894282101_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl281888282085_))
                          (let ((_e281900282107_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl281888282085_))))
                            (let ((_tl281898282112_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e281900282107_)))
                                  (_hd281899282110_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e281900282107_))))
                              (___kont287987287988_
                               _tl281898282112_
                               _hd281899282110_)))
                          (___kont287993287994_
                           _tl281888282085_
                           _hd281889282083_))
                      (___kont287993287994_ _tl281888282085_ _hd281889282083_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e281897282104_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl281894282101_))
                          (___kont287989287990_ _tl281888282085_)
                          (___kont287993287994_
                           _tl281888282085_
                           _hd281889282083_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl281894282101_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl281888282085_))
                              (let ((_e281926282000_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl281888282085_))))
                                (let ((_tl281924282005_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e281926282000_)))
                                      (_hd281925282003_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e281926282000_))))
                                  (___match288092288093_
                                   _e281890282080_
                                   _hd281889282083_
                                   _tl281888282085_
                                   _e281893282088_
                                   _hd281892282091_
                                   _tl281891282093_
                                   _e281896282096_
                                   _hd281895282099_
                                   _tl281894282101_
                                   _e281926282000_
                                   _hd281925282003_
                                   _tl281924282005_)))
                              (___kont287993287994_
                               _tl281888282085_
                               _hd281889282083_))
                          (___kont287993287994_
                           _tl281888282085_
                           _hd281889282083_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl281894282101_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl281888282085_))
                                                            (let ((_e281926282000_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl281888282085_))))
                      (let ((_tl281924282005_
                             (let ()
                               (declare (not safe))
                               (##cdr _e281926282000_)))
                            (_hd281925282003_
                             (let ()
                               (declare (not safe))
                               (##car _e281926282000_))))
                        (___match288092288093_
                         _e281890282080_
                         _hd281889282083_
                         _tl281888282085_
                         _e281893282088_
                         _hd281892282091_
                         _tl281891282093_
                         _e281896282096_
                         _hd281895282099_
                         _tl281894282101_
                         _e281926282000_
                         _hd281925282003_
                         _tl281924282005_)))
                    (___kont287993287994_ _tl281888282085_ _hd281889282083_))
                (___kont287993287994_ _tl281888282085_ _hd281889282083_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont287993287994_
                                             _tl281888282085_
                                             _hd281889282083_))
                                        (___kont287993287994_
                                         _tl281888282085_
                                         _hd281889282083_))
                                    (___kont287993287994_
                                     _tl281888282085_
                                     _hd281889282083_))))
                            (___kont287993287994_
                             _tl281888282085_
                             _hd281889282083_))))
                    (let () (declare (not safe)) (_g281883281943_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self281867_ _stx281868_ _args281869_)
        (let () (declare (not safe)) (gxc#xform-call% _stx281868_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
